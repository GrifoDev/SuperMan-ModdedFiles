.class Lcom/android/server/NetworkTimeUpdateService$4;
.super Landroid/content/BroadcastReceiver;
.source "NetworkTimeUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/NetworkTimeUpdateService;->registerForAlarms()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkTimeUpdateService;


# direct methods
.method constructor <init>(Lcom/android/server/NetworkTimeUpdateService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/NetworkTimeUpdateService$4;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService$4;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-static {v0}, Lcom/android/server/NetworkTimeUpdateService;->-get0(Lcom/android/server/NetworkTimeUpdateService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
