.class Lcom/android/launcher2/MenuAppsGrid$StateNormal$3;
.super Ljava/lang/Object;
.source "MenuAppsGrid.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal$3;->this$1:Lcom/android/launcher2/MenuAppsGrid$StateNormal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal$3;->this$1:Lcom/android/launcher2/MenuAppsGrid$StateNormal;

    iget-object v0, v0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->SEARCH:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal$3;->this$1:Lcom/android/launcher2/MenuAppsGrid$StateNormal;

    iget-object v0, v0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid;->access$2300(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGridFragment;->getTabHost()Lcom/android/launcher2/MenuView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuView;->isCurrentTabAppGrid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal$3;->this$1:Lcom/android/launcher2/MenuAppsGrid$StateNormal;

    iget-object v0, v0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->changeToAppsStateSearch()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
