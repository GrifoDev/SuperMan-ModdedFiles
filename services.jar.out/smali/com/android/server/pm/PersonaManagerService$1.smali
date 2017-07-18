.class Lcom/android/server/pm/PersonaManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PersonaManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PersonaManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PersonaManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$1;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string/jumbo v2, "PersonaManagerService"

    const-string/jumbo v3, "Received the DPM state change broadcast"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "userhandle"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService$1;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PersonaManagerService;->-get20(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService$1;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PersonaManagerService;->-get20(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
