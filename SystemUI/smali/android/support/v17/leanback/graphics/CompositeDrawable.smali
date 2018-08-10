.class public Landroid/support/v17/leanback/graphics/CompositeDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CompositeDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;,
        Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;
    }
.end annotation


# instance fields
.field mMutated:Z

.field mState:Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/graphics/CompositeDrawable;->mMutated:Z

    new-instance v0, Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;

    invoke-direct {v0}, Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/graphics/CompositeDrawable;->mState:Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;

    return-void
.end method

.method constructor <init>(Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/graphics/CompositeDrawable;->mMutated:Z

    iput-object p1, p0, Landroid/support/v17/leanback/graphics/CompositeDrawable;->mState:Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v2, p0, Landroid/support/v17/leanback/graphics/CompositeDrawable;->mState:Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;

    iget-object v0, v2, Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;->mChildren:Ljava/util/ArrayList;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;

    invoke-static {v2}, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;->-get0(Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getAlpha()I
    .locals 2

    invoke-virtual {p0}, Landroid/support/v17/leanback/graphics/CompositeDrawable;->getFirstNonNullDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->getAlpha(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    return v1

    :cond_0
    const/16 v1, 0xff

    return v1
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/graphics/CompositeDrawable;->mState:Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;

    return-object v0
.end method

.method final getFirstNonNullDrawable()Landroid/graphics/drawable/Drawable;
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Landroid/support/v17/leanback/graphics/CompositeDrawable;->mState:Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;

    iget-object v0, v4, Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;->mChildren:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;

    invoke-static {v4}, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;->-get0(Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v5
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0}, Landroid/support/v17/leanback/graphics/CompositeDrawable;->invalidateSelf()V

    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 7

    const/4 v6, 0x0

    iget-boolean v4, p0, Landroid/support/v17/leanback/graphics/CompositeDrawable;->mMutated:Z

    if-nez v4, :cond_2

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-ne v4, p0, :cond_2

    new-instance v4, Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;

    iget-object v5, p0, Landroid/support/v17/leanback/graphics/CompositeDrawable;->mState:Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;

    invoke-direct {v4, v5, p0, v6}, Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;-><init>(Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;Landroid/support/v17/leanback/graphics/CompositeDrawable;Landroid/content/res/Resources;)V

    iput-object v4, p0, Landroid/support/v17/leanback/graphics/CompositeDrawable;->mState:Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;

    iget-object v4, p0, Landroid/support/v17/leanback/graphics/CompositeDrawable;->mState:Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;

    iget-object v0, v4, Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;->mChildren:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;

    invoke-static {v4}, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;->-get0(Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/support/v17/leanback/graphics/CompositeDrawable;->mMutated:Z

    :cond_2
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/graphics/CompositeDrawable;->updateBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1

    invoke-virtual {p0, p2, p3, p4}, Landroid/support/v17/leanback/graphics/CompositeDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 3

    iget-object v2, p0, Landroid/support/v17/leanback/graphics/CompositeDrawable;->mState:Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;

    iget-object v0, v2, Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;->mChildren:Ljava/util/ArrayList;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;

    invoke-static {v2}, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;->-get0(Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 3

    iget-object v2, p0, Landroid/support/v17/leanback/graphics/CompositeDrawable;->mState:Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;

    iget-object v0, v2, Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;->mChildren:Ljava/util/ArrayList;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;

    invoke-static {v2}, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;->-get0(Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p2}, Landroid/support/v17/leanback/graphics/CompositeDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method

.method updateBounds(Landroid/graphics/Rect;)V
    .locals 4

    iget-object v3, p0, Landroid/support/v17/leanback/graphics/CompositeDrawable;->mState:Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;

    iget-object v1, v3, Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;->mChildren:Ljava/util/ArrayList;

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;->updateBounds(Landroid/graphics/Rect;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
