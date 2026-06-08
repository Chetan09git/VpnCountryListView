import QtQuick
import QtQuick.Controls

Rectangle {
    width: 400
    height: 500
    color: "white"

    property int selectedIndex: -1

    Column {
        anchors.fill: parent
        anchors.margins: 10
        spacing: 10

        TextInput {
            id: searchInput
            width: parent.width
            height: 30

            onTextChanged: {
                countryModel.setFilterString(text)
            }
        }

        ScrollBar{
            clip: true
            width: parent.width
            background: Rectangle{anchors.fill: parent;color: "red"}
            height: parent.height - searchInput.height

            ListView {
                id: listView
                width: parent.width
                height: parent.height

                model: countryModel

                delegate: Rectangle {
                    width: listView.width
                    height: 50
                    border.color: "Black"

                    color: selectedIndex === index ?
                               "lightblue" : "lightgray"

                    Row {
                        spacing: 20

                        Image {
                            id: name
                            source: "qrc:/IndianFlag.png"

                        }
                        Text {
                            text: countryIp
                        }
                    }

                    MouseArea {
                        anchors.fill: parent

                        onClicked: {
                            selectedIndex = index
                        }
                    }
                }
            }
        }

    }
}