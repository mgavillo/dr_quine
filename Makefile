# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mgavillo <mgavillo@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/03/25 17:09:00 by mgavillo          #+#    #+#              #
#    Updated: 2021/08/26 02:15:29 by mgavillo         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME=test

.PHONY : all test bonus clean fclean re

all : $(NAME)

$(NAME) : $(OBJ)
	ar rcs $@ $^
	ranlib $(NAME)
	@echo "$(NAME) has been created"

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.s $(HEADER)
	mkdir -p $(OBJ_DIR)
	@echo "\033[0;32mGenerating binary..."
	$(NASM) $(NASMFLAGS) -s $< -o $@
	@echo "\033[0m"

clean :
	rm -f $(OBJ_BONUS) $(NAME) $(BIN) $(TEST_FILE)

fclean : clean
	rm -f $(NAME)
	rm -f $(BIN)

re : fclean all