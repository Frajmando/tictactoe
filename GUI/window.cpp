#include "window.h"
#include <QMessageBox>
#include <QTimer>

Window::Window() : gameOver{false}
{
    setFixedSize(800, 800);

    setLayout(&gridLayout);

    for (int i = 0; i < 3; i++)
    {
        for (int j = 0; j < 3; j++)
        {
            buttons[i][j].setFixedSize(200, 200);
            gridLayout.addWidget(&buttons[i][j], i, j);
            connect(&buttons[i][j], &QPushButton::clicked, this, [this, i, j]()
                    { playerClick(i, j); });
        }
    }

    resetButton.setFixedSize(200, 50);
    gridLayout.addWidget(&resetButton, 3, 1);
    connect(&resetButton, &QPushButton::clicked, [this]()
            { game.resetGame(); 
            updateBoard(); 
            gameOver = false; 
            buttonState(true); });
}

void Window::updateBoard()
{
    QFont buttonFont("Arial", 100, QFont::Bold);
    for (int i = 0; i < 3; i++)
    {
        for (int j = 0; j < 3; j++)
        {
            buttons[i][j].setFont(buttonFont);
            buttons[i][j].setText(QString(game.getBoardState(i, j)));
        }
    }
}

void Window::checkGameState()
{
    if (game.checkWin())
    {
        char winner = game.getCurrentPlayer() == 'X' ? 'O' : 'X';
        QMessageBox::information(this, "Game Over", QString("%1 Wins!").arg(winner));
        gameOver = true;
        updateBoard();
    }
    else if (game.checkDraw())
    {
        QMessageBox::information(this, "Game Over", "It's a draw!");
        gameOver = true;
        updateBoard();
    }
}

void Window::playerClick(int row, int col)
{
    if (!gameOver && game.getBoardState(row, col) == ' ')
    {
        game.makeMove(row, col);
        updateBoard();
        checkGameState();
        buttonState(false);
        if (!gameOver)
        {
            QTimer::singleShot(500, [this]()
                               { compClick(); });
        }
    }
}

void Window::compClick()
{
    game.compMove();
    updateBoard();
    checkGameState();
    if (!gameOver)
    {
        buttonState(true);
    }
}

void Window::buttonState(bool state)
{
    for (int i = 0; i < 3; i++)
    {
        for (int j = 0; j < 3; j++)
        {
            if (state)
            {
                connect(&buttons[i][j], &QPushButton::clicked, this, [this, i, j]()
                        { playerClick(i, j); });
            }
            else
            {
                disconnect(&buttons[i][j], &QPushButton::clicked, 0, 0);
            }
        }
    }
}