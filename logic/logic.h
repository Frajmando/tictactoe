#ifndef LOGIC_H
#define LOGIC_H

#include <array>

class GameLogic
{
public:
    GameLogic();
    void makeMove(int row, int col);
    bool checkWin() const;
    bool checkDraw() const;
    char getCurrentPlayer() const;
    void resetGame();
    char getBoardState(int row, int col) const;

private:
    char board[3][3];      // ' ' for empty, 'X' for X, 'O' for O
    bool playerTurn{true}; // true for X's turn, false for O's turn
};

#endif // LOGIC_H