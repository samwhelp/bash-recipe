

function model_help () {

cat << __EOF__

Usage:

	$ ./main.sh [Options]

Options:

	-a, --arch ARCH

	-n, --name NAME

	-h, --help

Example:

	$ ./main.sh -h

	$ ./main.sh -a amd64 -n debian

	$ ./main.sh -a amd64 -n debian 1 2 3

	$ ./main.sh --help

	$ ./main.sh --arch amd64 --name debian

	$ ./main.sh --arch amd64 --name debian 1 2 3

__EOF__

}
