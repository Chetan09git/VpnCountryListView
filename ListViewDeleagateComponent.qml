import QtQuick
import QtQuick.Layouts

Column{
    width: listView.width
    leftPadding: 10
    property bool expanded: false

    Rectangle{
        id: dataRect
        width: parent.width
        height: 50
        color: "#1A1240"
        Rectangle{width: parent.width *0.96;height: 1;color: "silver"; anchors.bottom: dataRect.bottom}

        RowLayout {
            anchors.verticalCenter: parent.verticalCenter
            Item{
                Layout.preferredWidth: parent.height + parent.width * 0.01
                Layout.preferredHeight: parent.height * 0.6
            Image {
                id:arrowBtn
                anchors.fill: parent

                visible: cities.length > 0
                source: "qrc:/down-chevron.png"
                MouseArea { anchors.fill: parent; onClicked: expanded = !expanded }
            }
            }
            Image{
               Layout.preferredWidth: parent.parent.width * 0.1
                Layout.preferredHeight:  parent.height
                source: "qrc:/IndianFlag.png"
                fillMode: Image.PreserveAspectFit
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

            Text {
                anchors.centerIn: parent
                text: modelData
                color: "white"
            }
        }
    }

}