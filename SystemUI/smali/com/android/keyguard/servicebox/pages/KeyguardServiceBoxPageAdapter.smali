.class public Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;
.super Lcom/android/internal/widget/PagerAdapter;
.source "KeyguardServiceBoxPageAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mController:Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;

.field private mPageCacheMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceBoxItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;",
            ">;",
            "Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/widget/PagerAdapter;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mServiceBoxItemList:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mController:Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
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

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mServiceBoxItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 7

    const/4 v6, -0x2

    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

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

    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mServiceBoxItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mServiceBoxItemList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;

    invoke-virtual {v1}, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;->getPackageName()Ljava/lang/String;

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
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mServiceBoxItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;

    :goto_0
    if-nez v1, :cond_1

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "page view is null : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mController:Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;

    invoke-interface {v3}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;->isContainerExpanded()Z

    move-result v3

    invoke-virtual {v0, v2, v5, v3}, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;->getPageView(Landroid/content/Context;ZZ)Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;

    move-result-object v1

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1
    check-cast p1, Lcom/android/internal/widget/ViewPager;

    invoke-virtual {p1, v1, v5}, Lcom/android/internal/widget/ViewPager;->addView(Landroid/view/View;I)V

    return-object v1
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

.method public refreshViews()V
    .locals 6

    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->refreshViews()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_1
    monitor-exit v5

    return-void
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

.method public setCoverState(Z)V
    .locals 6

    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;

    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->setCoverState(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_1
    monitor-exit v5

    return-void
.end method

.method public setMobileKeyboardState(Z)V
    .locals 6

    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;

    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->setMobileKeyboardState(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_1
    monitor-exit v5

    return-void
.end method

.method public setPageType(I)V
    .locals 6

    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;

    if-eqz v3, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->setPageType(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_1
    monitor-exit v5

    return-void
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public updateCMAS(Z)V
    .locals 6

    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;

    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->updateCMAS(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_1
    monitor-exit v5

    return-void
.end method

.method public updateChildViewsLook()V
    .locals 6

    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->updateChildViewsLook()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_1
    monitor-exit v5

    return-void
.end method
