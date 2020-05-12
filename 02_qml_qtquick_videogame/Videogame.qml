import QtQuick 2.12
import QtQuick.Window 2.12
import "Videogame.js" as Videogame

//Window {
//    visible: true
//    width: 640
//    height: 480
//    title: qsTr("Hello World")
//}

Rectangle {
    id: screen

    width: 600; height: 900

    SystemPalette { id: activePalette }

    Item {
        width: parent.width
        anchors { top: parent.top; bottom: toolBar.top }

        Image {
            id: background
            anchors.fill: parent
            source: "../02_qml_qtquick_videogame/final-fantasy-tactics-art-modif.jpg"
            fillMode: Image.PreserveAspectCrop
        }
    }

    Rectangle {
        id: toolBar
        width: parent.width; height: 50
        color: activePalette.window
        anchors.bottom: screen.bottom

        Button {
            anchors { left: parent.left; verticalCenter: parent.verticalCenter }
            text: "New Game"
            onClicked: Videogame.startNewGame(console.log("ok, let's start !"))
                /*console.log("This doesn't do anything yet...")*/
        }
        Text {
            id: score
            anchors { right: parent.right; verticalCenter: parent.verticalCenter }
            text: "Score: Who knows?"
        }
    }
}
