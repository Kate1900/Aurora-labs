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
                text: qsTr("cl: ") + counter.clickCounter + qsTr(" +:") + sum.summ + qsTr(" -:") + minus.min + qsTr(" ^:") + pow.power + qsTr(" √:") + sqr2.root2
                color: Theme.secondaryHighlightColor
                font.pixelSize: Theme.fontSizeExtraLarge
            }
            Button {
                id: counter
                text: qsTr("Click here!")
                property var clickCounter: 0

                onClicked: {
                    clickCounter++;
                }
            }
            Button {
                id: sum
                text: qsTr("+")
                property var summ: 0

                onClicked: {
                    summ = summ + counter.clickCounter;
                }
            }
            Button {
                id: minus
                text: qsTr("-")
                property var min: 0

                onClicked: {
                    min = min - counter.clickCounter;
                }
            }
            Button {
                id: pow
                text: qsTr("^")
                property var power: 0

                onClicked: {
                    power =Math.pow(counter.clickCounter,2);
                }
            }

            Button {
                id: sqr2
                text: qsTr("√")
                property var root2: 0

                onClicked: {
                    root2 = Math.sqrt(counter.clickCounter);
                }
            }

        }
    }
}
