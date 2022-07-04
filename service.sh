#!/system/bin/sh

MODDIR=${0%/*}
bin_path=$MODDIR/binary
conf_path=$MODDIR/config
PERSONAL_CONF_PATH=/sdcard/Android/aria2

until [ $(getprop sys.boot_completed) -eq 1 ];do
	sleep 5
done

if [ -f "$PERSONAL_CONF_PATH/update" ]; then
    cp -R $PERSONAL_CONF_PATH/* $MODDIR/config/
    find $MODDIR/config/ -type f -name "*.sh" -exec chmod +x {} \;
fi

cat /etc/security/cacerts/* | nohup $bin_path/aria2c \
--ca-certificate=/proc/self/fd/0 \
--async-dns \
--async-dns-server=`getprop net.dns1`,`getprop net.dns2` \
--conf-path=$conf_path/aria2.conf 1>/dev/null 2>&1 &


