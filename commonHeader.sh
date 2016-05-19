ARGS=$#
MYNAME=$(basename $0)
MYDIR=$(dirname $0)

### ============= customize your env in commonConstats.sh ==========
source $MYDIR/commonConstats.sh
### ============= customize your env in commonConstats.sh ==========

LOGDIR=$LOG_DIR

STDOUT_FILE="$LOGDIR/$(hostname)-$MYNAME-$$.log"
ERROUT_FILE=$STDOUT_FILE.Err
DONE=0

### ==================================================================
### ================  COMMON FUNCTION PART   =========================

source $MYDIR/commonFncts.sh

### ================  COMMON FUNCTION END   ==========================
### ==================================================================
[ ! -d $LOGDIR ] && mkdir -p $LOGDIR
[ ! -d $LOGDIR ] && printErr "can't create $LOGDIR" && exitOK
touch $STDOUT_FILE
[ ! -f $STDOUT_FILE ] && printErr "can't create $STDOUT_FILE" && exitOK
touch $ERROUT_FILE 
[ ! -f $ERROUT_FILE ] && printErr "can't create $ERROUT_FILE" && exitOK

exec	9>&1           # Link file descriptor #9 with stdout (saves stdout)
exec    1>$STDOUT_FILE
exec    2>$ERROUT_FILE
