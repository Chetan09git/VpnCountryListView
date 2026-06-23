import QtQuick

ListView {
    id: citiesListView
    width: parent.width
    visible: root.expanded
    height: root.expanded ? contentHeight : 0
    model: cities

    delegate: Rectangle {
        width: parent.width
        height: 50
        color: "#2a1c50"

        BorderComponent {
            width: parent.width * 0.9
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Text {
            anchors.centerIn: parent
            text: modelData
            color: "white"
        }
    }
}
