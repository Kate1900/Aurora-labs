import QtQuick 2.0
import Sailfish.Silica 1.0
import QtQuick.Particles 2.0

Page {
    Component {
            id: particles
            Item {
                id: container
                width: 200
                height: 200
                ParticleSystem { id: particleSystem }
                Emitter {
                    system: particleSystem
                    width: 10
                    height: 10
                    emitRate: 5000
                    maximumEmitted: 200
                    lifeSpan: 1000
                    velocity: TargetDirection {
                        targetX: 0
                        targetY: 0
                        targetVariation: 360
                        magnitude: 200
                    }
                }
                ItemParticle {
                    system: particleSystem
                    delegate: Rectangle {
                        property int particleSize: 10
                        width: particleSize
                        height: particleSize
                        color: "darkred"
                        radius: particleSize/2
                    }
                }
                Timer {
                    interval: 1000
                    running: true
                    onTriggered: container.destroy();
                }
            }
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                const object = particles.createObject(parent);
                object.x = mouseX
                object.y = mouseY
            }
        }
}
