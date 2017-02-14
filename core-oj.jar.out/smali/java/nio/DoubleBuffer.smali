.class public abstract Ljava/nio/DoubleBuffer;
.super Ljava/nio/Buffer;
.source "DoubleBuffer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/nio/Buffer;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/nio/DoubleBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field final hb:[D

.field isReadOnly:Z

.field final offset:I


# direct methods
.method constructor <init>(IIII)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Ljava/nio/DoubleBuffer;-><init>(IIII[DI)V

    return-void
.end method

.method constructor <init>(IIII[DI)V
    .locals 6

    const/4 v5, 0x3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Ljava/nio/Buffer;-><init>(IIIII)V

    iput-object p5, p0, Ljava/nio/DoubleBuffer;->hb:[D

    iput p6, p0, Ljava/nio/DoubleBuffer;->offset:I

    return-void
.end method

.method public static allocate(I)Ljava/nio/DoubleBuffer;
    .locals 1

    if-gez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Ljava/nio/HeapDoubleBuffer;

    invoke-direct {v0, p0, p0}, Ljava/nio/HeapDoubleBuffer;-><init>(II)V

    return-object v0
.end method

.method private static compare(DD)I
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, -0x1

    cmpg-double v3, p0, p2

    if-gez v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    cmpl-double v3, p0, p2

    if-lez v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    cmpl-double v3, p0, p2

    if-nez v3, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private static equals(DD)Z
    .locals 2

    cmpl-double v0, p0, p2

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static wrap([D)Ljava/nio/DoubleBuffer;
    .locals 2

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Ljava/nio/DoubleBuffer;->wrap([DII)Ljava/nio/DoubleBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static wrap([DII)Ljava/nio/DoubleBuffer;
    .locals 2

    :try_start_0
    new-instance v1, Ljava/nio/HeapDoubleBuffer;

    invoke-direct {v1, p0, p1, p2}, Ljava/nio/HeapDoubleBuffer;-><init>([DII)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method


# virtual methods
.method public bridge synthetic array()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->array()[D

    move-result-object v0

    return-object v0
.end method

.method public final array()[D
    .locals 1

    iget-object v0, p0, Ljava/nio/DoubleBuffer;->hb:[D

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_0
    iget-boolean v0, p0, Ljava/nio/DoubleBuffer;->isReadOnly:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Ljava/nio/DoubleBuffer;->hb:[D

    return-object v0
.end method

.method public final arrayOffset()I
    .locals 1

    iget-object v0, p0, Ljava/nio/DoubleBuffer;->hb:[D

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_0
    iget-boolean v0, p0, Ljava/nio/DoubleBuffer;->isReadOnly:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    :cond_1
    iget v0, p0, Ljava/nio/DoubleBuffer;->offset:I

    return v0
.end method

.method public abstract asReadOnlyBuffer()Ljava/nio/DoubleBuffer;
.end method

.method public abstract compact()Ljava/nio/DoubleBuffer;
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/nio/DoubleBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/DoubleBuffer;->compareTo(Ljava/nio/DoubleBuffer;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/nio/DoubleBuffer;)I
    .locals 8

    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->position()I

    move-result v4

    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v5

    invoke-virtual {p1}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int v3, v4, v5

    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->position()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/DoubleBuffer;->position()I

    move-result v2

    :goto_0
    if-ge v1, v3, :cond_1

    invoke-virtual {p0, v1}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide v4

    invoke-virtual {p1, v2}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v4

    invoke-virtual {p1}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v5

    sub-int/2addr v4, v5

    return v4
.end method

.method public abstract duplicate()Ljava/nio/DoubleBuffer;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    if-ne p0, p1, :cond_0

    return v9

    :cond_0
    instance-of v4, p1, Ljava/nio/DoubleBuffer;

    if-nez v4, :cond_1

    return v8

    :cond_1
    move-object v3, p1

    check-cast v3, Ljava/nio/DoubleBuffer;

    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v4

    invoke-virtual {v3}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v5

    if-eq v4, v5, :cond_2

    return v8

    :cond_2
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->position()I

    move-result v2

    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->limit()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    invoke-virtual {v3}, Ljava/nio/DoubleBuffer;->limit()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_0
    if-lt v0, v2, :cond_4

    invoke-virtual {p0, v0}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide v4

    invoke-virtual {v3, v1}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/nio/DoubleBuffer;->equals(DD)Z

    move-result v4

    if-nez v4, :cond_3

    return v8

    :cond_3
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    return v9
.end method

.method public abstract get()D
.end method

.method public abstract get(I)D
.end method

.method public get([D)Ljava/nio/DoubleBuffer;
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/nio/DoubleBuffer;->get([DII)Ljava/nio/DoubleBuffer;

    move-result-object v0

    return-object v0
.end method

.method public get([DII)Ljava/nio/DoubleBuffer;
    .locals 4

    array-length v2, p1

    invoke-static {p2, p3, v2}, Ljava/nio/DoubleBuffer;->checkBounds(III)V

    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v2

    if-le p3, v2, :cond_0

    new-instance v2, Ljava/nio/BufferUnderflowException;

    invoke-direct {v2}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v2

    :cond_0
    add-int v0, p2, p3

    move v1, p2

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->get()D

    move-result-wide v2

    aput-wide v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public final hasArray()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Ljava/nio/DoubleBuffer;->hb:[D

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Ljava/nio/DoubleBuffer;->isReadOnly:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->position()I

    move-result v2

    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->limit()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_0
    if-lt v1, v2, :cond_0

    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {p0, v1}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide v4

    double-to-int v4, v4

    add-int v0, v3, v4

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public abstract isDirect()Z
.end method

.method public abstract order()Ljava/nio/ByteOrder;
.end method

.method public abstract put(D)Ljava/nio/DoubleBuffer;
.end method

.method public abstract put(ID)Ljava/nio/DoubleBuffer;
.end method

.method public put(Ljava/nio/DoubleBuffer;)Ljava/nio/DoubleBuffer;
    .locals 4

    if-ne p1, p0, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    :cond_0
    invoke-virtual {p1}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v2

    if-le v1, v2, :cond_1

    new-instance v2, Ljava/nio/BufferOverflowException;

    invoke-direct {v2}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    invoke-virtual {p1}, Ljava/nio/DoubleBuffer;->get()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Ljava/nio/DoubleBuffer;->put(D)Ljava/nio/DoubleBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public final put([D)Ljava/nio/DoubleBuffer;
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/nio/DoubleBuffer;->put([DII)Ljava/nio/DoubleBuffer;

    move-result-object v0

    return-object v0
.end method

.method public put([DII)Ljava/nio/DoubleBuffer;
    .locals 4

    array-length v2, p1

    invoke-static {p2, p3, v2}, Ljava/nio/DoubleBuffer;->checkBounds(III)V

    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v2

    if-le p3, v2, :cond_0

    new-instance v2, Ljava/nio/BufferOverflowException;

    invoke-direct {v2}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v2

    :cond_0
    add-int v0, p2, p3

    move v1, p2

    :goto_0
    if-ge v1, v0, :cond_1

    aget-wide v2, p1, v1

    invoke-virtual {p0, v2, v3}, Ljava/nio/DoubleBuffer;->put(D)Ljava/nio/DoubleBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public abstract slice()Ljava/nio/DoubleBuffer;
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "[pos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string/jumbo v1, " lim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->limit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string/jumbo v1, " cap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
