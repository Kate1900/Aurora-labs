import QtQuick 2.0
import Sailfish.Silica 1.0

DatePickerDialog {
    property string txt: ""
    id: datePick
    anchors.verticalCenter: parent.verticalCenter
    DialogHeader { }
    onDateTextChanged: {
        datePick.txt = datePick.dateText
        //console.log(txt)
    }

}
