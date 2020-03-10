import QtQuick 2.12
import QtQuick.Window 2.12

//AntiAlasing
//https://stackoverflow.com/questions/48895449/how-do-i-enable-antialiasing-on-qml-shapes

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Row {
        anchors.centerIn: parent
        spacing: 20

        Rectangle {
            width: 200
            height: 200
            border.color: "red"
            border.width: 20
            radius: width

            Text {
                anchors.centerIn: parent
                text: qsTr("Turned On")
            }
        }

        Rectangle {
            width: 200
            height: 200
            border.color: "red"
            border.width: 20
            radius: width
            antialiasing: false
            Text {
                anchors.centerIn: parent
                text: qsTr("Turned Off")
            }
        }
    }
}
