.class Lcom/android/launcher2/CellLayoutChildren$3$2;
.super Ljava/lang/Object;
.source "CellLayoutChildren.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/CellLayoutChildren$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/CellLayoutChildren$3;


# direct methods
.method constructor <init>(Lcom/android/launcher2/CellLayoutChildren$3;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/CellLayoutChildren$3$2;->this$1:Lcom/android/launcher2/CellLayoutChildren$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v2, p0, Lcom/android/launcher2/CellLayoutChildren$3$2;->this$1:Lcom/android/launcher2/CellLayoutChildren$3;

    iget-object v2, v2, Lcom/android/launcher2/CellLayoutChildren$3;->this$0:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutChildren;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    iget-object v0, v2, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->isQuickViewWorkspaceOpend()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/HomeScreenOptionMenu;->getScreenGridSelectMenu()Lcom/android/launcher2/HomeScreenGridSelectMenu;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->isActive()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/CellLayoutChildren$3$2;->this$1:Lcom/android/launcher2/CellLayoutChildren$3;

    iget-object v2, v2, Lcom/android/launcher2/CellLayoutChildren$3;->this$0:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Lcom/android/launcher2/CellLayout;->setCrosshairsVisibility(F)V

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/QuickViewWorkspace;->invalidate()V

    :cond_0
    return-void
.end method
