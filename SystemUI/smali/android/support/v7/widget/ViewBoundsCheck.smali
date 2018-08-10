.class Landroid/support/v7/widget/ViewBoundsCheck;
.super Ljava/lang/Object;
.source "ViewBoundsCheck.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;,
        Landroid/support/v7/widget/ViewBoundsCheck$Callback;,
        Landroid/support/v7/widget/ViewBoundsCheck$ViewBounds;
    }
.end annotation


# instance fields
.field mBoundFlags:Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;

.field final mCallback:Landroid/support/v7/widget/ViewBoundsCheck$Callback;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/ViewBoundsCheck$Callback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/ViewBoundsCheck;->mCallback:Landroid/support/v7/widget/ViewBoundsCheck$Callback;

    new-instance v0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;

    invoke-direct {v0}, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ViewBoundsCheck;->mBoundFlags:Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;

    return-void
.end method


# virtual methods
.method findOneViewWithinBoundFlags(IIII)Landroid/view/View;
    .locals 9

    iget-object v8, p0, Landroid/support/v7/widget/ViewBoundsCheck;->mCallback:Landroid/support/v7/widget/ViewBoundsCheck$Callback;

    invoke-interface {v8}, Landroid/support/v7/widget/ViewBoundsCheck$Callback;->getParentStart()I

    move-result v7

    iget-object v8, p0, Landroid/support/v7/widget/ViewBoundsCheck;->mCallback:Landroid/support/v7/widget/ViewBoundsCheck$Callback;

    invoke-interface {v8}, Landroid/support/v7/widget/ViewBoundsCheck$Callback;->getParentEnd()I

    move-result v4

    if-le p2, p1, :cond_0

    const/4 v6, 0x1

    :goto_0
    const/4 v0, 0x0

    move v5, p1

    :goto_1
    if-eq v5, p2, :cond_3

    iget-object v8, p0, Landroid/support/v7/widget/ViewBoundsCheck;->mCallback:Landroid/support/v7/widget/ViewBoundsCheck$Callback;

    invoke-interface {v8, v5}, Landroid/support/v7/widget/ViewBoundsCheck$Callback;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v8, p0, Landroid/support/v7/widget/ViewBoundsCheck;->mCallback:Landroid/support/v7/widget/ViewBoundsCheck$Callback;

    invoke-interface {v8, v1}, Landroid/support/v7/widget/ViewBoundsCheck$Callback;->getChildStart(Landroid/view/View;)I

    move-result v3

    iget-object v8, p0, Landroid/support/v7/widget/ViewBoundsCheck;->mCallback:Landroid/support/v7/widget/ViewBoundsCheck$Callback;

    invoke-interface {v8, v1}, Landroid/support/v7/widget/ViewBoundsCheck$Callback;->getChildEnd(Landroid/view/View;)I

    move-result v2

    iget-object v8, p0, Landroid/support/v7/widget/ViewBoundsCheck;->mBoundFlags:Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;

    invoke-virtual {v8, v7, v4, v3, v2}, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->setBounds(IIII)V

    if-eqz p3, :cond_1

    iget-object v8, p0, Landroid/support/v7/widget/ViewBoundsCheck;->mBoundFlags:Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;

    invoke-virtual {v8}, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->resetFlags()V

    iget-object v8, p0, Landroid/support/v7/widget/ViewBoundsCheck;->mBoundFlags:Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;

    invoke-virtual {v8, p3}, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->addFlags(I)V

    iget-object v8, p0, Landroid/support/v7/widget/ViewBoundsCheck;->mBoundFlags:Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;

    invoke-virtual {v8}, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->boundsMatch()Z

    move-result v8

    if-eqz v8, :cond_1

    return-object v1

    :cond_0
    const/4 v6, -0x1

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_2

    iget-object v8, p0, Landroid/support/v7/widget/ViewBoundsCheck;->mBoundFlags:Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;

    invoke-virtual {v8}, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->resetFlags()V

    iget-object v8, p0, Landroid/support/v7/widget/ViewBoundsCheck;->mBoundFlags:Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;

    invoke-virtual {v8, p4}, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->addFlags(I)V

    iget-object v8, p0, Landroid/support/v7/widget/ViewBoundsCheck;->mBoundFlags:Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;

    invoke-virtual {v8}, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->boundsMatch()Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v0, v1

    :cond_2
    add-int/2addr v5, v6

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method isViewWithinBoundFlags(Landroid/view/View;I)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/ViewBoundsCheck;->mBoundFlags:Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;

    iget-object v1, p0, Landroid/support/v7/widget/ViewBoundsCheck;->mCallback:Landroid/support/v7/widget/ViewBoundsCheck$Callback;

    invoke-interface {v1}, Landroid/support/v7/widget/ViewBoundsCheck$Callback;->getParentStart()I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/ViewBoundsCheck;->mCallback:Landroid/support/v7/widget/ViewBoundsCheck$Callback;

    invoke-interface {v2}, Landroid/support/v7/widget/ViewBoundsCheck$Callback;->getParentEnd()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/ViewBoundsCheck;->mCallback:Landroid/support/v7/widget/ViewBoundsCheck$Callback;

    invoke-interface {v3, p1}, Landroid/support/v7/widget/ViewBoundsCheck$Callback;->getChildStart(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/ViewBoundsCheck;->mCallback:Landroid/support/v7/widget/ViewBoundsCheck$Callback;

    invoke-interface {v4, p1}, Landroid/support/v7/widget/ViewBoundsCheck$Callback;->getChildEnd(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->setBounds(IIII)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ViewBoundsCheck;->mBoundFlags:Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;

    invoke-virtual {v0}, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->resetFlags()V

    iget-object v0, p0, Landroid/support/v7/widget/ViewBoundsCheck;->mBoundFlags:Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->addFlags(I)V

    iget-object v0, p0, Landroid/support/v7/widget/ViewBoundsCheck;->mBoundFlags:Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;

    invoke-virtual {v0}, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->boundsMatch()Z

    move-result v0

    return v0

    :cond_0
    return v5
.end method
