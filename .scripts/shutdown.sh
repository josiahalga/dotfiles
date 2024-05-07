# close all client windows
# required for graceful exit since many apps aren't good SIGNAL citizens
mkdir -p /tmp/hypr

HYPRCMDS=$(hyprctl -j clients | jq -j '.[] | "dispatch closewindow address:\(.address); "')
hyprctl --batch "$HYPRCMDS" >> /tmp/hypr/hyprexitwithgrace.log 2>&1

sleep 0.5

shutdown now >> /tmp/hypr/hyprexitwithgrace.log 2>&1
