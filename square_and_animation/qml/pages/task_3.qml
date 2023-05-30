import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id:page
    // The effective value will be restricted by ApplicationWindow.allowedOrientations
    allowedOrientations: Orientation.All

    Grid{
        //y:700
        columns: 3
        rows: 2
        spacing: 50
        Rectangle{color: "red";width: 200;height: 200}
        Rectangle{color: "green";width: 200;height: 200}
        Rectangle{color: "blue";width: 200;height: 200}
        Rectangle{color: "violet";width: 200;height: 200}
        Rectangle{color: "transparent";width: 200;height: 200}
        Rectangle{color: "black";width: 200;height: 200}
    }
}
