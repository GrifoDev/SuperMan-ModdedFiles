.class Ljava/nio/StringCharBuffer;
.super Ljava/nio/CharBuffer;
.source "StringCharBuffer.java"


# instance fields
.field str:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;II)V
    .locals 3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {p0, v2, p2, p3, v1}, Ljava/nio/CharBuffer;-><init>(IIII)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ltz p2, :cond_0

    if-le p2, v0, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    :cond_1
    if-lt p3, p2, :cond_0

    if-gt p3, v0, :cond_0

    iput-object p1, p0, Ljava/nio/StringCharBuffer;->str:Ljava/lang/CharSequence;

    return-void
.end method

.method private constructor <init>(Ljava/lang/CharSequence;IIIII)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Ljava/nio/CharBuffer;-><init>(IIII[CI)V

    iput-object p1, p0, Ljava/nio/StringCharBuffer;->str:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public asReadOnlyBuffer()Ljava/nio/CharBuffer;
    .locals 1

    invoke-virtual {p0}, Ljava/nio/StringCharBuffer;->duplicate()Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final compact()Ljava/nio/CharBuffer;
    .locals 1

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public duplicate()Ljava/nio/CharBuffer;
    .locals 7

    new-instance v0, Ljava/nio/StringCharBuffer;

    iget-object v1, p0, Ljava/nio/StringCharBuffer;->str:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Ljava/nio/StringCharBuffer;->markValue()I

    move-result v2

    invoke-virtual {p0}, Ljava/nio/StringCharBuffer;->position()I

    move-result v3

    invoke-virtual {p0}, Ljava/nio/StringCharBuffer;->limit()I

    move-result v4

    invoke-virtual {p0}, Ljava/nio/StringCharBuffer;->capacity()I

    move-result v5

    iget v6, p0, Ljava/nio/StringCharBuffer;->offset:I

    invoke-direct/range {v0 .. v6}, Ljava/nio/StringCharBuffer;-><init>(Ljava/lang/CharSequence;IIIII)V

    return-object v0
.end method

.method public final get()C
    .locals 3

    iget-object v0, p0, Ljava/nio/StringCharBuffer;->str:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Ljava/nio/StringCharBuffer;->nextGetIndex()I

    move-result v1

    iget v2, p0, Ljava/nio/StringCharBuffer;->offset:I

    add-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    return v0
.end method

.method public final get(I)C
    .locals 3

    iget-object v0, p0, Ljava/nio/StringCharBuffer;->str:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Ljava/nio/StringCharBuffer;->checkIndex(I)I

    move-result v1

    iget v2, p0, Ljava/nio/StringCharBuffer;->offset:I

    add-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    return v0
.end method

.method getUnchecked(I)C
    .locals 2

    iget-object v0, p0, Ljava/nio/StringCharBuffer;->str:Ljava/lang/CharSequence;

    iget v1, p0, Ljava/nio/StringCharBuffer;->offset:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    return v0
.end method

.method public isDirect()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isReadOnly()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public final put(C)Ljava/nio/CharBuffer;
    .locals 1

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public final put(IC)Ljava/nio/CharBuffer;
    .locals 1

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public slice()Ljava/nio/CharBuffer;
    .locals 7

    new-instance v0, Ljava/nio/StringCharBuffer;

    iget-object v1, p0, Ljava/nio/StringCharBuffer;->str:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Ljava/nio/StringCharBuffer;->remaining()I

    move-result v4

    invoke-virtual {p0}, Ljava/nio/StringCharBuffer;->remaining()I

    move-result v5

    iget v2, p0, Ljava/nio/StringCharBuffer;->offset:I

    invoke-virtual {p0}, Ljava/nio/StringCharBuffer;->position()I

    move-result v3

    add-int v6, v2, v3

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v6}, Ljava/nio/StringCharBuffer;-><init>(Ljava/lang/CharSequence;IIIII)V

    return-object v0
.end method

.method public bridge synthetic subSequence(II)Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljava/nio/StringCharBuffer;->subSequence(II)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final subSequence(II)Ljava/nio/CharBuffer;
    .locals 9

    :try_start_0
    invoke-virtual {p0}, Ljava/nio/StringCharBuffer;->position()I

    move-result v7

    new-instance v0, Ljava/nio/StringCharBuffer;

    iget-object v1, p0, Ljava/nio/StringCharBuffer;->str:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, v7}, Ljava/nio/StringCharBuffer;->checkIndex(II)I

    move-result v2

    add-int v3, v7, v2

    invoke-virtual {p0, p2, v7}, Ljava/nio/StringCharBuffer;->checkIndex(II)I

    move-result v2

    add-int v4, v7, v2

    invoke-virtual {p0}, Ljava/nio/StringCharBuffer;->capacity()I

    move-result v5

    iget v6, p0, Ljava/nio/StringCharBuffer;->offset:I

    const/4 v2, -0x1

    invoke-direct/range {v0 .. v6}, Ljava/nio/StringCharBuffer;-><init>(Ljava/lang/CharSequence;IIIII)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v8

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method final toString(II)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Ljava/nio/StringCharBuffer;->str:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Ljava/nio/StringCharBuffer;->offset:I

    add-int/2addr v1, p1

    iget v2, p0, Ljava/nio/StringCharBuffer;->offset:I

    add-int/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
