packdataforplot(){
    Head=$1
    f=$2
    of=$3
    if [[ -f $of ]]
        then
        mv $of $of.backup
    fi
    
    echo $Head >> $of
    sed 's/|//g' $f > ydata.dat
    LINENUMBER=`cat ydata.dat | wc -l`
    seq 1 $LINENUMBER > xdata.dat
    paste -d ' ' xdata.dat ydata.dat > total.dat
    cat total.dat >>$of
    rm xdata.dat
    rm ydata.dat
    rm total.dat
}


packdataforplotwithX(){
    Yheader=$1
    Xheader=$2
    if=$3
    of=$4
    if [[ -f $of ]]
        then
        mv $of $of.backup
    fi
    echo $Yheader >> $of
    sed 's/|//g' $if > ydata.dat
    LINENUMBER=`cat ydata.dat | wc -l`
    echo $Xheader |tr ' ' '\n' > xdata.dat
    paste -d ' ' xdata.dat ydata.dat > total.dat
    cat total.dat >>$of
    rm xdata.dat
    rm ydata.dat
    rm total.dat
}