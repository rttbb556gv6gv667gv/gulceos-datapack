scoreboard objectives add ap_load dummy
scoreboard objectives add __code dummy
data modify storage custom:storage Action.Main append value []
data modify storage custom:storage Action.UI append value []
data modify storage custom:storage Temp.Macro.Action append value []

schedule function gulceos:updater/success 3s

