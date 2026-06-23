import QtQuick

Item {
    id: searchField
    width: parent.width
    height: parent.height * 0.1

    Row {
        id: searchRow
        anchors.fill: parent
        leftPadding: 16
        topPadding: 16
        spacing: 20

        CustomImage{
            id: backButton
            width: parent.width * 0.08
            height: width
            imageSource: "qrc:/Png/angle-small-left.png"
            MouseArea {anchors.fill: parent; onClicked: Window.window.close()
            }
        }

        SerachComponent {
            id: searchInput
            width: parent.width - backButton.width * 2.5
            height: parent.height * 0.68

            onTextChanged:
                countryModel.setFilterString(text)
        }
    }
}
