import QtQuick
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Controls.Material
import QtQuick.Layouts



ApplicationWindow {
    id: root
    width: screen.width
    height: screen.height
    visible: true
    Material.background: "white"//"#212128"
    Material.accent: Material.Indigo
    //title: qsTr("Semanhasht")

    property string start: ""
    property string end: ""

    Drawer {
        id: drawer
        width: root.width / 3.5
        height: root.height

        Column {
            spacing: 10
            width: parent.width
            TextField {
                text: start
                width: parent.width/1.3
                anchors.horizontalCenter: parent.horizontalCenter
                onActiveFocusChanged: console.log("hi")
                //onTextChanged: console.log ("hi")
            }
            TextField {
                text: end
                width: parent.width/1.3
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }
    }


    header: ToolBar{
        //Material.background: Material.Pink//"Black"//Material.BlueGrey
        height: 50

        ToolButton {
            anchors.left: parent.left
            icon.source: "img/openDrawer.png"
            onClicked: drawer.open()
        }

        // RowLayout {
        //     spacing: 690
        //     anchors.centerIn: parent
        //     ToolButton {
        //         action:navigateBackAction
        //     }
        //     Image {
        //         source: "../icons/logo2.png"
        //     }

        //     ToolButton {
        //         icon.source: "../icons/search.png"
        //         onClicked: searchdialog.open()
        //     }
        // }
    }


    // Image {
    //     id: entrancePic
    //     source: "img/PublicTransportation.jpeg"
    //     width: parent.width
    //     height: parent.height
    //     z: 50

    //     Label {
    //         text: "Semanhasht"
    //         anchors.top: parent.top
    //         anchors.topMargin: 40
    //         anchors.horizontalCenter: parent.horizontalCenter
    //         color: "white"
    //         font.italic: true
    //         font.bold: true
    //         font.pixelSize: 40
    //     }

    //     AnimatedImage {
    //         source: "img/loading.gif"
    //         anchors.horizontalCenter: parent.horizontalCenter
    //         anchors.bottom: parent.bottom
    //         anchors.bottomMargin: 70
    //         width: 80
    //         height: 80
    //     }

    //     Timer {
    //         id: timer
    //         interval: 2500
    //         running: true
    //         repeat: false
    //         onTriggered: {
    //             ss.visible = false
    //         }
    //     }
    // }

    Component.onCompleted: {
        mainLoad.source = "qrc:/Semanhasht/qml/map.qml"
    }


    Loader {
        id: mainLoad
        width: parent.width
        height: parent.height
    }
}

