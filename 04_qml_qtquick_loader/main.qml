import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Item { id: root
        width: parent.width; height: parent.height
        Loader { id: loader
            //anchors.fill: parent; // de la taille de l’élément parent
            anchors.centerIn: parent; // de la taille de l’élément chargé (ici 50x50)
            //et centré dans l’élément parent
            sourceComponent: rect1
        }
        Component { id: rect1
            Rectangle { width: 50; height: 50; color: "red";
                MouseArea { anchors.fill: parent
                    onClicked: loader.sourceComponent = rect2;
                }
            }
        }
        Component { id: rect2
            Rectangle { width: 50; height: 50; color: "green";
                MouseArea { anchors.fill: parent
                    onClicked: loader.sourceComponent = rect1;
                }
            }
        }
        state: "off"
        states: [
            State { name: "on"
                PropertyChanges { target: loader; sourceComponent: rect2; } },
            State { name: "off"
                PropertyChanges { target: loader; sourceComponent: rect1; } }
        ]
    }
}
