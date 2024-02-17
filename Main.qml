import QtQuick
import QtQuick.Window

Window {
    id: root
    width: screen.width
    height: screen.height
    visible: true
    title: qsTr("Semanhasht")
    Component.onCompleted: {
        mainLoad.source = "qrc:/Semanhasht/qml/map.qml"
    }

    Loader {
        id: mainLoad
        width: parent.width
        height: parent.height
    }
}

