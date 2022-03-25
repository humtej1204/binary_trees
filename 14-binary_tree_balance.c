#include "binary_trees.h"
/**
 * binary_tree_balance - function that measures the
 * balance factor of a binary tree
 *
 * @tree: is a pointer to the root node of the tree to
 * measure the balance factor
 *
 * Return: the balance factor
 */
int binary_tree_balance(const binary_tree_t *tree)
{
	int l = 0, r = 0;

	if (tree->left != NULL)
		l++;
	if (tree->right != NULL)
		r++;
	l += binary_tree_height(tree->left);
	r += binary_tree_height(tree->right);

	printf("l = %d; r = %d\n", l, r);

	return (l - r);
}
#include "binary_trees.h"
/**
 * binary_tree_height - function that measures the height of a binary tree
 *
 * @tree: is a pointer to the root node of the tree to measure the height.
 *
 * Return: Return the height of the node. If tree is NULL,
 * your function must return 0
 */
size_t binary_tree_height(const binary_tree_t *tree)
{
        size_t l = 0, r = 0;

        if (tree == NULL)
                return (0);

        if (tree->left != NULL)
                l = (1 + binary_tree_height(tree->left));
        if (tree->right != NULL)
                r = (1 + binary_tree_height(tree->right));

        return (l > r ? l : r);
}
