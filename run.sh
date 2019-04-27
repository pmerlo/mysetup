ansible-playbook local.yml -K -e "USER=${1?arg user is missing} EMAIL=${2?arg email is missing}"
