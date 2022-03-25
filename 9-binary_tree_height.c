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
