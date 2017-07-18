.class Lcom/android/launcher2/MenuAppsGrid$StateNormal$5;
.super Ljava/lang/Object;
.source "MenuAppsGrid.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MenuAppsGrid$StateNormal;->enter(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/MenuAppsGrid$StateNormal;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuAppsGrid$StateNormal;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal$5;->this$1:Lcom/android/launcher2/MenuAppsGrid$StateNormal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 3

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal$5;->this$1:Lcom/android/launcher2/MenuAppsGrid$StateNormal;

    iget-object v1, v1, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->SEARCH:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal$5;->this$1:Lcom/android/launcher2/MenuAppsGrid$StateNormal;

    iget-object v1, v1, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-static {v1}, Lcom/android/launcher2/MenuAppsGrid;->access$2300(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGridFragment;->getTabHost()Lcom/android/launcher2/MenuView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->isCurrentTabAppGrid()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal$5;->this$1:Lcom/android/launcher2/MenuAppsGrid$StateNormal;

    iget-object v1, v1, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->changeToAppsStateSearch()V

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal$5;->this$1:Lcom/android/launcher2/MenuAppsGrid$StateNormal;

    iget-object v1, v1, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->getSearchState()Lcom/android/launcher2/MenuAppsSearch;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuAppsSearch;->setQueryString(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
