.class Ljava/nio/StringCharBuffer;
.super Ljava/nio/CharBuffer;
.source "StringCharBuffer.java"


# instance fields
.field str:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;II)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 36
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {p0, v2, p2, p3, v1}, Ljava/nio/CharBuffer;-><init>(IIII)V

    .line 37
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 38
    .local v0, "n":I
    if-ltz p2, :cond_0

    if-le p2, v0, :cond_1

    .line 39
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 38
    :cond_1
    if-lt p3, p2, :cond_0

    if-gt p3, v0, :cond_0

    .line 40
    iput-object p1, p0, Ljava/nio/StringCharBuffer;->str:Ljava/lang/CharSequence;

    .line 35
    return-void
.end method

.method private constructor <init>(Ljava/lang/CharSequence;IIIII)V
    .locals 7
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "mark"    # I
    .param p3, "pos"    # I
    .param p4, "limit"    # I
    .param p5, "cap"    # I
    .param p6, "offset"    # I

    .prologue
    .line 58
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Ljava/nio/CharBuffer;-><init>(IIII[CI)V

    .line 59
    iput-object p1, p0, Ljava/nio/StringCharBuffer;->str:Ljava/lang/CharSequence;

    .line 57
    return-void
.end method


# virtual methods
.method public asReadOnlyBuffer()Ljava/nio/CharBuffer;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Ljava/nio/StringCharBuffer;->duplicate()Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final compact()Ljava/nio/CharBuffer;
    .locals 1

    .prologue
    .line 94
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public duplicate()Ljava/nio/CharBuffer;
    .locals 7

    .prologue
    .line 63
    new-instance v0, Ljava/nio/StringCharBuffer;

    iget-object v1, p0, Ljava/nio/StringCharBuffer;->str:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Ljava/nio/StringCharBuffer;->markValue()I

    move-result v2

    .line 64
    invoke-virtual {p0}, Ljava/nio/StringCharBuffer;->position()I

    move-result v3

    invoke-virtual {p0}, Ljava/nio/StringCharBuffer;->limit()I

    move-result v4

    invoke-virtual {p0}, Ljava/nio/StringCharBuffer;->capacity()I

    move-result v5

    iget v6, p0, Ljava/nio/StringCharBuffer;->offset:I

    .line 63
    invoke-direct/range {v0 .. v6}, Ljava/nio/StringCharBuffer;-><init>(Ljava/lang/CharSequence;IIIII)V

    return-object v0
.end method

.method public final get()C
    .locals 3

    .prologue
    .line 72
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
    .param p1, "index"    # I

    .prologue
    .line 76
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
    .param p1, "index"    # I

    .prologue
    .line 80
    iget-object v0, p0, Ljava/nio/StringCharBuffer;->str:Ljava/lang/CharSequence;

    iget v1, p0, Ljava/nio/StringCharBuffer;->offset:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    return v0
.end method

.method public isDirect()Z
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public final isReadOnly()Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x1

    return v0
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 1

    .prologue
    .line 124
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public final put(C)Ljava/nio/CharBuffer;
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 86
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public final put(IC)Ljava/nio/CharBuffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "c"    # C

    .prologue
    .line 90
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public slice()Ljava/nio/CharBuffer;
    .locals 7

    .prologue
    .line 44
    new-instance v0, Ljava/nio/StringCharBuffer;

    iget-object v1, p0, Ljava/nio/StringCharBuffer;->str:Ljava/lang/CharSequence;

    .line 47
    invoke-virtual {p0}, Ljava/nio/StringCharBuffer;->remaining()I

    move-result v4

    .line 48
    invoke-virtual {p0}, Ljava/nio/StringCharBuffer;->remaining()I

    move-result v5

    .line 49
    iget v2, p0, Ljava/nio/StringCharBuffer;->offset:I

    invoke-virtual {p0}, Ljava/nio/StringCharBuffer;->position()I

    move-result v3

    add-int v6, v2, v3

    .line 45
    const/4 v2, -0x1

    .line 46
    const/4 v3, 0x0

    .line 44
    invoke-direct/range {v0 .. v6}, Ljava/nio/StringCharBuffer;-><init>(Ljava/lang/CharSequence;IIIII)V

    return-object v0
.end method

.method public bridge synthetic subSequence(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 105
    invoke-virtual {p0, p1, p2}, Ljava/nio/StringCharBuffer;->subSequence(II)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final subSequence(II)Ljava/nio/CharBuffer;
    .locals 9
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 107
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/StringCharBuffer;->position()I

    move-result v7

    .line 108
    .local v7, "pos":I
    new-instance v0, Ljava/nio/StringCharBuffer;

    iget-object v1, p0, Ljava/nio/StringCharBuffer;->str:Ljava/lang/CharSequence;

    .line 110
    invoke-virtual {p0, p1, v7}, Ljava/nio/StringCharBuffer;->checkIndex(II)I

    move-result v2

    add-int v3, v7, v2

    .line 111
    invoke-virtual {p0, p2, v7}, Ljava/nio/StringCharBuffer;->checkIndex(II)I

    move-result v2

    add-int v4, v7, v2

    .line 112
    invoke-virtual {p0}, Ljava/nio/StringCharBuffer;->capacity()I

    move-result v5

    .line 113
    iget v6, p0, Ljava/nio/StringCharBuffer;->offset:I

    .line 109
    const/4 v2, -0x1

    .line 108
    invoke-direct/range {v0 .. v6}, Ljava/nio/StringCharBuffer;-><init>(Ljava/lang/CharSequence;IIIII)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 114
    .end local v7    # "pos":I
    :catch_0
    move-exception v8

    .line 115
    .local v8, "x":Ljava/lang/IllegalArgumentException;
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method final toString(II)Ljava/lang/String;
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 102
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
