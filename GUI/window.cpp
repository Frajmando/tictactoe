#include "window.h"
#include <QMessageBox>

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
            connect(&buttons[i][j], &QPushButton::clicked, [this, i, j]()
                    {
                if (!gameOver)
                {
                    game.makeMove(i, j);
                    updateBoard();
                    checkGameState();
                } });
        }
    }

    resetButton.setFixedSize(200, 50);
    gridLayout.addWidget(&resetButton, 3, 1);
    connect(&resetButton, &QPushButton::clicked, [this]()
            { game.resetGame(); 
            updateBoard(); 
            gameOver = false; });
}

void Window::updateBoard()
{
    for (int i = 0; i < 3; i++)
    {
        for (int j = 0; j < 3; j++)
        {
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