.class public Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;
.super Lcom/android/internal/widget/PagerAdapter;
.source "KeyguardServiceBoxPageAdapter.java"


# instance fields
.field private mCircularCloneView:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

.field private mPageCacheMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceBoxItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/servicebox/pages/KeyguardPageItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/android/systemui/servicebox/KeyguardServiceBoxController;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/servicebox/pages/KeyguardPageItem;",
            ">;",
            "Lcom/android/systemui/servicebox/KeyguardServiceBoxController;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/widget/PagerAdapter;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mServiceBoxItemList:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mCircularCloneView:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/internal/widget/ViewPager;

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Lcom/android/internal/widget/ViewPager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public getCacheData(Ljava/lang/String;)Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;
    .locals 3

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getCount()I
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mServiceBoxItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 7

    const/4 v6, -0x2

    iget-object v5, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_0

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mServiceBoxItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mServiceBoxItemList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/servicebox/pages/KeyguardPageItem;

    invoke-virtual {v1}, Lcom/android/systemui/servicebox/pages/KeyguardPageItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    monitor-exit v5

    return v0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    monitor-exit v5

    return v6

    :cond_3
    monitor-exit v5

    return v6

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mServiceBoxItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v3, p2, :cond_2

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mCircularCloneView:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mServiceBoxItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/servicebox/pages/KeyguardPageItem;

    iget-object v6, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-interface {v7}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->isContainerExpanded()Z

    move-result v7

    if-eqz v7, :cond_1

    :goto_0
    invoke-virtual {v3, v6, v5, v4}, Lcom/android/systemui/servicebox/pages/KeyguardPageItem;->getPageView(Landroid/content/Context;ZI)Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mCircularCloneView:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    const-string/jumbo v5, "clone_clock"

    iget-object v6, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mCircularCloneView:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mCircularCloneView:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    :goto_1
    if-nez v2, :cond_5

    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "page view is null : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    move v4, v5

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_2
    iget-object v6, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    monitor-enter v6

    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mServiceBoxItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/servicebox/pages/KeyguardPageItem;

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/android/systemui/servicebox/pages/KeyguardPageItem;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/android/systemui/servicebox/pages/KeyguardPageItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    move-object v2, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_2
    monitor-exit v6

    goto :goto_1

    :cond_3
    :try_start_2
    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-interface {v7}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->isContainerExpanded()Z

    move-result v7

    if-eqz v7, :cond_4

    :goto_3
    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v4}, Lcom/android/systemui/servicebox/pages/KeyguardPageItem;->getPageView(Landroid/content/Context;ZI)Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/android/systemui/servicebox/pages/KeyguardPageItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v3

    monitor-exit v6

    throw v3

    :cond_4
    move v4, v5

    goto :goto_3

    :cond_5
    invoke-virtual {v2}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_6

    move-object v3, p1

    check-cast v3, Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/ViewPager;->removeView(Landroid/view/View;)V

    :cond_6
    check-cast p1, Lcom/android/internal/widget/ViewPager;

    invoke-virtual {p1, v2}, Lcom/android/internal/widget/ViewPager;->addView(Landroid/view/View;)V

    invoke-virtual {v2}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->refreshViews()V

    invoke-virtual {v2}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->onRefreshCarrierInfo()V

    return-object v2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public makeTransitionData()V
    .locals 4

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->makeTransitionData()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1
    monitor-exit v3

    return-void
.end method

.method public onClockScaleModeChanged(I)V
    .locals 4

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->onClockScaleModeChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1
    monitor-exit v3

    return-void
.end method

.method public onLockModeChanged()V
    .locals 4

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->onLockModeChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1
    monitor-exit v3

    return-void
.end method

.method public onOpenThemeChanged()V
    .locals 4

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->onOpenThemeChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1
    monitor-exit v3

    return-void
.end method

.method public onOpenThemeReApply()V
    .locals 4

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->onOpenThemeReApply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1
    monitor-exit v3

    return-void
.end method

.method public onOwnerInfoSpaceChanged(Z)V
    .locals 4

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->onOwnerInfoSpaceChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1
    monitor-exit v3

    return-void
.end method

.method public onRefreshCarrierInfo()V
    .locals 4

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->onRefreshCarrierInfo()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1
    monitor-exit v3

    return-void
.end method

.method public onSettingsChanged(Landroid/net/Uri;)V
    .locals 4

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->onSettingsChanged(Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1
    monitor-exit v3

    return-void
.end method

.method public onUpdateLockscreenHiddenItems()V
    .locals 4

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->onUpdateLockscreenHiddenItems()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1
    monitor-exit v3

    return-void
.end method

.method public refreshViews(I)V
    .locals 4

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->refreshViews(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1
    monitor-exit v3

    return-void
.end method

.method public removeCacheData(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0

    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setMobileKeyboardState(Z)V
    .locals 4

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->setMobileKeyboardState(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1
    monitor-exit v3

    return-void
.end method

.method public setPageType(I)V
    .locals 4

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->setPageType(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1
    monitor-exit v3

    return-void
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public updateCMAS(Z)V
    .locals 4

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->updateCMAS(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1
    monitor-exit v3

    return-void
.end method

.method public updateRemoteViews(Ljava/lang/String;)V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->updateRemoteViews()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
