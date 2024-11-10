see

https://commandprompt.com/education/postgresql-create-database-if-not-exists/

https://docs.docker.com/reference/compose-file/services/#healthcheck

JAVA email
* https://www.digitalocean.com/community/tutorials/javamail-example-send-mail-in-java-smtp
* https://github.com/jakartaee/mail-api
* https://jakartaee.github.io/mail-api/


JAVASCRIPT EMail
* https://www.emailjs.com/


song:I Put A Spell On You
artist:Samantha Fish


Problemas & Soluções:
* Conflito de portas entre o keycloak e mendix
Usar definição de porta no script de inicialização do keycloak: 'start-dev --http-port 8100', bem como mudar as portas para 8100
* Mendix iniciava sem o database 'mendix' ter sido criado
Criar um script SQL que é gravado no volume do container numa pasta especial que executa arquivos *.sql
'./.docker/scripts:/docker-entrypoint-initdb.d'
* Ordem da execução dos containers
Usar o depends_on com a sintaxe mais longa, com a instrução 'service_healthy'
* Containers nao conseguem se 'pingar' (keycloak e mailpit)
usar a mesma network
na configuração do envio de email no keycloak, usar 'mailpit' ao inves de localhost, com a porta 1025
adicionar 'mailpit' no depends_on de 'keycloak'

* para obter as infos automaticas de configuração : https://www.keycloak.org/securing-apps/oidc-layers
* problemas com redirect url - https://stackoverflow.com/questions/45352880/keycloak-invalid-parameter-redirect-uri

