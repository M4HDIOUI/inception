all:	up

up:
		@docker-compose -f srcs/docker-compose.yml up

down:
		@docker-compose -f srcs/docker-compose.yml down

ps:
		@docker-compose -f srcs/docker-compose.yml ps

fclean:	down
		docker rm $$(docker ps -qa);\
		docker image rm -f $$(docker image ls -q);\
		docker volume rm $$(docker volume ls -q);\

re: fclean up

.PHONY:	all up down ps fclean re