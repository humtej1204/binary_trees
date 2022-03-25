CC = gcc
CFLAGS = -Wall -Wextra -Werror -pedantic -g
PRINT_FILE = binary_tree_print.c
EX_FILES = 0-node 1-left 2-right 3-del 4-leaf 5-root 6-pre 7-in 8-post 9-height 10-depth 11-size 12-leaves 13-nodes 14-balance 15-full 16-perfect 17-sibling 18-uncle 

all: clean

clean:
	rm -f $(EX_FILES)

0: 0-binary_tree_node.c
	cp main-files/0-main.c .
	$(CC) $(CFLAGS) $(PRINT_FILE) 0-main.c 0-binary_tree_node.c -o 0-node
	rm 0-main.c

1: 1-binary_tree_insert_left.c 0-binary_tree_node.c
	cp main-files/1-main.c .
	$(CC) $(CFLAGS) $(PRINT_FILE) 1-main.c 1-binary_tree_insert_left.c 0-binary_tree_node.c -o 1-left
	rm 1-main.c

2: 2-binary_tree_insert_right.c 0-binary_tree_node.c
	cp main-files/2-main.c .
	$(CC) $(CFLAGS) $(PRINT_FILE) 2-main.c 2-binary_tree_insert_right.c 0-binary_tree_node.c -o 2-right
	rm 2-main.c

3: 3-binary_tree_delete.c 0-binary_tree_node.c 2-binary_tree_insert_right.c
	cp main-files/3-main.c .
	$(CC) $(CFLAGS) $(PRINT_FILE) 3-main.c 3-binary_tree_delete.c 0-binary_tree_node.c 2-binary_tree_insert_right.c -o 3-del
	rm 3-main.c

4: 4-binary_tree_is_leaf.c 0-binary_tree_node.c 2-binary_tree_insert_right.c
	cp main-files/4-main.c .
	$(CC) $(CFLAGS) $(PRINT_FILE) 4-binary_tree_is_leaf.c 4-main.c 0-binary_tree_node.c 2-binary_tree_insert_right.c -o 4-leaf
	rm 4-main.c

5: 5-binary_tree_is_root.c 0-binary_tree_node.c 2-binary_tree_insert_right.c
	cp main-files/5-main.c .
	$(CC) $(CFLAGS) $(PRINT_FILE) 5-binary_tree_is_root.c 5-main.c 0-binary_tree_node.c 2-binary_tree_insert_right.c -o 5-root
	rm 5-main.c

6: 6-binary_tree_preorder.c 0-binary_tree_node.c
	cp main-files/6-main.c .
	$(CC) $(CFLAGS) $(PRINT_FILE) 6-main.c 6-binary_tree_preorder.c 0-binary_tree_node.c -o 6-pre
	rm 6-main.c

7: 7-binary_tree_inorder.c 0-binary_tree_node.c
	cp main-files/7-main.c .
	$(CC) $(CFLAGS) $(PRINT_FILE) 7-main.c 7-binary_tree_inorder.c 0-binary_tree_node.c -o 7-in
	rm 7-main.c

8: 8-binary_tree_postorder.c 0-binary_tree_node.c
	cp main-files/8-main.c .
	$(CC) $(CFLAGS) $(PRINT_FILE) 8-main.c 8-binary_tree_postorder.c 0-binary_tree_node.c -o 8-post
	rm 8-main.c

9: 9-binary_tree_height.c 0-binary_tree_node.c 2-binary_tree_insert_right.c
	cp main-files/9-main.c .
	$(CC) $(CFLAGS) $(PRINT_FILE) 9-binary_tree_height.c 9-main.c 0-binary_tree_node.c 2-binary_tree_insert_right.c -o 9-height
	rm 9-main.c

10: 10-binary_tree_depth.c 0-binary_tree_node.c 2-binary_tree_insert_right.c
	cp main-files/10-main.c .
	$(CC) $(CFLAGS) $(PRINT_FILE) 10-binary_tree_depth.c 10-main.c 0-binary_tree_node.c 2-binary_tree_insert_right.c -o 10-depth
	rm 10-main.c

11: 11-binary_tree_size.c 0-binary_tree_node.c 2-binary_tree_insert_right.c
	cp main-files/11-main.c .
	$(CC) $(CFLAGS) $(PRINT_FILE) 11-binary_tree_size.c 11-main.c 0-binary_tree_node.c 2-binary_tree_insert_right.c -o 11-size
	rm 11-main.c

12: 12-binary_tree_leaves.c 0-binary_tree_node.c 2-binary_tree_insert_right.c
	cp main-files/12-main.c .
	$(CC) $(CFLAGS) $(PRINT_FILE) 12-binary_tree_leaves.c 12-main.c 0-binary_tree_node.c 2-binary_tree_insert_right.c -o 12-leaves
	rm 12-main.c

13: 13-binary_tree_nodes.c 0-binary_tree_node.c 2-binary_tree_insert_right.c
	cp main-files/13-main.c .
	$(CC) $(CFLAGS) $(PRINT_FILE) 13-binary_tree_nodes.c 13-main.c 0-binary_tree_node.c 2-binary_tree_insert_right.c -o 13-nodes
	rm 13-main.c

14: 14-binary_tree_balance.c 0-binary_tree_node.c 2-binary_tree_insert_right.c 1-binary_tree_insert_left.c
	cp main-files/14-main.c .
	$(CC) $(CFLAGS) $(PRINT_FILE) 14-binary_tree_balance.c 14-main.c 0-binary_tree_node.c 2-binary_tree_insert_right.c 1-binary_tree_insert_left.c -o 14-balance
	rm 14-main.c

15: 15-binary_tree_is_full.c 0-binary_tree_node.c 2-binary_tree_insert_right.c
	cp main-files/15-main.c .
	$(CC) $(CFLAGS) $(PRINT_FILE) 15-binary_tree_is_full.c 15-main.c 0-binary_tree_node.c 2-binary_tree_insert_right.c -o 15-full
	rm 15-main.c

16: 16-binary_tree_is_perfect.c 0-binary_tree_node.c 2-binary_tree_insert_right.c
	cp main-files/16-main.c .
	$(CC) $(CFLAGS) $(PRINT_FILE) 16-binary_tree_is_perfect.c 16-main.c 0-binary_tree_node.c 2-binary_tree_insert_right.c -o 16-perfect
	rm 16-main.c

17: 17-binary_tree_sibling.c 0-binary_tree_node.c
	cp main-files/17-main.c .
	$(CC) $(CFLAGS) $(PRINT_FILE) 17-main.c 17-binary_tree_sibling.c 0-binary_tree_node.c -o 17-sibling
	rm 17-main.c

18: 18-binary_tree_uncle.c 0-binary_tree_node.c
	cp main-files/18-main.c .
	$(CC) $(CFLAGS) $(PRINT_FILE) 18-main.c 18-binary_tree_uncle.c 0-binary_tree_node.c -o 18-uncle
	rm 18-main.c
