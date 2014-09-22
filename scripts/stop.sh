cd $SCORIA_HOME_DIR$SCORIA_WORKING_DIR
cat tmp/pids/unicorn.pid | xargs kill -QUIT
rm tmp/pids/unicorn.pid
rm tmp/sockets/unicorn.sock
cd -
