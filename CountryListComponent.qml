import QtQuick

ListView {
    anchors.top: searchField.bottom
    anchors.left: parent.left
    clip: true
    anchors.right: parent.right
    anchors.bottom: parent.bottom

    model: countryModel

    delegate: ListViewDeleagateComponent {}
}
