.class public final Lcom/google/zxing/pdf417/PDF417Writer;
.super Ljava/lang/Object;
.source "PDF417Writer.java"

# interfaces
.implements Lcom/google/zxing/Writer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bitMatrixFromEncoder(Lcom/google/zxing/pdf417/encoder/PDF417;Ljava/lang/String;III)Lcom/google/zxing/common/BitMatrix;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    const/4 v10, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0, p1, v10}, Lcom/google/zxing/pdf417/encoder/PDF417;->generateBarcodeLogic(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/encoder/PDF417;->getBarcodeMatrix()Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;

    move-result-object v6

    const/16 v9, 0x8

    invoke-virtual {v6, v10, v9}, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->getScaledMatrix(II)[[B

    move-result-object v0

    const/4 v1, 0x0

    if-gt p3, p2, :cond_0

    move v6, v7

    :goto_0
    aget-object v9, v0, v7

    array-length v9, v9

    array-length v10, v0

    if-lt v9, v10, :cond_1

    move v9, v7

    :goto_1
    xor-int/2addr v6, v9

    if-nez v6, :cond_2

    :goto_2
    aget-object v6, v0, v7

    array-length v6, v6

    div-int v3, p2, v6

    array-length v6, v0

    div-int v4, p3, v6

    if-lt v3, v4, :cond_3

    move v2, v4

    :goto_3
    if-gt v2, v8, :cond_4

    invoke-static {v0, p4}, Lcom/google/zxing/pdf417/PDF417Writer;->bitMatrixFrombitArray([[BI)Lcom/google/zxing/common/BitMatrix;

    move-result-object v6

    return-object v6

    :cond_0
    move v6, v8

    goto :goto_0

    :cond_1
    move v9, v8

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lcom/google/zxing/pdf417/PDF417Writer;->rotateArray([[B)[[B

    move-result-object v0

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    move v2, v3

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/encoder/PDF417;->getBarcodeMatrix()Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;

    move-result-object v6

    mul-int/lit8 v7, v2, 0x2

    mul-int/lit8 v8, v2, 0x4

    mul-int/lit8 v8, v8, 0x2

    invoke-virtual {v6, v7, v8}, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->getScaledMatrix(II)[[B

    move-result-object v5

    if-nez v1, :cond_5

    :goto_4
    invoke-static {v5, p4}, Lcom/google/zxing/pdf417/PDF417Writer;->bitMatrixFrombitArray([[BI)Lcom/google/zxing/common/BitMatrix;

    move-result-object v6

    return-object v6

    :cond_5
    invoke-static {v5}, Lcom/google/zxing/pdf417/PDF417Writer;->rotateArray([[B)[[B

    move-result-object v5

    goto :goto_4
.end method

.method private static bitMatrixFrombitArray([[BI)Lcom/google/zxing/common/BitMatrix;
    .locals 8

    const/4 v7, 0x0

    new-instance v0, Lcom/google/zxing/common/BitMatrix;

    aget-object v4, p0, v7

    array-length v4, v4

    mul-int/lit8 v5, p1, 0x2

    add-int/2addr v4, v5

    array-length v5, p0

    mul-int/lit8 v6, p1, 0x2

    add-int/2addr v5, v6

    invoke-direct {v0, v4, v5}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->clear()V

    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v4

    sub-int/2addr v4, p1

    add-int/lit8 v3, v4, -0x1

    :goto_0
    array-length v4, p0

    if-lt v2, v4, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    aget-object v4, p0, v7

    array-length v4, v4

    if-lt v1, v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    aget-object v4, p0, v2

    aget-byte v4, v4, v1

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int v4, v1, p1

    invoke-virtual {v0, v4, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    goto :goto_2
.end method

.method private static rotateArray([[B)[[B
    .locals 9

    const/4 v8, 0x0

    aget-object v4, p0, v8

    array-length v4, v4

    array-length v5, p0

    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x2

    new-array v7, v7, [I

    aput v4, v7, v8

    const/4 v4, 0x1

    aput v5, v7, v4

    invoke-static {v6, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[B

    const/4 v0, 0x0

    :goto_0
    array-length v4, p0

    if-lt v0, v4, :cond_0

    return-object v3

    :cond_0
    array-length v4, p0

    sub-int/2addr v4, v0

    add-int/lit8 v1, v4, -0x1

    const/4 v2, 0x0

    :goto_1
    aget-object v4, p0, v8

    array-length v4, v4

    if-lt v2, v4, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    aget-object v4, v3, v2

    aget-object v5, p0, v0

    aget-byte v5, v5, v2

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/BarcodeFormat;",
            "II",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/BitMatrix;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    sget-object v3, Lcom/google/zxing/BarcodeFormat;->PDF_417:Lcom/google/zxing/BarcodeFormat;

    if-ne p2, v3, :cond_1

    new-instance v1, Lcom/google/zxing/pdf417/encoder/PDF417;

    invoke-direct {v1}, Lcom/google/zxing/pdf417/encoder/PDF417;-><init>()V

    const/16 v2, 0x1e

    if-nez p5, :cond_2

    :cond_0
    :goto_0
    invoke-static {v1, p1, p3, p4, v2}, Lcom/google/zxing/pdf417/PDF417Writer;->bitMatrixFromEncoder(Lcom/google/zxing/pdf417/encoder/PDF417;Ljava/lang/String;III)Lcom/google/zxing/common/BitMatrix;

    move-result-object v3

    return-object v3

    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Can only encode PDF_417, but got "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    sget-object v3, Lcom/google/zxing/EncodeHintType;->PDF417_COMPACT:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :goto_1
    sget-object v3, Lcom/google/zxing/EncodeHintType;->PDF417_COMPACTION:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_2
    sget-object v3, Lcom/google/zxing/EncodeHintType;->PDF417_DIMENSIONS:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :goto_3
    sget-object v3, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v2

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/google/zxing/EncodeHintType;->PDF417_COMPACT:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/zxing/pdf417/encoder/PDF417;->setCompact(Z)V

    goto :goto_1

    :cond_4
    sget-object v3, Lcom/google/zxing/EncodeHintType;->PDF417_COMPACTION:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/pdf417/encoder/Compaction;

    invoke-virtual {v1, v3}, Lcom/google/zxing/pdf417/encoder/PDF417;->setCompaction(Lcom/google/zxing/pdf417/encoder/Compaction;)V

    goto :goto_2

    :cond_5
    sget-object v3, Lcom/google/zxing/EncodeHintType;->PDF417_DIMENSIONS:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/pdf417/encoder/Dimensions;

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/encoder/Dimensions;->getMaxCols()I

    move-result v3

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/encoder/Dimensions;->getMinCols()I

    move-result v4

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/encoder/Dimensions;->getMaxRows()I

    move-result v5

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/encoder/Dimensions;->getMinRows()I

    move-result v6

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/google/zxing/pdf417/encoder/PDF417;->setDimensions(IIII)V

    goto :goto_3
.end method
