# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: kslotova <kslotova@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/11/01 08:21:51 by kslotova          #+#    #+#              #
#    Updated: 2022/03/29 17:24:00 by kslotova         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

SOURCES = ft_atoi.c ft_bzero.c ft_isalnum.c ft_isalpha.c ft_isascii.c \
	ft_isdigit.c ft_isprint.c ft_itoa.c ft_memalloc.c ft_memccpy.c \
	ft_memchr.c	ft_memcmp.c ft_memcpy.c ft_memdel.c ft_memmove.c ft_memset.c \
	ft_putchar_fd.c ft_putchar.c ft_putendl_fd.c ft_putendl.c ft_putnbr_fd.c \
	ft_putnbr.c ft_putstr_fd.c ft_putstr.c ft_strcat.c ft_strchr.c \
	ft_strclr.c ft_strcmp.c ft_strcpy.c ft_strdel.c ft_strdel.c ft_strdup.c \
	ft_strequ.c ft_striter.c ft_striteri.c ft_strjoin.c ft_strlcat.c \
	ft_strlen.c ft_strmap.c ft_strmapi.c ft_strncat.c ft_strncmp.c \
	ft_strncpy.c ft_strnequ.c ft_strnew.c ft_strnstr.c ft_strrchr.c \
	ft_strsplit.c ft_strstr.c ft_strsub.c ft_strtrim.c ft_tolower.c \
	ft_toupper.c ft_lstnew.c ft_lstadd.c ft_lstdel.c ft_lstiter.c \
	ft_lstdelone.c ft_lstmap.c ft_strcapital.c ft_create_node.c \
	ft_lstback.c ft_swap.c ft_lstsize.c ft_strcharjoin.c ft_strjoin_free_s1.c \
	ft_strjoin_free_s2.c ft_numlen_base_u.c ft_base_u.c ft_itoa_base_u.c \
	ft_base_hex.c ft_ptrlen.c ft_numlen_base.c ft_base.c ft_itoa_base.c \
	ft_round.c ft_itoa_float.c ft_len_double.c ft_x_to_power_n.c \
	ft_is_negative.c

OBJECTS = $(SOURCES:.c=.o)

HEADER = libft.h

all:	$(NAME)

$(NAME):
	gcc -Wall -Wextra -Werror -c $(SOURCES) -I $(HEADER)
	ar rc $(NAME) $(OBJECTS)

clean:
	rm -f $(OBJECTS)

fclean:	clean
	rm -f $(NAME)

re:	fclean all

norm:
	norminette $(SOURCES) $(HEADER)
