import QtQuick

ListView {
    clip: true
    model: countryModel
    delegate: ListViewDeleagateComponent {}
}
