# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: kslotova <kslotova@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/02/03 13:55:36 by kslotova          #+#    #+#              #
#    Updated: 2022/03/31 18:04:09 by kslotova         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

SOURCES = ft_printf.c conv_c.c conv_percent.c conv_s.c conv_d_i.c \
conv_p.c conv_o.c conv_u.c conv_x.c conv_f.c set_datatype.c helper_functions.c \
manage_conversion.c f_width.c di_width.c x_hashtag.c di_prec.c

OBJECTS = $(SOURCES:.c=.o)

LIBSOURCES = libft/ft_atoi.c libft/ft_bzero.c libft/ft_create_node.c \
libft/ft_isalnum.c libft/ft_isalpha.c libft/ft_isascii.c libft/ft_isdigit.c \
libft/ft_isprint.c libft/ft_itoa.c libft/ft_lstadd.c libft/ft_lstback.c \
libft/ft_lstdel.c libft/ft_lstdelone.c libft/ft_lstiter.c libft/ft_lstmap.c \
libft/ft_lstnew.c libft/ft_lstsize.c libft/ft_memalloc.c libft/ft_memccpy.c \
libft/ft_memchr.c libft/ft_memcmp.c libft/ft_memcpy.c libft/ft_memdel.c \
libft/ft_memmove.c libft/ft_memset.c libft/ft_putchar.c libft/ft_putchar_fd.c \
libft/ft_putendl.c libft/ft_putendl_fd.c libft/ft_putnbr.c \
libft/ft_putnbr_fd.c  libft/ft_putstr.c libft/ft_putstr_fd.c \
libft/ft_strcapital.c libft/ft_strcat.c libft/ft_strchr.c libft/ft_strclr.c \
libft/ft_strcmp.c libft/ft_strcpy.c libft/ft_strdel.c libft/ft_strdup.c \
libft/ft_strequ.c libft/ft_striter.c libft/ft_striteri.c libft/ft_strjoin.c \
libft/ft_strlcat.c libft/ft_strlen.c libft/ft_strmap.c libft/ft_strmapi.c \
libft/ft_strncat.c libft/ft_strncmp.c libft/ft_strncpy.c libft/ft_strnequ.c \
libft/ft_strnew.c libft/ft_strnstr.c libft/ft_strrchr.c libft/ft_strsplit.c \
libft/ft_strstr.c libft/ft_strsub.c libft/ft_strtrim.c libft/ft_swap.c \
libft/ft_tolower.c libft/ft_toupper.c libft/ft_strcharjoin.c \
libft/ft_strjoin_free_s1.c libft/ft_strjoin_free_s2.c libft/ft_numlen_base_u.c \
libft/ft_base_u.c libft/ft_itoa_base_u.c libft/ft_base_hex.c libft/ft_ptrlen.c \
libft/ft_numlen_base.c libft/ft_base.c libft/ft_itoa_base.c libft/ft_round.c \
libft/ft_itoa_float.c libft/ft_len_double.c libft/ft_x_to_power_n.c \
libft/ft_is_negative.c

LIBOBJECTS = $(LIBSOURCES:.c=.o)

all: $(NAME)

$(NAME):
	make -C ./libft
	gcc -Wall -Wextra -Werror -c $(SOURCES) -I./libft
	ar rc $(NAME) $(OBJECTS) $(LIBOBJECTS)

clean:
	/bin/rm -f $(OBJECTS)
	make -C ./libft clean

fclean: clean
	/bin/rm -f $(NAME)
	make -C ./libft fclean

re: fclean all
