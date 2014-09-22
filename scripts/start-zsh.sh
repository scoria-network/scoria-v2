source ~/.zshrc
cd $SCORIA_HOME_DIR$SCORIA_WORKING_DIR
unicorn -c unicorn.rb -E development -D
cd -
