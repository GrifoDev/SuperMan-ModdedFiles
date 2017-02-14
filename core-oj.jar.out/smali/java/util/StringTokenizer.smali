.class public Ljava/util/StringTokenizer;
.super Ljava/lang/Object;
.source "StringTokenizer.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private currentPosition:I

.field private delimiterCodePoints:[I

.field private delimiters:Ljava/lang/String;

.field private delimsChanged:Z

.field private hasSurrogates:Z

.field private maxDelimCodePoint:I

.field private maxPosition:I

.field private newPosition:I

.field private retDelims:Z

.field private str:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, " \t\n\r\u000c"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Ljava/util/StringTokenizer;->hasSurrogates:Z

    iput v1, p0, Ljava/util/StringTokenizer;->currentPosition:I

    const/4 v0, -0x1

    iput v0, p0, Ljava/util/StringTokenizer;->newPosition:I

    iput-boolean v1, p0, Ljava/util/StringTokenizer;->delimsChanged:Z

    iput-object p1, p0, Ljava/util/StringTokenizer;->str:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Ljava/util/StringTokenizer;->maxPosition:I

    iput-object p2, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    iput-boolean p3, p0, Ljava/util/StringTokenizer;->retDelims:Z

    invoke-direct {p0}, Ljava/util/StringTokenizer;->setMaxDelimCodePoint()V

    return-void
.end method

.method private isDelimiter(I)Z
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljava/util/StringTokenizer;->delimiterCodePoints:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Ljava/util/StringTokenizer;->delimiterCodePoints:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private scanToken(I)I
    .locals 4

    move v2, p1

    :goto_0
    iget v3, p0, Ljava/util/StringTokenizer;->maxPosition:I

    if-ge v2, v3, :cond_0

    iget-boolean v3, p0, Ljava/util/StringTokenizer;->hasSurrogates:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Ljava/util/StringTokenizer;->str:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iget v3, p0, Ljava/util/StringTokenizer;->maxDelimCodePoint:I

    if-gt v0, v3, :cond_2

    iget-object v3, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_2

    :cond_0
    iget-boolean v3, p0, Ljava/util/StringTokenizer;->retDelims:Z

    if-eqz v3, :cond_1

    if-ne p1, v2, :cond_1

    iget-boolean v3, p0, Ljava/util/StringTokenizer;->hasSurrogates:Z

    if-nez v3, :cond_5

    iget-object v3, p0, Ljava/util/StringTokenizer;->str:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iget v3, p0, Ljava/util/StringTokenizer;->maxDelimCodePoint:I

    if-gt v0, v3, :cond_1

    iget-object v3, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    :goto_1
    return v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object v3, p0, Ljava/util/StringTokenizer;->str:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    iget v3, p0, Ljava/util/StringTokenizer;->maxDelimCodePoint:I

    if-gt v1, v3, :cond_4

    invoke-direct {p0, v1}, Ljava/util/StringTokenizer;->isDelimiter(I)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_5
    iget-object v3, p0, Ljava/util/StringTokenizer;->str:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    iget v3, p0, Ljava/util/StringTokenizer;->maxDelimCodePoint:I

    if-gt v1, v3, :cond_1

    invoke-direct {p0, v1}, Ljava/util/StringTokenizer;->isDelimiter(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1
.end method

.method private setMaxDelimCodePoint()V
    .locals 6

    iget-object v5, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    if-nez v5, :cond_0

    const/4 v5, 0x0

    iput v5, p0, Ljava/util/StringTokenizer;->maxDelimCodePoint:I

    return-void

    :cond_0
    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v5, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_3

    iget-object v5, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const v5, 0xd800

    if-lt v0, v5, :cond_1

    const v5, 0xdfff

    if-gt v0, v5, :cond_1

    iget-object v5, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    const/4 v5, 0x1

    iput-boolean v5, p0, Ljava/util/StringTokenizer;->hasSurrogates:Z

    :cond_1
    if-ge v4, v0, :cond_2

    move v4, v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v2, v5

    goto :goto_0

    :cond_3
    iput v4, p0, Ljava/util/StringTokenizer;->maxDelimCodePoint:I

    iget-boolean v5, p0, Ljava/util/StringTokenizer;->hasSurrogates:Z

    if-eqz v5, :cond_4

    new-array v5, v1, [I

    iput-object v5, p0, Ljava/util/StringTokenizer;->delimiterCodePoints:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v2, v1, :cond_4

    iget-object v5, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    iget-object v5, p0, Ljava/util/StringTokenizer;->delimiterCodePoints:[I

    aput v0, v5, v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_1

    :cond_4
    return-void
.end method

.method private skipDelimiters(I)I
    .locals 4

    iget-object v3, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    :cond_0
    move v2, p1

    :goto_0
    iget-boolean v3, p0, Ljava/util/StringTokenizer;->retDelims:Z

    if-nez v3, :cond_1

    iget v3, p0, Ljava/util/StringTokenizer;->maxPosition:I

    if-ge v2, v3, :cond_1

    iget-boolean v3, p0, Ljava/util/StringTokenizer;->hasSurrogates:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Ljava/util/StringTokenizer;->str:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iget v3, p0, Ljava/util/StringTokenizer;->maxDelimCodePoint:I

    if-gt v0, v3, :cond_1

    iget-object v3, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_2

    :cond_1
    return v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object v3, p0, Ljava/util/StringTokenizer;->str:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    iget v3, p0, Ljava/util/StringTokenizer;->maxDelimCodePoint:I

    if-gt v1, v3, :cond_1

    invoke-direct {p0, v1}, Ljava/util/StringTokenizer;->isDelimiter(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0
.end method


# virtual methods
.method public countTokens()I
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Ljava/util/StringTokenizer;->currentPosition:I

    :goto_0
    iget v2, p0, Ljava/util/StringTokenizer;->maxPosition:I

    if-ge v1, v2, :cond_0

    invoke-direct {p0, v1}, Ljava/util/StringTokenizer;->skipDelimiters(I)I

    move-result v1

    iget v2, p0, Ljava/util/StringTokenizer;->maxPosition:I

    if-lt v1, v2, :cond_1

    :cond_0
    return v0

    :cond_1
    invoke-direct {p0, v1}, Ljava/util/StringTokenizer;->scanToken(I)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public hasMoreElements()Z
    .locals 1

    invoke-virtual {p0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    return v0
.end method

.method public hasMoreTokens()Z
    .locals 2

    iget v0, p0, Ljava/util/StringTokenizer;->currentPosition:I

    invoke-direct {p0, v0}, Ljava/util/StringTokenizer;->skipDelimiters(I)I

    move-result v0

    iput v0, p0, Ljava/util/StringTokenizer;->newPosition:I

    iget v0, p0, Ljava/util/StringTokenizer;->newPosition:I

    iget v1, p0, Ljava/util/StringTokenizer;->maxPosition:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextToken()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    iget v1, p0, Ljava/util/StringTokenizer;->newPosition:I

    if-ltz v1, :cond_0

    iget-boolean v1, p0, Ljava/util/StringTokenizer;->delimsChanged:Z

    if-eqz v1, :cond_1

    :cond_0
    iget v1, p0, Ljava/util/StringTokenizer;->currentPosition:I

    invoke-direct {p0, v1}, Ljava/util/StringTokenizer;->skipDelimiters(I)I

    move-result v1

    :goto_0
    iput v1, p0, Ljava/util/StringTokenizer;->currentPosition:I

    iput-boolean v2, p0, Ljava/util/StringTokenizer;->delimsChanged:Z

    const/4 v1, -0x1

    iput v1, p0, Ljava/util/StringTokenizer;->newPosition:I

    iget v1, p0, Ljava/util/StringTokenizer;->currentPosition:I

    iget v2, p0, Ljava/util/StringTokenizer;->maxPosition:I

    if-lt v1, v2, :cond_2

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    :cond_1
    iget v1, p0, Ljava/util/StringTokenizer;->newPosition:I

    goto :goto_0

    :cond_2
    iget v0, p0, Ljava/util/StringTokenizer;->currentPosition:I

    iget v1, p0, Ljava/util/StringTokenizer;->currentPosition:I

    invoke-direct {p0, v1}, Ljava/util/StringTokenizer;->scanToken(I)I

    move-result v1

    iput v1, p0, Ljava/util/StringTokenizer;->currentPosition:I

    iget-object v1, p0, Ljava/util/StringTokenizer;->str:Ljava/lang/String;

    iget v2, p0, Ljava/util/StringTokenizer;->currentPosition:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public nextToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iput-object p1, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/StringTokenizer;->delimsChanged:Z

    invoke-direct {p0}, Ljava/util/StringTokenizer;->setMaxDelimCodePoint()V

    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
