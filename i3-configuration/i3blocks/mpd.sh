export MPD_HOST=10.0.0.147
#!/bin/bash 
NCMP=$(mpc | grep "^\[playing\]" | awk '{print $1}')
NUM_NCMP=$(mpc | head -1 | wc -c )
S_NCMP=$(mpc | head -1 | head -c 70)

if [ "$NCMP" = "[playing]" ];then 
    if [ "$NUM_NCMP" -lt 70 ];then 
        echo -e " $(mpc current) "
    else
        echo -e "   $S_NCMP..."
    fi
#else
#    echo -e " :Pause "
fi
 
