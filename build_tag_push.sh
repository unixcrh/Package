if [ -z "$1" ]; then
    echo "You must specify a private registry DNS name as first arg"
    exit
fi
if [ -z "$2" ]; then
    echo "You must specify an image tag as second arg"
    exit
fi

docker build -t "$1/contoso-bikerental-bikes:$2" Bikes/
docker build -t "$1/contoso-bikerental-gateway:$2" Gateway/app/
docker build -t "$1/contoso-bikerental-reservationengine:$2" ReservationEngine/app/
docker build -t "$1/contoso-bikerental-users:$2" Users/app/

docker push "$1/contoso-bikerental-bikes:$2"
docker push "$1/contoso-bikerental-gateway:$2"
docker push "$1/contoso-bikerental-reservationengine:$2"
docker push "$1/contoso-bikerental-users:$2"