

ARGS_LIST=()


for i in "${@}"; do

	case "${i}" in

		-a=*|--arch=*)
			TMP_VALUE="${i#*=}"
			## check value is empty
			[[ -n "${TMP_VALUE:-}" ]] || core_exit "Missing value of ${1}"
			## check first character of value is -
			[[ ${TMP_VALUE::1} == '-' ]] && core_exit "Missing value of ${1}"
			ARG_ARCH="${TMP_VALUE}"
			shift 1
			;;

		-n=*|--name=*)
			TMP_VALUE="${i#*=}"
			[[ -n "${TMP_VALUE:-}" ]] || core_exit "Missing value of ${1}";
			[[ ${TMP_VALUE::1} == '-' ]] && core_exit "Missing value of ${1}"
			ARG_NAME="${TMP_VALUE}"
			shift 1
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
