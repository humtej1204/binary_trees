#include "binary_trees.h"
/**
 * binary_tree_size - function that measures the size of a binary tree
 *
 * @tree: is a pointer to the root node of the tree to measure the height.
 *
 * Return: Return the size of the tree. If tree is NULL,
 * your function must return 0
 */
size_t binary_tree_size(const binary_tree_t *tree)
{
	if (tree != NULL)
		return (1 + binary_tree_size(tree->left) + binary_tree_size(tree->right));

	return (0);
}
