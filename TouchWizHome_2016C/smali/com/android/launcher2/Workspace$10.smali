.class Lcom/android/launcher2/Workspace$10;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Workspace;->enterWidgetResizeMode(Lcom/android/launcher2/LauncherAppWidgetHostView;Lcom/android/launcher2/CellLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Workspace;

.field final synthetic val$homeItem:Lcom/android/launcher2/HomeWidgetItem;

.field final synthetic val$hostView:Lcom/android/launcher2/LauncherAppWidgetHostView;

.field final synthetic val$layout:Lcom/android/launcher2/CellLayout;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/LauncherAppWidgetHostView;Lcom/android/launcher2/HomeWidgetItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/Workspace$10;->this$0:Lcom/android/launcher2/Workspace;

    iput-object p2, p0, Lcom/android/launcher2/Workspace$10;->val$layout:Lcom/android/launcher2/CellLayout;

    iput-object p3, p0, Lcom/android/launcher2/Workspace$10;->val$hostView:Lcom/android/launcher2/LauncherAppWidgetHostView;

    iput-object p4, p0, Lcom/android/launcher2/Workspace$10;->val$homeItem:Lcom/android/launcher2/HomeWidgetItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v1, "Launcher.Workspace"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Runnable C Runnable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " State "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/Workspace$10;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v3}, Lcom/android/launcher2/Workspace;->access$300(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Workspace$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher2/Workspace$10;->val$layout:Lcom/android/launcher2/CellLayout;

    check-cast v0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    iget-object v1, p0, Lcom/android/launcher2/Workspace$10;->val$hostView:Lcom/android/launcher2/LauncherAppWidgetHostView;

    new-instance v2, Lcom/android/launcher2/Workspace$10$1;

    invoke-direct {v2, p0}, Lcom/android/launcher2/Workspace$10$1;-><init>(Lcom/android/launcher2/Workspace$10;)V

    iget-object v3, p0, Lcom/android/launcher2/Workspace$10;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v3}, Lcom/android/launcher2/Workspace;->access$300(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Workspace$State;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->setResizeFrame(Landroid/view/View;Ljava/lang/Runnable;Lcom/android/launcher2/Workspace$State;)V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportWidgetInstallAnim()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getResizeFrame()Lcom/android/launcher2/AppWidgetResizeFrame;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getResizeFrame()Lcom/android/launcher2/AppWidgetResizeFrame;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/Workspace$10;->val$hostView:Lcom/android/launcher2/LauncherAppWidgetHostView;

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/AppWidgetResizeFrame;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/Workspace$10;->val$homeItem:Lcom/android/launcher2/HomeWidgetItem;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/Workspace$10;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher2/Workspace$10;->val$homeItem:Lcom/android/launcher2/HomeWidgetItem;

    iget v2, v2, Lcom/android/launcher2/HomeWidgetItem;->mScreen:I

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/Workspace$10;->this$0:Lcom/android/launcher2/Workspace;

    iget-object v2, p0, Lcom/android/launcher2/Workspace$10;->val$homeItem:Lcom/android/launcher2/HomeWidgetItem;

    iget v2, v2, Lcom/android/launcher2/HomeWidgetItem;->mScreen:I

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    :cond_1
    return-void
.end method
