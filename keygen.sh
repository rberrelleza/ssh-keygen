#!/bin/sh
KEYS_PATH=${KEYS_PATH:-/data}
PRIVATE_KEY=$KEYS_PATH/id_rsa
PUBLIC_KEY=${PRIVATE_KEY}.pub
USER=${USER:-/1000}

if [ ! -f "$PRIVATE_KEY" ]; then
  /usr/bin/ssh-keygen -q -t rsa -N '' -f $PRIVATE_KEY
  chown $USER $PRIVATE_KEY
  chown $USER $PRIVATE_KEY
fi

echo "========= PUBLIC KEY ============"
cat $PUBLIC_KEY
echo "======= END PUBLIC KEY ========="

exit 0