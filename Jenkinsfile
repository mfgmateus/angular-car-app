@Library("projetas-library") _

PROJECT_NAME = "angular-car-app"
PROJECT_VERSION = "${env.BRANCH_NAME}:${BUILD_ID}"

def config = [
        name          : 'Angular Car App',
        image         : PROJECT_NAME,
        stack         : PROJECT_NAME,
        buildExtras   : '',
        key           : "${PROJECT_NAME}:${PROJECT_VERSION}",
        version       : PROJECT_VERSION,
        branch        : env.BRANCH_NAME,
        language      : 'ts',
        sonarExtras   : '',
        testExtras    : '',
        swarms        : [
                dev   : 'node01.docker.projetas.com.br',
                qa    : 'node01.docker.projetas.com.br',
                master: 'node01.docker.projetas.com.br',
        ]
]

yarnPipeline(config)
