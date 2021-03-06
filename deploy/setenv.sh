DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
export ROBOKOP_HOME="$DIR/.."
if [ "$DEPLOY" != "docker" ]; then
    export $(cat $ROBOKOP_HOME/shared/robokop.env | grep -v ^# | xargs)
fi

export CELERY_BROKER_URL="amqp://$BROKER_USER:$BROKER_PASSWORD@$BROKER_HOST:$BROKER_PORT/ranker"
export CELERY_RESULT_BACKEND="redis://$RESULTS_HOST:$RESULTS_PORT/$RANKER_RESULTS_DB"
export SUPERVISOR_PORT="$RANKER_SUPERVISOR_PORT"
export PYTHONPATH=$ROBOKOP_HOME/robokop-rank

export POSTGRES_HOST=robokopdb.renci.org
export POSTGRES_PASSWORD=$NEO4J_PASSWORD