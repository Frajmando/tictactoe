#include "window.h"
#include <QMessageBox>
#include <QTimer>

Window::Window() : gameOver{false}
{
    setFixedSize(900, 950);
    setWindowTitle("Tic Tac Toe");

    // Initialize labels for win counts
    xWinLabel.setText("X Wins: 0");
    oWinLabel.setText("O Wins: 0");
    QFont labelFont("Arial", 20, QFont::Bold);
    xWinLabel.setFont(labelFont);
    oWinLabel.setFont(labelFont);

    // Add labels to the grid layout
    gridLayout.addWidget(&xWinLabel, 0, 0); // Span 3 columns for X wins label
    gridLayout.addWidget(&oWinLabel, 0, 1); // Span 3 columns for O wins label, adjust if necessary

    gridLayout.setContentsMargins(10, 10, 10, 10); // Adjust margins as needed
    gridLayout.setHorizontalSpacing(20);           // Set horizontal spacing
    gridLayout.setVerticalSpacing(20);             // Set vertical spacing

    for (int i = 0; i < 3; i++)
    {
        for (int j = 0; j < 3; j++)
        {
            buttons[i][j].setFixedSize(250, 250);
            gridLayout.addWidget(&buttons[i][j], i + 1, j);
            connect(&buttons[i][j], &QPushButton::clicked, this, [this, i, j]()
                    { playerClick(i, j); });
        }
    }

    connect(&resetButton, &QPushButton::clicked, [this]()
            { game.resetGame(); 
            updateBoard(); 
            gameOver = false; 
            buttonState(true); });

    resetButton.setFixedSize(200, 40);
    gridLayout.addWidget(&resetButton, 0, 2);

    setLayout(&gridLayout);
}

void Window::updateBoard()
{
    QFont buttonFont("Arial", 125, QFont::Bold);
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