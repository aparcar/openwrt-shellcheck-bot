
In openwrt/package/kernel/linux/files/hotplug-sched-teql.sh line 11:
config_get teql $INTERFACE teql
                ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
config_get teql "$INTERFACE" teql


In openwrt/package/kernel/linux/files/hotplug-sched-teql.sh line 14:
    logger Adding device $DEVICE to TEQL master $teql
                         ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                                                ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
    logger Adding device "$DEVICE" to TEQL master "$teql"


In openwrt/package/kernel/linux/files/hotplug-sched-teql.sh line 16:
    tc qdisc add dev $DEVICE root $teql
                     ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                                  ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
    tc qdisc add dev "$DEVICE" root "$teql"


In openwrt/package/kernel/linux/files/hotplug-sched-teql.sh line 20:
    if ! cat /sys/class/net/$teql/carrier &>/dev/null; then
                            ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
    if ! cat /sys/class/net/"$teql"/carrier &>/dev/null; then


In openwrt/package/kernel/linux/files/hotplug-sched-teql.sh line 21:
        ifup $teql &
             ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
        ifup "$teql" &

For more information:
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
