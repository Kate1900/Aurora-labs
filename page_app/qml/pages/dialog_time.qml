import QtQuick 2.0
import Sailfish.Silica 1.0

TimePickerDialog {
    property string txt: ""
    id: timePick
    anchors.verticalCenter: parent.verticalCenter
    DialogHeader { }
    onTimeTextChanged: {
        timePick.txt = timePick.timeText
        //console.log(txt)
    }

}
