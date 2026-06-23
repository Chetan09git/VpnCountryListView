import QtQuick
import QtQuick.Layouts

Column {
    id: root
    width: listView.width
    property bool expanded: false

    Rectangle {
        id: dataRect
        width: parent.width
        height: 50
        color: "#1A1240"

        BorderComponent {
            width: parent.width * 0.9
            anchors.horizontalCenter: parent.horizontalCenter
        }

        RowLayout {
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            anchors.right: parent.right
            spacing: 12

            Item {
                width: 10
                height: 1
            }

            CustomImage {
                imageSource: "qrc:/Png/angle-small-down.png"
                opacity: cities.length > 0 ? 1.0 : 0.0
                Layout.preferredWidth: 24
                Layout.preferredHeight: 24
            }

            CustomImage {
                source: "qrc:/IndianFlag.png"
                Layout.preferredWidth: 32
                Layout.preferredHeight: 24
            }

            Text {
                text: countryName
                color: "white"
                font.pixelSize: 18
                Layout.fillWidth: true
            }
        }

        MouseArea {
            anchors.fill: parent
            enabled: cities.length > 0
            onClicked: root.expanded = !root.expanded
        }
    }
    CitiesListComponent{

    }



}