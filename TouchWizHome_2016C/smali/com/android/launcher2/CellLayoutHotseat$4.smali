.class Lcom/android/launcher2/CellLayoutHotseat$4;
.super Ljava/lang/Object;
.source "CellLayoutHotseat.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/CellLayoutHotseat;->setupAllAppsIcon(Landroid/content/Context;Lcom/android/launcher2/AllappsIcon;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/CellLayoutHotseat;


# direct methods
.method constructor <init>(Lcom/android/launcher2/CellLayoutHotseat;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/CellLayoutHotseat$4;->this$0:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v2, p0, Lcom/android/launcher2/CellLayoutHotseat$4;->this$0:Lcom/android/launcher2/CellLayoutHotseat;

    iget-object v2, v2, Lcom/android/launcher2/CellLayoutHotseat;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/CellLayoutHotseat$4;->this$0:Lcom/android/launcher2/CellLayoutHotseat;

    iget-object v2, v2, Lcom/android/launcher2/CellLayoutHotseat;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageVirtualScreen()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/launcher2/Launcher;->isMoving()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "CellLayoutHotseat"

    const-string v3, "onClick - return by virtual screen isMoving"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/CellLayoutHotseat$4;->this$0:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutHotseat;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->selectAppsTab()V

    :cond_3
    iget-object v2, p0, Lcom/android/launcher2/CellLayoutHotseat$4;->this$0:Lcom/android/launcher2/CellLayoutHotseat;

    iget-object v2, v2, Lcom/android/launcher2/CellLayoutHotseat;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2, p1}, Lcom/android/launcher2/HomeView;->onClickAllAppsButton(Landroid/view/View;)V

    goto :goto_0
.end method
