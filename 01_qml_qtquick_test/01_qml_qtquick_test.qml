import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12

//Window {
//    visible: true
//    width: 640
//    height: 480
//    title: qsTr("Hello World")
//}

//Rectangle {
//    width: 200
//    height: 100
//    color: "red"
//    Text {
//        anchors.centerIn: parent
//        text: "Hello, World!"
//    }
//    TapHandler {
//        onTapped: parent.color = "blue"
//    }
//}

//Rectangle {
//    width: 400
//    height: 200
//    Rectangle {
//        width: parent.width / 2
//        height: parent.height
//    }
//    Rectangle {
//        width: parent.width / 2
//        height: parent.height
//        x: parent.width / 2
//    }
//}

////window containing the application
//ApplicationWindow {
//    //title of the application
//    title: qsTr("Hello World")
//    width: 640
//    height: 480
//    //menu containing two menu items
//    menuBar: MenuBar {
//        Menu {
//            title: qsTr("File")
//            MenuItem {
//                text: qsTr("&Open")
//                onTriggered: console.log("Open action triggered");
//            }
//            MenuItem {
//                text: qsTr("Exit")
//                onTriggered: Qt.quit();
//            }
//        }
//    }
//    //Content Area
//    //a button in the middle of the content area
//    Button {
//        text: qsTr("Hello World")
//        anchors.horizontalCenter: parent.horizontalCenter
//        anchors.verticalCenter: parent.verticalCenter
//    }
//}

//Rectangle {
//    color: "lightgray"
//    width: 200
//    height: 200
//    property int animatedValue: 0
//    SequentialAnimation on animatedValue {
//        loops: Animation.Infinite
//        PropertyAnimation { to: 150; duration: 1000 }
//        PropertyAnimation { to: 0; duration: 1000 }
//    }
//    Text {
//        anchors.centerIn: parent
//        text: parent.animatedValue
//    }
//}

Rectangle {
    height: 500
    width: 500
    property string message: "debug message"
    property var msgType: ["debug", "warning" , "critical"]
    color: "black"
    Column {
        anchors.fill: parent
        padding: 5.0
        spacing: 2
        Text {
            text: msgType.toString().toUpperCase() + ":"
            font.bold: msgType === "critical"
            font.family: "Terminal Regular"
            color: msgType === "warning" || msgType === "critical" ? "red" : "yellow"
            ColorAnimation on color {
                running: msgType === "critical"
                from: "red"
                to: "black"
                duration: 1000
                loops: msgType === "critical" ? Animation.Infinite : 1
            }
        }
        Text {
            text: message
            color: msgType === "warning" || msgType === "critical" ? "red" : "yellow"
            font.family: "Terminal Regular"
        }
    }
}

