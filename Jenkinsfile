pipeline {
    agent any


    stages {
        stage ('first stage') {
            steps {
                echo "inside first stage"
            }
        }
        stage ('second stage') {
            steps {
                echo "inside second stage"
            }
        }
    }


    post {
        success {
            echo "success"
        }

        unsuccessful {
            echo "failed"
        }
    }
}