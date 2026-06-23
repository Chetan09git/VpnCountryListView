import QtQuick.Layouts

ColumnLayout {
    anchors.fill: parent

    HeaderComponent {
        Layout.fillWidth: true
        Layout.preferredHeight: 60
    }

    CountryListComponent {
        Layout.fillWidth: true
        Layout.fillHeight: true
    }
}