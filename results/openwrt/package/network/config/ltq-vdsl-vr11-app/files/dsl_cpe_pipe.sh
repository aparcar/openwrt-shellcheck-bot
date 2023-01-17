
In openwrt/package/network/config/ltq-vdsl-vr11-app/files/dsl_cpe_pipe.sh line 14:
echo $* > /tmp/pipe/dsl_cpe${pipe_no}_cmd
     ^-- SC2048: Use "$@" (with quotes) to prevent whitespace problems.
     ^-- SC2086: Double quote to prevent globbing and word splitting.
                           ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
echo "$*" > /tmp/pipe/dsl_cpe"${pipe_no}"_cmd


In openwrt/package/network/config/ltq-vdsl-vr11-app/files/dsl_cpe_pipe.sh line 15:
result=$(cat /tmp/pipe/dsl_cpe${pipe_no}_ack)
                              ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
result=$(cat /tmp/pipe/dsl_cpe"${pipe_no}"_ack)

For more information:
  https://www.shellcheck.net/wiki/SC2048 -- Use "$@" (with quotes) to prevent...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
