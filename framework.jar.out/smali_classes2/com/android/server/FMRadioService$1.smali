.class Lcom/android/server/FMRadioService$1;
.super Landroid/content/BroadcastReceiver;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/FMRadioService;


# direct methods
.method constructor <init>(Lcom/android/server/FMRadioService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/FMRadioService$1;->this$0:Lcom/android/server/FMRadioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const/16 v5, 0xc8

    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x1

    const-string/jumbo v3, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/FMRadioService$1;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v3}, Lcom/android/server/FMRadioService;->-get30(Lcom/android/server/FMRadioService;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string/jumbo v3, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/16 v4, 0xa

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v3, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v3, "*** mReceiver: SAMSUNG_VOLUME_CHANGED_ACTION"

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "   stream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "   volume: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/FMRadioService$1;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v3}, Lcom/android/server/FMRadioService;->-get5(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-static {v6}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "   current_stream_volume: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result v3

    if-eq v1, v3, :cond_0

    if-ne v1, v9, :cond_2

    iget-object v3, p0, Lcom/android/server/FMRadioService$1;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v3}, Lcom/android/server/FMRadioService;->-get12(Lcom/android/server/FMRadioService;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    if-ne v2, v0, :cond_2

    iget-object v3, p0, Lcom/android/server/FMRadioService$1;->this$0:Lcom/android/server/FMRadioService;

    iget-object v3, v3, Lcom/android/server/FMRadioService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/FMRadioService$1;->this$0:Lcom/android/server/FMRadioService;

    iget-object v3, v3, Lcom/android/server/FMRadioService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v3, p0, Lcom/android/server/FMRadioService$1;->this$0:Lcom/android/server/FMRadioService;

    int-to-long v4, v2

    invoke-virtual {v3, v4, v5}, Lcom/android/server/FMRadioService;->setVolume(J)V

    :cond_2
    :goto_0
    const-string/jumbo v3, "com.sec.android.fm.volume_lock"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/server/FMRadioService$1;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v3}, Lcom/android/server/FMRadioService;->-get6(Lcom/android/server/FMRadioService;)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/server/FMRadioService$1;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v3}, Lcom/android/server/FMRadioService;->-get6(Lcom/android/server/FMRadioService;)I

    move-result v3

    if-ne v3, v9, :cond_7

    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/android/server/FMRadioService$1;->this$0:Lcom/android/server/FMRadioService;

    const-string/jumbo v4, "com.sec.android.fm.return_back_volume"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/server/FMRadioService;->-set9(Lcom/android/server/FMRadioService;I)I

    :cond_4
    const-string/jumbo v3, "Volume Locked..."

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/FMRadioService$1;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v3, v6}, Lcom/android/server/FMRadioService;->-set15(Lcom/android/server/FMRadioService;Z)Z

    :cond_5
    :goto_2
    return-void

    :cond_6
    iget-object v3, p0, Lcom/android/server/FMRadioService$1;->this$0:Lcom/android/server/FMRadioService;

    const/16 v4, 0xf

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    goto :goto_0

    :cond_7
    iget-object v3, p0, Lcom/android/server/FMRadioService$1;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v3}, Lcom/android/server/FMRadioService;->-get6(Lcom/android/server/FMRadioService;)I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_4

    goto :goto_1

    :cond_8
    const-string/jumbo v3, "com.sec.android.fm.volume_unlock"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string/jumbo v3, "Volume Unlocked..."

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/FMRadioService$1;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v3, v7}, Lcom/android/server/FMRadioService;->-set9(Lcom/android/server/FMRadioService;I)I

    iget-object v3, p0, Lcom/android/server/FMRadioService$1;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v3, v8}, Lcom/android/server/FMRadioService;->-set15(Lcom/android/server/FMRadioService;Z)Z

    goto :goto_2
.end method
