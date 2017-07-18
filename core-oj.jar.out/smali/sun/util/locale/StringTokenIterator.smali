.class public Lsun/util/locale/StringTokenIterator;
.super Ljava/lang/Object;
.source "StringTokenIterator.java"


# instance fields
.field private delimiterChar:C

.field private dlms:Ljava/lang/String;

.field private done:Z

.field private end:I

.field private start:I

.field private text:Ljava/lang/String;

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsun/util/locale/StringTokenIterator;->text:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lsun/util/locale/StringTokenIterator;->delimiterChar:C

    :goto_0
    invoke-virtual {p0, v2}, Lsun/util/locale/StringTokenIterator;->setStart(I)Lsun/util/locale/StringTokenIterator;

    return-void

    :cond_0
    iput-object p2, p0, Lsun/util/locale/StringTokenIterator;->dlms:Ljava/lang/String;

    goto :goto_0
.end method

.method private nextDelimiter(I)I
    .locals 7

    iget-object v5, p0, Lsun/util/locale/StringTokenIterator;->text:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lsun/util/locale/StringTokenIterator;->dlms:Ljava/lang/String;

    if-nez v5, :cond_1

    move v3, p1

    :goto_0
    if-ge v3, v4, :cond_4

    iget-object v5, p0, Lsun/util/locale/StringTokenIterator;->text:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    iget-char v6, p0, Lsun/util/locale/StringTokenIterator;->delimiterChar:C

    if-ne v5, v6, :cond_0

    return v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lsun/util/locale/StringTokenIterator;->dlms:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    move v3, p1

    :goto_1
    if-ge v3, v4, :cond_4

    iget-object v5, p0, Lsun/util/locale/StringTokenIterator;->text:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_3

    iget-object v5, p0, Lsun/util/locale/StringTokenIterator;->dlms:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v0, v5, :cond_2

    return v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return v4
.end method


# virtual methods
.method public current()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/util/locale/StringTokenIterator;->token:Ljava/lang/String;

    return-object v0
.end method

.method public currentEnd()I
    .locals 1

    iget v0, p0, Lsun/util/locale/StringTokenIterator;->end:I

    return v0
.end method

.method public currentStart()I
    .locals 1

    iget v0, p0, Lsun/util/locale/StringTokenIterator;->start:I

    return v0
.end method

.method public first()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lsun/util/locale/StringTokenIterator;->setStart(I)Lsun/util/locale/StringTokenIterator;

    iget-object v0, p0, Lsun/util/locale/StringTokenIterator;->token:Ljava/lang/String;

    return-object v0
.end method

.method public hasNext()Z
    .locals 2

    iget v0, p0, Lsun/util/locale/StringTokenIterator;->end:I

    iget-object v1, p0, Lsun/util/locale/StringTokenIterator;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDone()Z
    .locals 1

    iget-boolean v0, p0, Lsun/util/locale/StringTokenIterator;->done:Z

    return v0
.end method

.method public next()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lsun/util/locale/StringTokenIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lsun/util/locale/StringTokenIterator;->end:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lsun/util/locale/StringTokenIterator;->start:I

    iget v0, p0, Lsun/util/locale/StringTokenIterator;->start:I

    invoke-direct {p0, v0}, Lsun/util/locale/StringTokenIterator;->nextDelimiter(I)I

    move-result v0

    iput v0, p0, Lsun/util/locale/StringTokenIterator;->end:I

    iget-object v0, p0, Lsun/util/locale/StringTokenIterator;->text:Ljava/lang/String;

    iget v1, p0, Lsun/util/locale/StringTokenIterator;->start:I

    iget v2, p0, Lsun/util/locale/StringTokenIterator;->end:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/util/locale/StringTokenIterator;->token:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lsun/util/locale/StringTokenIterator;->token:Ljava/lang/String;

    return-object v0

    :cond_0
    iget v0, p0, Lsun/util/locale/StringTokenIterator;->end:I

    iput v0, p0, Lsun/util/locale/StringTokenIterator;->start:I

    const/4 v0, 0x0

    iput-object v0, p0, Lsun/util/locale/StringTokenIterator;->token:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/util/locale/StringTokenIterator;->done:Z

    goto :goto_0
.end method

.method public setStart(I)Lsun/util/locale/StringTokenIterator;
    .locals 3

    iget-object v0, p0, Lsun/util/locale/StringTokenIterator;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    iput p1, p0, Lsun/util/locale/StringTokenIterator;->start:I

    iget v0, p0, Lsun/util/locale/StringTokenIterator;->start:I

    invoke-direct {p0, v0}, Lsun/util/locale/StringTokenIterator;->nextDelimiter(I)I

    move-result v0

    iput v0, p0, Lsun/util/locale/StringTokenIterator;->end:I

    iget-object v0, p0, Lsun/util/locale/StringTokenIterator;->text:Ljava/lang/String;

    iget v1, p0, Lsun/util/locale/StringTokenIterator;->start:I

    iget v2, p0, Lsun/util/locale/StringTokenIterator;->end:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/util/locale/StringTokenIterator;->token:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/util/locale/StringTokenIterator;->done:Z

    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lsun/util/locale/StringTokenIterator;
    .locals 1

    iput-object p1, p0, Lsun/util/locale/StringTokenIterator;->text:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lsun/util/locale/StringTokenIterator;->setStart(I)Lsun/util/locale/StringTokenIterator;

    return-object p0
.end method
