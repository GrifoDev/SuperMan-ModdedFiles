.class Lcom/android/launcher2/Workspace$10$1;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Workspace$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/Workspace$10;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Workspace$10;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/Workspace$10$1;->this$1:Lcom/android/launcher2/Workspace$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x1

    const-string v0, "Launcher.Workspace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Runnable D Runnable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " State "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/Workspace$10$1;->this$1:Lcom/android/launcher2/Workspace$10;

    iget-object v2, v2, Lcom/android/launcher2/Workspace$10;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v2}, Lcom/android/launcher2/Workspace;->access$300(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Workspace$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher2/Workspace$10$1;->this$1:Lcom/android/launcher2/Workspace$10;

    iget-object v0, v0, Lcom/android/launcher2/Workspace$10;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v0}, Lcom/android/launcher2/Workspace;->access$300(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Workspace$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/Workspace$10$1;->this$1:Lcom/android/launcher2/Workspace$10;

    iget-object v0, v0, Lcom/android/launcher2/Workspace$10;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v0}, Lcom/android/launcher2/Workspace;->access$1600(Lcom/android/launcher2/Workspace;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v4}, Lcom/android/launcher2/Launcher;->setHomeEditMode(Z)V

    iget-object v0, p0, Lcom/android/launcher2/Workspace$10$1;->this$1:Lcom/android/launcher2/Workspace$10;

    iget-object v0, v0, Lcom/android/launcher2/Workspace$10;->this$0:Lcom/android/launcher2/Workspace;

    sget-object v1, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/launcher2/Workspace$10$1;->this$1:Lcom/android/launcher2/Workspace$10;

    iget-object v3, v3, Lcom/android/launcher2/Workspace$10;->val$homeItem:Lcom/android/launcher2/HomeWidgetItem;

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;ZILcom/android/launcher2/BaseItem;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Workspace$10$1;->this$1:Lcom/android/launcher2/Workspace$10;

    iget-object v0, v0, Lcom/android/launcher2/Workspace$10;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v0}, Lcom/android/launcher2/Workspace;->access$300(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Workspace$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Workspace$10$1;->this$1:Lcom/android/launcher2/Workspace$10;

    iget-object v0, v0, Lcom/android/launcher2/Workspace$10;->this$0:Lcom/android/launcher2/Workspace;

    sget-object v1, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    invoke-static {v0, v1}, Lcom/android/launcher2/Workspace;->access$1300(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Workspace$State;)V

    goto :goto_0
.end method
