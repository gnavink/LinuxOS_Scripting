	= () {				# string comparison
		case $1 in
		"$2")  return 0 ;;
		esac
		return 1
	}
