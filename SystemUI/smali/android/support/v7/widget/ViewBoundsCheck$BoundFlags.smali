.class Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;
.super Ljava/lang/Object;
.source "ViewBoundsCheck.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ViewBoundsCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BoundFlags"
.end annotation


# instance fields
.field mBoundFlags:I

.field mChildEnd:I

.field mChildStart:I

.field mRvEnd:I

.field mRvStart:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    return-void
.end method


# virtual methods
.method addFlags(I)V
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    return-void
.end method

.method boundsMatch()Z
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    iget v1, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mChildStart:I

    iget v2, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mRvStart:I

    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->compare(II)I

    move-result v1

    shl-int/lit8 v1, v1, 0x0

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    return v3

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    and-int/lit8 v0, v0, 0x70

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    iget v1, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mChildStart:I

    iget v2, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mRvEnd:I

    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->compare(II)I

    move-result v1

    shl-int/lit8 v1, v1, 0x4

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    return v3

    :cond_1
    iget v0, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    and-int/lit16 v0, v0, 0x700

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    iget v1, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mChildEnd:I

    iget v2, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mRvStart:I

    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->compare(II)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v0, v1

    if-nez v0, :cond_2

    return v3

    :cond_2
    iget v0, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    and-int/lit16 v0, v0, 0x7000

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    iget v1, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mChildEnd:I

    iget v2, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mRvEnd:I

    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->compare(II)I

    move-result v1

    shl-int/lit8 v1, v1, 0xc

    and-int/2addr v0, v1

    if-nez v0, :cond_3

    return v3

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method compare(II)I
    .locals 1

    if-le p1, p2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    if-ne p1, p2, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    const/4 v0, 0x4

    return v0
.end method

.method resetFlags()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    return-void
.end method

.method setBounds(IIII)V
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mRvStart:I

    iput p2, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mRvEnd:I

    iput p3, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mChildStart:I

    iput p4, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mChildEnd:I

    return-void
.end method
