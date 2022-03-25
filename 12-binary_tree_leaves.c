#include "binary_trees.h"
/**
 * binary_tree_leaves - Function that counts the leaves in a binary tree
 *
 * @tree: is a pointer to the root node of the tree to count the
 * number of leaves
 *
 * Return: If tree is NULL, the function must return 0
 */
size_t binary_tree_leaves(const binary_tree_t *tree)
{
	size_t s = 0;

	if (tree == NULL)
		return (0);

	if (tree->left == NULL && tree->right == NULL)
		s++;

	if (tree->left != NULL)
		s = s + binary_tree_leaves(tree->left);
	if (tree->right != NULL)
		s = s + binary_tree_leaves(tree->right);

	return (s);
}
