

function model_help () {

cat << __EOF__

Usage:

	$ ./main.sh [Options]

Options:

	-a=ARCH, --arch=ARCH

	-n=NAME, --name=NAME

	-h, --help

Example:

	$ ./main.sh -h

	$ ./main.sh -a=amd64 -n=debian

	$ ./main.sh -a=amd64 -n=debian 1 2 3

__EOF__

}
