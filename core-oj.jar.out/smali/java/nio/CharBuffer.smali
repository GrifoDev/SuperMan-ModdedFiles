.class public abstract Ljava/nio/CharBuffer;
.super Ljava/nio/Buffer;
.source "CharBuffer.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Appendable;
.implements Ljava/lang/CharSequence;
.implements Ljava/lang/Readable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/CharBuffer$-java_util_stream_IntStream_chars__LambdaImpl0;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/nio/Buffer;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/nio/CharBuffer;",
        ">;",
        "Ljava/lang/Appendable;",
        "Ljava/lang/CharSequence;",
        "Ljava/lang/Readable;"
    }
.end annotation


# instance fields
.field final hb:[C

.field isReadOnly:Z

.field final offset:I


# direct methods
.method static synthetic -java_nio_CharBuffer_lambda$1(Ljava/nio/CharBuffer;)Ljava/util/Spliterator$OfInt;
    .locals 1

    new-instance v0, Ljava/nio/CharBufferSpliterator;

    invoke-direct {v0, p0}, Ljava/nio/CharBufferSpliterator;-><init>(Ljava/nio/CharBuffer;)V

    return-object v0
.end method

.method constructor <init>(IIII)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Ljava/nio/CharBuffer;-><init>(IIII[CI)V

    return-void
.end method

.method constructor <init>(IIII[CI)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Ljava/nio/Buffer;-><init>(IIIII)V

    iput-object p5, p0, Ljava/nio/CharBuffer;->hb:[C

    iput p6, p0, Ljava/nio/CharBuffer;->offset:I

    return-void
.end method

.method public static allocate(I)Ljava/nio/CharBuffer;
    .locals 1

    if-gez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Ljava/nio/HeapCharBuffer;

    invoke-direct {v0, p0, p0}, Ljava/nio/HeapCharBuffer;-><init>(II)V

    return-object v0
.end method

.method private static compare(CC)I
    .locals 1

    invoke-static {p0, p1}, Ljava/lang/Character;->compare(CC)I

    move-result v0

    return v0
.end method

.method private static equals(CC)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;
    .locals 2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;II)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static wrap(Ljava/lang/CharSequence;II)Ljava/nio/CharBuffer;
    .locals 2

    :try_start_0
    new-instance v1, Ljava/nio/StringCharBuffer;

    invoke-direct {v1, p0, p1, p2}, Ljava/nio/StringCharBuffer;-><init>(Ljava/lang/CharSequence;II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public static wrap([C)Ljava/nio/CharBuffer;
    .locals 2

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static wrap([CII)Ljava/nio/CharBuffer;
    .locals 2

    :try_start_0
    new-instance v1, Ljava/nio/HeapCharBuffer;

    invoke-direct {v1, p0, p1, p2}, Ljava/nio/HeapCharBuffer;-><init>([CII)V
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
.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/nio/CharBuffer;->append(C)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/nio/CharBuffer;->append(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Ljava/nio/CharBuffer;->append(Ljava/lang/CharSequence;II)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public append(C)Ljava/nio/CharBuffer;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;
    .locals 1

    if-nez p1, :cond_0

    const-string/jumbo v0, "null"

    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/nio/CharBuffer;
    .locals 2

    if-nez p1, :cond_0

    const-string/jumbo v0, "null"

    :goto_0
    invoke-interface {v0, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;)Ljava/nio/CharBuffer;

    move-result-object v1

    return-object v1

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method public bridge synthetic array()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v0

    return-object v0
.end method

.method public final array()[C
    .locals 1

    iget-object v0, p0, Ljava/nio/CharBuffer;->hb:[C

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_0
    iget-boolean v0, p0, Ljava/nio/CharBuffer;->isReadOnly:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Ljava/nio/CharBuffer;->hb:[C

    return-object v0
.end method

.method public final arrayOffset()I
    .locals 1

    iget-object v0, p0, Ljava/nio/CharBuffer;->hb:[C

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_0
    iget-boolean v0, p0, Ljava/nio/CharBuffer;->isReadOnly:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    :cond_1
    iget v0, p0, Ljava/nio/CharBuffer;->offset:I

    return v0
.end method

.method public abstract asReadOnlyBuffer()Ljava/nio/CharBuffer;
.end method

.method public final charAt(I)C
    .locals 2

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Ljava/nio/CharBuffer;->checkIndex(II)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->get(I)C

    move-result v0

    return v0
.end method

.method public chars()Ljava/util/stream/IntStream;
    .locals 4

    move-object v0, p0

    new-instance v1, Ljava/nio/CharBuffer$-java_util_stream_IntStream_chars__LambdaImpl0;

    invoke-direct {v1, p0}, Ljava/nio/CharBuffer$-java_util_stream_IntStream_chars__LambdaImpl0;-><init>(Ljava/nio/CharBuffer;)V

    const/16 v2, 0x4050

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/function/Supplier;IZ)Ljava/util/stream/IntStream;

    move-result-object v1

    return-object v1
.end method

.method public abstract compact()Ljava/nio/CharBuffer;
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/nio/CharBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/CharBuffer;->compareTo(Ljava/nio/CharBuffer;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/nio/CharBuffer;)I
    .locals 7

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->position()I

    move-result v4

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v5

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int v3, v4, v5

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->position()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v2

    :goto_0
    if-ge v1, v3, :cond_1

    invoke-virtual {p0, v1}, Ljava/nio/CharBuffer;->get(I)C

    move-result v4

    invoke-virtual {p1, v2}, Ljava/nio/CharBuffer;->get(I)C

    move-result v5

    invoke-static {v4, v5}, Ljava/nio/CharBuffer;->compare(CC)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v4

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v5

    sub-int/2addr v4, v5

    return v4
.end method

.method public abstract duplicate()Ljava/nio/CharBuffer;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-ne p0, p1, :cond_0

    return v7

    :cond_0
    instance-of v4, p1, Ljava/nio/CharBuffer;

    if-nez v4, :cond_1

    return v6

    :cond_1
    move-object v3, p1

    check-cast v3, Ljava/nio/CharBuffer;

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v4

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->remaining()I

    move-result v5

    if-eq v4, v5, :cond_2

    return v6

    :cond_2
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->position()I

    move-result v2

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->limit()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->limit()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_0
    if-lt v0, v2, :cond_4

    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->get(I)C

    move-result v4

    invoke-virtual {v3, v1}, Ljava/nio/CharBuffer;->get(I)C

    move-result v5

    invoke-static {v4, v5}, Ljava/nio/CharBuffer;->equals(CC)Z

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

.method public abstract get()C
.end method

.method public abstract get(I)C
.end method

.method public get([C)Ljava/nio/CharBuffer;
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/nio/CharBuffer;->get([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public get([CII)Ljava/nio/CharBuffer;
    .locals 3

    array-length v2, p1

    invoke-static {p2, p3, v2}, Ljava/nio/CharBuffer;->checkBounds(III)V

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

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

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->get()C

    move-result v2

    aput-char v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method abstract getUnchecked(I)C
.end method

.method public final hasArray()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Ljava/nio/CharBuffer;->hb:[C

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Ljava/nio/CharBuffer;->isReadOnly:Z

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

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->position()I

    move-result v2

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->limit()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_0
    if-lt v1, v2, :cond_0

    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {p0, v1}, Ljava/nio/CharBuffer;->get(I)C

    move-result v4

    add-int v0, v3, v4

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public abstract isDirect()Z
.end method

.method public final length()I
    .locals 1

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method public abstract order()Ljava/nio/ByteOrder;
.end method

.method public abstract put(C)Ljava/nio/CharBuffer;
.end method

.method public abstract put(IC)Ljava/nio/CharBuffer;
.end method

.method public final put(Ljava/lang/String;)Ljava/nio/CharBuffer;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;II)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;II)Ljava/nio/CharBuffer;
    .locals 3

    sub-int v1, p3, p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p2, v1, v2}, Ljava/nio/CharBuffer;->checkBounds(III)V

    if-ne p2, p3, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->isReadOnly()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v1

    :cond_1
    sub-int v1, p3, p2

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v2

    if-le v1, v2, :cond_2

    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    :cond_2
    move v0, p2

    :goto_0
    if-ge v0, p3, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method public put(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;
    .locals 3

    if-ne p1, p0, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    :cond_0
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v2

    if-le v1, v2, :cond_1

    new-instance v2, Ljava/nio/BufferOverflowException;

    invoke-direct {v2}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->get()C

    move-result v2

    invoke-virtual {p0, v2}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public final put([C)Ljava/nio/CharBuffer;
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/nio/CharBuffer;->put([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public put([CII)Ljava/nio/CharBuffer;
    .locals 3

    array-length v2, p1

    invoke-static {p2, p3, v2}, Ljava/nio/CharBuffer;->checkBounds(III)V

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

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

    aget-char v2, p1, v1

    invoke-virtual {p0, v2}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public read(Ljava/nio/CharBuffer;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v3

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v4, -0x1

    return v4

    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->limit()I

    move-result v0

    if-ge v3, v2, :cond_1

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->position()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {p0, v4}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_1
    if-lez v1, :cond_2

    :try_start_0
    invoke-virtual {p1, p0}, Ljava/nio/CharBuffer;->put(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    return v1

    :catchall_0
    move-exception v4

    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    throw v4
.end method

.method public abstract slice()Ljava/nio/CharBuffer;
.end method

.method public bridge synthetic subSequence(II)Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljava/nio/CharBuffer;->subSequence(II)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public abstract subSequence(II)Ljava/nio/CharBuffer;
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->limit()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/nio/CharBuffer;->toString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method abstract toString(II)Ljava/lang/String;
.end method
