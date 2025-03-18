


cloning_repos(){
    apt install git 
echo "cloning the first repo"
git clone https://github.com/theFoxCost/book-library-signup.git
echo "cloning the second repo"
sleep 1
git clone https://github.com/theFoxCost/book-library-loading.git
echo "cloning the second repo"
}
clear
echo "I'm Taking Break... "
sleep 6
build_docker(){
    docker build -t books_library .
    docker images
    docker run -t -d -p 8080 books_library
    clear
}

message(){
    echo "If You want To Stop The Website type docker stop books_library"
    sleep 1
    echo "If You want To Stop The Website type docker run books_library"
    sleep 1
    echo "Do you Want To Stop The website..."
    read resp
    if [ $resp == "yes" ]; then 
        docker stop books_library
    else
        echo "Aborting..."
         sleep 1
    exit
    fi
}
