ARGS=$#
MYNAME=$(basename $0)
MYDIR=$(dirname $0)
LOGDIR=/tmp/LOG

STDOUT_FILE="$LOGDIR/$(hostname)-$MYNAME-$$.log"
ERROUT_FILE=$STDOUT_FILE.Err
DONE=0

### ==================================================================
### ================  COMMON FUNCTION PART   =========================

source $MYDIR/commonFncts.sh

### ================  COMMON FUNCTION END   ==========================
### ==================================================================
[ ! -d $LOGDIR ] && mkdir $LOGDIR
[ ! -d $LOGDIR ] && exitOK
touch $STDOUT_FILE
touch $ERROUT_FILE
exec    1>$STDOUT_FILE
exec    2>$ERROUT_FILE
