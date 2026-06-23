import QtQuick 2.15

Image {
    id: root

    property alias imageSource: root.source

    width: 24
    height: 24
    fillMode: Image.PreserveAspectFit
}