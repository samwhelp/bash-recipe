

function model_help () {

cat << __EOF__

Usage:

	$ ./main.sh [Options]

Options:

	-a ARCH

	-n NAME

	-h

Example:

	$ ./main.sh -h

	$ ./main.sh -a amd64 -n debian

	$ ./main.sh -a amd64 -n debian 1 2 3

__EOF__

}
