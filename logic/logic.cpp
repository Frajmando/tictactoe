#include "logic.h"

GameLogic::GameLogic()
{
    resetGame();
}

void GameLogic::makeMove(int row, int col)
{
    if (board[row][col] == ' ')
    {
        board[row][col] = getCurrentPlayer();
        playerTurn = !playerTurn;
    }
}

bool GameLogic::checkWin() const
{
    bool state = false;

    for (int i = 0; i < 3; i++)
    {
        if (board[i][0] != ' ' && board[i][0] == board[i][1] && board[i][1] == board[i][2])
        {
            state = true;
        }
    }

    for (int i = 0; i < 3; i++)
    {
        if (board[0][i] != ' ' && board[0][i] == board[1][i] && board[1][i] == board[2][i])
        {
            state = true;
        }
    }

    if (board[0][0] != ' ' && board[0][0] == board[1][1] && board[1][1] == board[2][2])
    {
        state = true;
    }

    if (board[0][2] != ' ' && board[0][2] == board[1][1] && board[1][1] == board[2][0])
    {
        state = true;
    }

    return state;
}

bool GameLogic::checkDraw() const
{
    bool draw = true;

    for (int i = 0; i < 3; i++)
    {
        for (int j = 0; j < 3; j++)
        {
            if (board[i][j] == ' ')
            {
                draw = false;
            }
        }
    }

    return draw;
}

char GameLogic::getCurrentPlayer() const
{
    return playerTurn ? 'X' : 'O';
}

void GameLogic::resetGame()
{
    for (int i = 0; i < 3; i++)
    {
        for (int j = 0; j < 3; j++)
        {
            board[i][j] = ' ';
        }
    }

    playerTurn = true;
}

char GameLogic::getBoardState(int row, int col) const
{
    return board[row][col];
}

void GameLogic::compMove()
{
    do
    {
        int row = rand() % 3;
        int col = rand() % 3;

        if (board[row][col] == ' ')
        {
            board[row][col] = getCurrentPlayer();
            playerTurn = !playerTurn;
            break;
        }
    } while (true);
}