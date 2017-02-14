.class public final Ljava/text/StringCharacterIterator;
.super Ljava/lang/Object;
.source "StringCharacterIterator.java"

# interfaces
.implements Ljava/text/CharacterIterator;


# instance fields
.field private begin:I

.field private end:I

.field private pos:I

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, p2}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;III)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Ljava/text/StringCharacterIterator;->text:Ljava/lang/String;

    if-ltz p2, :cond_1

    if-le p2, p3, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid substring range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p3, v0, :cond_1

    if-lt p4, p2, :cond_3

    if-le p4, p3, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid position"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iput p2, p0, Ljava/text/StringCharacterIterator;->begin:I

    iput p3, p0, Ljava/text/StringCharacterIterator;->end:I

    iput p4, p0, Ljava/text/StringCharacterIterator;->pos:I

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/StringCharacterIterator;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2}, Ljava/lang/InternalError;-><init>()V

    throw v2
.end method

.method public current()C
    .locals 2

    iget v0, p0, Ljava/text/StringCharacterIterator;->pos:I

    iget v1, p0, Ljava/text/StringCharacterIterator;->begin:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Ljava/text/StringCharacterIterator;->pos:I

    iget v1, p0, Ljava/text/StringCharacterIterator;->end:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Ljava/text/StringCharacterIterator;->text:Ljava/lang/String;

    iget v1, p0, Ljava/text/StringCharacterIterator;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0

    :cond_0
    const v0, 0xffff

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-ne p0, p1, :cond_0

    return v4

    :cond_0
    instance-of v1, p1, Ljava/text/StringCharacterIterator;

    if-nez v1, :cond_1

    return v3

    :cond_1
    move-object v0, p1

    check-cast v0, Ljava/text/StringCharacterIterator;

    invoke-virtual {p0}, Ljava/text/StringCharacterIterator;->hashCode()I

    move-result v1

    invoke-virtual {v0}, Ljava/text/StringCharacterIterator;->hashCode()I

    move-result v2

    if-eq v1, v2, :cond_2

    return v3

    :cond_2
    iget-object v1, p0, Ljava/text/StringCharacterIterator;->text:Ljava/lang/String;

    iget-object v2, v0, Ljava/text/StringCharacterIterator;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    :cond_3
    iget v1, p0, Ljava/text/StringCharacterIterator;->pos:I

    iget v2, v0, Ljava/text/StringCharacterIterator;->pos:I

    if-ne v1, v2, :cond_4

    iget v1, p0, Ljava/text/StringCharacterIterator;->begin:I

    iget v2, v0, Ljava/text/StringCharacterIterator;->begin:I

    if-eq v1, v2, :cond_5

    :cond_4
    return v3

    :cond_5
    iget v1, p0, Ljava/text/StringCharacterIterator;->end:I

    iget v2, v0, Ljava/text/StringCharacterIterator;->end:I

    if-ne v1, v2, :cond_4

    return v4
.end method

.method public first()C
    .locals 1

    iget v0, p0, Ljava/text/StringCharacterIterator;->begin:I

    iput v0, p0, Ljava/text/StringCharacterIterator;->pos:I

    invoke-virtual {p0}, Ljava/text/StringCharacterIterator;->current()C

    move-result v0

    return v0
.end method

.method public getBeginIndex()I
    .locals 1

    iget v0, p0, Ljava/text/StringCharacterIterator;->begin:I

    return v0
.end method

.method public getEndIndex()I
    .locals 1

    iget v0, p0, Ljava/text/StringCharacterIterator;->end:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Ljava/text/StringCharacterIterator;->pos:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Ljava/text/StringCharacterIterator;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Ljava/text/StringCharacterIterator;->pos:I

    xor-int/2addr v0, v1

    iget v1, p0, Ljava/text/StringCharacterIterator;->begin:I

    xor-int/2addr v0, v1

    iget v1, p0, Ljava/text/StringCharacterIterator;->end:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public last()C
    .locals 2

    iget v0, p0, Ljava/text/StringCharacterIterator;->end:I

    iget v1, p0, Ljava/text/StringCharacterIterator;->begin:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Ljava/text/StringCharacterIterator;->end:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljava/text/StringCharacterIterator;->pos:I

    :goto_0
    invoke-virtual {p0}, Ljava/text/StringCharacterIterator;->current()C

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Ljava/text/StringCharacterIterator;->end:I

    iput v0, p0, Ljava/text/StringCharacterIterator;->pos:I

    goto :goto_0
.end method

.method public next()C
    .locals 2

    iget v0, p0, Ljava/text/StringCharacterIterator;->pos:I

    iget v1, p0, Ljava/text/StringCharacterIterator;->end:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget v0, p0, Ljava/text/StringCharacterIterator;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/text/StringCharacterIterator;->pos:I

    iget-object v0, p0, Ljava/text/StringCharacterIterator;->text:Ljava/lang/String;

    iget v1, p0, Ljava/text/StringCharacterIterator;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Ljava/text/StringCharacterIterator;->end:I

    iput v0, p0, Ljava/text/StringCharacterIterator;->pos:I

    const v0, 0xffff

    return v0
.end method

.method public previous()C
    .locals 2

    iget v0, p0, Ljava/text/StringCharacterIterator;->pos:I

    iget v1, p0, Ljava/text/StringCharacterIterator;->begin:I

    if-le v0, v1, :cond_0

    iget v0, p0, Ljava/text/StringCharacterIterator;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljava/text/StringCharacterIterator;->pos:I

    iget-object v0, p0, Ljava/text/StringCharacterIterator;->text:Ljava/lang/String;

    iget v1, p0, Ljava/text/StringCharacterIterator;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0

    :cond_0
    const v0, 0xffff

    return v0
.end method

.method public setIndex(I)C
    .locals 2

    iget v0, p0, Ljava/text/StringCharacterIterator;->begin:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Ljava/text/StringCharacterIterator;->end:I

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid index"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Ljava/text/StringCharacterIterator;->pos:I

    invoke-virtual {p0}, Ljava/text/StringCharacterIterator;->current()C

    move-result v0

    return v0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Ljava/text/StringCharacterIterator;->text:Ljava/lang/String;

    iput v1, p0, Ljava/text/StringCharacterIterator;->begin:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Ljava/text/StringCharacterIterator;->end:I

    iput v1, p0, Ljava/text/StringCharacterIterator;->pos:I

    return-void
.end method
