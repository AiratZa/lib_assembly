NAME = libasm.a

BASE_FUNCS = ft_strlen ft_strcpy ft_strcmp ft_write ft_read ft_strdup

LIBASM_OBJS_DIR = ./srcs/

BASE_SRCS = $(addprefix $(LIBASM_OBJS_DIR), $(addsuffix .s, $(BASE_FUNCS)))

BASE_OBJS = $(addprefix $(LIBASM_OBJS_DIR), $(addsuffix .o, $(BASE_FUNCS)))

ASM_CMPLR = nasm
NASM_FLAGS = -f macho64

.PHONY: all clean fclean

all: $(NAME) 

$(NAME): $(BASE_OBJS) 
	@ar rc $(NAME) $(BASE_OBJS)
	@ranlib $(NAME)
	@echo "======= BASE PART of LIBASM is created ^_^ ======="

clean: 
	rm -rf $(BASE_OBJS)

fclean: clean
	rm -rf $(NAME)

%.o: %.s
	@$(ASM_CMPLR) $(NASM_FLAGS) $^ -o $@ 
	@echo "-- $@ is compiled"


TEST = test
C_CMPLR = gcc
GCC_FLAGS = -Wall -Wextra -Werror
INCLUDES = ./

TEST_ENTRY_POINT = main.c

test: $(NAME) main.c
	$(C_CMPLR) $(GCC_FLAGS) $(TEST_ENTRY_POINT) -I$(INCLUDES) -L. -lasm -o $(TEST)