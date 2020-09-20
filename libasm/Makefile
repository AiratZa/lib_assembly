# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gdrake <gdrake@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/09/20 10:45:33 by gdrake            #+#    #+#              #
#    Updated: 2020/09/20 10:57:36 by gdrake           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libasm.a

BASE_FUNCS = ft_strlen ft_strcpy ft_strcmp ft_write ft_read ft_strdup

LIBASM_OBJS_DIR = ./srcs/

BASE_SRCS = $(addprefix $(LIBASM_OBJS_DIR), $(addsuffix .s, $(BASE_FUNCS)))

BASE_OBJS = $(addprefix $(LIBASM_OBJS_DIR), $(addsuffix .o, $(BASE_FUNCS)))

ASM_CMPLR = nasm
NASM_FLAGS = -f macho64

.PHONY: all clean fclean re

all: $(NAME) 

$(NAME): $(BASE_OBJS) 
	@ar rc $(NAME) $(BASE_OBJS)
	@ranlib $(NAME)
	@echo "======= BASE PART of LIBASM is created ^_^ ======="

clean: 
	rm -rf $(BASE_OBJS)

fclean: clean
	rm -rf $(NAME)

re: fclean all

%.o: %.s
	@$(ASM_CMPLR) $(NASM_FLAGS) $^ -o $@ 
	@echo "-- $@ is compiled"


TEST = test
C_CMPLR = gcc
GCC_FLAGS = -Wall -Wextra -Werror
INCLUDES = ./

TEST_ENTRY_POINT = own_tests/main.c

test: $(NAME) $(TEST_ENTRY_POINT)
	$(C_CMPLR) $(GCC_FLAGS) $(TEST_ENTRY_POINT) -I$(INCLUDES) -L. -lasm -o $(TEST)
	./test

test_from_git:
	make run -C ../libasm_test/