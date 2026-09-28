

ARGS_LIST=()


while [[ ${#} -gt 0 ]]; do

	case "${1}" in

		-a|--arch)
			## check value is empty
			[[ -n "${2:-}" ]] || core_exit "Missing value of ${1}"
			## check first character of value is -
			[[ ${2::1} == '-' ]] && core_exit "Missing value of ${1}"
			ARG_ARCH="${2}"
			shift 2
			;;

		-n|--name)
			[[ -n "${2:-}" ]] || core_exit "Missing value of ${1}";
			[[ ${2::1} == '-' ]] && core_exit "Missing value of ${1}"
			ARG_NAME="${2}"
			shift 2
			;;

		-h|--help)
			ARG_HELP=true
			shift 1
			;;

		-*|--*)
			echo "Unknown option ${1}"
			exit
			;;
		*)
			ARGS_LIST+=("${1}")
			shift 1
			;;
	esac

done


set -- "${ARGS_LIST[@]}" ## Restore positional parameters
