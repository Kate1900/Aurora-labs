import QtQuick 2.0
import Sailfish.Silica 1.0
import QtQuick.Particles 2.0

Page {
    ParticleSystem{
        id: particleSyst
    }
    Emitter{
        height: 10
        width: 20
        system: particleSyst
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        lifeSpan: 9000
        lifeSpanVariation: 500
        emitRate: 70
        velocity: AngleDirection{
            magnitude: 200
            angle: -90
            angleVariation: 10
        }
    }
    ItemParticle {
        system: particleSyst
        delegate: Rectangle {
            property int particleSize: 10
            width: particleSize
            height: particleSize
            color: "darkred"
            radius: particleSize/2
        }
    }
    Gravity {
        system: particleSyst
        anchors.fill: parent
        angle: 90
        magnitude: 50
    }

}
