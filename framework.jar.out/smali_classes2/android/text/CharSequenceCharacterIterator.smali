.class public Landroid/text/CharSequenceCharacterIterator;
.super Ljava/lang/Object;
.source "CharSequenceCharacterIterator.java"

# interfaces
.implements Ljava/text/CharacterIterator;


# instance fields
.field private final mBeginIndex:I

.field private final mCharSeq:Ljava/lang/CharSequence;

.field private final mEndIndex:I

.field private mIndex:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/text/CharSequenceCharacterIterator;->mCharSeq:Ljava/lang/CharSequence;

    iput p2, p0, Landroid/text/CharSequenceCharacterIterator;->mIndex:I

    iput p2, p0, Landroid/text/CharSequenceCharacterIterator;->mBeginIndex:I

    iput p3, p0, Landroid/text/CharSequenceCharacterIterator;->mEndIndex:I

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1
.end method

.method public current()C
    .locals 2

    iget v0, p0, Landroid/text/CharSequenceCharacterIterator;->mIndex:I

    iget v1, p0, Landroid/text/CharSequenceCharacterIterator;->mEndIndex:I

    if-ne v0, v1, :cond_0

    const v0, 0xffff

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/CharSequenceCharacterIterator;->mCharSeq:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/text/CharSequenceCharacterIterator;->mIndex:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method public first()C
    .locals 1

    iget v0, p0, Landroid/text/CharSequenceCharacterIterator;->mBeginIndex:I

    iput v0, p0, Landroid/text/CharSequenceCharacterIterator;->mIndex:I

    invoke-virtual {p0}, Landroid/text/CharSequenceCharacterIterator;->current()C

    move-result v0

    return v0
.end method

.method public getBeginIndex()I
    .locals 1

    iget v0, p0, Landroid/text/CharSequenceCharacterIterator;->mBeginIndex:I

    return v0
.end method

.method public getEndIndex()I
    .locals 1

    iget v0, p0, Landroid/text/CharSequenceCharacterIterator;->mEndIndex:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Landroid/text/CharSequenceCharacterIterator;->mIndex:I

    return v0
.end method

.method public last()C
    .locals 2

    iget v0, p0, Landroid/text/CharSequenceCharacterIterator;->mBeginIndex:I

    iget v1, p0, Landroid/text/CharSequenceCharacterIterator;->mEndIndex:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/text/CharSequenceCharacterIterator;->mEndIndex:I

    iput v0, p0, Landroid/text/CharSequenceCharacterIterator;->mIndex:I

    const v0, 0xffff

    return v0

    :cond_0
    iget v0, p0, Landroid/text/CharSequenceCharacterIterator;->mEndIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/text/CharSequenceCharacterIterator;->mIndex:I

    iget-object v0, p0, Landroid/text/CharSequenceCharacterIterator;->mCharSeq:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/text/CharSequenceCharacterIterator;->mIndex:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    return v0
.end method

.method public next()C
    .locals 2

    iget v0, p0, Landroid/text/CharSequenceCharacterIterator;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/text/CharSequenceCharacterIterator;->mIndex:I

    iget v0, p0, Landroid/text/CharSequenceCharacterIterator;->mIndex:I

    iget v1, p0, Landroid/text/CharSequenceCharacterIterator;->mEndIndex:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Landroid/text/CharSequenceCharacterIterator;->mEndIndex:I

    iput v0, p0, Landroid/text/CharSequenceCharacterIterator;->mIndex:I

    const v0, 0xffff

    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/CharSequenceCharacterIterator;->mCharSeq:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/text/CharSequenceCharacterIterator;->mIndex:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    return v0
.end method

.method public previous()C
    .locals 2

    iget v0, p0, Landroid/text/CharSequenceCharacterIterator;->mIndex:I

    iget v1, p0, Landroid/text/CharSequenceCharacterIterator;->mBeginIndex:I

    if-gt v0, v1, :cond_0

    const v0, 0xffff

    return v0

    :cond_0
    iget v0, p0, Landroid/text/CharSequenceCharacterIterator;->mIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/text/CharSequenceCharacterIterator;->mIndex:I

    iget-object v0, p0, Landroid/text/CharSequenceCharacterIterator;->mCharSeq:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/text/CharSequenceCharacterIterator;->mIndex:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    return v0
.end method

.method public setIndex(I)C
    .locals 2

    iget v0, p0, Landroid/text/CharSequenceCharacterIterator;->mBeginIndex:I

    if-gt v0, p1, :cond_0

    iget v0, p0, Landroid/text/CharSequenceCharacterIterator;->mEndIndex:I

    if-gt p1, v0, :cond_0

    iput p1, p0, Landroid/text/CharSequenceCharacterIterator;->mIndex:I

    invoke-virtual {p0}, Landroid/text/CharSequenceCharacterIterator;->current()C

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid position"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
