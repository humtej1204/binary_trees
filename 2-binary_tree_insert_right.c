#include "binary_trees.h"
/**
 * binary_tree_insert_right - function that inserts a
 * node as the right-child of another node
 *
 * @parent: is a pointer to the node to insert the right-child in
 * @value: is the value to store in the new node
 *
 * Return: return a pointer to the created node, or NULL on
 * failure or if parent is NULL
 */
binary_tree_t *binary_tree_insert_right(binary_tree_t *parent, int value)
{
	binary_tree_t *tmp, *leaf;

	if (parent == NULL)
		return (NULL);

	leaf = malloc(sizeof(binary_tree_t));
	if (leaf == NULL)
		return (NULL);
	leaf->n = value;

	if (parent->right == NULL)
	{
		parent->right = leaf;
		leaf->parent = parent;
	}
	else
	{
		tmp = parent->right;
		parent->right = leaf;
		leaf->parent = parent;
		leaf->right = tmp;
		tmp->parent = leaf;
	}

	return (leaf);
}
