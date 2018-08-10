.class Lcom/android/systemui/globalactions/GlobalActionsDialog$1;
.super Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;
.source "GlobalActionsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$1;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/sdk/cover/ScoverState;)V
    .locals 7

    const/16 v6, 0xc

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v0

    const-string/jumbo v2, "GlobalActionsDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCoverStateChanged state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get69()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get64()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v3}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-set20(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$1;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get22(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get61()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$1;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get24(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$1;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v2, v5}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-set4(Lcom/android/systemui/globalactions/GlobalActionsDialog;Z)Z

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$1;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    iget-object v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$1;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v3}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get45(Lcom/android/systemui/globalactions/GlobalActionsDialog;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-set9(Lcom/android/systemui/globalactions/GlobalActionsDialog;I)I

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$1;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-wrap36(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$1;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get22(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    :goto_1
    return-void

    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    :cond_1
    invoke-static {v5}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-set21(Z)Z

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$1;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get25(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$1;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v2, v5}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-set5(Lcom/android/systemui/globalactions/GlobalActionsDialog;Z)Z

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$1;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    iget-object v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$1;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v3}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get50(Lcom/android/systemui/globalactions/GlobalActionsDialog;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-set9(Lcom/android/systemui/globalactions/GlobalActionsDialog;I)I

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$1;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-wrap36(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$1;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get22(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$1;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get22(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$1;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get22(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method
