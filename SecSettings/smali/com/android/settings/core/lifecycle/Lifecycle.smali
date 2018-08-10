.class public Lcom/android/settings/core/lifecycle/Lifecycle;
.super Ljava/lang/Object;
.source "Lifecycle.java"


# instance fields
.field protected final mObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/core/lifecycle/LifecycleObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addObserver(Lcom/android/settings/core/lifecycle/LifecycleObserver;)Lcom/android/settings/core/lifecycle/LifecycleObserver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/settings/core/lifecycle/LifecycleObserver;",
            ">(TT;)TT;"
        }
    .end annotation

    invoke-static {}, Lcom/android/settings/utils/ThreadUtils;->ensureMainThread()V

    iget-object v0, p0, Lcom/android/settings/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3

    iget-object v2, p0, Lcom/android/settings/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/core/lifecycle/LifecycleObserver;

    instance-of v2, v0, Lcom/android/settings/core/lifecycle/events/OnAttach;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/android/settings/core/lifecycle/events/OnAttach;

    invoke-interface {v0, p1}, Lcom/android/settings/core/lifecycle/events/OnAttach;->onAttach(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    iget-object v2, p0, Lcom/android/settings/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/core/lifecycle/LifecycleObserver;

    instance-of v2, v0, Lcom/android/settings/core/lifecycle/events/OnCreate;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/android/settings/core/lifecycle/events/OnCreate;

    invoke-interface {v0, p1}, Lcom/android/settings/core/lifecycle/events/OnCreate;->onCreate(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p2    # Landroid/view/MenuInflater;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v2, p0, Lcom/android/settings/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/core/lifecycle/LifecycleObserver;

    instance-of v2, v0, Lcom/android/settings/core/lifecycle/events/OnCreateOptionsMenu;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/android/settings/core/lifecycle/events/OnCreateOptionsMenu;

    invoke-interface {v0, p1, p2}, Lcom/android/settings/core/lifecycle/events/OnCreateOptionsMenu;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 3

    iget-object v2, p0, Lcom/android/settings/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/core/lifecycle/LifecycleObserver;

    instance-of v2, v0, Lcom/android/settings/core/lifecycle/events/OnDestroy;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/android/settings/core/lifecycle/events/OnDestroy;

    invoke-interface {v0}, Lcom/android/settings/core/lifecycle/events/OnDestroy;->onDestroy()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    iget-object v2, p0, Lcom/android/settings/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/core/lifecycle/LifecycleObserver;

    instance-of v2, v0, Lcom/android/settings/core/lifecycle/events/OnOptionsItemSelected;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/android/settings/core/lifecycle/events/OnOptionsItemSelected;

    invoke-interface {v0, p1}, Lcom/android/settings/core/lifecycle/events/OnOptionsItemSelected;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public onPause()V
    .locals 3

    iget-object v2, p0, Lcom/android/settings/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/core/lifecycle/LifecycleObserver;

    instance-of v2, v0, Lcom/android/settings/core/lifecycle/events/OnPause;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/android/settings/core/lifecycle/events/OnPause;

    invoke-interface {v0}, Lcom/android/settings/core/lifecycle/events/OnPause;->onPause()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3

    iget-object v2, p0, Lcom/android/settings/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/core/lifecycle/LifecycleObserver;

    instance-of v2, v0, Lcom/android/settings/core/lifecycle/events/OnPrepareOptionsMenu;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/android/settings/core/lifecycle/events/OnPrepareOptionsMenu;

    invoke-interface {v0, p1}, Lcom/android/settings/core/lifecycle/events/OnPrepareOptionsMenu;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 3

    iget-object v2, p0, Lcom/android/settings/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/core/lifecycle/LifecycleObserver;

    instance-of v2, v0, Lcom/android/settings/core/lifecycle/events/OnResume;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/android/settings/core/lifecycle/events/OnResume;

    invoke-interface {v0}, Lcom/android/settings/core/lifecycle/events/OnResume;->onResume()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    iget-object v2, p0, Lcom/android/settings/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/core/lifecycle/LifecycleObserver;

    instance-of v2, v0, Lcom/android/settings/core/lifecycle/events/OnSaveInstanceState;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/android/settings/core/lifecycle/events/OnSaveInstanceState;

    invoke-interface {v0, p1}, Lcom/android/settings/core/lifecycle/events/OnSaveInstanceState;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 3

    iget-object v2, p0, Lcom/android/settings/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/core/lifecycle/LifecycleObserver;

    instance-of v2, v0, Lcom/android/settings/core/lifecycle/events/OnStart;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/android/settings/core/lifecycle/events/OnStart;

    invoke-interface {v0}, Lcom/android/settings/core/lifecycle/events/OnStart;->onStart()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 3

    iget-object v2, p0, Lcom/android/settings/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/core/lifecycle/LifecycleObserver;

    instance-of v2, v0, Lcom/android/settings/core/lifecycle/events/OnStop;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/android/settings/core/lifecycle/events/OnStop;

    invoke-interface {v0}, Lcom/android/settings/core/lifecycle/events/OnStop;->onStop()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 3

    iget-object v2, p0, Lcom/android/settings/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/core/lifecycle/LifecycleObserver;

    instance-of v2, v0, Lcom/android/settings/core/lifecycle/events/SetPreferenceScreen;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/android/settings/core/lifecycle/events/SetPreferenceScreen;

    invoke-interface {v0, p1}, Lcom/android/settings/core/lifecycle/events/SetPreferenceScreen;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    goto :goto_0

    :cond_1
    return-void
.end method
