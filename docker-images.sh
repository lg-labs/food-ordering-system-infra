gcloud login

docker tag com.labs.lg.food.ordering.system/customer-service:$1  europe-west4-docker.pkg.dev/ecstatic-pod-440722-m0/food-ordering-system-repository/customer-service:$1
docker tag com.labs.lg.food.ordering.system/order-service:$1  europe-west4-docker.pkg.dev/ecstatic-pod-440722-m0/food-ordering-system-repository/order-service:$1
docker tag com.labs.lg.food.ordering.system/restaurant-service:$1  europe-west4-docker.pkg.dev/ecstatic-pod-440722-m0/food-ordering-system-repository/restaurant-service:$1
docker tag com.labs.lg.food.ordering.system/payment-service:$1  europe-west4-docker.pkg.dev/ecstatic-pod-440722-m0/food-ordering-system-repository/payment-service:$1


docker push europe-west4-docker.pkg.dev/ecstatic-pod-440722-m0/food-ordering-system-repository/customer-service:$1
docker push europe-west4-docker.pkg.dev/ecstatic-pod-440722-m0/food-ordering-system-repository/order-service:$1
docker push europe-west4-docker.pkg.dev/ecstatic-pod-440722-m0/food-ordering-system-repository/restaurant-service:$1
docker push europe-west4-docker.pkg.dev/ecstatic-pod-440722-m0/food-ordering-system-repository/payment-service:$1