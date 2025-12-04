NAME		= libft.a
CC			= cc
CFLAGS		= -Wall -Wextra -Werror
ARFLAGS 	= rcs
RM			= rm -f
INCLUDE 	= -Iinclude
AR			= ar

SRCS = 	src/ft_atoi.c \
		src/ft_bzero.c \
		src/ft_calloc.c \
		src/ft_isalnum.c \
		src/ft_isalpha.c \
		src/ft_isascii.c \
		src/ft_isdigit.c \
		src/ft_isprint.c \
		src/ft_itoa.c \
		src/ft_memchr.c \
    	src/ft_memcmp.c \
		src/ft_memcpy.c \
		src/ft_memmove.c \
		src/ft_memset.c \
		src/ft_putchar_fd.c \
    	src/ft_putendl_fd.c \
		src/ft_putnbr_fd.c \
		src/ft_putstr_fd.c \
		src/ft_strlcat.c \
		src/ft_strlcpy.c \
    	src/ft_split.c \
		src/ft_strchr.c \
		src/ft_strdup.c \
		src/ft_striteri.c \
		src/ft_strjoin.c \
    	src/ft_strlen.c \
		src/ft_strmapi.c \
		src/ft_strncmp.c \
		src/ft_strnstr.c \
    	src/ft_strrchr.c \
		src/ft_strtrim.c \
		src/ft_substr.c \
		src/ft_tolower.c \
		src/ft_toupper.c \
		src/ft_printf.c \
		src/ft_printf_utils.c \
		src/ft_is_unsigned_int.c \
		src/get_next_line.c \
		src/get_next_line_utils.c \
		src/ft_strcmp.c

OBJS = $(SRCS:src/%.c=obj/%.o)

GREEN = \033[0;32m
RED = \033[0;31m
BLUE = \033[0;34m
YELLOW = \033[0;33m
CYAN = \033[0;36m
RESET = \033[0m
CHECK = \033[0;34m✔\033[0m
BOLD = \033[1m

all: $(NAME)

$(NAME): $(OBJS)
	@$(AR) $(ARFLAGS) $(NAME) $(OBJS)
	@echo "$(CHECK) $(GREEN)Library $(BOLD)$(RESET)$(NAME)$(GREEN) created successfully!$(RESET)"
	@echo "$(CHECK) Mandatory part of $(BLUE)$(BOLD)Libft$(RESET) — 42 Berlin project; also includes: $(BLUE)$(BOLD)Get Next Line$(RESET) and $(BLUE)$(BOLD)Printf$(RESET)."

obj/%.o: src/%.c
	@mkdir -p $(dir $@)
	@$(CC) $(CFLAGS) $(INCLUDE) -c $< -o $@

clean:
	@$(RM) $(OBJS)
	@$(RM) -r obj
	@echo "$(RED)Cleaned object files.$(RESET)"

fclean: clean
	@$(RM) $(NAME)
	@echo "$(RED)Fully cleaned everything.$(RESET)"
re: fclean all

.PHONY: all clean fclean re
