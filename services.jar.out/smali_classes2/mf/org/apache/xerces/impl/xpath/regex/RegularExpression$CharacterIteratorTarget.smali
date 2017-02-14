.class final Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharacterIteratorTarget;
.super Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;
.source "RegularExpression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CharacterIteratorTarget"
.end annotation


# instance fields
.field target:Ljava/text/CharacterIterator;


# direct methods
.method constructor <init>(Ljava/text/CharacterIterator;)V
    .locals 0

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharacterIteratorTarget;->target:Ljava/text/CharacterIterator;

    return-void
.end method

.method private final regionMatches(IIII)Z
    .locals 6

    const/4 v5, 0x0

    :goto_0
    add-int/lit8 v1, p4, -0x1

    if-lez p4, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharacterIteratorTarget;->target:Ljava/text/CharacterIterator;

    add-int/lit8 v2, p1, 0x1

    invoke-interface {v0, p1}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v3

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharacterIteratorTarget;->target:Ljava/text/CharacterIterator;

    add-int/lit8 v0, p3, 0x1

    invoke-interface {v4, p3}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v4

    if-ne v3, v4, :cond_0

    move p3, v0

    move p4, v1

    move p1, v2

    goto :goto_0

    :cond_0
    return v5

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private final regionMatches(IILjava/lang/String;I)Z
    .locals 6

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    add-int/lit8 v3, p4, -0x1

    if-lez p4, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharacterIteratorTarget;->target:Ljava/text/CharacterIterator;

    add-int/lit8 v4, p1, 0x1

    invoke-interface {v2, p1}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v5

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v5, v0, :cond_0

    move v0, v2

    move p4, v3

    move p1, v4

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private final regionMatchesIgnoreCase(IIII)Z
    .locals 6

    const/4 v5, 0x0

    :goto_0
    add-int/lit8 v1, p4, -0x1

    if-lez p4, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharacterIteratorTarget;->target:Ljava/text/CharacterIterator;

    add-int/lit8 v2, p1, 0x1

    invoke-interface {v0, p1}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v3

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharacterIteratorTarget;->target:Ljava/text/CharacterIterator;

    add-int/lit8 v0, p3, 0x1

    invoke-interface {v4, p3}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v4

    if-eq v3, v4, :cond_0

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    if-eq v3, v4, :cond_1

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    if-ne v3, v4, :cond_2

    move p3, v0

    move p4, v1

    move p1, v2

    goto :goto_0

    :cond_0
    move p3, v0

    move p4, v1

    move p1, v2

    goto :goto_0

    :cond_1
    move p3, v0

    move p4, v1

    move p1, v2

    goto :goto_0

    :cond_2
    return v5

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private final regionMatchesIgnoreCase(IILjava/lang/String;I)Z
    .locals 6

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    add-int/lit8 v3, p4, -0x1

    if-lez p4, :cond_3

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharacterIteratorTarget;->target:Ljava/text/CharacterIterator;

    add-int/lit8 v4, p1, 0x1

    invoke-interface {v2, p1}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v5

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v5, v0, :cond_0

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    if-eq v5, v0, :cond_1

    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    if-ne v5, v0, :cond_2

    move v0, v2

    move p4, v3

    move p1, v4

    goto :goto_0

    :cond_0
    move v0, v2

    move p4, v3

    move p1, v4

    goto :goto_0

    :cond_1
    move v0, v2

    move p4, v3

    move p1, v4

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method final charAt(I)C
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharacterIteratorTarget;->target:Ljava/text/CharacterIterator;

    invoke-interface {v0, p1}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v0

    return v0
.end method

.method final regionMatches(ZIIII)Z
    .locals 2

    const/4 v1, 0x0

    if-gez p2, :cond_1

    :cond_0
    return v1

    :cond_1
    sub-int v0, p3, p2

    if-lt v0, p5, :cond_0

    if-nez p1, :cond_2

    invoke-direct {p0, p2, p3, p4, p5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharacterIteratorTarget;->regionMatches(IIII)Z

    move-result v0

    :goto_0
    return v0

    :cond_2
    invoke-direct {p0, p2, p3, p4, p5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharacterIteratorTarget;->regionMatchesIgnoreCase(IIII)Z

    move-result v0

    goto :goto_0
.end method

.method final regionMatches(ZIILjava/lang/String;I)Z
    .locals 2

    const/4 v1, 0x0

    if-gez p2, :cond_1

    :cond_0
    return v1

    :cond_1
    sub-int v0, p3, p2

    if-lt v0, p5, :cond_0

    if-nez p1, :cond_2

    invoke-direct {p0, p2, p3, p4, p5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharacterIteratorTarget;->regionMatches(IILjava/lang/String;I)Z

    move-result v0

    :goto_0
    return v0

    :cond_2
    invoke-direct {p0, p2, p3, p4, p5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharacterIteratorTarget;->regionMatchesIgnoreCase(IILjava/lang/String;I)Z

    move-result v0

    goto :goto_0
.end method

.method final resetTarget(Ljava/text/CharacterIterator;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharacterIteratorTarget;->target:Ljava/text/CharacterIterator;

    return-void
.end method
