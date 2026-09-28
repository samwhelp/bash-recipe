#!/usr/bin/env bash


source "init.sh"

source "args.sh"


function main_start () {

	echo "ARG_ARCH: ${ARG_ARCH}"
	echo "ARG_NAME: ${ARG_NAME}"

	echo "ARGS_LIST: ${ARGS_LIST[@]} "


}


function __main__ () {

	echo "${@}"

	if [[ "${ARG_HELP}" == true ]]; then
		model_help
		exit 0
	fi

	main_start

}

__main__ "${@}"
