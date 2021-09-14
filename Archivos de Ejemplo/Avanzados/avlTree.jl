index = 0;

mutable struct Nodo 
    valor::Int64;
    altura::Int64;
    izquierda;
    derecha;
    indice::Int64;
end; 

root = nothing;


function height(N)
    if N == nothing
        return 0;
    end;

    return N.altura;
end;

function max(a::Int64,b::Int64)
    if a > b
        return a;
    end;
    return b;
end;

function rightRotate(y::Nodo) 
    x = y.izquierda;
    T2 = x.derecha;


    x.derecha = y;
    y.izquierda = T2;

    y.altura = max(height(y.izquierda), height(y.derecha)) + 1;
    x.altura = max(height(x.izquierda), height(x.derecha)) + 1;

    return x;
end;


function leftRotate(x::Nodo) 
    y = x.derecha;
    T2 = y.izquierda;

    y.izquierda = x;
    x.derecha = T2;

    x.altura = max(height(x.izquierda), height(x.derecha)) + 1;
    y.altura = max(height(y.izquierda), height(y.derecha)) + 1;

    return y;
end;

function getBalance(N) 
    if (N == nothing)
        return 0;
    end;

    return height(N.izquierda) - height(N.derecha);
end;

function insert (node, key::Int64) 
    
    if (node == nothing)
        return (Nodo(key,1, nothing, nothing,0));
    end;
    if (key < node.valor)
        node.izquierda= insert(node.izquierda, key);
    elseif (key > node.valor)
        node.derecha = insert(node.derecha, key);
    else 
        return node;
    end;
    node.altura = 1 + max(height(node.izquierda), height(node.derecha));

    balance = getBalance(node);
    izq = node.izquierda;
  	if izq!=nothing
    	if (balance > 1 && key < izq.valor)
        return rightRotate(node);
    	end;
    	if (balance > 1 && key > izq.valor) 
        node.izquierda = leftRotate(node.izquierda);
        return rightRotate(node);
    	end;
  	end;

    der =  node.derecha;
  	if der!=nothing
      if (balance < -1 && key > der.valor)
          return leftRotate(node);
    	end;
    	if (balance < -1 && key < der.valor) 
        node.derecha = rightRotate(node.derecha);
        return leftRotate(node);
    	end;
  	end;
 
    return node;
end;

function preOrder (node)
    if (node != nothing) 
        print(node.valor);
    		print(" ");
        preOrder(node.izquierda);
        preOrder(node.derecha);
    end;
end;

function indexnodes(node)

    if(node == nothing) 
        return;
    end;

    node.indice = index;
    index = index + 1;

    if(node.izquierda != nothing)
        indexnodes(node.izquierda);
    end;
    if(node.derecha != nothing)
        indexnodes(node.derecha);
    end;
end;

function graphviz(node)

    index = 0;
    indexnodes(node);

    println("digraph g{");
    graphnode(node);
    println("}");

    return ("");
end;

function graphnode(node)

    if(node == nothing) 
        print(""); 
        return "";
    end;

    print("node");
    print(node.indice);
    print("[label='");
    print(node.valor);
    println("'];");

    if(node.izquierda != nothing)
        graphnode(node.izquierda);
        izq = node.izquierda;
        print("node");
        print(node.indice);
        print(" -> ");
        print("node");
        print(izq.indice);
        println(";");
    end;
    if(node.derecha != nothing)
        graphnode(node.derecha);
        der = node.derecha;
        print("node");
        print(node.indice);
        print(" -> ");
        print("node");
        print(der.indice);
        println(";");
    end;

    return "";
end;

function main()
    root = insert(root, 10);
    root=insert(root,20);
  	println("");
  	root=insert(root,30);
  	root=insert(root,40);
  	root=insert(root,50);
  	root=insert(root,25);
  	root=insert(root,35);
  	root=insert(root,90);
  	root=insert(root,85);
    println("Preorder traversal of constructed tree is : ");
    preOrder(root);
    println("Graphviz");
    graphviz(root);
end;

main();