import QtQuick

Window {
    id: window
    minimumHeight: 650
    maximumHeight: minimumHeight
    minimumWidth: 390
    maximumWidth: minimumWidth
    visible: true
    title: qsTr("SecureVPN Country Selection")
    color: "#0f172a"

    ListViewApplicationComponent{
        id: listView
    }
}
