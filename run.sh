ansible-playbook -i ansible/hosts ansible/build_docker.yml --extra-vars "{'src_dir':$PWD}" -vvv
