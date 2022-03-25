#include "binary_trees.h"
/**
 * binary_tree_insert_left - function that inserts a node as
 * the left-child of another node
 *
 * @parent: is a pointer to the node to insert the left-child in
 * @value: is the value to store in the new node
 *
 * Return: return a pointer to the created node, or NULL on
 * failure or if parent is NULL
 */
binary_tree_t *binary_tree_insert_left(binary_tree_t *parent, int value)
{
	binary_tree_t *tmp, *leaf;

	if (parent == NULL)
		return (NULL);

	leaf = binary_tree_node(parent, value);

	if (parent->left == NULL)
	{
		parent->left = leaf;
	}
	else
	{
		tmp = parent->left;
		leaf->left = tmp;
		parent->left = leaf;
		tmp->parent = leaf;
	}

	return (leaf);
}
