.class public Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;
.super Ljava/lang/Object;
.source "SeslNestedScrollingChildHelper.java"


# instance fields
.field private mIsNestedScrollingEnabled:Z

.field private mNestedScrollingParentNonTouch:Landroid/view/ViewParent;

.field private mNestedScrollingParentTouch:Landroid/view/ViewParent;

.field private mTempNestedScrollConsumed:[I

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->mView:Landroid/view/View;

    return-void
.end method

.method private getNestedScrollingParentForType(I)Landroid/view/ViewParent;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->mNestedScrollingParentTouch:Landroid/view/ViewParent;

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->mNestedScrollingParentNonTouch:Landroid/view/ViewParent;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setNestedScrollingParentForType(ILandroid/view/ViewParent;)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iput-object p2, p0, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->mNestedScrollingParentTouch:Landroid/view/ViewParent;

    goto :goto_0

    :pswitch_1
    iput-object p2, p0, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->mNestedScrollingParentNonTouch:Landroid/view/ViewParent;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public dispatchNestedFling(FFZ)Z
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    return v4

    :cond_1
    invoke-direct {p0, v4}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-interface {v1, v2, p1, p2, p3}, Landroid/view/ViewParent;->onNestedFling(Landroid/view/View;FFZ)Z
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ViewParent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " does not implement interface method onNestedFling"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "SeslNstdScrollChildHelp"

    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v4
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    return v4

    :cond_1
    invoke-direct {p0, v4}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-interface {v1, v2, p1, p2}, Landroid/view/ViewParent;->onNestedPreFling(Landroid/view/View;FF)Z
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ViewParent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " does not implement interface method onNestedPreFling"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "SeslNstdScrollChildHelp"

    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v4
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 6
    .param p3    # [I
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [I
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[II)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreScroll(II[I[II)Z
    .locals 10
    .param p3    # [I
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [I
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v8

    :cond_1
    invoke-direct {p0, p5}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_5

    :cond_2
    const/4 v6, 0x0

    const/4 v7, 0x0

    if-nez p4, :cond_6

    :goto_1
    if-eqz p3, :cond_7

    :goto_2
    aput v8, p3, v8

    aput v8, p3, v9

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->mView:Landroid/view/View;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/support/sesl/core/view/SeslViewParentCompat;->onNestedPreScroll(Landroid/view/ViewParent;Landroid/view/View;II[II)V

    if-nez p4, :cond_9

    :goto_3
    aget v1, p3, v8

    if-eqz v1, :cond_a

    :cond_3
    move v1, v9

    :goto_4
    return v1

    :cond_4
    return v8

    :cond_5
    if-nez p2, :cond_2

    if-eqz p4, :cond_0

    aput v8, p4, v8

    aput v8, p4, v9

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {v1, p4}, Landroid/view/View;->getLocationInWindow([I)V

    aget v6, p4, v8

    aget v7, p4, v9

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->mTempNestedScrollConsumed:[I

    if-eqz v1, :cond_8

    :goto_5
    iget-object p3, p0, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->mTempNestedScrollConsumed:[I

    goto :goto_2

    :cond_8
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->mTempNestedScrollConsumed:[I

    goto :goto_5

    :cond_9
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {v1, p4}, Landroid/view/View;->getLocationInWindow([I)V

    aget v1, p4, v8

    sub-int/2addr v1, v6

    aput v1, p4, v8

    aget v1, p4, v9

    sub-int/2addr v1, v7

    aput v1, p4, v9

    goto :goto_3

    :cond_a
    aget v1, p3, v9

    if-nez v1, :cond_3

    move v1, v8

    goto :goto_4
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 7
    .param p5    # [I
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->dispatchNestedScroll(IIII[II)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedScroll(IIII[II)Z
    .locals 9
    .param p5    # [I
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    :cond_1
    invoke-direct {p0, p6}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_4

    :cond_2
    const/4 v7, 0x0

    const/4 v8, 0x0

    if-nez p5, :cond_5

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->mView:Landroid/view/View;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p6

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/support/sesl/core/view/SeslViewParentCompat;->onNestedScroll(Landroid/view/ViewParent;Landroid/view/View;IIIII)V

    if-nez p5, :cond_6

    :goto_2
    const/4 v1, 0x1

    return v1

    :cond_3
    const/4 v1, 0x0

    return v1

    :cond_4
    if-nez p2, :cond_2

    if-nez p3, :cond_2

    if-nez p4, :cond_2

    if-eqz p5, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, p5, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v1, p5, v2

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {v1, p5}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v1, 0x0

    aget v7, p5, v1

    const/4 v1, 0x1

    aget v8, p5, v1

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {v1, p5}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v1, 0x0

    aget v1, p5, v1

    sub-int/2addr v1, v7

    const/4 v2, 0x0

    aput v1, p5, v2

    const/4 v1, 0x1

    aget v1, p5, v1

    sub-int/2addr v1, v8

    const/4 v2, 0x1

    aput v1, p5, v2

    goto :goto_2
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->hasNestedScrollingParent(I)Z

    move-result v0

    return v0
.end method

.method public hasNestedScrollingParent(I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    return v0
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    if-nez v0, :cond_0

    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->stopNestedScroll()V

    goto :goto_0
.end method

.method public startNestedScroll(I)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->startNestedScroll(II)Z

    move-result v0

    return v0
.end method

.method public startNestedScroll(II)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->hasNestedScrollingParent(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    return v3

    :cond_1
    return v4

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->mView:Landroid/view/View;

    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v1, v0, v2, p1, p2}, Lcom/samsung/android/support/sesl/core/view/SeslViewParentCompat;->onStartNestedScroll(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)Z

    move-result v2

    if-nez v2, :cond_3

    instance-of v2, v1, Landroid/view/View;

    if-nez v2, :cond_4

    :goto_1
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-direct {p0, p2, v1}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->setNestedScrollingParentForType(ILandroid/view/ViewParent;)V

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v1, v0, v2, p1, p2}, Lcom/samsung/android/support/sesl/core/view/SeslViewParentCompat;->onNestedScrollAccepted(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)V

    return v4

    :cond_4
    move-object v0, v1

    check-cast v0, Landroid/view/View;

    goto :goto_1
.end method

.method public stopNestedScroll()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->stopNestedScroll(I)V

    return-void
.end method

.method public stopNestedScroll(I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0, v1, p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewParentCompat;->onStopNestedScroll(Landroid/view/ViewParent;Landroid/view/View;I)V

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->setNestedScrollingParentForType(ILandroid/view/ViewParent;)V

    goto :goto_0
.end method
