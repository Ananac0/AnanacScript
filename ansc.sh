
#!/bin/bash

Version="0.2"

case "$1" in
 "-S" | "-s" | "--Setup"  | "--setup"  )       mv ./ansc.sh /usr/local/bin;
                                               echo "Установлено"

 "-V" | "-v" | "-Version" | "-version" )       echo "Version = $Version"
esac

