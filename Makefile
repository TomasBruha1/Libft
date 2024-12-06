# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tbruha <tbruha@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/05/31 15:03:16 by tbruha            #+#    #+#              #
#    Updated: 2024/12/06 11:56:48 by tbruha           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	= libft.a
AR		= ar rcs $(NAME)
LIB		= ranlib $(NAME)
CFLAGS	= -Wall -Wextra -Werror -g
RM		= rm -f
CC		= cc # pointless now but let's keep it for future updates

SRC		= 	ft_bzero.c ft_isalnum.c	ft_isalpha.c ft_isascii.c \
			ft_isdigit.c ft_isprint.c ft_memcpy.c ft_memmove.c \
			ft_memset.c ft_strlcat.c ft_strlcpy.c ft_strlen.c \
			ft_tolower.c ft_toupper.c ft_strchr.c ft_strrchr.c \
			ft_strncmp.c ft_memchr.c ft_memcmp.c ft_strnstr.c \
			ft_atoi.c ft_calloc.c ft_strdup.c ft_substr.c \
			ft_strjoin.c ft_strtrim.c ft_split.c ft_itoa.c \
			ft_strmapi.c ft_striteri.c ft_putchar_fd.c \
			ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c \
			\
			ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c \
			ft_lstadd_back.c ft_lstdelone.c ft_lstclear.c ft_lstiter.c \
			ft_lstmap.c \
			\
			ft_itoa_unsigned.c ft_putunsignbr_fd.c \
			\
			ft_printf/ft_printf.c \
			ft_printf/convert_char.c \
			ft_printf/convert_int.c \
			ft_printf/convert_string.c \
			ft_printf/convert_unsignedint.c \
			ft_printf/convert_hex.c \
			ft_printf/convert_upperhex.c \
			ft_printf/convert_pointer.c \

OBJ		:=	$(SRC:%.c=%.o)

all: $(NAME)

$(NAME): $(OBJ)
	@$(AR) $(OBJ)
	@$(LIB)
	@echo "libft successfully created"

%.o: %.c
	@$(CC) $(CFLAGS) -o $@ -c $<	

clean:
	@$(RM) $(OBJ)
	@echo "libft is clean"

fclean:	clean
	@$(RM) $(NAME)
	@echo "libft is super clean"

re:	fclean all

.PHONY:	all clean fclean re
