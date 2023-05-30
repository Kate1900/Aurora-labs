import QtQuick 2.0
import Sailfish.Silica 1.0

Page{
    id:page

    // The effective value will be restricted by ApplicationWindow.allowedOrientations
    allowedOrientations: Orientation.All

    Column{
        id:column2
        width:200
        spacing: 50
        //y:450
        Rectangle{
            width: 600;height: 200
            color: "transparent"
            Row{
                //anchors.horizontalCenter: parent.horizontalCenter
                //anchors.verticalCenter: parent.verticalCenter
                spacing:50
                //visible: false
                    Rectangle{
                        color: "red"
                        width: 200;height: 200

                    }
                    Rectangle{
                        color: "green"
                        width: 200;height: 200

                    }
                    Column{
                        width: 200
                        spacing: 50
                        Rectangle{
                            color: "blue"
                            width: parent.width;height: 200
                        }
                        Rectangle{
                            color: "black"
                            width: parent.width;height: 200
                        }
                    }
            }
        }
        Rectangle{
            color: "violet"
            width: parent.width;height: 200
        }
    }
}
