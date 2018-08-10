.class Lcom/android/server/FMRadioService$14;
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

    iput-object p1, p0, Lcom/android/server/FMRadioService$14;->this$0:Lcom/android/server/FMRadioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/server/FMRadioService$14;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v1}, Lcom/android/server/FMRadioService;->getDNDStatus()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const-string/jumbo v1, "mDNDStatusReceiver onReceive : DND Enable"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/FMRadioService$14;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v1}, Lcom/android/server/FMRadioService;->-get32(Lcom/android/server/FMRadioService;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/FMRadioService$14;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v1}, Lcom/android/server/FMRadioService;->notifyRecFinish()V

    :cond_0
    iget-object v1, p0, Lcom/android/server/FMRadioService$14;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v1, v3}, Lcom/android/server/FMRadioService;->mute(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/server/FMRadioService$14;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v1}, Lcom/android/server/FMRadioService;->-get12(Lcom/android/server/FMRadioService;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/FMRadioService$14;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v1}, Lcom/android/server/FMRadioService;->isAllSoundOff()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/server/FMRadioServiceFeature;->FEATURE_USE_CHIPSET_VOLUME:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/FMRadioService$14;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v1}, Lcom/android/server/FMRadioService;->-get4(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-static {v3}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/FMRadioService$14;->this$0:Lcom/android/server/FMRadioService;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/FMRadioService;->setVolume(J)V

    :goto_1
    const-string/jumbo v1, "mDNDStatusReceiver onReceive : DND Disable "

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/server/FMRadioService$14;->this$0:Lcom/android/server/FMRadioService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/FMRadioService;->mute(Z)V

    goto :goto_1
.end method
