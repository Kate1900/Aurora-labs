import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page11

//    Rectangle {
//            id: contextColorRect
//            anchors.centerIn: parent
//            width: 100; height: 100
//            color: "black"
//            MouseArea {
//                id: longPressArea
//                anchors.fill: parent
//                onPressAndHold: myContextMenu.open()
//            }
//        }

//        // Create a menu with different menu items.
//        ContextMenu {
//            id: myContextMenu
//            ListItem {
//                MenuItem {text: "Red"; onClicked: { contextColorRect.color = "darkred" } }
//                MenuItem {text: "Green"; onClicked: { contextColorRect.color = "darkgreen" }}
//                MenuItem {text: "Blue"; onClicked: { contextColorRect.color = "darkblue" }}
//                MenuItem {text: "Black is an extremely beautiful and stylish color"; onClicked: { contextColorRect.color = "black" }}
//            }
//          }

    SilicaListView {
        anchors.fill: parent
        model: 20
        delegate: ListItem {
            id: delegate
            Label {
                x: Theme.paddingLarge
                text: "List Item #" + index
                color: delegate.highlighted ? Theme.highlightColor : Theme.primaryColor
            }
            menu: ContextMenu {
                MenuLabel { text: "Context Menu" }
                MenuItem {
                    text: "Menu Item 1"
                    onClicked: console.log("Menu Item 1 is clicked")
                }
                MenuItem {
                    text: "Menu Item 2"
                    onClicked: console.log("Menu Item 2 is clicked")
                }
            }
        }
        VerticalScrollDecorator {}
    }


}
