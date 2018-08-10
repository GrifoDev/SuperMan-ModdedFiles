.class public Landroid/support/v4/graphics/PathParser;
.super Ljava/lang/Object;
.source "PathParser.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/graphics/PathParser$ExtractFloatResult;,
        Landroid/support/v4/graphics/PathParser$PathDataNode;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addNode(Ljava/util/ArrayList;C[F)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/graphics/PathParser$PathDataNode;",
            ">;C[F)V"
        }
    .end annotation

    new-instance v0, Landroid/support/v4/graphics/PathParser$PathDataNode;

    invoke-direct {v0, p1, p2}, Landroid/support/v4/graphics/PathParser$PathDataNode;-><init>(C[F)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static canMorph([Landroid/support/v4/graphics/PathParser$PathDataNode;[Landroid/support/v4/graphics/PathParser$PathDataNode;)Z
    .locals 4

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return v3

    :cond_1
    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_2

    return v3

    :cond_2
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_5

    aget-object v1, p0, v0

    iget-char v1, v1, Landroid/support/v4/graphics/PathParser$PathDataNode;->mType:C

    aget-object v2, p1, v0

    iget-char v2, v2, Landroid/support/v4/graphics/PathParser$PathDataNode;->mType:C

    if-ne v1, v2, :cond_3

    aget-object v1, p0, v0

    iget-object v1, v1, Landroid/support/v4/graphics/PathParser$PathDataNode;->mParams:[F

    array-length v1, v1

    aget-object v2, p1, v0

    iget-object v2, v2, Landroid/support/v4/graphics/PathParser$PathDataNode;->mParams:[F

    array-length v2, v2

    if-eq v1, v2, :cond_4

    :cond_3
    return v3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    const/4 v1, 0x1

    return v1
.end method

.method static copyOfRange([FII)[F
    .locals 6

    const/4 v5, 0x0

    if-le p1, p2, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    :cond_0
    array-length v1, p0

    if-ltz p1, :cond_1

    if-le p1, v1, :cond_2

    :cond_1
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v4

    :cond_2
    sub-int v3, p2, p1

    sub-int v4, v1, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v2, v3, [F

    invoke-static {p0, p1, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public static createNodesFromPathData(Ljava/lang/String;)[Landroid/support/v4/graphics/PathParser$PathDataNode;
    .locals 8

    const/4 v5, 0x0

    const/4 v7, 0x0

    if-nez p0, :cond_0

    return-object v5

    :cond_0
    const/4 v3, 0x0

    const/4 v0, 0x1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_2

    invoke-static {p0, v0}, Landroid/support/v4/graphics/PathParser;->nextStart(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    invoke-static {v2}, Landroid/support/v4/graphics/PathParser;->getFloats(Ljava/lang/String;)[F

    move-result-object v4

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v1, v5, v4}, Landroid/support/v4/graphics/PathParser;->addNode(Ljava/util/ArrayList;C[F)V

    :cond_1
    move v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    sub-int v5, v0, v3

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    new-array v6, v7, [F

    invoke-static {v1, v5, v6}, Landroid/support/v4/graphics/PathParser;->addNode(Ljava/util/ArrayList;C[F)V

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Landroid/support/v4/graphics/PathParser$PathDataNode;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/support/v4/graphics/PathParser$PathDataNode;

    return-object v5
.end method

.method public static createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;
    .locals 6

    const/4 v3, 0x0

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    invoke-static {p0}, Landroid/support/v4/graphics/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Landroid/support/v4/graphics/PathParser$PathDataNode;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1, v2}, Landroid/support/v4/graphics/PathParser$PathDataNode;->nodesToPath([Landroid/support/v4/graphics/PathParser$PathDataNode;Landroid/graphics/Path;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error in parsing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_0
    return-object v3
.end method

.method public static deepCopyNodes([Landroid/support/v4/graphics/PathParser$PathDataNode;)[Landroid/support/v4/graphics/PathParser$PathDataNode;
    .locals 4

    const/4 v2, 0x0

    if-nez p0, :cond_0

    return-object v2

    :cond_0
    array-length v2, p0

    new-array v0, v2, [Landroid/support/v4/graphics/PathParser$PathDataNode;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    new-instance v2, Landroid/support/v4/graphics/PathParser$PathDataNode;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Landroid/support/v4/graphics/PathParser$PathDataNode;-><init>(Landroid/support/v4/graphics/PathParser$PathDataNode;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static extract(Ljava/lang/String;ILandroid/support/v4/graphics/PathParser$ExtractFloatResult;)V
    .locals 8

    const/4 v7, 0x1

    move v1, p1

    const/4 v2, 0x0

    const/4 v6, 0x0

    iput-boolean v6, p2, Landroid/support/v4/graphics/PathParser$ExtractFloatResult;->mEndWithNegOrDot:Z

    const/4 v5, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v1, v6, :cond_1

    move v4, v3

    const/4 v3, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_1
    if-eqz v2, :cond_3

    :cond_1
    iput v1, p2, Landroid/support/v4/graphics/PathParser$ExtractFloatResult;->mEndPosition:I

    return-void

    :sswitch_0
    const/4 v2, 0x1

    goto :goto_1

    :sswitch_1
    if-eq v1, p1, :cond_0

    xor-int/lit8 v6, v4, 0x1

    if-eqz v6, :cond_0

    const/4 v2, 0x1

    iput-boolean v7, p2, Landroid/support/v4/graphics/PathParser$ExtractFloatResult;->mEndWithNegOrDot:Z

    goto :goto_1

    :sswitch_2
    if-nez v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    iput-boolean v7, p2, Landroid/support/v4/graphics/PathParser$ExtractFloatResult;->mEndWithNegOrDot:Z

    goto :goto_1

    :sswitch_3
    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x2c -> :sswitch_0
        0x2d -> :sswitch_1
        0x2e -> :sswitch_2
        0x45 -> :sswitch_3
        0x65 -> :sswitch_3
    .end sparse-switch
.end method

.method private static getFloats(Ljava/lang/String;)[F
    .locals 11

    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x7a

    if-eq v8, v9, :cond_0

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x5a

    if-ne v8, v9, :cond_1

    :cond_0
    new-array v8, v10, [F

    return-object v8

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    new-array v5, v8, [F

    const/4 v0, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    new-instance v4, Landroid/support/v4/graphics/PathParser$ExtractFloatResult;

    invoke-direct {v4}, Landroid/support/v4/graphics/PathParser$ExtractFloatResult;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    move v1, v0

    :goto_0
    if-ge v6, v7, :cond_3

    invoke-static {p0, v6, v4}, Landroid/support/v4/graphics/PathParser;->extract(Ljava/lang/String;ILandroid/support/v4/graphics/PathParser$ExtractFloatResult;)V

    iget v3, v4, Landroid/support/v4/graphics/PathParser$ExtractFloatResult;->mEndPosition:I

    if-ge v6, v3, :cond_4

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    aput v8, v5, v1

    :goto_1
    iget-boolean v8, v4, Landroid/support/v4/graphics/PathParser$ExtractFloatResult;->mEndWithNegOrDot:Z

    if-eqz v8, :cond_2

    move v6, v3

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v6, v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    invoke-static {v5, v8, v1}, Landroid/support/v4/graphics/PathParser;->copyOfRange([FII)[F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    return-object v8

    :catch_0
    move-exception v2

    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "error in parsing \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method private static nextStart(Ljava/lang/String;I)I
    .locals 3

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p1, v1, :cond_2

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v1, v0, -0x41

    add-int/lit8 v2, v0, -0x5a

    mul-int/2addr v1, v2

    if-lez v1, :cond_0

    add-int/lit8 v1, v0, -0x61

    add-int/lit8 v2, v0, -0x7a

    mul-int/2addr v1, v2

    if-gtz v1, :cond_1

    :cond_0
    const/16 v1, 0x65

    if-eq v0, v1, :cond_1

    const/16 v1, 0x45

    if-eq v0, v1, :cond_1

    return p1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return p1
.end method
