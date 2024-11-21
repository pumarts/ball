# include <stdio.h>
# include <conio.h>
# include <stdlib.h>
typedef struct BST {
int data;
struct BST *lchild, *rchild;
} node;
void insert(node *, node *);
void inorder(node *);
void preorder(node *);
void postorder(node *);
node* search(node *, int);
void main() {
int choice, n, i;
char ans = 'N';
int key;
node *new_node, *root, *tmp, *parent;
node *get_node();
parent = NULL;
root = NULL;
printf("\nProgram For Binary Search Tree ");
do {
printf("\n1.Create");
printf("\n2.Recursive Traversals");
printf("\n3.Search");
printf("\n4.Exit");
printf("\nEnter your choice :");
scanf("%d", &choice);
switch (choice) {
case 1:
printf("\n How many nodes you want to enter : ");
scanf("%d", &n);
printf("\nEnter The %d Elements : ", n);
for (i = 0; i<n; i++)
{
new_node = get_node();
scanf("%d", &new_node->data);
if (root == NULL) // Tree is not Created
root = new_node;
else
insert(root, new_node);
}
break;
case 2:
if (root == NULL)
printf("Tree Is Not Created");
else {
printf("\nThe Inorder display : ");
inorder(root);
printf("\nThe Preorder display : ");
preorder(root);
printf("\nThe Postorder display : ");
postorder(root);
}
break;
case 3:
