import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    // The effective value will be restricted by ApplicationWindow.allowedOrientations
    allowedOrientations: Orientation.All

    // To enable PullDownMenu, place our content in a SilicaFlickable
    SilicaFlickable {
        anchors.fill: parent

        // PullDownMenu and PushUpMenu must be declared in SilicaFlickable, SilicaListView or SilicaGridView
        PullDownMenu {
            MenuItem {
                text: qsTr("Show Page 2")
                onClicked: pageStack.push(Qt.resolvedUrl("SecondPage.qml"))
            }
            MenuItem {
                text: qsTr("task 1")
                onClicked: pageStack.push(Qt.resolvedUrl("task_1.qml"))
            }
            MenuItem {
                text: qsTr("task 2")
                onClicked: pageStack.push(Qt.resolvedUrl("task_2.qml"))
            }
            MenuItem {
                text: qsTr("task 3")
                onClicked: pageStack.push(Qt.resolvedUrl("task_3.qml"))
            }
            MenuItem {
                text: qsTr("task 4")
                onClicked: pageStack.push(Qt.resolvedUrl("task_4.qml"))
            }
            MenuItem {
                text: qsTr("task 5")
                onClicked: pageStack.push(Qt.resolvedUrl("task_5.qml"))
            }
            MenuItem {
                text: qsTr("task 6")
                onClicked: pageStack.push(Qt.resolvedUrl("task_6.qml"))
            }
            MenuItem {
                text: qsTr("task 7")
                color: "transparent"
                onClicked: pageStack.push(Qt.resolvedUrl("task_7.qml"))
            }
        }

        // Tell SilicaFlickable the height of its content.
        contentHeight: column.height

        // Place our content in a Column.  The PageHeader is always placed at the top
        // of the page, followed by our content.
        Column {
            id: column

            width: page.width
            spacing: Theme.paddingLarge
            PageHeader {
                title: qsTr("UI Template")
            }
            Label {
                x: Theme.horizontalPageMargin
                text: qsTr("Hello Sailors")
                color: Theme.secondaryHighlightColor
                font.pixelSize: Theme.fontSizeExtraLarge
            }
        }
    }
}
