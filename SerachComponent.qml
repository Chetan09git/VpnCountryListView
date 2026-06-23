import QtQuick
import QtQuick.Controls

TextField {
    id: searchInput
    leftPadding: 45
    verticalAlignment: Text.AlignVCenter
    background: Rectangle {
        radius: 15
        color: "#3B2A6B"

        Image {
            width: parent.width * 0.08
            height: width
            anchors.left: parent.left
            anchors.leftMargin: 10
            anchors.verticalCenter: parent.verticalCenter
            source: "qrc:/Png/icons8-search-50.png"
        }
    }
}