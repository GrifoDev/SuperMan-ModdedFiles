.class Lcom/android/systemui/globalactions/GlobalActionsDialog$16;
.super Ljava/lang/Object;
.source "GlobalActionsDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog;->createDialog()Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;
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

    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$16;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$16;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get22(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$16$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$16$1;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$16;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$16;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get16(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get64()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-set20(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$16;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get16(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->dismiss()V

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$16;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0, v5}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-set3(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    invoke-static {v4}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-set19(Z)Z

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$16;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0, v4}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-set7(Lcom/android/systemui/globalactions/GlobalActionsDialog;Z)Z

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
