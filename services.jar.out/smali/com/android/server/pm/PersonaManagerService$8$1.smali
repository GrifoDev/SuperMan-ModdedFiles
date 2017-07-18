.class Lcom/android/server/pm/PersonaManagerService$8$1;
.super Ljava/lang/Thread;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PersonaManagerService$8;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/pm/PersonaManagerService$8;

.field final synthetic val$userHandle:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PersonaManagerService$8;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$8$1;->this$1:Lcom/android/server/pm/PersonaManagerService$8;

    iput p2, p0, Lcom/android/server/pm/PersonaManagerService$8$1;->val$userHandle:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$8$1;->this$1:Lcom/android/server/pm/PersonaManagerService$8;

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$8;->this$0:Lcom/android/server/pm/PersonaManagerService;

    iget v1, p0, Lcom/android/server/pm/PersonaManagerService$8$1;->val$userHandle:I

    invoke-static {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->-wrap47(Lcom/android/server/pm/PersonaManagerService;I)V

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$8$1;->this$1:Lcom/android/server/pm/PersonaManagerService$8;

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$8;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->-get19(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "PersonaManagerService"

    const-string/jumbo v2, "removeUserStateLocked is called..."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$8$1;->this$1:Lcom/android/server/pm/PersonaManagerService$8;

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$8;->this$0:Lcom/android/server/pm/PersonaManagerService;

    iget v2, p0, Lcom/android/server/pm/PersonaManagerService$8$1;->val$userHandle:I

    invoke-static {v0, v2}, Lcom/android/server/pm/PersonaManagerService;->-wrap48(Lcom/android/server/pm/PersonaManagerService;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
