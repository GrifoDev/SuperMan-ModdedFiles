.class public final Lcom/google/zxing/oned/ITFWriter;
.super Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.source "ITFWriter.java"


# static fields
.field private static final END_PATTERN:[I

.field private static final START_PATTERN:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x4

    new-array v0, v0, [I

    aput v1, v0, v3

    aput v1, v0, v1

    aput v1, v0, v4

    aput v1, v0, v2

    sput-object v0, Lcom/google/zxing/oned/ITFWriter;->START_PATTERN:[I

    new-array v0, v2, [I

    aput v2, v0, v3

    aput v1, v0, v1

    aput v1, v0, v4

    sput-object v0, Lcom/google/zxing/oned/ITFWriter;->END_PATTERN:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .locals 3
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

    sget-object v0, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;

    if-ne p2, v0, :cond_0

    invoke-super/range {p0 .. p5}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can only encode ITF, but got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode(Ljava/lang/String;)[Z
    .locals 12

    const/16 v11, 0xa

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    rem-int/lit8 v8, v3, 0x2

    if-nez v8, :cond_0

    const/16 v8, 0x50

    if-gt v3, v8, :cond_1

    mul-int/lit8 v8, v3, 0x9

    add-int/lit8 v8, v8, 0x9

    new-array v6, v8, [Z

    sget-object v8, Lcom/google/zxing/oned/ITFWriter;->START_PATTERN:[I

    invoke-static {v6, v9, v8, v10}, Lcom/google/zxing/oned/ITFWriter;->appendPattern([ZI[IZ)I

    move-result v5

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_2

    sget-object v8, Lcom/google/zxing/oned/ITFWriter;->END_PATTERN:[I

    invoke-static {v6, v5, v8, v10}, Lcom/google/zxing/oned/ITFWriter;->appendPattern([ZI[IZ)I

    return-object v6

    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "The lenght of the input should be even"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Requested contents should be less than 80 digits long, but got "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8, v11}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8, v11}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    const/16 v8, 0x12

    new-array v0, v8, [I

    const/4 v2, 0x0

    :goto_1
    const/4 v8, 0x5

    if-lt v2, v8, :cond_3

    invoke-static {v6, v5, v0, v10}, Lcom/google/zxing/oned/ITFWriter;->appendPattern([ZI[IZ)I

    move-result v8

    add-int/2addr v5, v8

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_3
    shl-int/lit8 v8, v2, 0x1

    sget-object v9, Lcom/google/zxing/oned/ITFReader;->PATTERNS:[[I

    aget-object v9, v9, v4

    aget v9, v9, v2

    aput v9, v0, v8

    shl-int/lit8 v8, v2, 0x1

    add-int/lit8 v8, v8, 0x1

    sget-object v9, Lcom/google/zxing/oned/ITFReader;->PATTERNS:[[I

    aget-object v9, v9, v7

    aget v9, v9, v2

    aput v9, v0, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
