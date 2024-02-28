import QtQuick
import QtQuick.Window
import QtQuick.Controls


Window {
    id: root
    width: screen.width
    height: screen.height
    visible: true
    title: qsTr("Semanhasht")



    Image {
        id: ss
        source: "img/PublicTransportation.jpeg"
        width: parent.width
        height: parent.height
        z: 50

        Label {
            text: "Semanhasht"
            anchors.top: parent.top
            anchors.topMargin: 40
            anchors.horizontalCenter: parent.horizontalCenter
            color: "white"
            font.italic: true
            font.bold: true
            font.pixelSize: 40
        }

        AnimatedImage {
            source: "img/loading.gif"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 70
            width: 80
            height: 80
        }

        Timer {
            id: timer
            interval: 2500
            running: true
            repeat: false
            onTriggered: {
                ss.visible = false
            }
        }
    }

    Component.onCompleted: {
        mainLoad.source = "qrc:/Semanhasht/qml/map.qml"
    }


    Loader {
        id: mainLoad
        width: parent.width
        height: parent.height
    }
}

