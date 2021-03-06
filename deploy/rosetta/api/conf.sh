export ROSETTA_WF_PORT=5007

export RESULTS_PORT=6345
export CELERY_APP_PACKAGE="greent.flow.dag"
export RABBITMQ_DEFAULT_VHOST=rosetta
export PYTHONPATH=$APP_ROOT
export APP_NAME=rosetta
export RABBITMQ_DEFAULT_VHOST=$APP_NAME

export BROKER_USER=guest
export BROKER_PASSWORD=guest
export ADMIN_PASSWORD=admin
export BROKER_AUTH="$BROKER_USER:$BROKER_PASSWORD@"

export BROKER_HOST=localhost
export BROKER_CONNECT_ID=rabbit
export BROKER_PORT=5672

export CELERY_BROKER_URL="amqp://${BROKER_AUTH}$BROKER_HOST:$BROKER_PORT/${APP_NAME}"
export CELERY_RESULT_BACKEND="redis://$RESULTS_HOST:$RESULTS_PORT/$RANKER_RESULTS_DB"

export SUPERVISOR_PORT=9004

export BUILDER_PORT=6010
export RANKER_PORT=6011

export BUILDER_BUILD_GRAPH_ENDPOINT=api/
export BUILDER_TASK_STATUS_ENDPOINT=api/task/

export ROBOKOP_BUILDER_BUILD_GRAPH_URL="$localhost:$BUILDER_PORT/${BUILDER_BUILD_GRAPH_ENDPOINT}"
export ROBOKOP_BUILDER_TASK_STATUS_URL="$localhost:$BUILDER_PORT/${BUILDER_TASK_STATUS_ENDPOINT}"

export ROBOKOP_ANSWERS_NOW_ENDPOINT=api/now

export ROBOKOP_RANKER_ANSWERS_NOW_URL="$localhost:$RANKER_PORT/${ROBOKOP_ANSWERS_NOW_ENDPOINT}"

