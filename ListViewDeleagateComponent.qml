import QtQuick
import QtQuick.Layouts

Column{
    width: listView.width
    property bool expanded: false

    Rectangle{
        id: dataRect
        width: parent.width
        height: 50
        color: "#1A1240"

        BorderComponent{
            width: parent.width *0.9
            anchors.horizontalCenter: parent.horizontalCenter
        }


        RowLayout {
            anchors.verticalCenter: parent.verticalCenter
            Item {id: name;width: 10;height: 1}
            Item{
                Layout.preferredWidth: parent.height + parent.width * 0.01
                Layout.preferredHeight: parent.height * 0.6
                CustomImage {
                    imageSource: "qrc:/Png/angle-small-down.png"
                    visible: cities.length > 0
                    MouseArea { anchors.fill: parent; onClicked: expanded = !expanded }
                }

            }
            CustomImage{
                source: "qrc:/IndianFlag.png"
                Layout.preferredWidth: parent.parent.width * 0.1
                Layout.preferredHeight:  parent.height
            }

            Text {
                text: countryName
                color: "white"
                font.pixelSize: 18
            }
        }
        MouseArea {
            anchors.fill: arrowBtn
            onClicked: expanded = !expanded
        }

    }
    ListView {
        id: citie

        width: parent.width
        visible: expanded

        height: expanded ? contentHeight : 0

        model: cities

        delegate: Rectangle {
            width: parent.width
            height: 50
            color: "#2a1c50"

            BorderComponent{
                width: parent.width *0.9
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Text {
                anchors.centerIn: parent
                text: modelData
                color: "white"
            }
        }
    }

}