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
	binary_tree_t *leaf;

	leaf = malloc(sizeof(binary_tree_t));
	if (leaf == NULL)
		return (NULL);

	leaf->parent = parent;
	leaf->n = value;
	leaf->left = NULL;
	leaf->right = NULL;

	return (leaf);
}
