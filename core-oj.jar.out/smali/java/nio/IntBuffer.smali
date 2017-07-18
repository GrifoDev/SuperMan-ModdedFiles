.class public abstract Ljava/nio/IntBuffer;
.super Ljava/nio/Buffer;
.source "IntBuffer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/nio/Buffer;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/nio/IntBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field final hb:[I

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

    invoke-direct/range {v0 .. v6}, Ljava/nio/IntBuffer;-><init>(IIII[II)V

    return-void
.end method

.method constructor <init>(IIII[II)V
    .locals 6

    const/4 v5, 0x2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Ljava/nio/Buffer;-><init>(IIIII)V

    iput-object p5, p0, Ljava/nio/IntBuffer;->hb:[I

    iput p6, p0, Ljava/nio/IntBuffer;->offset:I

    return-void
.end method

.method public static allocate(I)Ljava/nio/IntBuffer;
    .locals 1

    if-gez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Ljava/nio/HeapIntBuffer;

    invoke-direct {v0, p0, p0}, Ljava/nio/HeapIntBuffer;-><init>(II)V

    return-object v0
.end method

.method private static compare(II)I
    .locals 1

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method private static equals(II)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static wrap([I)Ljava/nio/IntBuffer;
    .locals 2

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Ljava/nio/IntBuffer;->wrap([III)Ljava/nio/IntBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static wrap([III)Ljava/nio/IntBuffer;
    .locals 2

    :try_start_0
    new-instance v1, Ljava/nio/HeapIntBuffer;

    invoke-direct {v1, p0, p1, p2}, Ljava/nio/HeapIntBuffer;-><init>([III)V
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

    invoke-virtual {p0}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v0

    return-object v0
.end method

.method public final array()[I
    .locals 1

    iget-object v0, p0, Ljava/nio/IntBuffer;->hb:[I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_0
    iget-boolean v0, p0, Ljava/nio/IntBuffer;->isReadOnly:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Ljava/nio/IntBuffer;->hb:[I

    return-object v0
.end method

.method public final arrayOffset()I
    .locals 1

    iget-object v0, p0, Ljava/nio/IntBuffer;->hb:[I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_0
    iget-boolean v0, p0, Ljava/nio/IntBuffer;->isReadOnly:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    :cond_1
    iget v0, p0, Ljava/nio/IntBuffer;->offset:I

    return v0
.end method

.method public abstract asReadOnlyBuffer()Ljava/nio/IntBuffer;
.end method

.method public abstract compact()Ljava/nio/IntBuffer;
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/nio/IntBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/IntBuffer;->compareTo(Ljava/nio/IntBuffer;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/nio/IntBuffer;)I
    .locals 7

    invoke-virtual {p0}, Ljava/nio/IntBuffer;->position()I

    move-result v4

    invoke-virtual {p0}, Ljava/nio/IntBuffer;->remaining()I

    move-result v5

    invoke-virtual {p1}, Ljava/nio/IntBuffer;->remaining()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int v3, v4, v5

    invoke-virtual {p0}, Ljava/nio/IntBuffer;->position()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/IntBuffer;->position()I

    move-result v2

    :goto_0
    if-ge v1, v3, :cond_1

    invoke-virtual {p0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v4

    invoke-virtual {p1, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v5

    invoke-static {v4, v5}, Ljava/nio/IntBuffer;->compare(II)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->remaining()I

    move-result v4

    invoke-virtual {p1}, Ljava/nio/IntBuffer;->remaining()I

    move-result v5

    sub-int/2addr v4, v5

    return v4
.end method

.method public abstract duplicate()Ljava/nio/IntBuffer;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-ne p0, p1, :cond_0

    return v7

    :cond_0
    instance-of v4, p1, Ljava/nio/IntBuffer;

    if-nez v4, :cond_1

    return v6

    :cond_1
    move-object v3, p1

    check-cast v3, Ljava/nio/IntBuffer;

    invoke-virtual {p0}, Ljava/nio/IntBuffer;->remaining()I

    move-result v4

    invoke-virtual {v3}, Ljava/nio/IntBuffer;->remaining()I

    move-result v5

    if-eq v4, v5, :cond_2

    return v6

    :cond_2
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->position()I

    move-result v2

    invoke-virtual {p0}, Ljava/nio/IntBuffer;->limit()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    invoke-virtual {v3}, Ljava/nio/IntBuffer;->limit()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_0
    if-lt v0, v2, :cond_4

    invoke-virtual {p0, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v4

    invoke-virtual {v3, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v5

    invoke-static {v4, v5}, Ljava/nio/IntBuffer;->equals(II)Z

    move-result v4

    if-nez v4, :cond_3

    return v6

    :cond_3
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    return v7
.end method

.method public abstract get()I
.end method

.method public abstract get(I)I
.end method

.method public get([I)Ljava/nio/IntBuffer;
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/nio/IntBuffer;->get([III)Ljava/nio/IntBuffer;

    move-result-object v0

    return-object v0
.end method

.method public get([III)Ljava/nio/IntBuffer;
    .locals 3

    array-length v2, p1

    invoke-static {p2, p3, v2}, Ljava/nio/IntBuffer;->checkBounds(III)V

    invoke-virtual {p0}, Ljava/nio/IntBuffer;->remaining()I

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

    invoke-virtual {p0}, Ljava/nio/IntBuffer;->get()I

    move-result v2

    aput v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public final hasArray()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Ljava/nio/IntBuffer;->hb:[I

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Ljava/nio/IntBuffer;->isReadOnly:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/nio/IntBuffer;->position()I

    move-result v2

    invoke-virtual {p0}, Ljava/nio/IntBuffer;->limit()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_0
    if-lt v1, v2, :cond_0

    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {p0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v4

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

.method public abstract put(I)Ljava/nio/IntBuffer;
.end method

.method public abstract put(II)Ljava/nio/IntBuffer;
.end method

.method public put(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;
    .locals 3

    if-ne p1, p0, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    :cond_0
    invoke-virtual {p1}, Ljava/nio/IntBuffer;->remaining()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/IntBuffer;->remaining()I

    move-result v2

    if-le v1, v2, :cond_1

    new-instance v2, Ljava/nio/BufferOverflowException;

    invoke-direct {v2}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    invoke-virtual {p1}, Ljava/nio/IntBuffer;->get()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public final put([I)Ljava/nio/IntBuffer;
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    move-result-object v0

    return-object v0
.end method

.method public put([III)Ljava/nio/IntBuffer;
    .locals 3

    array-length v2, p1

    invoke-static {p2, p3, v2}, Ljava/nio/IntBuffer;->checkBounds(III)V

    invoke-virtual {p0}, Ljava/nio/IntBuffer;->remaining()I

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

    aget v2, p1, v1

    invoke-virtual {p0, v2}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public abstract slice()Ljava/nio/IntBuffer;
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljava/nio/IntBuffer;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "[pos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/nio/IntBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string/jumbo v1, " lim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/nio/IntBuffer;->limit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string/jumbo v1, " cap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/nio/IntBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
