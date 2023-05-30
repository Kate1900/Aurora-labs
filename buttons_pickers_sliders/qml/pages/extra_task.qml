import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page_extra
    // The effective value will be restricted by ApplicationWindow.allowedOrientations
    allowedOrientations: Orientation.All

    PageHeader {
        id: header
        title: "Проверка на робота"
    }
    Label {
        anchors.top: header.bottom
        text: "Чтобы пройти проверку на робота, \n выберите иконку GPS"
    }
    Column {
        id: coll1
        anchors.centerIn: parent


        Row{
            Switch {
                id: sw1
                icon.source: "image://theme/icon-l-gps?"
                + (checked ? Theme.highlightColor
                   : Theme.primaryColor)
                Label {
                    text: "GPS"
                }
            }
            Switch {
                id: sw2
                icon.source: "image://theme/icon-l-bluetooth?"
                + (checked ? Theme.highlightColor
                   : Theme.primaryColor)
                Label {
                    text: "Bluetooth"
                }
            }
        }

        Row{
            Switch {
                id: sw3
                icon.source: "image://theme/icon-l-answer?"
                + (checked ? Theme.highlightColor
                   : Theme.primaryColor)
                Label {
                    text: "Phone"
                }
            }
            Switch {
                id: sw4
                icon.source: "image://theme/icon-l-usb?"
                + (checked ? Theme.highlightColor
                   : Theme.primaryColor)
                Label {
                    text: "USB"
                }
            }
        }
        Button {
            text: "Выбрать"

            onClicked: {
                if(sw1.checked == true & sw2.checked == false & sw3.checked ==false & sw4.checked ==false)
                    console.log("Проверка пройдена !")
                else console.log("Выбран не тот или лишний элемент !")
            }
        }
    }



}
