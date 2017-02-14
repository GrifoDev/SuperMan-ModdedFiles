.class Lcom/android/launcher2/searchapp/SearchAppListFragment$11;
.super Landroid/content/BroadcastReceiver;
.source "SearchAppListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/searchapp/SearchAppListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;


# direct methods
.method constructor <init>(Lcom/android/launcher2/searchapp/SearchAppListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$11;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const-string v1, "SearchAppListFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive : action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$11;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    # getter for: Lcom/android/launcher2/searchapp/SearchAppListFragment;->mAdapter:Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;
    invoke-static {v1}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$700(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$11;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    # getter for: Lcom/android/launcher2/searchapp/SearchAppListFragment;->mApps:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$800(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$11;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$11;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    # getter for: Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchAppController:Lcom/android/launcher2/searchapp/SearchAppController;
    invoke-static {v3}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$900(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Lcom/android/launcher2/searchapp/SearchAppController;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher2/searchapp/SearchAppController;->mOtherAppsList:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentSkipListMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    # setter for: Lcom/android/launcher2/searchapp/SearchAppListFragment;->mApps:Ljava/util/ArrayList;
    invoke-static {v1, v2}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$802(Lcom/android/launcher2/searchapp/SearchAppListFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$11;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    # getter for: Lcom/android/launcher2/searchapp/SearchAppListFragment;->mApps:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$800(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$11;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    # getter for: Lcom/android/launcher2/searchapp/SearchAppListFragment;->mApps:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$800(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$11;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    # getter for: Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchAppController:Lcom/android/launcher2/searchapp/SearchAppController;
    invoke-static {v2}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$900(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Lcom/android/launcher2/searchapp/SearchAppController;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher2/searchapp/SearchAppController;->mOtherAppsList:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$11;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    # getter for: Lcom/android/launcher2/searchapp/SearchAppListFragment;->mIsHomeView:Z
    invoke-static {v1}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$1000(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$11;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    # invokes: Lcom/android/launcher2/searchapp/SearchAppListFragment;->setPreCheckedOfFolderHome()V
    invoke-static {v1}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$1100(Lcom/android/launcher2/searchapp/SearchAppListFragment;)V

    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$11;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    # getter for: Lcom/android/launcher2/searchapp/SearchAppListFragment;->mAdapter:Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;
    invoke-static {v1}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$700(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;->runFilter()V

    iget-object v1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$11;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    # getter for: Lcom/android/launcher2/searchapp/SearchAppListFragment;->mListContainer:Lcom/android/launcher2/searchapp/AlphabeticalListContainer;
    invoke-static {v1}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$1300(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Lcom/android/launcher2/searchapp/AlphabeticalListContainer;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$11;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    # getter for: Lcom/android/launcher2/searchapp/SearchAppListFragment;->mListContainer:Lcom/android/launcher2/searchapp/AlphabeticalListContainer;
    invoke-static {v1}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$1300(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Lcom/android/launcher2/searchapp/AlphabeticalListContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$11;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    # getter for: Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchListContainer:Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;
    invoke-static {v1}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$1400(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$11;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    # getter for: Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchListContainer:Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;
    invoke-static {v1}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$1400(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$11;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    # getter for: Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchAppController:Lcom/android/launcher2/searchapp/SearchAppController;
    invoke-static {v1}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$900(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Lcom/android/launcher2/searchapp/SearchAppController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/searchapp/SearchAppController;->getMoreAppsListState()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$11;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    # getter for: Lcom/android/launcher2/searchapp/SearchAppListFragment;->mListContainer:Lcom/android/launcher2/searchapp/AlphabeticalListContainer;
    invoke-static {v1}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$1300(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Lcom/android/launcher2/searchapp/AlphabeticalListContainer;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v1, "SearchAppListFragment"

    const-string v2, "onReceive : all apps are not loaded yet"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$11;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    # getter for: Lcom/android/launcher2/searchapp/SearchAppListFragment;->mListContainer:Lcom/android/launcher2/searchapp/AlphabeticalListContainer;
    invoke-static {v1}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$1300(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Lcom/android/launcher2/searchapp/AlphabeticalListContainer;

    move-result-object v1

    new-instance v2, Lcom/android/launcher2/searchapp/SearchAppListFragment$11$1;

    invoke-direct {v2, p0}, Lcom/android/launcher2/searchapp/SearchAppListFragment$11$1;-><init>(Lcom/android/launcher2/searchapp/SearchAppListFragment$11;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget-object v1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$11;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    # invokes: Lcom/android/launcher2/searchapp/SearchAppListFragment;->setPreCheckedOfFolderApp()V
    invoke-static {v1}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$1200(Lcom/android/launcher2/searchapp/SearchAppListFragment;)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$11;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    # getter for: Lcom/android/launcher2/searchapp/SearchAppListFragment;->mAdapter:Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;
    invoke-static {v1}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$700(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;->updateLayout()V

    iget-object v1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$11;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    # getter for: Lcom/android/launcher2/searchapp/SearchAppListFragment;->mListContainer:Lcom/android/launcher2/searchapp/AlphabeticalListContainer;
    invoke-static {v1}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$1300(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Lcom/android/launcher2/searchapp/AlphabeticalListContainer;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$11;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    # getter for: Lcom/android/launcher2/searchapp/SearchAppListFragment;->mListContainer:Lcom/android/launcher2/searchapp/AlphabeticalListContainer;
    invoke-static {v1}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$1300(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Lcom/android/launcher2/searchapp/AlphabeticalListContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$11;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    # getter for: Lcom/android/launcher2/searchapp/SearchAppListFragment;->mListContainer:Lcom/android/launcher2/searchapp/AlphabeticalListContainer;
    invoke-static {v1}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$1300(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Lcom/android/launcher2/searchapp/AlphabeticalListContainer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$11;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    # getter for: Lcom/android/launcher2/searchapp/SearchAppListFragment;->mListContainer:Lcom/android/launcher2/searchapp/AlphabeticalListContainer;
    invoke-static {v1}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$1300(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Lcom/android/launcher2/searchapp/AlphabeticalListContainer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$11;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    # getter for: Lcom/android/launcher2/searchapp/SearchAppListFragment;->mListContainer:Lcom/android/launcher2/searchapp/AlphabeticalListContainer;
    invoke-static {v1}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$1300(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Lcom/android/launcher2/searchapp/AlphabeticalListContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->requestFocus()Z

    iget-object v1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$11;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    # getter for: Lcom/android/launcher2/searchapp/SearchAppListFragment;->mListContainer:Lcom/android/launcher2/searchapp/AlphabeticalListContainer;
    invoke-static {v1}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$1300(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Lcom/android/launcher2/searchapp/AlphabeticalListContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x10a

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1
.end method
