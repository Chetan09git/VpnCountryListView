import QtQuick
import QtQuick.Controls.Basic

Rectangle{
    width: parent.width
    height: parent.height
    color: "#1A1240"

    Rectangle{
        id: searchField
        width: parent.width
        height: parent.height * 0.06
        anchors.left: parent.left
        color: "transparent"

        Row{
            anchors.fill: parent
            leftPadding: 16
            spacing: 20
            Text{
                id: backBtn
                text: qsTr("X")
                color: "white"
                font.pixelSize: 30
                font.bold: true
                MouseArea{
                    anchors.fill: parent
                    onClicked:
                    {
                        Window.window.close()
                    }
                }

            }
            TextField{
                id: searchInput
                width: parent.width - backBtn.width *3
                height: parent.height
                font.pixelSize: 14
                verticalAlignment: TextInput.AlignVCenter
                placeholderText: "Search Here"

                placeholderTextColor: "white"
                color: "white"
                background: Rectangle{
                    anchors.fill: parent
                    radius: 20
                    color: "#3B2A6B"

                    border.color: "black"
                }
                onTextChanged: {
                    countryModel.setFilterString(text)
                }
            }
        }
    }

    ScrollView{
        clip: true
        width: parent.width
        height: parent.height - searchField.height
        anchors.top: searchField.bottom
        ListView{
            id:listView
            anchors.fill: parent
            model: countryModel
            height: contentHeight

            delegate: ListViewDeleagateComponent{

            }
        }


    }
}
