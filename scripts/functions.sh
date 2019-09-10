ubuntu@node-js-web-1:~/scripts$ vim functions.sh 

function header
{ 
        echo ""
        echo ""
        echo "============== $1 =============="
        echo ""
}


function install_node
{
        if which node > /dev/null; then
                echo "Node.js is already installed, skipping"
        else
                curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
                sudo apt-get install -y nodejs
        fi

        echo "Node.js version:"
        node -v
        echo "==========================================="
        echo ""
}

function install_unzip
{
        if which unzip > /dev/null; then
                echo "Unzip is already installed, skipping"
        else
                echo "Installing unzip"
                sudo apt-get -qq -y install unzip
        fi
}

function install_nginx
{
		if which nginx > /dev/null; then
			echo "Nginx is already installed, skipping"
		else
			sudo apt install nginx -y
		fi

		nginx -v
		echo "==============================="
		echo ""
}
