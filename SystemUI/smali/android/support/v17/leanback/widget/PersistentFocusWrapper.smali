.class Landroid/support/v17/leanback/widget/PersistentFocusWrapper;
.super Landroid/widget/FrameLayout;
.source "PersistentFocusWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/PersistentFocusWrapper$SavedState;
    }
.end annotation


# instance fields
.field private mPersistFocusVertical:Z

.field private mSelectedPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/PersistentFocusWrapper;->mSelectedPosition:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/PersistentFocusWrapper;->mPersistFocusVertical:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/PersistentFocusWrapper;->mSelectedPosition:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/PersistentFocusWrapper;->mPersistFocusVertical:Z

    return-void
.end method

.method private shouldPersistFocusFromDirection(I)Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-boolean v2, p0, Landroid/support/v17/leanback/widget/PersistentFocusWrapper;->mPersistFocusVertical:Z

    if-eqz v2, :cond_1

    const/16 v2, 0x21

    if-eq p1, v2, :cond_0

    const/16 v2, 0x82

    if-ne p1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v2, p0, Landroid/support/v17/leanback/widget/PersistentFocusWrapper;->mPersistFocusVertical:Z

    if-nez v2, :cond_2

    const/16 v2, 0x11

    if-eq p1, v2, :cond_0

    const/16 v2, 0x42

    if-eq p1, v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PersistentFocusWrapper;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PersistentFocusWrapper;->getGrandChildCount()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addFocusables(Ljava/util/ArrayList;II)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p2}, Landroid/support/v17/leanback/widget/PersistentFocusWrapper;->shouldPersistFocusFromDirection(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method getGrandChildCount()I
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/PersistentFocusWrapper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    instance-of v1, p1, Landroid/support/v17/leanback/widget/PersistentFocusWrapper$SavedState;

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/PersistentFocusWrapper$SavedState;

    check-cast p1, Landroid/support/v17/leanback/widget/PersistentFocusWrapper$SavedState;

    iget v1, p1, Landroid/support/v17/leanback/widget/PersistentFocusWrapper$SavedState;->mSelectedPosition:I

    iput v1, p0, Landroid/support/v17/leanback/widget/PersistentFocusWrapper;->mSelectedPosition:I

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PersistentFocusWrapper$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    new-instance v0, Landroid/support/v17/leanback/widget/PersistentFocusWrapper$SavedState;

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/PersistentFocusWrapper$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget v1, p0, Landroid/support/v17/leanback/widget/PersistentFocusWrapper;->mSelectedPosition:I

    iput v1, v0, Landroid/support/v17/leanback/widget/PersistentFocusWrapper$SavedState;->mSelectedPosition:I

    return-object v0
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eq v1, p1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    const/4 v1, -0x1

    :goto_1
    iput v1, p0, Landroid/support/v17/leanback/widget/PersistentFocusWrapper;->mSelectedPosition:I

    return-void

    :cond_1
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    goto :goto_1
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/PersistentFocusWrapper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget v1, p0, Landroid/support/v17/leanback/widget/PersistentFocusWrapper;->mSelectedPosition:I

    if-ltz v1, :cond_0

    iget v1, p0, Landroid/support/v17/leanback/widget/PersistentFocusWrapper;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PersistentFocusWrapper;->getGrandChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget v1, p0, Landroid/support/v17/leanback/widget/PersistentFocusWrapper;->mSelectedPosition:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    return v1
.end method
