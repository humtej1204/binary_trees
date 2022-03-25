#include "binary_trees.h"
/**
 * binary_tree_depth - function that measures the depth of a node
 * in a binary tree
 *
 * @tree: is a pointer to the node to measure the depth
 *
 * Return: Return the node's depth. If tree is NULL,
 * your function must return 0
 */
size_t binary_tree_depth(const binary_tree_t *tree)
{
	size_t d = 0;

	if (tree == NULL)
		return (0);

	if (tree->parent != NULL)
		d = (1 + binary_tree_depth(tree->parent));

	return (d);
}
