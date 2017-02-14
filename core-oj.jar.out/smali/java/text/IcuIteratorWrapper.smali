.class Ljava/text/IcuIteratorWrapper;
.super Ljava/text/BreakIterator;
.source "IcuIteratorWrapper.java"


# instance fields
.field private wrapped:Landroid/icu/text/BreakIterator;


# direct methods
.method constructor <init>(Landroid/icu/text/BreakIterator;)V
    .locals 0

    invoke-direct {p0}, Ljava/text/BreakIterator;-><init>()V

    iput-object p1, p0, Ljava/text/IcuIteratorWrapper;->wrapped:Landroid/icu/text/BreakIterator;

    return-void
.end method

.method protected static final checkOffset(ILjava/text/CharacterIterator;)V
    .locals 2

    invoke-interface {p1}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v0

    if-lt p0, v0, :cond_0

    invoke-interface {p1}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v0

    if-le p0, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "offset out of bounds"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    invoke-super {p0}, Ljava/text/BreakIterator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/IcuIteratorWrapper;

    iget-object v1, p0, Ljava/text/IcuIteratorWrapper;->wrapped:Landroid/icu/text/BreakIterator;

    invoke-virtual {v1}, Landroid/icu/text/BreakIterator;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/BreakIterator;

    iput-object v1, v0, Ljava/text/IcuIteratorWrapper;->wrapped:Landroid/icu/text/BreakIterator;

    return-object v0
.end method

.method public current()I
    .locals 1

    iget-object v0, p0, Ljava/text/IcuIteratorWrapper;->wrapped:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0}, Landroid/icu/text/BreakIterator;->current()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Ljava/text/IcuIteratorWrapper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Ljava/text/IcuIteratorWrapper;->wrapped:Landroid/icu/text/BreakIterator;

    check-cast p1, Ljava/text/IcuIteratorWrapper;

    iget-object v1, p1, Ljava/text/IcuIteratorWrapper;->wrapped:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0, v1}, Landroid/icu/text/BreakIterator;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public first()I
    .locals 1

    iget-object v0, p0, Ljava/text/IcuIteratorWrapper;->wrapped:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0}, Landroid/icu/text/BreakIterator;->first()I

    move-result v0

    return v0
.end method

.method public following(I)I
    .locals 2

    invoke-virtual {p0}, Ljava/text/IcuIteratorWrapper;->getText()Ljava/text/CharacterIterator;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/text/IcuIteratorWrapper;->checkOffset(ILjava/text/CharacterIterator;)V

    iget-object v1, p0, Ljava/text/IcuIteratorWrapper;->wrapped:Landroid/icu/text/BreakIterator;

    invoke-virtual {v1, p1}, Landroid/icu/text/BreakIterator;->following(I)I

    move-result v1

    return v1
.end method

.method public getText()Ljava/text/CharacterIterator;
    .locals 1

    iget-object v0, p0, Ljava/text/IcuIteratorWrapper;->wrapped:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0}, Landroid/icu/text/BreakIterator;->getText()Ljava/text/CharacterIterator;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Ljava/text/IcuIteratorWrapper;->wrapped:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0}, Landroid/icu/text/BreakIterator;->hashCode()I

    move-result v0

    return v0
.end method

.method public isBoundary(I)Z
    .locals 2

    invoke-virtual {p0}, Ljava/text/IcuIteratorWrapper;->getText()Ljava/text/CharacterIterator;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/text/IcuIteratorWrapper;->checkOffset(ILjava/text/CharacterIterator;)V

    iget-object v1, p0, Ljava/text/IcuIteratorWrapper;->wrapped:Landroid/icu/text/BreakIterator;

    invoke-virtual {v1, p1}, Landroid/icu/text/BreakIterator;->isBoundary(I)Z

    move-result v1

    return v1
.end method

.method public last()I
    .locals 1

    iget-object v0, p0, Ljava/text/IcuIteratorWrapper;->wrapped:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0}, Landroid/icu/text/BreakIterator;->last()I

    move-result v0

    return v0
.end method

.method public next()I
    .locals 1

    iget-object v0, p0, Ljava/text/IcuIteratorWrapper;->wrapped:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0}, Landroid/icu/text/BreakIterator;->next()I

    move-result v0

    return v0
.end method

.method public next(I)I
    .locals 1

    iget-object v0, p0, Ljava/text/IcuIteratorWrapper;->wrapped:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/BreakIterator;->next(I)I

    move-result v0

    return v0
.end method

.method public preceding(I)I
    .locals 2

    invoke-virtual {p0}, Ljava/text/IcuIteratorWrapper;->getText()Ljava/text/CharacterIterator;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/text/IcuIteratorWrapper;->checkOffset(ILjava/text/CharacterIterator;)V

    iget-object v1, p0, Ljava/text/IcuIteratorWrapper;->wrapped:Landroid/icu/text/BreakIterator;

    invoke-virtual {v1, p1}, Landroid/icu/text/BreakIterator;->preceding(I)I

    move-result v1

    return v1
.end method

.method public previous()I
    .locals 1

    iget-object v0, p0, Ljava/text/IcuIteratorWrapper;->wrapped:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0}, Landroid/icu/text/BreakIterator;->previous()I

    move-result v0

    return v0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Ljava/text/IcuIteratorWrapper;->wrapped:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/BreakIterator;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public setText(Ljava/text/CharacterIterator;)V
    .locals 1

    invoke-interface {p1}, Ljava/text/CharacterIterator;->current()C

    iget-object v0, p0, Ljava/text/IcuIteratorWrapper;->wrapped:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/text/IcuIteratorWrapper;->wrapped:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0}, Landroid/icu/text/BreakIterator;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
