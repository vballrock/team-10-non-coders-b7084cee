*** Settings ***
Documentation     Test start of game. Let's play \n\n https://arcbotics.com/wp-content/uploads/2015/12/sparki-driver-icon.png
Test Template     Start new game
Library           StartGameLibrary.py

*** Test Cases ***      numPositions     startingPositionX    startingPositionY  startingMoveCount
Blank character name    100              0                    0                  0

*** Keywords ***
Start new game
    [Arguments]    ${numPositions}  ${startingPositionX}  ${startingPositionY}  ${startingMoveCount}
    Initialize controller
    Number of map positions should be  ${numPositions}
    Starting X coordinate should be    ${startingPositionX}
    Starting Y coordinate should be    ${startingPositionY}
    Starting move count should be      ${startingMoveCount}
