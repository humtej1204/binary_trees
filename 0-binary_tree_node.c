#include "binary_trees.h"
/**
 * binary_tree_node - function that creates a binary tree node
 *
 * @parent: is a pointer to the parent node of the node to create
 * @value: is the value to put in the new node
 *
 * Return: return a pointer to the new node, or NULL on failure
 */
binary_tree_t *binary_tree_node(binary_tree_t *parent, int value)
{
	binary_tree_t *leaf = parent;

	if (parent == NULL)
	{
		parent = malloc(sizeof(binary_tree_t));
		if (parent == NULL)
			return (NULL);
		parent->n = value;
		return (parent);
	}
	else
	{
		leaf = malloc(sizeof(binary_tree_t));
		if (leaf == NULL)
			return (NULL);
		leaf->n = value;

		if (value < parent->n)
		{
			parent->left = leaf;
		}
		if (value > parent->n)
		{
			parent->right = leaf;
		}

		leaf->parent = parent;
	}
	return (leaf);
}
