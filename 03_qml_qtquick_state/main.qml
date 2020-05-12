import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 300
    height: 300
    title: qsTr("state and transition")

    Rectangle {
        id: feu; width: 250; height: 250
        state: "NORMAL"
        states: [
            State {
                name: "NORMAL"
                PropertyChanges { target: feu; color: "green" }
            },
            State {
                name: "CRITIQUE"
                PropertyChanges { target: feu; color: "red" }
            }
        ]
        transitions: [
            Transition {
                from: "NORMAL"
                to: "CRITIQUE"
                ColorAnimation { target: feu; duration: 1000 }
            },
            Transition {
                from: "CRITIQUE"
                to: "NORMAL"
                ColorAnimation { target: feu; duration: 1000 }
            }
        ]
        MouseArea {
            anchors.fill: parent
            onClicked: {
                if (feu.state == "NORMAL")
                    feu.state = "CRITIQUE"
                else
                    feu.state = "NORMAL"
            }
        }
    }
}


