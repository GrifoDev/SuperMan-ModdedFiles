.class public Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;
.super Ljava/lang/Object;
.source "BMPattern.java"


# instance fields
.field final ignoreCase:Z

.field final pattern:[C

.field final shiftTable:[I


# direct methods
.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 6

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->pattern:[C

    new-array v0, p2, [I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    iput-boolean p3, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->ignoreCase:Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->pattern:[C

    array-length v2, v0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    array-length v3, v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    aput v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->pattern:[C

    aget-char v0, v0, v1

    sub-int v3, v2, v1

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    array-length v4, v4

    rem-int v4, v0, v4

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    aget v5, v5, v4

    if-lt v3, v5, :cond_3

    :goto_1
    iget-boolean v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->ignoreCase:Z

    if-nez v4, :cond_4

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    :cond_2
    if-lt v1, v2, :cond_0

    return-void

    :cond_3
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    aput v3, v5, v4

    goto :goto_1

    :cond_4
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    array-length v4, v4

    rem-int v4, v0, v4

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    aget v5, v5, v4

    if-lt v3, v5, :cond_5

    :goto_3
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    array-length v4, v4

    rem-int/2addr v0, v4

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    aget v4, v4, v0

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    aput v3, v4, v0

    goto :goto_2

    :cond_5
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    aput v3, v5, v4

    goto :goto_3
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    const/16 v0, 0x100

    invoke-direct {p0, p1, v0, p2}, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;-><init>(Ljava/lang/String;IZ)V

    return-void
.end method


# virtual methods
.method public matches(Ljava/lang/String;II)I
    .locals 6

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->ignoreCase:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->pattern:[C

    array-length v1, v0

    if-eqz v1, :cond_4

    add-int v0, p2, v1

    :cond_0
    :goto_0
    if-gt v0, p3, :cond_6

    add-int/lit8 v3, v0, 0x1

    move v2, v0

    move v0, v1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->pattern:[C

    add-int/lit8 v0, v0, -0x1

    aget-char v5, v5, v0

    if-ne v4, v5, :cond_2

    if-eqz v0, :cond_5

    if-gtz v0, :cond_1

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    array-length v5, v5

    rem-int/2addr v4, v5

    aget v0, v0, v4

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v2

    if-ge v0, v3, :cond_0

    move v0, v3

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->matchesIgnoreCase(Ljava/lang/String;II)I

    move-result v0

    return v0

    :cond_4
    return p2

    :cond_5
    return v2

    :cond_6
    const/4 v0, -0x1

    return v0
.end method

.method public matches(Ljava/text/CharacterIterator;II)I
    .locals 6

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->ignoreCase:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->pattern:[C

    array-length v1, v0

    if-eqz v1, :cond_4

    add-int v0, p2, v1

    :cond_0
    :goto_0
    if-gt v0, p3, :cond_6

    add-int/lit8 v3, v0, 0x1

    move v2, v0

    move v0, v1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    invoke-interface {p1, v2}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v4

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->pattern:[C

    add-int/lit8 v0, v0, -0x1

    aget-char v5, v5, v0

    if-ne v4, v5, :cond_2

    if-eqz v0, :cond_5

    if-gtz v0, :cond_1

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    array-length v5, v5

    rem-int/2addr v4, v5

    aget v0, v0, v4

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v2

    if-ge v0, v3, :cond_0

    move v0, v3

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->matchesIgnoreCase(Ljava/text/CharacterIterator;II)I

    move-result v0

    return v0

    :cond_4
    return p2

    :cond_5
    return v2

    :cond_6
    const/4 v0, -0x1

    return v0
.end method

.method public matches([CII)I
    .locals 6

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->ignoreCase:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->pattern:[C

    array-length v1, v0

    if-eqz v1, :cond_4

    add-int v0, p2, v1

    :cond_0
    :goto_0
    if-gt v0, p3, :cond_6

    add-int/lit8 v3, v0, 0x1

    move v2, v0

    move v0, v1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    aget-char v4, p1, v2

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->pattern:[C

    add-int/lit8 v0, v0, -0x1

    aget-char v5, v5, v0

    if-ne v4, v5, :cond_2

    if-eqz v0, :cond_5

    if-gtz v0, :cond_1

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    array-length v5, v5

    rem-int/2addr v4, v5

    aget v0, v0, v4

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v2

    if-ge v0, v3, :cond_0

    move v0, v3

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->matchesIgnoreCase([CII)I

    move-result v0

    return v0

    :cond_4
    return p2

    :cond_5
    return v2

    :cond_6
    const/4 v0, -0x1

    return v0
.end method

.method matchesIgnoreCase(Ljava/lang/String;II)I
    .locals 7

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->pattern:[C

    array-length v1, v0

    if-eqz v1, :cond_4

    add-int v0, p2, v1

    :cond_0
    :goto_0
    if-gt v0, p3, :cond_7

    add-int/lit8 v3, v0, 0x1

    move v2, v0

    move v0, v1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->pattern:[C

    add-int/lit8 v0, v0, -0x1

    aget-char v5, v5, v0

    if-ne v4, v5, :cond_5

    :cond_2
    :goto_1
    if-eqz v0, :cond_6

    if-gtz v0, :cond_1

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    array-length v5, v5

    rem-int/2addr v4, v5

    aget v0, v0, v4

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v2

    if-ge v0, v3, :cond_0

    move v0, v3

    goto :goto_0

    :cond_4
    return p2

    :cond_5
    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    if-eq v6, v5, :cond_2

    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    if-ne v6, v5, :cond_3

    goto :goto_1

    :cond_6
    return v2

    :cond_7
    const/4 v0, -0x1

    return v0
.end method

.method matchesIgnoreCase(Ljava/text/CharacterIterator;II)I
    .locals 7

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->pattern:[C

    array-length v1, v0

    if-eqz v1, :cond_4

    add-int v0, p2, v1

    :cond_0
    :goto_0
    if-gt v0, p3, :cond_7

    add-int/lit8 v3, v0, 0x1

    move v2, v0

    move v0, v1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    invoke-interface {p1, v2}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v4

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->pattern:[C

    add-int/lit8 v0, v0, -0x1

    aget-char v5, v5, v0

    if-ne v4, v5, :cond_5

    :cond_2
    :goto_1
    if-eqz v0, :cond_6

    if-gtz v0, :cond_1

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    array-length v5, v5

    rem-int/2addr v4, v5

    aget v0, v0, v4

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v2

    if-ge v0, v3, :cond_0

    move v0, v3

    goto :goto_0

    :cond_4
    return p2

    :cond_5
    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    if-eq v6, v5, :cond_2

    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    if-ne v6, v5, :cond_3

    goto :goto_1

    :cond_6
    return v2

    :cond_7
    const/4 v0, -0x1

    return v0
.end method

.method matchesIgnoreCase([CII)I
    .locals 7

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->pattern:[C

    array-length v1, v0

    if-eqz v1, :cond_4

    add-int v0, p2, v1

    :cond_0
    :goto_0
    if-gt v0, p3, :cond_7

    add-int/lit8 v3, v0, 0x1

    move v2, v0

    move v0, v1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    aget-char v4, p1, v2

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->pattern:[C

    add-int/lit8 v0, v0, -0x1

    aget-char v5, v5, v0

    if-ne v4, v5, :cond_5

    :cond_2
    :goto_1
    if-eqz v0, :cond_6

    if-gtz v0, :cond_1

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    array-length v5, v5

    rem-int/2addr v4, v5

    aget v0, v0, v4

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v2

    if-ge v0, v3, :cond_0

    move v0, v3

    goto :goto_0

    :cond_4
    return p2

    :cond_5
    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    if-eq v6, v5, :cond_2

    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    if-ne v6, v5, :cond_3

    goto :goto_1

    :cond_6
    return v2

    :cond_7
    const/4 v0, -0x1

    return v0
.end method
