.class Lcom/android/server/FMRadioService$4;
.super Landroid/telephony/PhoneStateListener;
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
.field private mIsPhoneCallRinging:Z

.field final synthetic this$0:Lcom/android/server/FMRadioService;


# direct methods
.method constructor <init>(Lcom/android/server/FMRadioService;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/FMRadioService$4;->this$0:Lcom/android/server/FMRadioService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/FMRadioService$4;->mIsPhoneCallRinging:Z

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "phone state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mNeedToResumeFM: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/server/FMRadioService;->-get19()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mIsPhoneCallRinging : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/FMRadioService$4;->mIsPhoneCallRinging:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mNeedResumeToFreq : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/FMRadioService$4;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v3}, Lcom/android/server/FMRadioService;->-get18(Lcom/android/server/FMRadioService;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mIsForcestop : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/FMRadioService$4;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v3}, Lcom/android/server/FMRadioService;->-get10(Lcom/android/server/FMRadioService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-static {}, Lcom/android/server/FMRadioService;->-get19()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/FMRadioService$4;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v2}, Lcom/android/server/FMRadioService;->isOn()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/FMRadioService$4;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2}, Lcom/android/server/FMRadioService;->-get18(Lcom/android/server/FMRadioService;)J

    move-result-wide v2

    const-wide/16 v4, -0x2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/FMRadioService$4;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2}, Lcom/android/server/FMRadioService;->-get10(Lcom/android/server/FMRadioService;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/FMRadioService$4;->mIsPhoneCallRinging:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/FMRadioService$4;->this$0:Lcom/android/server/FMRadioService;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/FMRadioService;->-wrap1(Lcom/android/server/FMRadioService;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/FMRadioService$4;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2}, Lcom/android/server/FMRadioService;->-get4(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioManager;->semGetRadioOutputPath()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCallStateChanged() :: CALL_STATE_IDLE setPath() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/FMRadioService$4;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2}, Lcom/android/server/FMRadioService;->-get4(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->semSetRadioOutputPath(I)Z

    invoke-static {}, Lcom/android/server/FMRadioService;->-get16()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/FMRadioService$4;->this$0:Lcom/android/server/FMRadioService;

    iget-object v3, p0, Lcom/android/server/FMRadioService$4;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v3}, Lcom/android/server/FMRadioService;->-get4(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    int-to-long v4, v3

    invoke-static {v2, v4, v5}, Lcom/android/server/FMRadioService;->-set13(Lcom/android/server/FMRadioService;J)J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "slowly increase the volume till :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/FMRadioService$4;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v3}, Lcom/android/server/FMRadioService;->-get23(Lcom/android/server/FMRadioService;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/FMRadioService$4;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2}, Lcom/android/server/FMRadioService;->-get23(Lcom/android/server/FMRadioService;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/FMRadioService$4;->this$0:Lcom/android/server/FMRadioService;

    iget-object v3, p0, Lcom/android/server/FMRadioService$4;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v3}, Lcom/android/server/FMRadioService;->-get23(Lcom/android/server/FMRadioService;)J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/android/server/FMRadioService;->-set4(Lcom/android/server/FMRadioService;J)J

    sget-boolean v2, Lcom/android/server/FMRadioServiceFeature;->FEATURE_USE_CHIPSET_VOLUME:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/FMRadioService$4;->this$0:Lcom/android/server/FMRadioService;

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v4, v5}, Lcom/android/server/FMRadioService;->setVolume(J)V

    iget-object v2, p0, Lcom/android/server/FMRadioService$4;->this$0:Lcom/android/server/FMRadioService;

    iget-object v2, v2, Lcom/android/server/FMRadioService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xc8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/server/FMRadioService$4;->this$0:Lcom/android/server/FMRadioService;

    iget-object v2, v2, Lcom/android/server/FMRadioService;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x64

    const/16 v3, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_1
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/server/FMRadioService;->-set8(Z)Z

    :goto_2
    iget-object v2, p0, Lcom/android/server/FMRadioService$4;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2}, Lcom/android/server/FMRadioService;->-get18(Lcom/android/server/FMRadioService;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/FMRadioService$4;->this$0:Lcom/android/server/FMRadioService;

    const-wide/32 v4, 0x155cc

    invoke-static {v2, v4, v5}, Lcom/android/server/FMRadioService;->-set10(Lcom/android/server/FMRadioService;J)J

    :cond_0
    iget-object v2, p0, Lcom/android/server/FMRadioService$4;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2}, Lcom/android/server/FMRadioService;->-get20(Lcom/android/server/FMRadioService;)Lcom/android/server/FMPlayerNativeBase;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/FMRadioService$4;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v3}, Lcom/android/server/FMRadioService;->-get18(Lcom/android/server/FMRadioService;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/android/server/FMPlayerNativeBase;->tune(J)V

    iget-object v2, p0, Lcom/android/server/FMRadioService$4;->this$0:Lcom/android/server/FMRadioService;

    iget-object v3, p0, Lcom/android/server/FMRadioService$4;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v3}, Lcom/android/server/FMRadioService;->-get18(Lcom/android/server/FMRadioService;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x7

    invoke-virtual {v2, v4, v3}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.app.fm.auto.on"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v2, "freq"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/FMRadioService$4;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v4}, Lcom/android/server/FMRadioService;->-get18(Lcom/android/server/FMRadioService;)J

    move-result-wide v4

    long-to-float v4, v4

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/FMRadioService$4;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2}, Lcom/android/server/FMRadioService;->-get7(Lcom/android/server/FMRadioService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/android/server/FMRadioService$4;->this$0:Lcom/android/server/FMRadioService;

    const-wide/16 v4, -0x2

    invoke-static {v2, v4, v5}, Lcom/android/server/FMRadioService;->-set10(Lcom/android/server/FMRadioService;J)J

    :cond_1
    :goto_3
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/server/FMRadioService;->-set11(Z)Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/FMRadioService$4;->mIsPhoneCallRinging:Z

    goto/16 :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/server/FMRadioService$4;->this$0:Lcom/android/server/FMRadioService;

    iget-object v3, p0, Lcom/android/server/FMRadioService$4;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v3}, Lcom/android/server/FMRadioService;->-get23(Lcom/android/server/FMRadioService;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/android/server/FMRadioService;->setVolume(J)V

    goto/16 :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/server/FMRadioService$4;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2}, Lcom/android/server/FMRadioService;->-get4(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/FMRadioService$4;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v4}, Lcom/android/server/FMRadioService;->-get23(Lcom/android/server/FMRadioService;)J

    move-result-wide v4

    long-to-int v4, v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto/16 :goto_1

    :cond_4
    iget-object v2, p0, Lcom/android/server/FMRadioService$4;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2}, Lcom/android/server/FMRadioService;->-get4(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/FMRadioService$4;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v4}, Lcom/android/server/FMRadioService;->-get4(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto/16 :goto_2

    :cond_5
    const-string/jumbo v2, "Not able to resume FM player"

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/FMRadioService$4;->mIsPhoneCallRinging:Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
