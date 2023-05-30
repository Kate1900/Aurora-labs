import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    AnimatedSprite {
        anchors.centerIn: parent
        source: "explosionFull.png"
        width: 500
        height: 500
        frameCount: 32
        frameWidth: 256
        frameHeight: 256
        frameRate: 30
        interpolate: false
    }
}
