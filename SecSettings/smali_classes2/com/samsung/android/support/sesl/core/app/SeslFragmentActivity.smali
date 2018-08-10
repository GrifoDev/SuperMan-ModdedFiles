.class public Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;
.super Lcom/samsung/android/support/sesl/core/app/SeslBaseFragmentActivity;
.source "SeslFragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity$HostCallbacks;,
        Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity$NonConfigurationInstances;
    }
.end annotation


# instance fields
.field mCreated:Z

.field final mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

.field final mHandler:Landroid/os/Handler;

.field mNextCandidateRequestIndex:I

.field mPendingFragmentActivityResults:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mReallyStopped:Z

.field mResumed:Z

.field mRetaining:Z

.field mStopped:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/app/SeslBaseFragmentActivity;-><init>()V

    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity$1;-><init>(Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity$HostCallbacks;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity$HostCallbacks;-><init>(Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;)V

    invoke-static {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->createController(Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;)Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mStopped:Z

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mReallyStopped:Z

    return-void
.end method


# virtual methods
.method final dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method doReallyStop(Z)V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mReallyStopped:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mReallyStopped:Z

    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mRetaining:Z

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->onReallyStop()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->doLoaderStart()V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->doLoaderStop(Z)V

    goto :goto_0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/core/app/SeslBaseFragmentActivity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "Local SeslFragmentActivity "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, " State:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mCreated="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mCreated:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v1, "mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mResumed:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mStopped:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v1, " mReallyStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mReallyStopped:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-virtual {v1, v0, p2, p3, p4}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->dumpLoaders(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->getSupportFragmentManager()Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->noteStateNotSaved()V

    shr-int/lit8 v0, p1, 0x10

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/core/app/SeslBaseFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mPendingFragmentActivityResults:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v3, v0}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mPendingFragmentActivityResults:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v3, v0}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->remove(I)V

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-virtual {v3, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->findFragmentByWho(Ljava/lang/String;)Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    move-result-object v1

    if-eqz v1, :cond_2

    const v3, 0xffff

    and-int/2addr v3, p1

    invoke-virtual {v1, v3, p2, p3}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onActivityResult(IILandroid/content/Intent;)V

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v3, "SeslFragmentActivity"

    const-string/jumbo v4, "Activity result delivered for unknown SeslFragment."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Activity result no fragment exists for who: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "SeslFragmentActivity"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onAttachFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V
    .locals 0

    return-void
.end method

.method public onBackPressed()V
    .locals 4

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->getSupportFragmentManager()Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;->isStateSaved()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    if-eqz v1, :cond_3

    :cond_1
    invoke-super {p0}, Lcom/samsung/android/support/sesl/core/app/SeslBaseFragmentActivity;->onBackPressed()V

    :goto_0
    return-void

    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x19

    if-gt v2, v3, :cond_0

    return-void

    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;->popBackStackImmediate()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslBaseFragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v8, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-virtual {v6, v5}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->attachHost(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslBaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity$NonConfigurationInstances;

    if-nez v2, :cond_1

    :goto_0
    if-nez p1, :cond_2

    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mPendingFragmentActivityResults:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    if-eqz v5, :cond_6

    :goto_2
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->dispatchCreate()V

    return-void

    :cond_1
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    iget-object v7, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity$NonConfigurationInstances;->loaders:Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;

    invoke-virtual {v6, v7}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->restoreLoaderNonConfig(Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v6, "android:support:fragments"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    if-nez v2, :cond_4

    :goto_3
    invoke-virtual {v6, v3, v5}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->restoreAllState(Landroid/os/Parcelable;Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;)V

    const-string/jumbo v5, "android:support:next_request_index"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "android:support:next_request_index"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mNextCandidateRequestIndex:I

    const-string/jumbo v5, "android:support:request_indicies"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    const-string/jumbo v5, "android:support:request_fragment_who"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v4, :cond_5

    :cond_3
    const-string/jumbo v5, "SeslFragmentActivity"

    const-string/jumbo v6, "Invalid requestCode mapping in savedInstanceState."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    iget-object v5, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity$NonConfigurationInstances;->fragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;

    goto :goto_3

    :cond_5
    if-eqz v0, :cond_3

    array-length v5, v4

    array-length v6, v0

    if-ne v5, v6, :cond_3

    new-instance v5, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    array-length v6, v4

    invoke-direct {v5, v6}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;-><init>(I)V

    iput-object v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mPendingFragmentActivityResults:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    const/4 v1, 0x0

    :goto_4
    array-length v5, v4

    if-ge v1, v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mPendingFragmentActivityResults:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    aget v6, v4, v1

    aget-object v7, v0, v1

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    new-instance v5, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-direct {v5}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mPendingFragmentActivityResults:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    iput v8, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mNextCandidateRequestIndex:I

    goto :goto_2
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 3

    if-eqz p1, :cond_0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/sesl/core/app/SeslBaseFragmentActivity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v1

    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/sesl/core/app/SeslBaseFragmentActivity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/core/app/SeslBaseFragmentActivity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/core/app/SeslBaseFragmentActivity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/support/sesl/core/app/SeslBaseFragmentActivity;->onDestroy()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->doReallyStop(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->dispatchDestroy()V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->doLoaderDestroy()V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/support/sesl/core/app/SeslBaseFragmentActivity;->onLowMemory()V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->dispatchLowMemory()V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/sesl/core/app/SeslBaseFragmentActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    sparse-switch p1, :sswitch_data_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0

    :sswitch_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :sswitch_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->dispatchMultiWindowModeChanged(Z)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslBaseFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->noteStateNotSaved()V

    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/sesl/core/app/SeslBaseFragmentActivity;->onPanelClosed(ILandroid/view/Menu;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    const/4 v1, 0x2

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/samsung/android/support/sesl/core/app/SeslBaseFragmentActivity;->onPause()V

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mResumed:Z

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->dispatchPause()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->onResumeFragments()V

    goto :goto_0
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->dispatchPictureInPictureModeChanged(Z)V

    return-void
.end method

.method protected onPostResume()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/support/sesl/core/app/SeslBaseFragmentActivity;->onPostResume()V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->onResumeFragments()V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->execPendingActions()Z

    return-void
.end method

.method protected onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-super {p0, v0, p1, p2}, Lcom/samsung/android/support/sesl/core/app/SeslBaseFragmentActivity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 2

    if-eqz p1, :cond_1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/core/app/SeslBaseFragmentActivity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    return v1

    :cond_1
    if-eqz p3, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-virtual {v1, p3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method onReallyStop()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mRetaining:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->doLoaderStop(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->dispatchReallyStop()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 5
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const v4, 0xffff

    shr-int/lit8 v3, p1, 0x10

    and-int v1, v3, v4

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    add-int/lit8 v1, v1, -0x1

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mPendingFragmentActivityResults:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v3, v1}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mPendingFragmentActivityResults:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v3, v1}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->remove(I)V

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-virtual {v3, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->findFragmentByWho(Ljava/lang/String;)Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    move-result-object v0

    if-eqz v0, :cond_2

    and-int v3, p1, v4

    invoke-virtual {v0, v3, p2, p3}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "SeslFragmentActivity"

    const-string/jumbo v4, "Activity result delivered for unknown SeslFragment."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Activity result no fragment exists for who: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "SeslFragmentActivity"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/support/sesl/core/app/SeslBaseFragmentActivity;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mResumed:Z

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->execPendingActions()Z

    return-void
.end method

.method protected onResumeFragments()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->dispatchResume()V

    return-void
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 6

    const/4 v5, 0x0

    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mStopped:Z

    if-nez v4, :cond_1

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->onRetainCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->retainNestedNonConfig()Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->retainLoaderNonConfig()Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;

    move-result-object v2

    if-eqz v1, :cond_2

    :cond_0
    new-instance v3, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity$NonConfigurationInstances;

    invoke-direct {v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity$NonConfigurationInstances;-><init>()V

    iput-object v0, v3, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity$NonConfigurationInstances;->custom:Ljava/lang/Object;

    iput-object v1, v3, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity$NonConfigurationInstances;->fragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;

    iput-object v2, v3, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity$NonConfigurationInstances;->loaders:Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;

    return-object v3

    :cond_1
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->doReallyStop(Z)V

    goto :goto_0

    :cond_2
    if-nez v2, :cond_0

    if-nez v0, :cond_0

    return-object v5
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslBaseFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->saveAllState()Landroid/os/Parcelable;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mPendingFragmentActivityResults:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->size()I

    move-result v4

    if-gtz v4, :cond_1

    :goto_1
    return-void

    :cond_0
    const-string/jumbo v4, "android:support:fragments"

    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    :cond_1
    iget v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mNextCandidateRequestIndex:I

    const-string/jumbo v5, "android:support:next_request_index"

    invoke-virtual {p1, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mPendingFragmentActivityResults:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->size()I

    move-result v4

    new-array v3, v4, [I

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mPendingFragmentActivityResults:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->size()I

    move-result v4

    new-array v0, v4, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_2
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mPendingFragmentActivityResults:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->size()I

    move-result v4

    if-lt v1, v4, :cond_2

    const-string/jumbo v4, "android:support:request_indicies"

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string/jumbo v4, "android:support:request_fragment_who"

    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mPendingFragmentActivityResults:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v4, v1}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->keyAt(I)I

    move-result v4

    aput v4, v3, v1

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mPendingFragmentActivityResults:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v4, v1}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method protected onStart()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/samsung/android/support/sesl/core/app/SeslBaseFragmentActivity;->onStart()V

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mStopped:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mReallyStopped:Z

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mCreated:Z

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->noteStateNotSaved()V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->execPendingActions()Z

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->doLoaderStart()V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->dispatchStart()V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->reportLoaderStart()V

    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mCreated:Z

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->dispatchActivityCreated()V

    goto :goto_0
.end method

.method public onStateNotSaved()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->noteStateNotSaved()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0}, Lcom/samsung/android/support/sesl/core/app/SeslBaseFragmentActivity;->onStop()V

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mStopped:Z

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->dispatchStop()V

    return-void
.end method

.method public setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslActivityCompat;->setExitSharedElementCallback(Landroid/app/Activity;Landroid/app/SharedElementCallback;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mStartedActivityFromFragment:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/sesl/core/app/SeslBaseFragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_1
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    invoke-static {p2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->checkForValidRequestCode(I)V

    goto :goto_0
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/core/app/SeslBaseFragmentActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 0
    .param p3    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    invoke-super/range {p0 .. p7}, Lcom/samsung/android/support/sesl/core/app/SeslBaseFragmentActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->invalidateOptionsMenu()V

    return-void
.end method
