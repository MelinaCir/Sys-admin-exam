
function header
{
		echo ""
		echo ""
		echo "=============== $1 ==============="
		echo ""
}

function install_apache
{
	if which apache2 > /dev/null; then
		echo "Apache2 is already installed"
	else
		echo "Installing apache2"
		sudo apt-get install apache2
	fi

	apache2 -v
	echo "==================================="
	echo ""
}


