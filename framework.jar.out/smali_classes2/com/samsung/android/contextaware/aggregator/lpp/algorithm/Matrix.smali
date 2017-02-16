.class public Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
.super Ljava/lang/Object;
.source "Matrix.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private A:[[D

.field private m:I

.field private n:I


# direct methods
.method public constructor <init>(II)V
    .locals 3
    .param p1, "m"    # I
    .param p2, "n"    # I

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    .line 87
    iput p2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    .line 88
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    .line 85
    return-void
.end method

.method public constructor <init>(IID)V
    .locals 5
    .param p1, "m"    # I
    .param p2, "n"    # I
    .param p3, "s"    # D

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    .line 99
    iput p2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    .line 100
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput p1, v3, v4

    const/4 v4, 0x1

    aput p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    iput-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    .line 101
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 102
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, p2, :cond_0

    .line 103
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v2, v2, v0

    aput-wide p3, v2, v1

    .line 102
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 101
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    .end local v1    # "j":I
    :cond_1
    return-void
.end method

.method public constructor <init>([DI)V
    .locals 6
    .param p1, "vals"    # [D
    .param p2, "m"    # I

    .prologue
    const/4 v3, 0x0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput p2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    .line 145
    if-eqz p2, :cond_0

    array-length v2, p1

    div-int/2addr v2, p2

    :goto_0
    iput v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    .line 146
    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    mul-int/2addr v2, p2

    array-length v4, p1

    if-eq v2, v4, :cond_1

    .line 147
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Array length must be a multiple of m."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move v2, v3

    .line 145
    goto :goto_0

    .line 149
    :cond_1
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x2

    new-array v4, v4, [I

    aput p2, v4, v3

    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    const/4 v5, 0x1

    aput v3, v4, v5

    invoke-static {v2, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    iput-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    .line 150
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_3

    .line 151
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ge v1, v2, :cond_2

    .line 152
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v2, v2, v0

    mul-int v3, v1, p2

    add-int/2addr v3, v0

    aget-wide v4, p1, v3

    aput-wide v4, v2, v1

    .line 151
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 150
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 143
    .end local v1    # "j":I
    :cond_3
    return-void
.end method

.method public constructor <init>([[D)V
    .locals 3
    .param p1, "A"    # [[D

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    array-length v1, p1

    iput v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    .line 116
    const/4 v1, 0x0

    aget-object v1, p1, v1

    array-length v1, v1

    iput v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    .line 117
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    if-ge v0, v1, :cond_1

    .line 118
    aget-object v1, p1, v0

    array-length v1, v1

    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-eq v1, v2, :cond_0

    .line 119
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "All rows must have the same length."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 117
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    :cond_1
    iput-object p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    .line 114
    return-void
.end method

.method public constructor <init>([[DII)V
    .locals 0
    .param p1, "A"    # [[D
    .param p2, "m"    # I
    .param p3, "n"    # I

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    .line 133
    iput p2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    .line 134
    iput p3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    .line 131
    return-void
.end method

.method private checkMatrixDimensions(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V
    .locals 2
    .param p1, "B"    # Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    .prologue
    .line 1059
    iget v0, p1, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    iget v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    iget v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-eq v0, v1, :cond_1

    .line 1060
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Matrix dimensions must agree."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1058
    :cond_1
    return-void
.end method

.method public static constructWithCopy([[D)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 10
    .param p0, "A"    # [[D

    .prologue
    .line 167
    array-length v4, p0

    .line 168
    .local v4, "m":I
    const/4 v6, 0x0

    aget-object v6, p0, v6

    array-length v5, v6

    .line 169
    .local v5, "n":I
    new-instance v1, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    invoke-direct {v1, v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 170
    .local v1, "X":Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v0

    .line 171
    .local v0, "C":[[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_2

    .line 172
    aget-object v6, p0, v2

    array-length v6, v6

    if-eq v6, v5, :cond_0

    .line 173
    new-instance v6, Ljava/lang/IllegalArgumentException;

    .line 174
    const-string/jumbo v7, "All rows must have the same length."

    .line 173
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 176
    :cond_0
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v5, :cond_1

    .line 177
    aget-object v6, v0, v2

    aget-object v7, p0, v2

    aget-wide v8, v7, v3

    aput-wide v8, v6, v3

    .line 176
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 171
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 180
    .end local v3    # "j":I
    :cond_2
    return-object v1
.end method

.method public static hypot(DD)D
    .locals 8
    .param p0, "a"    # D
    .param p2, "b"    # D

    .prologue
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 537
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 538
    div-double v0, p2, p0

    .line 539
    .local v0, "r":D
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    mul-double v4, v0, v0

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double v0, v2, v4

    .line 546
    :goto_0
    return-wide v0

    .line 540
    .end local v0    # "r":D
    :cond_0
    const-wide/16 v2, 0x0

    cmpl-double v2, p2, v2

    if-eqz v2, :cond_1

    .line 541
    div-double v0, p0, p2

    .line 542
    .restart local v0    # "r":D
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    mul-double v4, v0, v0

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double v0, v2, v4

    goto :goto_0

    .line 544
    .end local v0    # "r":D
    :cond_1
    const-wide/16 v0, 0x0

    .restart local v0    # "r":D
    goto :goto_0
.end method

.method public static identity(II)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 7
    .param p0, "m"    # I
    .param p1, "n"    # I

    .prologue
    .line 915
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 916
    .local v0, "A":Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v1

    .line 917
    .local v1, "X":[[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_2

    .line 918
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, p1, :cond_1

    .line 919
    aget-object v6, v1, v2

    if-ne v2, v3, :cond_0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    :goto_2
    aput-wide v4, v6, v3

    .line 918
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 919
    :cond_0
    const-wide/16 v4, 0x0

    goto :goto_2

    .line 917
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 922
    .end local v3    # "j":I
    :cond_2
    return-object v0
.end method

.method public static random(II)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 8
    .param p0, "m"    # I
    .param p1, "n"    # I

    .prologue
    .line 898
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 899
    .local v0, "A":Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v1

    .line 900
    .local v1, "X":[[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_1

    .line 901
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, p1, :cond_0

    .line 902
    aget-object v4, v1, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    aput-wide v6, v4, v3

    .line 901
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 900
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 905
    .end local v3    # "j":I
    :cond_1
    return-object v0
.end method

.method public static read(Ljava/io/BufferedReader;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 13
    .param p0, "input"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v12, -0x3

    .line 1005
    new-instance v6, Ljava/io/StreamTokenizer;

    invoke-direct {v6, p0}, Ljava/io/StreamTokenizer;-><init>(Ljava/io/Reader;)V

    .line 1013
    .local v6, "tokenizer":Ljava/io/StreamTokenizer;
    invoke-virtual {v6}, Ljava/io/StreamTokenizer;->resetSyntax()V

    .line 1014
    const/16 v9, 0xff

    invoke-virtual {v6, v10, v9}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 1015
    const/16 v9, 0x20

    invoke-virtual {v6, v10, v9}, Ljava/io/StreamTokenizer;->whitespaceChars(II)V

    .line 1016
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Ljava/io/StreamTokenizer;->eolIsSignificant(Z)V

    .line 1017
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    .line 1020
    .local v8, "vD":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Double;>;"
    :cond_0
    invoke-virtual {v6}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v9

    const/16 v10, 0xa

    if-eq v9, v10, :cond_0

    .line 1021
    iget v9, v6, Ljava/io/StreamTokenizer;->ttype:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_1

    .line 1022
    new-instance v9, Ljava/io/IOException;

    const-string/jumbo v10, "Unexpected EOF on matrix read."

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1024
    :cond_1
    iget-object v9, v6, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1025
    invoke-virtual {v6}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v9

    if-eq v9, v12, :cond_1

    .line 1027
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v4

    .line 1028
    .local v4, "n":I
    new-array v5, v4, [D

    .line 1029
    .local v5, "row":[D
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-ge v1, v4, :cond_2

    .line 1030
    invoke-virtual {v8, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    aput-wide v10, v5, v1

    .line 1029
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1031
    :cond_2
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 1032
    .local v7, "v":Ljava/util/Vector;, "Ljava/util/Vector<[D>;"
    invoke-virtual {v7, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1033
    :cond_3
    invoke-virtual {v6}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v9

    if-ne v9, v12, :cond_6

    .line 1035
    new-array v5, v4, [D

    invoke-virtual {v7, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1036
    const/4 v1, 0x0

    move v2, v1

    .line 1038
    .end local v1    # "j":I
    .local v2, "j":I
    :goto_1
    if-lt v2, v4, :cond_4

    new-instance v9, Ljava/io/IOException;

    .line 1039
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Row "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " is too long."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1038
    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1040
    :cond_4
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "j":I
    .restart local v1    # "j":I
    iget-object v9, v6, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    aput-wide v10, v5, v2

    .line 1041
    invoke-virtual {v6}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v9

    if-ne v9, v12, :cond_5

    move v2, v1

    .end local v1    # "j":I
    .restart local v2    # "j":I
    goto :goto_1

    .line 1042
    .end local v2    # "j":I
    .restart local v1    # "j":I
    :cond_5
    if-ge v1, v4, :cond_3

    new-instance v9, Ljava/io/IOException;

    .line 1043
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Row "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " is too short."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1042
    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1045
    :cond_6
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v3

    .line 1046
    .local v3, "m":I
    new-array v0, v3, [[D

    .line 1047
    .local v0, "A":[[D
    invoke-virtual {v7, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 1048
    new-instance v9, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    invoke-direct {v9, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>([[D)V

    return-object v9
.end method


# virtual methods
.method public arrayLeftDivide(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 10
    .param p1, "B"    # Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    .prologue
    .line 698
    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->checkMatrixDimensions(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V

    .line 699
    new-instance v1, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    iget v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    invoke-direct {v1, v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 700
    .local v1, "X":Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v0

    .line 701
    .local v0, "C":[[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    if-ge v2, v4, :cond_1

    .line 702
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ge v3, v4, :cond_0

    .line 703
    aget-object v4, v0, v2

    iget-object v5, p1, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v5, v5, v2

    aget-wide v6, v5, v3

    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v5, v5, v2

    aget-wide v8, v5, v3

    div-double/2addr v6, v8

    aput-wide v6, v4, v3

    .line 702
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 701
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 706
    .end local v3    # "j":I
    :cond_1
    return-object v1
.end method

.method public arrayLeftDivideEquals(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 8
    .param p1, "B"    # Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    .prologue
    .line 715
    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->checkMatrixDimensions(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V

    .line 716
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    if-ge v0, v2, :cond_1

    .line 717
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ge v1, v2, :cond_0

    .line 718
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v2, v2, v0

    iget-object v3, p1, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v3, v3, v0

    aget-wide v4, v3, v1

    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v3, v3, v0

    aget-wide v6, v3, v1

    div-double/2addr v4, v6

    aput-wide v4, v2, v1

    .line 717
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 716
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 721
    .end local v1    # "j":I
    :cond_1
    return-object p0
.end method

.method public arrayRightDivide(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 10
    .param p1, "B"    # Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    .prologue
    .line 666
    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->checkMatrixDimensions(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V

    .line 667
    new-instance v1, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    iget v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    invoke-direct {v1, v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 668
    .local v1, "X":Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v0

    .line 669
    .local v0, "C":[[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    if-ge v2, v4, :cond_1

    .line 670
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ge v3, v4, :cond_0

    .line 671
    aget-object v4, v0, v2

    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v5, v5, v2

    aget-wide v6, v5, v3

    iget-object v5, p1, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v5, v5, v2

    aget-wide v8, v5, v3

    div-double/2addr v6, v8

    aput-wide v6, v4, v3

    .line 670
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 669
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 674
    .end local v3    # "j":I
    :cond_1
    return-object v1
.end method

.method public arrayRightDivideEquals(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 8
    .param p1, "B"    # Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    .prologue
    .line 683
    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->checkMatrixDimensions(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V

    .line 684
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    if-ge v0, v2, :cond_1

    .line 685
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ge v1, v2, :cond_0

    .line 686
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v3, v3, v0

    aget-wide v4, v3, v1

    iget-object v3, p1, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v3, v3, v0

    aget-wide v6, v3, v1

    div-double/2addr v4, v6

    aput-wide v4, v2, v1

    .line 685
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 684
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 689
    .end local v1    # "j":I
    :cond_1
    return-object p0
.end method

.method public arrayTimes(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 10
    .param p1, "B"    # Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    .prologue
    .line 634
    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->checkMatrixDimensions(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V

    .line 635
    new-instance v1, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    iget v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    invoke-direct {v1, v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 636
    .local v1, "X":Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v0

    .line 637
    .local v0, "C":[[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    if-ge v2, v4, :cond_1

    .line 638
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ge v3, v4, :cond_0

    .line 639
    aget-object v4, v0, v2

    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v5, v5, v2

    aget-wide v6, v5, v3

    iget-object v5, p1, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v5, v5, v2

    aget-wide v8, v5, v3

    mul-double/2addr v6, v8

    aput-wide v6, v4, v3

    .line 638
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 637
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 642
    .end local v3    # "j":I
    :cond_1
    return-object v1
.end method

.method public arrayTimesEquals(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 8
    .param p1, "B"    # Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    .prologue
    .line 651
    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->checkMatrixDimensions(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V

    .line 652
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    if-ge v0, v2, :cond_1

    .line 653
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ge v1, v2, :cond_0

    .line 654
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v3, v3, v0

    aget-wide v4, v3, v1

    iget-object v3, p1, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v3, v3, v0

    aget-wide v6, v3, v1

    mul-double/2addr v4, v6

    aput-wide v4, v2, v1

    .line 653
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 652
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 657
    .end local v1    # "j":I
    :cond_1
    return-object p0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->copy()Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public cond()D
    .locals 2

    .prologue
    .line 876
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->cond()D

    move-result-wide v0

    return-wide v0
.end method

.method public copy()Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 8

    .prologue
    .line 187
    new-instance v1, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    iget v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    invoke-direct {v1, v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 188
    .local v1, "X":Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v0

    .line 189
    .local v0, "C":[[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    if-ge v2, v4, :cond_1

    .line 190
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ge v3, v4, :cond_0

    .line 191
    aget-object v4, v0, v2

    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v5, v5, v2

    aget-wide v6, v5, v3

    aput-wide v6, v4, v3

    .line 190
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 189
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 194
    .end local v3    # "j":I
    :cond_1
    return-object v1
.end method

.method public det()D
    .locals 2

    .prologue
    .line 860
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->det()D

    move-result-wide v0

    return-wide v0
.end method

.method public get(II)D
    .locals 2
    .param p1, "i"    # I
    .param p2, "j"    # I

    .prologue
    .line 278
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v0, v0, p1

    aget-wide v0, v0, p2

    return-wide v0
.end method

.method public getArray()[[D
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    return-object v0
.end method

.method public getArrayCopy()[[D
    .locals 7

    .prologue
    .line 217
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x2

    new-array v4, v4, [I

    iget v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    const/4 v6, 0x0

    aput v5, v4, v6

    iget v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    const/4 v6, 0x1

    aput v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    .line 218
    .local v0, "C":[[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    if-ge v1, v3, :cond_1

    .line 219
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ge v2, v3, :cond_0

    .line 220
    aget-object v3, v0, v1

    iget-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v4, v4, v1

    aget-wide v4, v4, v2

    aput-wide v4, v3, v2

    .line 219
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 218
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 223
    .end local v2    # "j":I
    :cond_1
    return-object v0
.end method

.method public getColumnDimension()I
    .locals 1

    .prologue
    .line 267
    iget v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    return v0
.end method

.method public getColumnPackedCopy()[D
    .locals 6

    .prologue
    .line 231
    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    mul-int/2addr v3, v4

    new-array v2, v3, [D

    .line 232
    .local v2, "vals":[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    if-ge v0, v3, :cond_1

    .line 233
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ge v1, v3, :cond_0

    .line 234
    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    mul-int/2addr v3, v1

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v4, v4, v0

    aget-wide v4, v4, v1

    aput-wide v4, v2, v3

    .line 233
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 232
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 237
    .end local v1    # "j":I
    :cond_1
    return-object v2
.end method

.method public getMatrix(IIII)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 10
    .param p1, "i0"    # I
    .param p2, "i1"    # I
    .param p3, "j0"    # I
    .param p4, "j1"    # I

    .prologue
    .line 291
    new-instance v1, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    sub-int v5, p2, p1

    add-int/lit8 v5, v5, 0x1

    sub-int v6, p4, p3

    add-int/lit8 v6, v6, 0x1

    invoke-direct {v1, v5, v6}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 292
    .local v1, "X":Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v0

    .line 294
    .local v0, "B":[[D
    move v3, p1

    .local v3, "i":I
    :goto_0
    if-gt v3, p2, :cond_1

    .line 295
    move v4, p3

    .local v4, "j":I
    :goto_1
    if-gt v4, p4, :cond_0

    .line 296
    sub-int v5, v3, p1

    :try_start_0
    aget-object v5, v0, v5

    sub-int v6, v4, p3

    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v7, v7, v3

    aget-wide v8, v7, v4

    aput-wide v8, v5, v6
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 294
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 299
    :catch_0
    move-exception v2

    .line 300
    .local v2, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v5, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string/jumbo v6, "Submatrix indices"

    invoke-direct {v5, v6}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 302
    .end local v2    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v4    # "j":I
    :cond_1
    return-object v1
.end method

.method public getMatrix(II[I)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 8
    .param p1, "i0"    # I
    .param p2, "i1"    # I
    .param p3, "c"    # [I

    .prologue
    .line 336
    new-instance v1, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    sub-int v5, p2, p1

    add-int/lit8 v5, v5, 0x1

    array-length v6, p3

    invoke-direct {v1, v5, v6}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 337
    .local v1, "X":Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v0

    .line 339
    .local v0, "B":[[D
    move v3, p1

    .local v3, "i":I
    :goto_0
    if-gt v3, p2, :cond_1

    .line 340
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    :try_start_0
    array-length v5, p3

    if-ge v4, v5, :cond_0

    .line 341
    sub-int v5, v3, p1

    aget-object v5, v0, v5

    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v6, v6, v3

    aget v7, p3, v4

    aget-wide v6, v6, v7

    aput-wide v6, v5, v4
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 339
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 344
    :catch_0
    move-exception v2

    .line 345
    .local v2, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v5, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string/jumbo v6, "Submatrix indices"

    invoke-direct {v5, v6}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 347
    .end local v2    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v4    # "j":I
    :cond_1
    return-object v1
.end method

.method public getMatrix([III)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 10
    .param p1, "r"    # [I
    .param p2, "j0"    # I
    .param p3, "j1"    # I

    .prologue
    .line 359
    new-instance v1, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    array-length v5, p1

    sub-int v6, p3, p2

    add-int/lit8 v6, v6, 0x1

    invoke-direct {v1, v5, v6}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 360
    .local v1, "X":Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v0

    .line 362
    .local v0, "B":[[D
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    :try_start_0
    array-length v5, p1

    if-ge v3, v5, :cond_1

    .line 363
    move v4, p2

    .local v4, "j":I
    :goto_1
    if-gt v4, p3, :cond_0

    .line 364
    aget-object v5, v0, v3

    sub-int v6, v4, p2

    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget v8, p1, v3

    aget-object v7, v7, v8

    aget-wide v8, v7, v4

    aput-wide v8, v5, v6
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 362
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 367
    .end local v4    # "j":I
    :catch_0
    move-exception v2

    .line 368
    .local v2, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v5, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string/jumbo v6, "Submatrix indices"

    invoke-direct {v5, v6}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 370
    .end local v2    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_1
    return-object v1
.end method

.method public getMatrix([I[I)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 8
    .param p1, "r"    # [I
    .param p2, "c"    # [I

    .prologue
    .line 313
    new-instance v1, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    array-length v5, p1

    array-length v6, p2

    invoke-direct {v1, v5, v6}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 314
    .local v1, "X":Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v0

    .line 316
    .local v0, "B":[[D
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    :try_start_0
    array-length v5, p1

    if-ge v3, v5, :cond_1

    .line 317
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    array-length v5, p2

    if-ge v4, v5, :cond_0

    .line 318
    aget-object v5, v0, v3

    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget v7, p1, v3

    aget-object v6, v6, v7

    aget v7, p2, v4

    aget-wide v6, v6, v7

    aput-wide v6, v5, v4
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 316
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 321
    .end local v4    # "j":I
    :catch_0
    move-exception v2

    .line 322
    .local v2, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v5, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string/jumbo v6, "Submatrix indices"

    invoke-direct {v5, v6}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 324
    .end local v2    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_1
    return-object v1
.end method

.method public getRowDimension()I
    .locals 1

    .prologue
    .line 259
    iget v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    return v0
.end method

.method public getRowPackedCopy()[D
    .locals 6

    .prologue
    .line 245
    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    mul-int/2addr v3, v4

    new-array v2, v3, [D

    .line 246
    .local v2, "vals":[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    if-ge v0, v3, :cond_1

    .line 247
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ge v1, v3, :cond_0

    .line 248
    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    mul-int/2addr v3, v0

    add-int/2addr v3, v1

    iget-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v4, v4, v0

    aget-wide v4, v4, v1

    aput-wide v4, v2, v3

    .line 247
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 246
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 251
    .end local v1    # "j":I
    :cond_1
    return-object v2
.end method

.method public inverse()Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 2

    .prologue
    .line 852
    iget v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    iget v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    invoke-static {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->identity(II)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->solve(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public minus(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 10
    .param p1, "B"    # Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    .prologue
    .line 602
    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->checkMatrixDimensions(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V

    .line 603
    new-instance v1, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    iget v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    invoke-direct {v1, v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 604
    .local v1, "X":Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v0

    .line 605
    .local v0, "C":[[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    if-ge v2, v4, :cond_1

    .line 606
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ge v3, v4, :cond_0

    .line 607
    aget-object v4, v0, v2

    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v5, v5, v2

    aget-wide v6, v5, v3

    iget-object v5, p1, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v5, v5, v2

    aget-wide v8, v5, v3

    sub-double/2addr v6, v8

    aput-wide v6, v4, v3

    .line 606
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 605
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 610
    .end local v3    # "j":I
    :cond_1
    return-object v1
.end method

.method public minusEquals(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 8
    .param p1, "B"    # Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    .prologue
    .line 619
    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->checkMatrixDimensions(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V

    .line 620
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    if-ge v0, v2, :cond_1

    .line 621
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ge v1, v2, :cond_0

    .line 622
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v3, v3, v0

    aget-wide v4, v3, v1

    iget-object v3, p1, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v3, v3, v0

    aget-wide v6, v3, v1

    sub-double/2addr v4, v6

    aput-wide v4, v2, v1

    .line 621
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 620
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 625
    .end local v1    # "j":I
    :cond_1
    return-object p0
.end method

.method public norm1()D
    .locals 8

    .prologue
    .line 484
    const-wide/16 v0, 0x0

    .line 485
    .local v0, "f":D
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    iget v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ge v3, v6, :cond_1

    .line 486
    const-wide/16 v4, 0x0

    .line 487
    .local v4, "s":D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    if-ge v2, v6, :cond_0

    .line 488
    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v6, v6, v2

    aget-wide v6, v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    add-double/2addr v4, v6

    .line 487
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 490
    :cond_0
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 485
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 492
    .end local v2    # "i":I
    .end local v4    # "s":D
    :cond_1
    return-wide v0
.end method

.method public norm2()D
    .locals 2

    .prologue
    .line 500
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->norm2()D

    move-result-wide v0

    return-wide v0
.end method

.method public normF()D
    .locals 6

    .prologue
    .line 524
    const-wide/16 v0, 0x0

    .line 525
    .local v0, "f":D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    if-ge v2, v4, :cond_1

    .line 526
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ge v3, v4, :cond_0

    .line 527
    iget-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v4, v4, v2

    aget-wide v4, v4, v3

    invoke-static {v0, v1, v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->hypot(DD)D

    move-result-wide v0

    .line 526
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 525
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 530
    .end local v3    # "j":I
    :cond_1
    return-wide v0
.end method

.method public normInf()D
    .locals 8

    .prologue
    .line 508
    const-wide/16 v0, 0x0

    .line 509
    .local v0, "f":D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    if-ge v2, v6, :cond_1

    .line 510
    const-wide/16 v4, 0x0

    .line 511
    .local v4, "s":D
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    iget v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ge v3, v6, :cond_0

    .line 512
    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v6, v6, v2

    aget-wide v6, v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    add-double/2addr v4, v6

    .line 511
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 514
    :cond_0
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 509
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 516
    .end local v3    # "j":I
    .end local v4    # "s":D
    :cond_1
    return-wide v0
.end method

.method public plus(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 10
    .param p1, "B"    # Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    .prologue
    .line 570
    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->checkMatrixDimensions(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V

    .line 571
    new-instance v1, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    iget v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    invoke-direct {v1, v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 572
    .local v1, "X":Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v0

    .line 573
    .local v0, "C":[[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    if-ge v2, v4, :cond_1

    .line 574
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ge v3, v4, :cond_0

    .line 575
    aget-object v4, v0, v2

    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v5, v5, v2

    aget-wide v6, v5, v3

    iget-object v5, p1, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v5, v5, v2

    aget-wide v8, v5, v3

    add-double/2addr v6, v8

    aput-wide v6, v4, v3

    .line 574
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 573
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 578
    .end local v3    # "j":I
    :cond_1
    return-object v1
.end method

.method public plusEquals(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 8
    .param p1, "B"    # Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    .prologue
    .line 587
    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->checkMatrixDimensions(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V

    .line 588
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    if-ge v0, v2, :cond_1

    .line 589
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ge v1, v2, :cond_0

    .line 590
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v3, v3, v0

    aget-wide v4, v3, v1

    iget-object v3, p1, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v3, v3, v0

    aget-wide v6, v3, v1

    add-double/2addr v4, v6

    aput-wide v4, v2, v1

    .line 589
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 588
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 593
    .end local v1    # "j":I
    :cond_1
    return-object p0
.end method

.method public print(II)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "d"    # I

    .prologue
    .line 933
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->print(Ljava/io/PrintWriter;II)V

    .line 932
    return-void
.end method

.method public print(Ljava/io/PrintWriter;II)V
    .locals 3
    .param p1, "output"    # Ljava/io/PrintWriter;
    .param p2, "w"    # I
    .param p3, "d"    # I

    .prologue
    .line 943
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V

    .line 944
    .local v0, "format":Ljava/text/DecimalFormat;
    new-instance v1, Ljava/text/DecimalFormatSymbols;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    .line 945
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setMinimumIntegerDigits(I)V

    .line 946
    invoke-virtual {v0, p3}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 947
    invoke-virtual {v0, p3}, Ljava/text/DecimalFormat;->setMinimumFractionDigits(I)V

    .line 948
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setGroupingUsed(Z)V

    .line 949
    add-int/lit8 v1, p2, 0x2

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->print(Ljava/io/PrintWriter;Ljava/text/NumberFormat;I)V

    .line 942
    return-void
.end method

.method public print(Ljava/io/PrintWriter;Ljava/text/NumberFormat;I)V
    .locals 8
    .param p1, "output"    # Ljava/io/PrintWriter;
    .param p2, "format"    # Ljava/text/NumberFormat;
    .param p3, "width"    # I

    .prologue
    .line 982
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 983
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    if-ge v0, v5, :cond_2

    .line 984
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ge v1, v5, :cond_1

    .line 985
    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v5, v5, v0

    aget-wide v6, v5, v1

    invoke-virtual {p2, v6, v7}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    .line 986
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v5, p3, v5

    const/4 v6, 0x1

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 987
    .local v3, "padding":I
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_2
    if-ge v2, v3, :cond_0

    .line 988
    const/16 v5, 0x20

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 987
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 989
    :cond_0
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 984
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 991
    .end local v2    # "k":I
    .end local v3    # "padding":I
    .end local v4    # "s":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 983
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 993
    .end local v1    # "j":I
    :cond_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 981
    return-void
.end method

.method public print(Ljava/text/NumberFormat;I)V
    .locals 3
    .param p1, "format"    # Ljava/text/NumberFormat;
    .param p2, "width"    # I

    .prologue
    .line 963
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->print(Ljava/io/PrintWriter;Ljava/text/NumberFormat;I)V

    .line 962
    return-void
.end method

.method public rank()I
    .locals 1

    .prologue
    .line 868
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->rank()I

    move-result v0

    return v0
.end method

.method public set(IID)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "j"    # I
    .param p3, "s"    # D

    .prologue
    .line 381
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v0, v0, p1

    aput-wide p3, v0, p2

    .line 380
    return-void
.end method

.method public setMatrix(IIIILcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V
    .locals 6
    .param p1, "i0"    # I
    .param p2, "i1"    # I
    .param p3, "j0"    # I
    .param p4, "j1"    # I
    .param p5, "X"    # Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    .prologue
    .line 395
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-gt v1, p2, :cond_1

    .line 396
    move v2, p3

    .local v2, "j":I
    :goto_1
    if-gt v2, p4, :cond_0

    .line 397
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v3, v3, v1

    sub-int v4, v1, p1

    sub-int v5, v2, p3

    invoke-virtual {p5, v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->get(II)D

    move-result-wide v4

    aput-wide v4, v3, v2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 395
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 400
    :catch_0
    move-exception v0

    .line 401
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string/jumbo v4, "Submatrix indices"

    invoke-direct {v3, v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 393
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v2    # "j":I
    :cond_1
    return-void
.end method

.method public setMatrix(II[ILcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V
    .locals 8
    .param p1, "i0"    # I
    .param p2, "i1"    # I
    .param p3, "c"    # [I
    .param p4, "X"    # Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    .prologue
    .line 454
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-gt v1, p2, :cond_1

    .line 455
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    :try_start_0
    array-length v3, p3

    if-ge v2, v3, :cond_0

    .line 456
    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v3, v3, v1

    aget v4, p3, v2

    sub-int v5, v1, p1

    invoke-virtual {p4, v5, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->get(II)D

    move-result-wide v6

    aput-wide v6, v3, v4
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 454
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 459
    :catch_0
    move-exception v0

    .line 460
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string/jumbo v4, "Submatrix indices"

    invoke-direct {v3, v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 452
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v2    # "j":I
    :cond_1
    return-void
.end method

.method public setMatrix([IIILcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V
    .locals 6
    .param p1, "r"    # [I
    .param p2, "j0"    # I
    .param p3, "j1"    # I
    .param p4, "X"    # Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    .prologue
    .line 434
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 435
    move v2, p2

    .local v2, "j":I
    :goto_1
    if-gt v2, p3, :cond_0

    .line 436
    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget v4, p1, v1

    aget-object v3, v3, v4

    sub-int v4, v2, p2

    invoke-virtual {p4, v1, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->get(II)D

    move-result-wide v4

    aput-wide v4, v3, v2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 434
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 439
    .end local v2    # "j":I
    :catch_0
    move-exception v0

    .line 440
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string/jumbo v4, "Submatrix indices"

    invoke-direct {v3, v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 432
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_1
    return-void
.end method

.method public setMatrix([I[ILcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V
    .locals 8
    .param p1, "r"    # [I
    .param p2, "c"    # [I
    .param p3, "X"    # Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    .prologue
    .line 414
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 415
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    array-length v3, p2

    if-ge v2, v3, :cond_0

    .line 416
    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget v4, p1, v1

    aget-object v3, v3, v4

    aget v4, p2, v2

    invoke-virtual {p3, v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->get(II)D

    move-result-wide v6

    aput-wide v6, v3, v4
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 414
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 419
    .end local v2    # "j":I
    :catch_0
    move-exception v0

    .line 420
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string/jumbo v4, "Submatrix indices"

    invoke-direct {v3, v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 412
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_1
    return-void
.end method

.method public solve(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 2
    .param p1, "B"    # Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    .prologue
    .line 834
    iget v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    iget v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->solve(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v0

    :goto_0
    return-object v0

    .line 835
    :cond_0
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->solve(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v0

    goto :goto_0
.end method

.method public solveTranspose(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 2
    .param p1, "B"    # Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    .prologue
    .line 844
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->transpose()Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->transpose()Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->solve(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public svd()Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;
    .locals 1

    .prologue
    .line 816
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V

    return-object v0
.end method

.method public times(D)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 9
    .param p1, "s"    # D

    .prologue
    .line 730
    new-instance v1, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    iget v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    invoke-direct {v1, v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 731
    .local v1, "X":Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v0

    .line 732
    .local v0, "C":[[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    if-ge v2, v4, :cond_1

    .line 733
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ge v3, v4, :cond_0

    .line 734
    aget-object v4, v0, v2

    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v5, v5, v2

    aget-wide v6, v5, v3

    mul-double/2addr v6, p1

    aput-wide v6, v4, v3

    .line 733
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 732
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 737
    .end local v3    # "j":I
    :cond_1
    return-object v1
.end method

.method public times(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 14
    .param p1, "B"    # Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    .prologue
    .line 761
    iget v7, p1, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    iget v10, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-eq v7, v10, :cond_0

    .line 762
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v10, "Matrix inner dimensions must agree."

    invoke-direct {v7, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 764
    :cond_0
    new-instance v3, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    iget v10, p1, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    invoke-direct {v3, v7, v10}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 765
    .local v3, "X":Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v2

    .line 766
    .local v2, "C":[[D
    iget v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    new-array v1, v7, [D

    .line 767
    .local v1, "Bcolj":[D
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_0
    iget v7, p1, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ge v5, v7, :cond_4

    .line 768
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_1
    iget v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ge v6, v7, :cond_1

    .line 769
    iget-object v7, p1, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v7, v7, v6

    aget-wide v10, v7, v5

    aput-wide v10, v1, v6

    .line 768
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 771
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    iget v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    if-ge v4, v7, :cond_3

    .line 772
    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v0, v7, v4

    .line 773
    .local v0, "Arowi":[D
    const-wide/16 v8, 0x0

    .line 774
    .local v8, "s":D
    const/4 v6, 0x0

    :goto_3
    iget v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ge v6, v7, :cond_2

    .line 775
    aget-wide v10, v0, v6

    aget-wide v12, v1, v6

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    .line 774
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 777
    :cond_2
    aget-object v7, v2, v4

    aput-wide v8, v7, v5

    .line 771
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 767
    .end local v0    # "Arowi":[D
    .end local v8    # "s":D
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 780
    .end local v4    # "i":I
    .end local v6    # "k":I
    :cond_4
    return-object v3
.end method

.method public timesEquals(D)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 7
    .param p1, "s"    # D

    .prologue
    .line 746
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    if-ge v0, v2, :cond_1

    .line 747
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ge v1, v2, :cond_0

    .line 748
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v3, v3, v0

    aget-wide v4, v3, v1

    mul-double/2addr v4, p1

    aput-wide v4, v2, v1

    .line 747
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 746
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 751
    .end local v1    # "j":I
    :cond_1
    return-object p0
.end method

.method public trace()D
    .locals 6

    .prologue
    .line 884
    const-wide/16 v2, 0x0

    .line 885
    .local v2, "t":D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 886
    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v1, v1, v0

    aget-wide v4, v1, v0

    add-double/2addr v2, v4

    .line 885
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 888
    :cond_0
    return-wide v2
.end method

.method public transpose()Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 8

    .prologue
    .line 469
    new-instance v1, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    iget v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    invoke-direct {v1, v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 470
    .local v1, "X":Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v0

    .line 471
    .local v0, "C":[[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    if-ge v2, v4, :cond_1

    .line 472
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ge v3, v4, :cond_0

    .line 473
    aget-object v4, v0, v3

    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v5, v5, v2

    aget-wide v6, v5, v3

    aput-wide v6, v4, v2

    .line 472
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 471
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 476
    .end local v3    # "j":I
    :cond_1
    return-object v1
.end method

.method public uminus()Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 8

    .prologue
    .line 554
    new-instance v1, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    iget v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    invoke-direct {v1, v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 555
    .local v1, "X":Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v0

    .line 556
    .local v0, "C":[[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    if-ge v2, v4, :cond_1

    .line 557
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ge v3, v4, :cond_0

    .line 558
    aget-object v4, v0, v2

    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v5, v5, v2

    aget-wide v6, v5, v3

    neg-double v6, v6

    aput-wide v6, v4, v3

    .line 557
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 556
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 561
    .end local v3    # "j":I
    :cond_1
    return-object v1
.end method
