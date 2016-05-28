export CONFIG_DIR=$HOME/.config/env.d
export HOMEBREW_ROOT=/opt/homebrew

for file in `find $CONFIG_DIR -depth 1`; do
  source $file
done
