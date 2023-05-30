import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page5
    // The effective value will be restricted by ApplicationWindow.allowedOrientations
    allowedOrientations: Orientation.All

    DatePicker{
        id: datePick
        anchors.verticalCenter: parent.verticalCenter
        daysVisible: true
        weeksVisible: true
        monthYearVisible: true
        onDateTextChanged: console.log("Выбрана дата: " + datePick.dateText)
        //onDateChanged:

//        property var dt : console.log("Выбрана дата: " + datePick.day + "/" + datePick.month + "/" + datePick.year)
//        delegate: datePick.dt


//        function outDate(){
//            datePick.date = new Date(year, month-1, day)
//            console.log(datePick.dateText)
//    }
        //delegate: console.log(outDate())


//        delegate: MouseArea {
//            width: datePick.cellWidth
//            height: datePick.cellHeight
//            visible: true
//            onClicked: {
//                datePick.date = new Date(year, month-1, day)
//                console.log(datePick.dateText)
//            }
//        }
    }
}
