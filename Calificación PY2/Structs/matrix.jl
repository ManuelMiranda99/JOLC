struct MatrixNode
    value::Int64;
end;

struct Matrix
    thematrix::Vector{Vector{MatrixNode}};
end;

function getEmptyMatrixNode()::MatrixNode
    return MatrixNode(0);
end;

matrixSquare = [
    [
        getEmptyMatrixNode(),
        getEmptyMatrixNode(),
        getEmptyMatrixNode(),
        getEmptyMatrixNode(),
        getEmptyMatrixNode(),
        getEmptyMatrixNode()
    ],
    [
        getEmptyMatrixNode(),
        getEmptyMatrixNode(),
        getEmptyMatrixNode(),
        getEmptyMatrixNode(),
        getEmptyMatrixNode(),
        getEmptyMatrixNode()
    ],
    [
        getEmptyMatrixNode(),
        getEmptyMatrixNode(),
        getEmptyMatrixNode(),
        getEmptyMatrixNode(),
        getEmptyMatrixNode(),
        getEmptyMatrixNode()
    ],
    [
        getEmptyMatrixNode(),
        getEmptyMatrixNode(),
        getEmptyMatrixNode(),
        getEmptyMatrixNode(),
        getEmptyMatrixNode(),
        getEmptyMatrixNode()
    ],
]::Vector{Vector{MatrixNode}};

finalMatrix = Matrix(matrixSquare);

function insertarNodo(value::Int64, yPos::Int64, xPos::Int64)
    aux = finalMatrix.thematrix[xPos][yPos];
    if aux.value != 0
        return;
    else
        finalMatrix.thematrix[xPos][yPos] = MatrixNode(value);
    end;
end;

function printMatrix()
    for i in 1:4
        for j in 1:6
            print(finalMatrix.thematrix[i][j].value);
            print(" ");
        end;
        println("");
    end;
end;

insertarNodo(43, 1, 1);
insertarNodo(12, 3, 3);
insertarNodo(65, 2, 2);
insertarNodo(45, 1, 2);
insertarNodo(2, 1, 1);

printMatrix();