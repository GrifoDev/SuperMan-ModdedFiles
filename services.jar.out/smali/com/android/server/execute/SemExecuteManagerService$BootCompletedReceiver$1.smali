.class Lcom/android/server/execute/SemExecuteManagerService$BootCompletedReceiver$1;
.super Ljava/lang/Thread;
.source "SemExecuteManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/execute/SemExecuteManagerService$BootCompletedReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/execute/SemExecuteManagerService$BootCompletedReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/execute/SemExecuteManagerService$BootCompletedReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/execute/SemExecuteManagerService$BootCompletedReceiver$1;->this$1:Lcom/android/server/execute/SemExecuteManagerService$BootCompletedReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/android/server/execute/SemExecuteManagerService$BootCompletedReceiver$1;->this$1:Lcom/android/server/execute/SemExecuteManagerService$BootCompletedReceiver;

    iget-object v0, v0, Lcom/android/server/execute/SemExecuteManagerService$BootCompletedReceiver;->this$0:Lcom/android/server/execute/SemExecuteManagerService;

    invoke-static {v0}, Lcom/android/server/execute/SemExecuteManagerService;->-get0(Lcom/android/server/execute/SemExecuteManagerService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/execute/SemExecuteManagerService$BootCompletedReceiver$1;->this$1:Lcom/android/server/execute/SemExecuteManagerService$BootCompletedReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/server/execute/SemExecuteManagerService$BootCompletedReceiver$1;->this$1:Lcom/android/server/execute/SemExecuteManagerService$BootCompletedReceiver;

    iget-object v0, v0, Lcom/android/server/execute/SemExecuteManagerService$BootCompletedReceiver;->this$0:Lcom/android/server/execute/SemExecuteManagerService;

    invoke-static {v0}, Lcom/android/server/execute/SemExecuteManagerService;->-wrap2(Lcom/android/server/execute/SemExecuteManagerService;)V

    return-void
.end method
