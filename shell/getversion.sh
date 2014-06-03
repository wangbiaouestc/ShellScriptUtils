version=
while getopts ":r:" opt; do
    case $opt in
    r)
        echo "test version is R$OPTARG" >&2
        version=$OPTARG
        ;;
    \?)
        echo "invalid option:-$OPTARG">&2
        exit 1
        ;;
    :)
        echo "option -$OPTARG requires an argument." >&2
        exit 1
        ;;
    esac
done
if  [[ -z "$version" ]];then 
    echo "please specify test version with -r "
    exit 1
fi
