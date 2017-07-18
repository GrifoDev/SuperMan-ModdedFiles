.class public Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;
.super Lcom/android/launcher2/MenuWidgets$WidgetStateObj;
.source "MenuWidgets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuWidgets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WidgetStateSearch"
.end annotation


# instance fields
.field private mSearchState:Lcom/android/launcher2/MenuWidgetsSearch;

.field final synthetic this$0:Lcom/android/launcher2/MenuWidgets;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/MenuWidgets;)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuWidgets$WidgetStateObj;-><init>(Lcom/android/launcher2/MenuWidgets;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->mSearchState:Lcom/android/launcher2/MenuWidgetsSearch;

    return-void
.end method


# virtual methods
.method public closeKeyboard(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->mSearchState:Lcom/android/launcher2/MenuWidgetsSearch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->mSearchState:Lcom/android/launcher2/MenuWidgetsSearch;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/MenuWidgetsSearch;->closeKeyboard(ZZ)V

    :cond_0
    return-void
.end method

.method public enter(Lcom/android/launcher2/MenuWidgets$WidgetState;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/MenuWidgets$WidgetState;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    iget-object v4, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-static {v4}, Lcom/android/launcher2/MenuWidgets;->access$200(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuWidgetsFragment;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/launcher2/MenuWidgetsFragment;->setSoftInputParam(Z)V

    new-instance v4, Lcom/android/launcher2/MenuWidgetsSearch;

    iget-object v5, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-static {v5}, Lcom/android/launcher2/MenuWidgets;->access$200(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuWidgetsFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/MenuWidgetsFragment;->getTabHost()Lcom/android/launcher2/MenuView;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-direct {v4, v5, v6}, Lcom/android/launcher2/MenuWidgetsSearch;-><init>(Lcom/android/launcher2/MenuView;Lcom/android/launcher2/MenuWidgets;)V

    iput-object v4, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->mSearchState:Lcom/android/launcher2/MenuWidgetsSearch;

    iget-object v4, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->mSearchState:Lcom/android/launcher2/MenuWidgetsSearch;

    invoke-virtual {v4, p1, p2}, Lcom/android/launcher2/MenuWidgetsSearch;->enter(Lcom/android/launcher2/MenuWidgets$WidgetState;Ljava/util/List;)V

    iget-object v4, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-static {v4}, Lcom/android/launcher2/MenuWidgets;->access$1900(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/launcher2/MenuTitleBarManager;->getActiveTitleBarForState(Lcom/android/launcher2/MenuWidgets$WidgetState;)Landroid/view/ViewGroup;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-static {v4, v3}, Lcom/android/launcher2/MenuWidgets;->access$2302(Lcom/android/launcher2/MenuWidgets;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    :cond_0
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportChinaPreloadTheme()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-static {v4, v3}, Lcom/android/launcher2/MenuWidgets;->access$2302(Lcom/android/launcher2/MenuWidgets;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/LauncherApplication;->getThemeLoader()Lcom/android/launcher2/ThemeLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/ThemeLoader;->isUseDefaultTheme()Z

    move-result v4

    if-nez v4, :cond_1

    const v4, 0x7f110099

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v4, "all_apps_button_icon"

    invoke-virtual {v2, v4}, Lcom/android/launcher2/ThemeLoader;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public exit(Lcom/android/launcher2/MenuWidgets$WidgetState;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/MenuWidgets$WidgetState;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->mSearchState:Lcom/android/launcher2/MenuWidgetsSearch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->mSearchState:Lcom/android/launcher2/MenuWidgetsSearch;

    invoke-virtual {v0, p2}, Lcom/android/launcher2/MenuWidgetsSearch;->exit(Ljava/util/List;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->mSearchState:Lcom/android/launcher2/MenuWidgetsSearch;

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->this$0:Lcom/android/launcher2/MenuWidgets;

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Lcom/android/launcher2/MenuWidgets;->access$002(Lcom/android/launcher2/MenuWidgets;J)J

    return-void
.end method

.method public getSearchState()Lcom/android/launcher2/MenuWidgetsSearch;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->mSearchState:Lcom/android/launcher2/MenuWidgetsSearch;

    return-object v0
.end method

.method public onClickWidget(Lcom/android/launcher2/HomePendingItem;Landroid/view/View;)V
    .locals 1

    instance-of v0, p2, Lcom/android/launcher2/WidgetFolderView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->this$0:Lcom/android/launcher2/MenuWidgets;

    check-cast p2, Lcom/android/launcher2/WidgetFolderView;

    invoke-static {v0, p2}, Lcom/android/launcher2/MenuWidgets;->access$1700(Lcom/android/launcher2/MenuWidgets;Lcom/android/launcher2/WidgetFolderView;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-static {v0, p2}, Lcom/android/launcher2/MenuWidgets;->access$1800(Lcom/android/launcher2/MenuWidgets;Landroid/view/View;)V

    goto :goto_0
.end method

.method public onVoiceSearch(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->mSearchState:Lcom/android/launcher2/MenuWidgetsSearch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->mSearchState:Lcom/android/launcher2/MenuWidgetsSearch;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuWidgetsSearch;->setQueryString(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public openKeyboard()V
    .locals 3

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuView;->isCurrentTabWidgets()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->mSearchState:Lcom/android/launcher2/MenuWidgetsSearch;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/launcher2/MenuWidgetsSearch;

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-static {v1}, Lcom/android/launcher2/MenuWidgets;->access$200(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuWidgetsFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgetsFragment;->getTabHost()Lcom/android/launcher2/MenuView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/MenuWidgetsSearch;-><init>(Lcom/android/launcher2/MenuView;Lcom/android/launcher2/MenuWidgets;)V

    iput-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->mSearchState:Lcom/android/launcher2/MenuWidgetsSearch;

    :cond_0
    return-void
.end method

.method public bridge synthetic refreshModel()V
    .locals 0

    invoke-super {p0}, Lcom/android/launcher2/MenuWidgets$WidgetStateObj;->refreshModel()V

    return-void
.end method

.method public bridge synthetic refreshView()V
    .locals 0

    invoke-super {p0}, Lcom/android/launcher2/MenuWidgets$WidgetStateObj;->refreshView()V

    return-void
.end method

.method public restore(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/launcher2/MenuWidgets$WidgetStateObj;->restore(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->mSearchState:Lcom/android/launcher2/MenuWidgetsSearch;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/launcher2/MenuWidgetsSearch;

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-static {v1}, Lcom/android/launcher2/MenuWidgets;->access$200(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuWidgetsFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgetsFragment;->getTabHost()Lcom/android/launcher2/MenuView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/MenuWidgetsSearch;-><init>(Lcom/android/launcher2/MenuView;Lcom/android/launcher2/MenuWidgets;)V

    iput-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->mSearchState:Lcom/android/launcher2/MenuWidgetsSearch;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->mSearchState:Lcom/android/launcher2/MenuWidgetsSearch;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuWidgetsSearch;->restore(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public save(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/launcher2/MenuWidgets$WidgetStateObj;->save(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->mSearchState:Lcom/android/launcher2/MenuWidgetsSearch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->mSearchState:Lcom/android/launcher2/MenuWidgetsSearch;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuWidgetsSearch;->save(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
