.class Lcom/android/launcher2/Workspace$DeferredWidgetRefresh;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeferredWidgetRefresh"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mHost:Lcom/android/launcher2/LauncherAppWidgetHost;

.field private final mInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/HomeWidgetItem;",
            ">;"
        }
    .end annotation
.end field

.field private mRefreshPending:Z

.field final synthetic this$0:Lcom/android/launcher2/Workspace;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/Workspace;Ljava/util/ArrayList;Lcom/android/launcher2/LauncherAppWidgetHost;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/HomeWidgetItem;",
            ">;",
            "Lcom/android/launcher2/LauncherAppWidgetHost;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher2/Workspace$DeferredWidgetRefresh;->this$0:Lcom/android/launcher2/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/launcher2/Workspace$DeferredWidgetRefresh;->mInfos:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/launcher2/Workspace$DeferredWidgetRefresh;->mHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/Workspace$DeferredWidgetRefresh;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Workspace$DeferredWidgetRefresh;->mRefreshPending:Z

    iget-object v0, p0, Lcom/android/launcher2/Workspace$DeferredWidgetRefresh;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v2, p0, Lcom/android/launcher2/Workspace$DeferredWidgetRefresh;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v2, p0, Lcom/android/launcher2/Workspace$DeferredWidgetRefresh;->mRefreshPending:Z

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher2/Workspace$DeferredWidgetRefresh;->mRefreshPending:Z

    iget-object v2, p0, Lcom/android/launcher2/Workspace$DeferredWidgetRefresh;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomeWidgetItem;

    iget-object v3, v0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    instance-of v3, v3, Lcom/android/launcher2/PendingAppWidgetHostView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/Workspace$DeferredWidgetRefresh;->this$0:Lcom/android/launcher2/Workspace;

    # getter for: Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;
    invoke-static {v3}, Lcom/android/launcher2/Workspace;->access$600(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/HomeView;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/launcher2/HomeView;->removeAppWidget(Lcom/android/launcher2/HomeWidgetItem;)V

    iget-object v3, p0, Lcom/android/launcher2/Workspace$DeferredWidgetRefresh;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeWidgetItem;->getPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Lcom/android/launcher2/CellLayout;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    :cond_3
    iget-object v3, p0, Lcom/android/launcher2/Workspace$DeferredWidgetRefresh;->this$0:Lcom/android/launcher2/Workspace;

    # getter for: Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;
    invoke-static {v3}, Lcom/android/launcher2/Workspace;->access$600(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/HomeView;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/launcher2/HomeView;->bindAppWidget(Lcom/android/launcher2/HomeWidgetItem;)V

    goto :goto_0
.end method
