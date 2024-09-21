#ifndef WINDOW_H
#define WINDOW_H

#include <QWidget>
#include <QPushButton>
#include <QGridLayout>
#include <QLabel>

#include "logic.h"

class Window : public QWidget
{
    QGridLayout gridLayout;
    QPushButton buttons[3][3];
    QPushButton resetButton{"Reset"};
    GameLogic game;
    bool gameOver{false};
    int xWins{0};
    int oWins{0};
    QLabel xWinLabel;
    QLabel oWinLabel;

    void updateBoard();
    void checkGameState();
    void playerClick(int row, int col);
    void compClick();
    void buttonState(bool state);

public:
    Window();
    ~Window() = default;
};

#endif // WINDOW_H