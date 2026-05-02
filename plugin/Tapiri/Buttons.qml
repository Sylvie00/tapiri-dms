import QtQuick
import qs.Common
import qs.Services
import qs.Widgets
import qs.Modules.Plugins
import Quickshell.Io
import Quickshell

PluginComponent {
    id: root

    horizontalBarPill: Component {
        Row {
            spacing: Theme.spacingL

                DankIcon {
                name: "arrow_back"
                size: Theme.iconSize
                color: Theme.primary
                anchors.verticalCenter: parent.verticalCenter

                MouseArea {
                    anchors.fill: parent
                    onClicked: Quickshell.execDetached(["/usr/bin/niri", "msg", "action", "focus-column-left"])
                }
            }
            DankIcon {
                name: "arrow_forward"
                size: Theme.iconSize
                color: Theme.primary
                anchors.verticalCenter: parent.verticalCenter

                MouseArea {
                    anchors.fill: parent
                    onClicked: Quickshell.execDetached(["/usr/bin/niri", "msg", "action", "focus-column-right"])
                }
            }
                DankIcon {
                name: "side_navigation"
                size: Theme.iconSize
                color: Theme.primary
                anchors.verticalCenter: parent.verticalCenter

                MouseArea {
                    anchors.fill: parent
                    onClicked: Quickshell.execDetached(["/usr/bin/niri", "msg", "action", "switch-preset-window-width"])
                }
            }
             DankIcon {
                name: "crop_square"
                size: Theme.iconSize
                color: Theme.primary
                anchors.verticalCenter: parent.verticalCenter

                MouseArea {
                    anchors.fill: parent
                    onClicked: Quickshell.execDetached(["/usr/bin/niri", "msg", "action", "maximize-column"])
                }
            }
            DankIcon {
                name: "picture_in_picture"
                size: Theme.iconSize
                color: Theme.primary
                anchors.verticalCenter: parent.verticalCenter

                MouseArea {
                    anchors.fill: parent
                    onClicked: Quickshell.execDetached(["/usr/bin/niri", "msg", "action", "toggle-window-floating"])
                }
            }
            DankIcon {
                name: "close"
                size: Theme.iconSize
                color: Theme.primary
                anchors.verticalCenter: parent.verticalCenter

                MouseArea {
                    anchors.fill: parent
                    onClicked: Quickshell.execDetached(["/usr/bin/niri", "msg", "action", "close-window"])
                }
            }
        }
    }

    verticalBarPill: Component {
        Column {
            spacing: Theme.spacingL

                DankIcon {
                name: "arrow_back"
                size: Theme.iconSize
                color: Theme.primary
                anchors.horizontalCenter: parent.horizontalCenter

                MouseArea {
                    anchors.fill: parent
                    onClicked: Quickshell.execDetached(["/usr/bin/niri", "msg", "action", "focus-column-left"])
                }
            }
            DankIcon {
                name: "arrow_forward"
                size: Theme.iconSize
                color: Theme.primary
                anchors.horizontalCenter: parent.horizontalCenter

                MouseArea {
                    anchors.fill: parent
                    onClicked: Quickshell.execDetached(["/usr/bin/niri", "msg", "action", "focus-column-right"])
                }
            }
                DankIcon {
                name: "side_navigation"
                size: Theme.iconSize
                color: Theme.primary
                anchors.horizontalCenter: parent.horizontalCenter

                MouseArea {
                    anchors.fill: parent
                    onClicked: Quickshell.execDetached(["/usr/bin/niri", "msg", "action", "switch-preset-window-width"])
                }
            }
             DankIcon {
                name: "crop_square"
                size: Theme.iconSize
                color: Theme.primary
                anchors.horizontalCenter: parent.horizontalCenter

                MouseArea {
                    anchors.fill: parent
                    onClicked: Quickshell.execDetached(["/usr/bin/niri", "msg", "action", "maximize-column"])
                }
            }
            DankIcon {
                name: "picture_in_picture"
                size: Theme.iconSize
                color: Theme.primary
                anchors.horizontalCenter: parent.horizontalCenter

                MouseArea {
                    anchors.fill: parent
                    onClicked: Quickshell.execDetached(["/usr/bin/niri", "msg", "action", "toggle-window-floating"])
                }
            }
            DankIcon {
                name: "close"
                size: Theme.iconSize
                color: Theme.primary
                anchors.horizontalCenter: parent.horizontalCenter

                MouseArea {
                    anchors.fill: parent
                    onClicked: Quickshell.execDetached(["/usr/bin/niri", "msg", "action", "close-window"])
                }
            }
        }
    }
}