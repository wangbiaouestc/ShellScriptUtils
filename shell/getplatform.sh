targetplatform=
while getopts ":p:" opt; do
    case $opt in
    p)
        echo "target platform is $OPTARG" >&2
        targetplatform=$OPTARG
        ;;
    \?)
        echo "invalid option:-----$OPTARG">&2
        exit 1
        ;;
    :)
        echo "option -$OPTARG requires an argument." >&2
        exit 1
        ;;
    esac
done
if  [[ -z "$targetplatform" ]];then 
    echo "please specify target platform with -p "
    exit 1
fi
