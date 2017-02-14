.class final Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
.super Lmf/org/apache/xerces/impl/xpath/regex/Token;
.source "RangeToken.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final MAPSIZE:I = 0x100

.field private static final serialVersionUID:J = -0x7b024b6ae8cc53eL


# instance fields
.field compacted:Z

.field icaseCache:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

.field map:[I

.field nonMapIndex:I

.field ranges:[I

.field sorted:Z


# direct methods
.method constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;-><init>(I)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->icaseCache:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->map:[I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->setSorted(Z)V

    return-void
.end method

.method static complementRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 9

    const/4 v2, 0x1

    const v8, 0x10ffff

    const/4 v1, 0x0

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    :cond_0
    check-cast p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->sortRanges()V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->compactRanges()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v0, v0

    add-int/lit8 v0, v0, 0x2

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v3, v3, v1

    if-eqz v3, :cond_2

    :goto_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget v3, v3, v4

    if-eq v3, v8, :cond_3

    :goto_1
    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v4

    new-array v0, v0, [I

    iput-object v0, v4, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v0, v0, v1

    if-gtz v0, :cond_4

    move v0, v1

    :goto_2
    move v1, v0

    move v0, v2

    :goto_3
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x2

    if-ge v0, v2, :cond_5

    iget-object v2, v4, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v5, v1, 0x1

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v6, v6, v0

    add-int/lit8 v6, v6, 0x1

    aput v6, v2, v1

    iget-object v2, v4, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v1, v5, 0x1

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v7, v0, 0x1

    aget v6, v6, v7

    add-int/lit8 v6, v6, -0x1

    aput v6, v2, v5

    add-int/lit8 v0, v0, 0x2

    goto :goto_3

    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    const/4 v3, 0x5

    if-eq v0, v3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Token#complementRanges(): must be RANGE: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, -0x2

    goto :goto_1

    :cond_4
    iget-object v0, v4, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aput v1, v0, v1

    iget-object v5, v4, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    const/4 v0, 0x2

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v1, v6, v1

    add-int/lit8 v1, v1, -0x1

    aput v1, v5, v2

    goto :goto_2

    :cond_5
    if-ne v3, v8, :cond_6

    :goto_4
    invoke-direct {v4}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->setCompacted()V

    return-object v4

    :cond_6
    iget-object v0, v4, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v3, v3, 0x1

    aput v3, v0, v1

    iget-object v0, v4, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aput v8, v0, v2

    goto :goto_4
.end method

.method private createMap()V
    .locals 10

    const/16 v4, 0x8

    const/16 v9, 0x100

    const/4 v0, 0x0

    new-array v3, v4, [I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v1, v1

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_3

    aput v0, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-ge v2, v9, :cond_2

    div-int/lit8 v5, v2, 0x20

    aget v6, v3, v5

    and-int/lit8 v7, v2, 0x1f

    const/4 v8, 0x1

    shl-int v7, v8, v7

    or-int/2addr v6, v7

    aput v6, v3, v5

    add-int/lit8 v2, v2, 0x1

    :cond_1
    if-le v2, v4, :cond_0

    :cond_2
    if-ge v4, v9, :cond_4

    add-int/lit8 v0, v0, 0x2

    :cond_3
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v2, v2

    if-ge v0, v2, :cond_5

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v2, v2, v0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v5, v0, 0x1

    aget v4, v4, v5

    if-lt v2, v9, :cond_1

    :cond_4
    :goto_1
    iput-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->map:[I

    iput v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->nonMapIndex:I

    return-void

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method private static escapeCharInCharClass(I)Ljava/lang/String;
    .locals 4

    sparse-switch p0, :sswitch_data_0

    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const/high16 v0, 0x10000

    if-ge p0, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    int-to-char v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\\"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v0, "\\f"

    goto :goto_0

    :sswitch_2
    const-string/jumbo v0, "\\n"

    goto :goto_0

    :sswitch_3
    const-string/jumbo v0, "\\r"

    goto :goto_0

    :sswitch_4
    const-string/jumbo v0, "\\t"

    goto :goto_0

    :sswitch_5
    const-string/jumbo v0, "\\e"

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\\x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\\v"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_4
        0xa -> :sswitch_2
        0xc -> :sswitch_1
        0xd -> :sswitch_3
        0x1b -> :sswitch_5
        0x2c -> :sswitch_0
        0x2d -> :sswitch_0
        0x5b -> :sswitch_0
        0x5c -> :sswitch_0
        0x5d -> :sswitch_0
        0x5e -> :sswitch_0
    .end sparse-switch
.end method

.method private final isCompacted()Z
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->compacted:Z

    return v0
.end method

.method private final isSorted()Z
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->sorted:Z

    return v0
.end method

.method private final setCompacted()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->compacted:Z

    return-void
.end method

.method private final setSorted(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->sorted:Z

    if-eqz p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->compacted:Z

    goto :goto_0
.end method


# virtual methods
.method protected addRange(II)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->icaseCache:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    if-le p1, p2, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v0, v0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    add-int/lit8 v1, v1, 0x1

    if-eq v1, p2, :cond_2

    add-int/lit8 v1, v0, 0x2

    new-array v1, v1, [I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    if-ge v1, p2, :cond_3

    :goto_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v2, v0, 0x1

    aput p2, v1, v0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aput p1, v0, v2

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->sorted:Z

    if-eqz v0, :cond_4

    :goto_2
    return-void

    :cond_0
    move v4, p2

    move p2, p1

    move p1, v4

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aput p2, v0, v3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aput p1, v0, v1

    invoke-direct {p0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->setSorted(Z)V

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v0, v0, -0x1

    aput p1, v1, v0

    return-void

    :cond_3
    invoke-direct {p0, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->setSorted(Z)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->sortRanges()V

    goto :goto_2
.end method

.method protected compactRanges()V
    .locals 8

    const/4 v2, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v0, v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->isCompacted()Z

    move-result v0

    if-nez v0, :cond_2

    move v1, v2

    move v3, v2

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v0, v0

    if-ge v1, v0, :cond_8

    if-ne v3, v1, :cond_3

    add-int/lit8 v0, v1, 0x2

    :goto_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v4, v3, 0x1

    aget v1, v1, v4

    move v7, v1

    move v1, v0

    move v0, v7

    :goto_2
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v4, v4

    if-ge v1, v4, :cond_7

    add-int/lit8 v4, v0, 0x1

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v5, v5, v1

    if-lt v4, v5, :cond_7

    add-int/lit8 v4, v0, 0x1

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v5, v5, v1

    if-eq v4, v5, :cond_4

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v5, v1, 0x1

    aget v4, v4, v5

    if-ge v0, v4, :cond_5

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v5, v1, 0x1

    aget v4, v4, v5

    if-lt v0, v4, :cond_6

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Token#compactRanges(): Internel Error: ["

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v4, v4, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v3, v3, 0x1

    aget v3, v4, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v1, v1, 0x1

    aget v1, v3, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v5, v1, 0x1

    aget v1, v4, v1

    aput v1, v0, v3

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v4, v3, 0x1

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v0, v5, 0x1

    aget v5, v6, v5

    aput v5, v1, v4

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v4, v3, 0x1

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v6, v1, 0x1

    aget v5, v5, v6

    aput v5, v0, v4

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v4, v3, 0x1

    aget v0, v0, v4

    add-int/lit8 v1, v1, 0x2

    goto/16 :goto_2

    :cond_5
    add-int/lit8 v1, v1, 0x2

    goto/16 :goto_2

    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v4, v3, 0x1

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v6, v1, 0x1

    aget v5, v5, v6

    aput v5, v0, v4

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v4, v3, 0x1

    aget v0, v0, v4

    add-int/lit8 v1, v1, 0x2

    goto/16 :goto_2

    :cond_7
    add-int/lit8 v0, v3, 0x2

    move v3, v0

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v0, v0

    if-ne v3, v0, :cond_9

    :goto_3
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->setCompacted()V

    return-void

    :cond_9
    new-array v0, v3, [I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    goto :goto_3
.end method

.method dumpRanges()V
    .locals 5

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v1, "RANGE: "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v1, " NULL"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method declared-synchronized getCaseInsensitiveToken()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
    .locals 8

    const v7, 0xffff

    const/4 v6, 0x4

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->icaseCache:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    if-nez v0, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->type:I

    if-eq v0, v6, :cond_1

    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createNRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v0

    :goto_0
    move v1, v2

    :goto_1
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v3, v3

    if-ge v1, v3, :cond_4

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v3, v3, v1

    :goto_2
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v5, v1, 0x1

    aget v4, v4, v5

    if-gt v3, v4, :cond_3

    if-gt v3, v7, :cond_2

    int-to-char v4, v3

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    invoke-virtual {v0, v4, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->addRange(II)V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->icaseCache:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v3, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->addRange(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_4
    :try_start_2
    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->type:I

    if-eq v1, v6, :cond_5

    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createNRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v1

    :goto_4
    iget-object v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v3, v3

    if-ge v2, v3, :cond_8

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v3, v3, v2

    :goto_5
    iget-object v4, v0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v5, v2, 0x1

    aget v4, v4, v5

    if-gt v3, v4, :cond_7

    if-gt v3, v7, :cond_6

    int-to-char v4, v3

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    invoke-virtual {v1, v4, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->addRange(II)V

    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_5
    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v1

    goto :goto_4

    :cond_6
    invoke-virtual {v1, v3, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->addRange(II)V

    goto :goto_6

    :cond_7
    add-int/lit8 v2, v2, 0x2

    goto :goto_4

    :cond_8
    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->mergeRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    invoke-virtual {v1, p0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->mergeRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->compactRanges()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->icaseCache:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1
.end method

.method protected intersectRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V
    .locals 10

    const/4 v2, 0x0

    const/4 v1, 0x0

    check-cast p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    iget-object v0, p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    if-eqz v0, :cond_0

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->icaseCache:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->sortRanges()V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->compactRanges()V

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->sortRanges()V

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->compactRanges()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v0, v0

    iget-object v2, p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v2, v2

    add-int/2addr v0, v2

    new-array v4, v0, [I

    move v0, v1

    move v2, v1

    move v3, v1

    :goto_0
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v5, v5

    if-lt v2, v5, :cond_3

    :cond_2
    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v0, v0

    if-ge v2, v0, :cond_c

    add-int/lit8 v0, v3, 0x1

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v6, v2, 0x1

    aget v2, v5, v2

    aput v2, v4, v3

    add-int/lit8 v3, v0, 0x1

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v2, v6, 0x1

    aget v5, v5, v6

    aput v5, v4, v0

    goto :goto_1

    :cond_3
    iget-object v5, p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v5, v5

    if-ge v0, v5, :cond_2

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v5, v5, v2

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v7, v2, 0x1

    aget v6, v6, v7

    iget-object v7, p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v7, v7, v0

    iget-object v8, p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v9, v0, 0x1

    aget v8, v8, v9

    if-lt v6, v7, :cond_5

    if-ge v6, v7, :cond_6

    :cond_4
    if-lt v8, v5, :cond_b

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Token#intersectRanges(): Internal Error: ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v2, v2, 0x1

    aget v2, v4, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] & ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v0, v0, 0x1

    aget v0, v3, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    add-int/lit8 v2, v2, 0x2

    goto/16 :goto_0

    :cond_6
    if-gt v5, v8, :cond_4

    if-le v7, v5, :cond_8

    :cond_7
    if-le v7, v5, :cond_9

    if-le v6, v8, :cond_a

    add-int/lit8 v5, v3, 0x1

    aput v7, v4, v3

    add-int/lit8 v3, v5, 0x1

    aput v8, v4, v5

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v6, v8, 0x1

    aput v6, v5, v2

    goto/16 :goto_0

    :cond_8
    if-gt v6, v8, :cond_7

    add-int/lit8 v7, v3, 0x1

    aput v5, v4, v3

    add-int/lit8 v3, v7, 0x1

    aput v6, v4, v7

    add-int/lit8 v2, v2, 0x2

    goto/16 :goto_0

    :cond_9
    add-int/lit8 v6, v3, 0x1

    aput v5, v4, v3

    add-int/lit8 v3, v6, 0x1

    aput v8, v4, v6

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v6, v8, 0x1

    aput v6, v5, v2

    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_0

    :cond_a
    add-int/lit8 v5, v3, 0x1

    aput v7, v4, v3

    add-int/lit8 v3, v5, 0x1

    aput v6, v4, v5

    add-int/lit8 v2, v2, 0x2

    goto/16 :goto_0

    :cond_b
    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_0

    :cond_c
    new-array v0, v3, [I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    invoke-static {v4, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method match(I)Z
    .locals 5

    const/16 v4, 0x100

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->map:[I

    if-eqz v0, :cond_1

    :goto_0
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->type:I

    const/4 v3, 0x4

    if-eq v0, v3, :cond_2

    if-lt p1, v4, :cond_8

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->nonMapIndex:I

    :goto_1
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v3, v3

    if-ge v0, v3, :cond_b

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v3, v3, v0

    if-le v3, p1, :cond_a

    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->createMap()V

    goto :goto_0

    :cond_2
    if-lt p1, v4, :cond_4

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->nonMapIndex:I

    :goto_2
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v3, v3

    if-ge v0, v3, :cond_7

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v3, v3, v0

    if-le v3, p1, :cond_6

    :cond_3
    add-int/lit8 v0, v0, 0x2

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->map:[I

    div-int/lit8 v3, p1, 0x20

    aget v0, v0, v3

    and-int/lit8 v3, p1, 0x1f

    shl-int v3, v1, v3

    and-int/2addr v0, v3

    if-nez v0, :cond_5

    return v2

    :cond_5
    return v1

    :cond_6
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    if-gt p1, v3, :cond_3

    return v1

    :cond_7
    move v0, v2

    :goto_3
    return v0

    :cond_8
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->map:[I

    div-int/lit8 v3, p1, 0x20

    aget v0, v0, v3

    and-int/lit8 v3, p1, 0x1f

    shl-int v3, v1, v3

    and-int/2addr v0, v3

    if-eqz v0, :cond_9

    return v2

    :cond_9
    return v1

    :cond_a
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    if-gt p1, v3, :cond_0

    return v2

    :cond_b
    move v0, v1

    goto :goto_3
.end method

.method protected mergeRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v0, 0x0

    check-cast p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->sortRanges()V

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->sortRanges()V

    iget-object v1, p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    if-eqz v1, :cond_2

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->icaseCache:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->setSorted(Z)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    if-eqz v1, :cond_3

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v1, v1

    iget-object v2, p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v2, v2

    add-int/2addr v1, v2

    new-array v3, v1, [I

    move v1, v0

    move v2, v0

    :goto_0
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v4, v4

    if-ge v2, v4, :cond_8

    :cond_0
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v4, v4

    if-ge v2, v4, :cond_4

    iget-object v4, p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v4, v4

    if-ge v1, v4, :cond_5

    iget-object v4, p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v4, v4, v1

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v5, v5, v2

    if-ge v4, v5, :cond_6

    :cond_1
    add-int/lit8 v4, v0, 0x1

    iget-object v5, p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v6, v1, 0x1

    aget v1, v5, v1

    aput v1, v3, v0

    add-int/lit8 v0, v4, 0x1

    iget-object v5, p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v1, v6, 0x1

    aget v5, v5, v6

    aput v5, v3, v4

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    iget-object v1, p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    iget-object v1, p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    iget-object v3, p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v3, v3

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_4
    add-int/lit8 v4, v0, 0x1

    iget-object v5, p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v6, v1, 0x1

    aget v1, v5, v1

    aput v1, v3, v0

    add-int/lit8 v0, v4, 0x1

    iget-object v5, p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v1, v6, 0x1

    aget v5, v5, v6

    aput v5, v3, v4

    goto :goto_0

    :cond_5
    add-int/lit8 v4, v0, 0x1

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v6, v2, 0x1

    aget v2, v5, v2

    aput v2, v3, v0

    add-int/lit8 v0, v4, 0x1

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v2, v6, 0x1

    aget v5, v5, v6

    aput v5, v3, v4

    goto :goto_0

    :cond_6
    iget-object v4, p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v4, v4, v1

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v5, v5, v2

    if-eq v4, v5, :cond_7

    :goto_1
    add-int/lit8 v4, v0, 0x1

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v6, v2, 0x1

    aget v2, v5, v2

    aput v2, v3, v0

    add-int/lit8 v0, v4, 0x1

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v2, v6, 0x1

    aget v5, v5, v6

    aput v5, v3, v4

    goto/16 :goto_0

    :cond_7
    iget-object v4, p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v5, v1, 0x1

    aget v4, v4, v5

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v6, v2, 0x1

    aget v5, v5, v6

    if-lt v4, v5, :cond_1

    goto :goto_1

    :cond_8
    iget-object v4, p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v4, v4

    if-lt v1, v4, :cond_0

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    return-void
.end method

.method protected sortRanges()V
    .locals 8

    const/4 v2, 0x0

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->isSorted()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x4

    :goto_0
    if-ltz v0, :cond_6

    move v1, v2

    :goto_1
    if-gt v1, v0, :cond_5

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v3, v3, v1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v5, v1, 0x2

    aget v4, v4, v5

    if-le v3, v4, :cond_4

    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v4, v1, 0x2

    aget v3, v3, v4

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v5, v1, 0x2

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v6, v6, v1

    aput v6, v4, v5

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aput v3, v4, v1

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v4, v1, 0x3

    aget v3, v3, v4

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v5, v1, 0x3

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v7, v1, 0x1

    aget v6, v6, v7

    aput v6, v4, v5

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v5, v1, 0x1

    aput v3, v4, v5

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    return-void

    :cond_4
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v3, v3, v1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v5, v1, 0x2

    aget v4, v4, v5

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v4, v1, 0x1

    aget v3, v3, v4

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v5, v1, 0x3

    aget v4, v4, v5

    if-gt v3, v4, :cond_0

    goto :goto_2

    :cond_5
    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    :cond_6
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->setSorted(Z)V

    return-void
.end method

.method protected subtractRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V
    .locals 10

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget v0, p1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    check-cast p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    iget-object v0, p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    if-nez v0, :cond_2

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->intersectRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    return-void

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    if-eqz v0, :cond_0

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->icaseCache:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->sortRanges()V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->compactRanges()V

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->sortRanges()V

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->compactRanges()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v0, v0

    iget-object v2, p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v2, v2

    add-int/2addr v0, v2

    new-array v4, v0, [I

    move v0, v1

    move v2, v1

    move v3, v1

    :goto_0
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v5, v5

    if-lt v2, v5, :cond_4

    :cond_3
    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v0, v0

    if-ge v2, v0, :cond_d

    add-int/lit8 v0, v3, 0x1

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v6, v2, 0x1

    aget v2, v5, v2

    aput v2, v4, v3

    add-int/lit8 v3, v0, 0x1

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v2, v6, 0x1

    aget v5, v5, v6

    aput v5, v4, v0

    goto :goto_1

    :cond_4
    iget-object v5, p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v5, v5

    if-ge v0, v5, :cond_3

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v5, v5, v2

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v7, v2, 0x1

    aget v6, v6, v7

    iget-object v7, p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v7, v7, v0

    iget-object v8, p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v9, v0, 0x1

    aget v8, v8, v9

    if-lt v6, v7, :cond_6

    if-ge v6, v7, :cond_7

    :cond_5
    if-lt v8, v5, :cond_c

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Token#subtractRanges(): Internal Error: ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v2, v2, 0x1

    aget v2, v4, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] - ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v0, v0, 0x1

    aget v0, v3, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    add-int/lit8 v5, v3, 0x1

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v7, v2, 0x1

    aget v2, v6, v2

    aput v2, v4, v3

    add-int/lit8 v3, v5, 0x1

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v2, v7, 0x1

    aget v6, v6, v7

    aput v6, v4, v5

    goto/16 :goto_0

    :cond_7
    if-gt v5, v8, :cond_5

    if-le v7, v5, :cond_9

    :cond_8
    if-le v7, v5, :cond_a

    if-le v6, v8, :cond_b

    add-int/lit8 v6, v3, 0x1

    aput v5, v4, v3

    add-int/lit8 v3, v6, 0x1

    add-int/lit8 v5, v7, -0x1

    aput v5, v4, v6

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v6, v8, 0x1

    aput v6, v5, v2

    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_0

    :cond_9
    if-gt v6, v8, :cond_8

    add-int/lit8 v2, v2, 0x2

    goto/16 :goto_0

    :cond_a
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v6, v8, 0x1

    aput v6, v5, v2

    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_0

    :cond_b
    add-int/lit8 v6, v3, 0x1

    aput v5, v4, v3

    add-int/lit8 v3, v6, 0x1

    add-int/lit8 v5, v7, -0x1

    aput v5, v4, v6

    add-int/lit8 v2, v2, 0x2

    goto/16 :goto_0

    :cond_c
    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_0

    :cond_d
    new-array v0, v3, [I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    invoke-static {v4, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public toString(I)Ljava/lang/String;
    .locals 8

    const/16 v7, 0x5d

    const/16 v6, 0x2d

    const/16 v5, 0x2c

    const/4 v0, 0x0

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->type:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    sget-object v1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_not_0to9:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    if-eq p0, v1, :cond_a

    sget-object v1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_not_wordchars:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    if-eq p0, v1, :cond_b

    sget-object v1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_not_spaces:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    if-eq p0, v1, :cond_c

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "[^"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v2, v2

    if-ge v0, v2, :cond_f

    and-int/lit16 v2, p1, 0x400

    if-nez v2, :cond_d

    :cond_0
    :goto_1
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v2, v2, v0

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    if-eq v2, v3, :cond_e

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v2, v2, v0

    invoke-static {v2}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->escapeCharInCharClass(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    invoke-static {v2}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->escapeCharInCharClass(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    sget-object v1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_dot:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    if-eq p0, v1, :cond_3

    sget-object v1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_0to9:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    if-eq p0, v1, :cond_4

    sget-object v1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_wordchars:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    if-eq p0, v1, :cond_5

    sget-object v1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_spaces:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    if-eq p0, v1, :cond_6

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_3
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v2, v2

    if-ge v0, v2, :cond_9

    and-int/lit16 v2, p1, 0x400

    if-nez v2, :cond_7

    :cond_2
    :goto_4
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v2, v2, v0

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    if-eq v2, v3, :cond_8

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v2, v2, v0

    invoke-static {v2}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->escapeCharInCharClass(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    invoke-static {v2}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->escapeCharInCharClass(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_5
    add-int/lit8 v0, v0, 0x2

    goto :goto_3

    :cond_3
    const-string/jumbo v0, "."

    :goto_6
    return-object v0

    :cond_4
    const-string/jumbo v0, "\\d"

    goto :goto_6

    :cond_5
    const-string/jumbo v0, "\\w"

    goto :goto_6

    :cond_6
    const-string/jumbo v0, "\\s"

    goto :goto_6

    :cond_7
    if-lez v0, :cond_2

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_8
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v2, v2, v0

    invoke-static {v2}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->escapeCharInCharClass(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_9
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_a
    const-string/jumbo v0, "\\D"

    goto :goto_6

    :cond_b
    const-string/jumbo v0, "\\W"

    goto :goto_6

    :cond_c
    const-string/jumbo v0, "\\S"

    goto :goto_6

    :cond_d
    if-lez v0, :cond_0

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :cond_e
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v2, v2, v0

    invoke-static {v2}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->escapeCharInCharClass(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    :cond_f
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method
