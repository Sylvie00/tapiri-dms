import QtQuick
import qs.Common
import qs.Services
import qs.Widgets
import qs.Modules.Plugins
import Quickshell.Io
import Quickshell

PluginComponent {
    id: root

    property bool showFocusLeft:   pluginData.showFocusLeft  !== undefined ? pluginData.showFocusLeft  : true
    property bool showFocusRight:  pluginData.showFocusRight !== undefined ? pluginData.showFocusRight : true
    property bool showOverview:    pluginData.showOverview   !== undefined ? pluginData.showOverview   : true
    property bool showPresetWidth: pluginData.showPresetWidth !== undefined ? pluginData.showPresetWidth : true
    property bool showMaximize:    pluginData.showMaximize   !== undefined ? pluginData.showMaximize   : true
    property bool showFloat:       pluginData.showFloat      !== undefined ? pluginData.showFloat      : true
    property bool showClose:       pluginData.showClose      !== undefined ? pluginData.showClose      : true

    horizontalBarPill: Component {
        Row {
            spacing: Theme.spacingL

                DankIcon {
                name: "arrow_back"
                visible: root.showFocusLeft
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
                visible: root.showFocusRight
                size: Theme.iconSize
                color: Theme.primary
                anchors.verticalCenter: parent.verticalCenter

                MouseArea {
                    anchors.fill: parent
                    onClicked: Quickshell.execDetached(["/usr/bin/niri", "msg", "action", "focus-column-right"])
                }
            }
            DankIcon {
                name: "dashboard"
                visible: root.showOverview
                size: Theme.iconSize
                color: Theme.primary
                anchors.horizontalCenter: parent.horizontalCenter

                MouseArea {
                    anchors.fill: parent
                    onClicked: Quickshell.execDetached(["/usr/bin/niri", "msg", "action", "toggle-overview"])
                }
            }
                DankIcon {
                name: "side_navigation"
                visible: root.showPresetWidth
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
                visible: root.showMaximize
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
                visible: root.showFloat
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
                visible: root.showClose
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
                visible: root.showFocusLeft
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
                visible: root.showFocusRight
                size: Theme.iconSize
                color: Theme.primary
                anchors.horizontalCenter: parent.horizontalCenter

                MouseArea {
                    anchors.fill: parent
                    onClicked: Quickshell.execDetached(["/usr/bin/niri", "msg", "action", "focus-column-right"])
                }
            }
            DankIcon {
                name: "dashboard"
                visible: root.showOverview
                size: Theme.iconSize
                color: Theme.primary
                anchors.horizontalCenter: parent.horizontalCenter

                MouseArea {
                    anchors.fill: parent
                    onClicked: Quickshell.execDetached(["/usr/bin/niri", "msg", "action", "toggle-overview"])
                }
            }
            DankIcon {
                name: "side_navigation"
                visible: root.showPresetWidth
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
                visible: root.showMaximize
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
                visible: root.showFloat
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
                visible: root.showClose
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