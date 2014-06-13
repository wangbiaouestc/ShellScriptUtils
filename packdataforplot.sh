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