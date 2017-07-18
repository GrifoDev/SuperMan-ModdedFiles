.class Lcom/android/launcher2/Workspace$11;
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

.field final synthetic val$resizeRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Workspace;Ljava/lang/Runnable;Lcom/android/launcher2/HomeWidgetItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/Workspace$11;->this$0:Lcom/android/launcher2/Workspace;

    iput-object p2, p0, Lcom/android/launcher2/Workspace$11;->val$resizeRunnable:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/android/launcher2/Workspace$11;->val$homeItem:Lcom/android/launcher2/HomeWidgetItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher2/Workspace$11;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v0}, Lcom/android/launcher2/Workspace;->access$300(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Workspace$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-eq v0, v1, :cond_1

    const-string v0, "Launcher.Workspace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mState should be Resizable at this point. Its value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/Workspace$11;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v2}, Lcom/android/launcher2/Workspace;->access$300(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Workspace$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Workspace$11;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->isPageMoving()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Launcher.Workspace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Runnable A Runnable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/Workspace$11;->val$resizeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " State "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/Workspace$11;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v2}, Lcom/android/launcher2/Workspace;->access$300(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Workspace$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher2/Workspace$11;->val$resizeRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/android/launcher2/Workspace$11;->this$0:Lcom/android/launcher2/Workspace;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher2/Workspace;->access$1702(Lcom/android/launcher2/Workspace;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/Workspace$11;->val$homeItem:Lcom/android/launcher2/HomeWidgetItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Workspace$11;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher2/Workspace$11;->val$homeItem:Lcom/android/launcher2/HomeWidgetItem;

    iget v1, v1, Lcom/android/launcher2/HomeWidgetItem;->mScreen:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Workspace$11;->this$0:Lcom/android/launcher2/Workspace;

    iget-object v1, p0, Lcom/android/launcher2/Workspace$11;->val$homeItem:Lcom/android/launcher2/HomeWidgetItem;

    iget v1, v1, Lcom/android/launcher2/HomeWidgetItem;->mScreen:I

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    goto :goto_0
.end method
