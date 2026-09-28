
# A POSIX variable
OPTIND=1 # Reset in case getopts has been used previously in the shell.


ARGS_LIST=()




while getopts "a:n:h?" opt; do

	case "${opt}" in

		a)
			ARG_ARCH="${OPTARG}"
			;;

		n)
			ARG_NAME="${OPTARG}"
			;;

		h|\?)
			ARG_HELP=true
			;;
	esac

done

shift $((OPTIND-1))

[[ "${1:-}" == "--" ]] && shift

ARGS_LIST=${@}
