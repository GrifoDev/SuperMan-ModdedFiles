.class Lcom/samsung/android/contextaware/utilbundle/CaBootStatus$2;
.super Landroid/os/Handler;
.source "CaBootStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1001

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "context is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1002

    if-ne v0, v1, :cond_2

    const-string/jumbo v0, "intent is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1003

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "Boot Complete"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;->-get0(Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;->-get0(Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;->-get2(Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;->-set0(Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;Z)Z

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;->-wrap0(Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;)V

    goto :goto_0
.end method
