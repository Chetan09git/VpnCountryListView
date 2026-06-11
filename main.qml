import QtQuick

Window {
    id: window
    minimumHeight: 650
    maximumHeight: minimumHeight
    minimumWidth: 390
    maximumWidth: minimumWidth
    visible: true
    title: qsTr("SecureVPN Country Selection")
    color: "#0f172a"

    ListViewApplicationComponent {
        // anchors.fill: parent
    }
    // ListViewComponent{

    // }

}
// ListView {
//     id: listView
//     anchors.fill: parent
//     model: countryModel

//     delegate: Column {
//         width: listView.width

//         property bool expanded: false

//         Rectangle {
//             width: parent.width
//             height: 50
//             color: "#1A1240"

//             Row {
//                 anchors.verticalCenter: parent.verticalCenter
//                 spacing: 10

//                 Text {
//                     text: expanded ? "-" : "+"
//                     color: "white"
//                 }

//                 Text {
//                     text: countryName
//                     color: "white"
//                     font.pixelSize: 18
//                 }
//             }

//             MouseArea {
//                 anchors.fill: parent
//                 onClicked: expanded = !expanded
//             }
//         }

//         ListView {
//             width: parent.width
//             height: expanded ? contentHeight : 0

//             model: expanded ? cities : []

//             delegate: Rectangle {
//                 width: parent.width
//                 height: 40
//                 color: "#2a1c50"

//                 Text {
//                     anchors.centerIn: parent
//                     text: modelData
//                     color: "white"
//                 }
//             }
//         }
//     }
// }