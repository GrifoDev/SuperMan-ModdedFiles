.class abstract Ljava/lang/AbstractStringBuilder;
.super Ljava/lang/Object;
.source "AbstractStringBuilder.java"

# interfaces
.implements Ljava/lang/CharSequence;


# instance fields
.field count:I

.field value:[C


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [C

    iput-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    return-void
.end method


# virtual methods
.method public append(C)Ljava/lang/AbstractStringBuilder;
    .locals 3

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    aput-char p1, v0, v1

    return-object p0
.end method

.method public append(D)Ljava/lang/AbstractStringBuilder;
    .locals 1

    invoke-static {}, Ljava/lang/FloatingDecimal;->getThreadLocalInstance()Ljava/lang/FloatingDecimal;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/FloatingDecimal;->loadDouble(D)Ljava/lang/FloatingDecimal;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/FloatingDecimal;->appendTo(Ljava/lang/AbstractStringBuilder;)V

    return-object p0
.end method

.method public append(F)Ljava/lang/AbstractStringBuilder;
    .locals 1

    invoke-static {}, Ljava/lang/FloatingDecimal;->getThreadLocalInstance()Ljava/lang/FloatingDecimal;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/FloatingDecimal;->loadFloat(F)Ljava/lang/FloatingDecimal;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/FloatingDecimal;->appendTo(Ljava/lang/AbstractStringBuilder;)V

    return-object p0
.end method

.method public append(I)Ljava/lang/AbstractStringBuilder;
    .locals 3

    const/high16 v2, -0x80000000

    if-ne p1, v2, :cond_0

    const-string/jumbo v2, "-2147483648"

    invoke-virtual {p0, v2}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/String;)Ljava/lang/AbstractStringBuilder;

    return-object p0

    :cond_0
    if-gez p1, :cond_1

    neg-int v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->stringSize(I)I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    :goto_0
    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int v1, v2, v0

    invoke-virtual {p0, v1}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-static {p1, v1, v2}, Ljava/lang/Integer;->getChars(II[C)V

    iput v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    return-object p0

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->stringSize(I)I

    move-result v0

    goto :goto_0
.end method

.method public append(J)Ljava/lang/AbstractStringBuilder;
    .locals 5

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "-9223372036854775808"

    invoke-virtual {p0, v2}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/String;)Ljava/lang/AbstractStringBuilder;

    return-object p0

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gez v2, :cond_1

    neg-long v2, p1

    invoke-static {v2, v3}, Ljava/lang/Long;->stringSize(J)I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    :goto_0
    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int v1, v2, v0

    invoke-virtual {p0, v1}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-static {p1, p2, v1, v2}, Ljava/lang/Long;->getChars(JI[C)V

    iput v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    return-object p0

    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->stringSize(J)I

    move-result v0

    goto :goto_0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/lang/AbstractStringBuilder;
    .locals 2

    if-nez p1, :cond_0

    const-string/jumbo p1, "null"

    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/String;)Ljava/lang/AbstractStringBuilder;

    move-result-object v0

    return-object v0

    :cond_1
    instance-of v0, p1, Ljava/lang/StringBuffer;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/AbstractStringBuilder;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/AbstractStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/lang/AbstractStringBuilder;
    .locals 7

    if-nez p1, :cond_0

    const-string/jumbo p1, "null"

    :cond_0
    if-ltz p2, :cond_1

    if-le p2, p3, :cond_2

    :cond_1
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "start "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", end "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", s.length() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-gt p3, v4, :cond_1

    sub-int v2, p3, p2

    iget v4, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v4, v2

    invoke-virtual {p0, v4}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    instance-of v4, p1, Ljava/lang/String;

    if-eqz v4, :cond_4

    check-cast p1, Ljava/lang/String;

    iget-object v4, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v5, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-virtual {p1, p2, p3, v4, v5}, Ljava/lang/String;->getCharsNoCheck(II[CI)V

    :cond_3
    :goto_0
    iget v4, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v4, v2

    iput v4, p0, Ljava/lang/AbstractStringBuilder;->count:I

    return-object p0

    :cond_4
    instance-of v4, p1, Ljava/lang/AbstractStringBuilder;

    if-eqz v4, :cond_5

    move-object v3, p1

    check-cast v3, Ljava/lang/AbstractStringBuilder;

    iget-object v4, v3, Ljava/lang/AbstractStringBuilder;->value:[C

    iget-object v5, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v6, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-static {v4, p2, v5, v6, v2}, Ljava/lang/System;->arraycopy([CI[CII)V

    goto :goto_0

    :cond_5
    move v0, p2

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    :goto_1
    if-ge v0, p3, :cond_3

    iget-object v4, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    aput-char v5, v4, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public append(Ljava/lang/Object;)Ljava/lang/AbstractStringBuilder;
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/String;)Ljava/lang/AbstractStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/String;)Ljava/lang/AbstractStringBuilder;
    .locals 4

    if-nez p1, :cond_0

    const-string/jumbo p1, "null"

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0, v1, v2}, Ljava/lang/String;->getCharsNoCheck(II[CI)V

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v1, v0

    iput v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    return-object p0
.end method

.method public append(Ljava/lang/StringBuffer;)Ljava/lang/AbstractStringBuilder;
    .locals 4

    if-nez p1, :cond_0

    const-string/jumbo v1, "null"

    invoke-virtual {p0, v1}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/String;)Ljava/lang/AbstractStringBuilder;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0, v1, v2}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v1, v0

    iput v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    return-object p0
.end method

.method public append(Z)Ljava/lang/AbstractStringBuilder;
    .locals 4

    const/16 v3, 0x65

    if-eqz p1, :cond_0

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    const/16 v2, 0x74

    aput-char v2, v0, v1

    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x72

    aput-char v2, v0, v1

    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v1, v1, 0x2

    const/16 v2, 0x75

    aput-char v2, v0, v1

    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v1, v1, 0x3

    aput-char v3, v0, v1

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    :goto_0
    return-object p0

    :cond_0
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v0, v0, 0x5

    invoke-virtual {p0, v0}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    const/16 v2, 0x66

    aput-char v2, v0, v1

    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x61

    aput-char v2, v0, v1

    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v1, v1, 0x2

    const/16 v2, 0x6c

    aput-char v2, v0, v1

    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v1, v1, 0x3

    const/16 v2, 0x73

    aput-char v2, v0, v1

    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v1, v1, 0x4

    aput-char v3, v0, v1

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    goto :goto_0
.end method

.method public append([C)Ljava/lang/AbstractStringBuilder;
    .locals 4

    array-length v0, p1

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy([CI[CII)V

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v1, v0

    iput v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    return-object p0
.end method

.method public append([CII)Ljava/lang/AbstractStringBuilder;
    .locals 2

    if-lez p3, :cond_0

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v0, p3

    invoke-virtual {p0, v0}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    :cond_0
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([CI[CII)V

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    return-object p0
.end method

.method public appendCodePoint(I)Ljava/lang/AbstractStringBuilder;
    .locals 3

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-static {p1}, Ljava/lang/Character;->isBmpCodePoint(I)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    int-to-char v2, p1

    aput-char v2, v1, v0

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    :goto_0
    return-object p0

    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v1, v0, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-static {p1, v1, v0}, Ljava/lang/Character;->toSurrogates(I[CI)V

    add-int/lit8 v1, v0, 0x2

    iput v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public capacity()I
    .locals 1

    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v0, v0

    return v0
.end method

.method public charAt(I)C
    .locals 1

    if-ltz p1, :cond_0

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_1
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    aget-char v0, v0, p1

    return v0
.end method

.method public codePointAt(I)I
    .locals 1

    if-ltz p1, :cond_0

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_1
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-static {v0, p1}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v0

    return v0
.end method

.method public codePointBefore(I)I
    .locals 2

    add-int/lit8 v0, p1, -0x1

    if-ltz v0, :cond_0

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-lt v0, v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v1, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v1

    :cond_1
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-static {v1, p1}, Ljava/lang/Character;->codePointBefore([CI)I

    move-result v1

    return v1
.end method

.method public codePointCount(II)I
    .locals 2

    if-ltz p1, :cond_0

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-le p2, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    if-gt p1, p2, :cond_0

    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    sub-int v1, p2, p1

    invoke-static {v0, p1, v1}, Ljava/lang/Character;->codePointCountImpl([CII)I

    move-result v0

    return v0
.end method

.method public delete(II)Ljava/lang/AbstractStringBuilder;
    .locals 5

    if-gez p1, :cond_0

    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v1, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v1

    :cond_0
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-le p2, v1, :cond_1

    iget p2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    :cond_1
    if-le p1, p2, :cond_2

    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>()V

    throw v1

    :cond_2
    sub-int v0, p2, p1

    if-lez v0, :cond_3

    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int v2, p1, v0

    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v4, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int/2addr v4, p2

    invoke-static {v1, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy([CI[CII)V

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int/2addr v1, v0

    iput v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    :cond_3
    return-object p0
.end method

.method public deleteCharAt(I)Ljava/lang/AbstractStringBuilder;
    .locals 4

    if-ltz p1, :cond_0

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_1
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy([CI[CII)V

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    return-object p0
.end method

.method public ensureCapacity(I)V
    .locals 0

    if-lez p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    :cond_0
    return-void
.end method

.method ensureCapacityInternal(I)V
    .locals 1

    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v0, v0

    sub-int v0, p1, v0

    if-lez v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/AbstractStringBuilder;->expandCapacity(I)V

    :cond_0
    return-void
.end method

.method expandCapacity(I)V
    .locals 2

    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v0, v1, 0x2

    sub-int v1, v0, p1

    if-gez v1, :cond_0

    move v0, p1

    :cond_0
    if-gez v0, :cond_2

    if-gez p1, :cond_1

    new-instance v1, Ljava/lang/OutOfMemoryError;

    invoke-direct {v1}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v1

    :cond_1
    const v0, 0x7fffffff

    :cond_2
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v1

    iput-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    return-void
.end method

.method public getChars(II[CI)V
    .locals 2

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_0
    if-ltz p2, :cond_1

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-le p2, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_2
    if-le p1, p2, :cond_3

    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string/jumbo v1, "srcBegin > srcEnd"

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    sub-int v1, p2, p1

    invoke-static {v0, p1, p3, p4, v1}, Ljava/lang/System;->arraycopy([CI[CII)V

    return-void
.end method

.method final getValue()[C
    .locals 1

    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    return-object v0
.end method

.method public indexOf(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/String;I)I
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    move v4, v1

    move v6, p2

    invoke-static/range {v0 .. v6}, Ljava/lang/String;->indexOf([CII[CIII)I

    move-result v0

    return v0
.end method

.method public insert(IC)Ljava/lang/AbstractStringBuilder;
    .locals 4

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int/2addr v3, p1

    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy([CI[CII)V

    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    aput-char p2, v0, p1

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    return-object p0
.end method

.method public insert(ID)Ljava/lang/AbstractStringBuilder;
    .locals 2

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->insert(ILjava/lang/String;)Ljava/lang/AbstractStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(IF)Ljava/lang/AbstractStringBuilder;
    .locals 1

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->insert(ILjava/lang/String;)Ljava/lang/AbstractStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(II)Ljava/lang/AbstractStringBuilder;
    .locals 1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->insert(ILjava/lang/String;)Ljava/lang/AbstractStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(IJ)Ljava/lang/AbstractStringBuilder;
    .locals 2

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->insert(ILjava/lang/String;)Ljava/lang/AbstractStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(ILjava/lang/CharSequence;)Ljava/lang/AbstractStringBuilder;
    .locals 2

    if-nez p2, :cond_0

    const-string/jumbo p2, "null"

    :cond_0
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->insert(ILjava/lang/String;)Ljava/lang/AbstractStringBuilder;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Ljava/lang/AbstractStringBuilder;->insert(ILjava/lang/CharSequence;II)Ljava/lang/AbstractStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(ILjava/lang/CharSequence;II)Ljava/lang/AbstractStringBuilder;
    .locals 7

    if-nez p2, :cond_0

    const-string/jumbo p2, "null"

    :cond_0
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/AbstractStringBuilder;->length()I

    move-result v3

    if-le p1, v3, :cond_2

    :cond_1
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "dstOffset "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    if-ltz p3, :cond_3

    if-gez p4, :cond_4

    :cond_3
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "start "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", end "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", s.length() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4
    if-gt p3, p4, :cond_3

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-gt p4, v3, :cond_3

    sub-int v2, p4, p3

    iget v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v3, v2

    invoke-virtual {p0, v3}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget-object v4, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int v5, p1, v2

    iget v6, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int/2addr v6, p1

    invoke-static {v3, p1, v4, v5, v6}, Ljava/lang/System;->arraycopy([CI[CII)V

    move v1, p3

    move v0, p1

    :goto_0
    if-ge v1, p4, :cond_5

    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int/lit8 p1, v0, 0x1

    invoke-interface {p2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    aput-char v4, v3, v0

    add-int/lit8 v1, v1, 0x1

    move v0, p1

    goto :goto_0

    :cond_5
    iget v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v3, v2

    iput v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    return-object p0
.end method

.method public insert(ILjava/lang/Object;)Ljava/lang/AbstractStringBuilder;
    .locals 1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->insert(ILjava/lang/String;)Ljava/lang/AbstractStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(ILjava/lang/String;)Ljava/lang/AbstractStringBuilder;
    .locals 6

    const/4 v5, 0x0

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/AbstractStringBuilder;->length()I

    move-result v1

    if-le p1, v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v1, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v1

    :cond_1
    if-nez p2, :cond_2

    const-string/jumbo p2, "null"

    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int v3, p1, v0

    iget v4, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int/2addr v4, p1

    invoke-static {v1, p1, v2, v3, v4}, Ljava/lang/System;->arraycopy([CI[CII)V

    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-virtual {p2, v5, v0, v1, p1}, Ljava/lang/String;->getCharsNoCheck(II[CI)V

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v1, v0

    iput v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    return-object p0
.end method

.method public insert(IZ)Ljava/lang/AbstractStringBuilder;
    .locals 1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->insert(ILjava/lang/String;)Ljava/lang/AbstractStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(I[C)Ljava/lang/AbstractStringBuilder;
    .locals 6

    const/4 v5, 0x0

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/AbstractStringBuilder;->length()I

    move-result v1

    if-le p1, v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v1, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v1

    :cond_1
    array-length v0, p2

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int v3, p1, v0

    iget v4, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int/2addr v4, p1

    invoke-static {v1, p1, v2, v3, v4}, Ljava/lang/System;->arraycopy([CI[CII)V

    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-static {p2, v5, v1, p1, v0}, Ljava/lang/System;->arraycopy([CI[CII)V

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v1, v0

    iput v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    return-object p0
.end method

.method public insert(I[CII)Ljava/lang/AbstractStringBuilder;
    .locals 4

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/AbstractStringBuilder;->length()I

    move-result v0

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_1
    if-ltz p3, :cond_2

    if-gez p4, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", len "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", str.length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    array-length v0, p2

    sub-int/2addr v0, p4

    if-gt p3, v0, :cond_2

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v0, p4

    invoke-virtual {p0, v0}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int v2, p1, p4

    iget v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int/2addr v3, p1

    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy([CI[CII)V

    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-static {p2, p3, v0, p1, p4}, Ljava/lang/System;->arraycopy([CI[CII)V

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v0, p4

    iput v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    return-object p0
.end method

.method public lastIndexOf(Ljava/lang/String;)I
    .locals 1

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-virtual {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/String;I)I
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    move v4, v1

    move v6, p2

    invoke-static/range {v0 .. v6}, Ljava/lang/String;->lastIndexOf([CII[CIII)I

    move-result v0

    return v0
.end method

.method public length()I
    .locals 1

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    return v0
.end method

.method public offsetByCodePoints(II)I
    .locals 3

    const/4 v2, 0x0

    if-ltz p1, :cond_0

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-static {v0, v2, v1, p1, p2}, Ljava/lang/Character;->offsetByCodePointsImpl([CIIII)I

    move-result v0

    return v0
.end method

.method public replace(IILjava/lang/String;)Ljava/lang/AbstractStringBuilder;
    .locals 7

    const/4 v6, 0x0

    if-gez p1, :cond_0

    new-instance v2, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v2, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v2

    :cond_0
    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-le p1, v2, :cond_1

    new-instance v2, Ljava/lang/StringIndexOutOfBoundsException;

    const-string/jumbo v3, "start > length()"

    invoke-direct {v2, v3}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    if-le p1, p2, :cond_2

    new-instance v2, Ljava/lang/StringIndexOutOfBoundsException;

    const-string/jumbo v3, "start > end"

    invoke-direct {v2, v3}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-le p2, v2, :cond_3

    iget p2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    :cond_3
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v2, v0

    sub-int v3, p2, p1

    sub-int v1, v2, v3

    invoke-virtual {p0, v1}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int v4, p1, v0

    iget v5, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int/2addr v5, p2

    invoke-static {v2, p2, v3, v4, v5}, Ljava/lang/System;->arraycopy([CI[CII)V

    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-virtual {p3, v6, v0, v2, p1}, Ljava/lang/String;->getCharsNoCheck(II[CI)V

    iput v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    return-object p0
.end method

.method public reverse()Ljava/lang/AbstractStringBuilder;
    .locals 13

    const v12, 0xdfff

    const v11, 0xd800

    const/4 v2, 0x0

    iget v9, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v6, v9, -0x1

    add-int/lit8 v9, v6, -0x1

    shr-int/lit8 v5, v9, 0x1

    :goto_0
    if-ltz v5, :cond_3

    iget-object v9, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    aget-char v7, v9, v5

    iget-object v9, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    sub-int v10, v6, v5

    aget-char v8, v9, v10

    if-nez v2, :cond_0

    if-lt v7, v11, :cond_1

    if-gt v7, v12, :cond_1

    const/4 v2, 0x1

    :cond_0
    :goto_1
    iget-object v9, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    aput-char v8, v9, v5

    iget-object v9, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    sub-int v10, v6, v5

    aput-char v7, v9, v10

    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_1
    if-lt v8, v11, :cond_2

    if-gt v8, v12, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_5

    const/4 v3, 0x0

    :goto_2
    iget v9, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v9, v9, -0x1

    if-ge v3, v9, :cond_5

    iget-object v9, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    aget-char v1, v9, v3

    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int/lit8 v10, v3, 0x1

    aget-char v0, v9, v10

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int/lit8 v4, v3, 0x1

    aput-char v0, v9, v3

    iget-object v9, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    aput-char v1, v9, v4

    move v3, v4

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    return-object p0
.end method

.method public setCharAt(IC)V
    .locals 1

    if-ltz p1, :cond_0

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_1
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    aput-char p2, v0, p1

    return-void
.end method

.method public setLength(I)V
    .locals 3

    const/4 v2, 0x0

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-ge v0, p1, :cond_1

    :goto_0
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-ge v0, p1, :cond_2

    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    aput-char v2, v0, v1

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    goto :goto_0

    :cond_1
    iput p1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    :cond_2
    return-void
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public substring(I)Ljava/lang/String;
    .locals 1

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-virtual {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public substring(II)Ljava/lang/String;
    .locals 3

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_0
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-le p2, v0, :cond_1

    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_1
    if-le p1, p2, :cond_2

    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    sub-int v1, p2, p1

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    sub-int v2, p2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public trimToSize()V
    .locals 2

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v0

    iput-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    :cond_0
    return-void
.end method
