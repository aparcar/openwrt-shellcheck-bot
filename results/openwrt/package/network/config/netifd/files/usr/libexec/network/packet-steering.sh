
In openwrt/package/network/config/netifd/files/usr/libexec/network/packet-steering.sh line 5:
PROC_MASK="$(( (1 << $NPROCS) - 1 ))"
                     ^-----^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/network/config/netifd/files/usr/libexec/network/packet-steering.sh line 13:
		set -- $match
                       ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		set -- "$match"


In openwrt/package/network/config/netifd/files/usr/libexec/network/packet-steering.sh line 15:
		for cur in $(seq 1 $NPROCS); do
                                   ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		for cur in $(seq 1 "$NPROCS"); do


In openwrt/package/network/config/netifd/files/usr/libexec/network/packet-steering.sh line 17:
				cpu=$(($cur - 1))
                                       ^--^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/network/config/netifd/files/usr/libexec/network/packet-steering.sh line 50:
	[ -n "$(ls "${dev}/" | grep '^lower_')" ] && continue
          ^-- SC2143: Use grep -q instead of comparing output with [ -n .. ].
                ^-- SC2010: Don't use ls | grep. Use a glob or a for loop with a condition to allow non-alphanumeric filenames.


In openwrt/package/network/config/netifd/files/usr/libexec/network/packet-steering.sh line 56:
	irq_cpu_mask="$((1 << $irq_cpu))"
                              ^------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/network/config/netifd/files/usr/libexec/network/packet-steering.sh line 58:
	for q in ${dev}/queues/tx-*; do
                 ^----^ SC2231: Quote expansions in this for loop glob to prevent wordsplitting, e.g. "$dir"/*.txt .


In openwrt/package/network/config/netifd/files/usr/libexec/network/packet-steering.sh line 67:
	for q in ${dev}/queues/rx-*; do
                 ^----^ SC2231: Quote expansions in this for loop glob to prevent wordsplitting, e.g. "$dir"/*.txt .

For more information:
  https://www.shellcheck.net/wiki/SC2010 -- Don't use ls | grep. Use a glob o...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
  https://www.shellcheck.net/wiki/SC2231 -- Quote expansions in this for loop...
