.class Lcom/android/launcher2/MenuAppsGrid$StateSearch;
.super Lcom/android/launcher2/MenuAppsGrid$StateObj;
.source "MenuAppsGrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuAppsGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateSearch"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/MenuAppsGrid;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/MenuAppsGrid;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$StateSearch;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateSearch;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    return-void
.end method


# virtual methods
.method public closeKeyboard()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateSearch;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mSearchState:Lcom/android/launcher2/MenuAppsSearch;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid;->access$2800(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsSearch;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateSearch;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mSearchState:Lcom/android/launcher2/MenuAppsSearch;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid;->access$2800(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsSearch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsSearch;->closeKeyboard()V

    :cond_0
    return-void
.end method

.method public enter(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Lcom/android/launcher2/MenuAppsGrid$State;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateSearch;->mHasEntered:Z

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->isVZWModel()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateSearch;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "search_recommend"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v3}, Lcom/android/launcher2/LauncherFeature;->setSupportGalaxyAppsSearch(Z)V

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateSearch;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mSearchState:Lcom/android/launcher2/MenuAppsSearch;
    invoke-static {v2}, Lcom/android/launcher2/MenuAppsGrid;->access$2800(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsSearch;

    move-result-object v2

    invoke-virtual {v2, p2, p1}, Lcom/android/launcher2/MenuAppsSearch;->enter(Lcom/android/launcher2/MenuAppsGrid$State;Ljava/util/List;)V

    return-void

    :cond_1
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/launcher2/LauncherFeature;->setSupportGalaxyAppsSearch(Z)V

    goto :goto_0
.end method

.method public exit(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Lcom/android/launcher2/MenuAppsGrid$State;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateSearch;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mSearchState:Lcom/android/launcher2/MenuAppsSearch;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid;->access$2800(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsSearch;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateSearch;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mSearchState:Lcom/android/launcher2/MenuAppsSearch;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid;->access$2800(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsSearch;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuAppsSearch;->exit(Ljava/util/List;)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateSearch;->mHasEntered:Z

    if-nez v0, :cond_1

    const-string v0, "Launcher.MenuAppsGrid"

    const-string v1, "Trying to exit a state that hasn\'t been entered"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v0, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateSearch;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # invokes: Lcom/android/launcher2/MenuAppsGrid;->setAppSearchAnimation(Ljava/util/List;Z)V
    invoke-static {v0, p1, v2}, Lcom/android/launcher2/MenuAppsGrid;->access$2500(Lcom/android/launcher2/MenuAppsGrid;Ljava/util/List;Z)V

    :cond_2
    iput-boolean v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateSearch;->mHasEntered:Z

    return-void
.end method

.method public getSearchState()Lcom/android/launcher2/MenuAppsSearch;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateSearch;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mSearchState:Lcom/android/launcher2/MenuAppsSearch;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid;->access$2800(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsSearch;

    move-result-object v0

    return-object v0
.end method

.method public onAppModelUpdated()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateSearch;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mSearchState:Lcom/android/launcher2/MenuAppsSearch;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid;->access$2800(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsSearch;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateSearch;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mSearchState:Lcom/android/launcher2/MenuAppsSearch;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid;->access$2800(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsSearch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsSearch;->refreschRecentView()V

    :cond_0
    return-void
.end method

.method public onClickAppItem(Lcom/android/launcher2/AppItem;Landroid/view/View;)Z
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateSearch;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->isMenuExiting()Z

    move-result v0

    iget-object v1, p1, Lcom/android/launcher2/AppItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v2, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v1, v2, :cond_0

    if-nez v0, :cond_0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/launcher2/MenuAppsGrid$StateSearch$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/launcher2/MenuAppsGrid$StateSearch$1;-><init>(Lcom/android/launcher2/MenuAppsGrid$StateSearch;Lcom/android/launcher2/AppItem;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateSearch;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/android/launcher2/MenuAppsGrid;->closeFolder(ZZ)Z

    :cond_0
    return v3
.end method

.method public onResume()V
    .locals 4

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->isVZWModel()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateSearch;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "search_recommend"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateSearch;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mSearchState:Lcom/android/launcher2/MenuAppsSearch;
    invoke-static {v2}, Lcom/android/launcher2/MenuAppsGrid;->access$2800(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsSearch;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateSearch;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mSearchState:Lcom/android/launcher2/MenuAppsSearch;
    invoke-static {v2}, Lcom/android/launcher2/MenuAppsGrid;->access$2800(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsSearch;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/launcher2/MenuAppsSearch;->onResume(Z)V

    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateSearch;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mIsKeyboardShowed:Z
    invoke-static {v2}, Lcom/android/launcher2/MenuAppsGrid;->access$2900(Lcom/android/launcher2/MenuAppsGrid;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid$StateSearch;->openKeyboard()V

    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateSearch;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # invokes: Lcom/android/launcher2/MenuAppsGrid;->getStateKeyboard()Z
    invoke-static {v2}, Lcom/android/launcher2/MenuAppsGrid;->access$3000(Lcom/android/launcher2/MenuAppsGrid;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateSearch;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mSearchState:Lcom/android/launcher2/MenuAppsSearch;
    invoke-static {v2}, Lcom/android/launcher2/MenuAppsGrid;->access$2800(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsSearch;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsSearch;->isFocusSearchEdit()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateSearch;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mSearchState:Lcom/android/launcher2/MenuAppsSearch;
    invoke-static {v2}, Lcom/android/launcher2/MenuAppsGrid;->access$2800(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsSearch;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsSearch;->requestFocusSearchEdit()V

    :cond_2
    return-void
.end method

.method public onVoiceSearch(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateSearch;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mSearchState:Lcom/android/launcher2/MenuAppsSearch;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid;->access$2800(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsSearch;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateSearch;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mSearchState:Lcom/android/launcher2/MenuAppsSearch;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid;->access$2800(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsSearch;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuAppsSearch;->setQueryString(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public openKeyboard()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateSearch;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mSearchState:Lcom/android/launcher2/MenuAppsSearch;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid;->access$2800(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsSearch;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateSearch;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mSearchState:Lcom/android/launcher2/MenuAppsSearch;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid;->access$2800(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsSearch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsSearch;->requestFocusSearchEdit()V

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateSearch;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mSearchState:Lcom/android/launcher2/MenuAppsSearch;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid;->access$2800(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsSearch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsSearch;->openKeyboard()V

    :cond_0
    return-void
.end method

.method public restore(Landroid/os/Bundle;)Z
    .locals 5

    invoke-super {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->restore(Landroid/os/Bundle;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateSearch;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mSearchState:Lcom/android/launcher2/MenuAppsSearch;
    invoke-static {v1}, Lcom/android/launcher2/MenuAppsGrid;->access$2800(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsSearch;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateSearch;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    new-instance v2, Lcom/android/launcher2/MenuAppsSearch;

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateSearch;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;
    invoke-static {v3}, Lcom/android/launcher2/MenuAppsGrid;->access$2300(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGridFragment;->getTabHost()Lcom/android/launcher2/MenuView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid$StateSearch;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-direct {v2, v3, v4}, Lcom/android/launcher2/MenuAppsSearch;-><init>(Lcom/android/launcher2/MenuView;Lcom/android/launcher2/MenuAppsGrid;)V

    # setter for: Lcom/android/launcher2/MenuAppsGrid;->mSearchState:Lcom/android/launcher2/MenuAppsSearch;
    invoke-static {v1, v2}, Lcom/android/launcher2/MenuAppsGrid;->access$2802(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsSearch;)Lcom/android/launcher2/MenuAppsSearch;

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateSearch;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mSearchState:Lcom/android/launcher2/MenuAppsSearch;
    invoke-static {v1}, Lcom/android/launcher2/MenuAppsGrid;->access$2800(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsSearch;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/MenuAppsSearch;->enter(Lcom/android/launcher2/MenuAppsGrid$State;Ljava/util/List;)V

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateSearch;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mSearchState:Lcom/android/launcher2/MenuAppsSearch;
    invoke-static {v1}, Lcom/android/launcher2/MenuAppsGrid;->access$2800(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsSearch;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/launcher2/MenuAppsSearch;->restore(Landroid/os/Bundle;)V

    return v0
.end method

.method public save(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->save(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateSearch;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mSearchState:Lcom/android/launcher2/MenuAppsSearch;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid;->access$2800(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsSearch;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateSearch;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mSearchState:Lcom/android/launcher2/MenuAppsSearch;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid;->access$2800(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsSearch;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuAppsSearch;->save(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
