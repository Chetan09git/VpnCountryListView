import QtQuick
import QtQuick.Controls.Basic

Rectangle {
    anchors.fill: parent
    color: "#1A1240"
    HeaderComponent{
        id: searchField
    }
    CountryListComponent{

        anchors.top: searchField.bottom
    }

    // ListView {
    //     anchors.left: parent.left
    //     clip: true
    //     anchors.right: parent.right
    //     anchors.bottom: parent.bottom

    //     model: countryModel

    //     delegate: ListViewDeleagateComponent {}
    // }
}
