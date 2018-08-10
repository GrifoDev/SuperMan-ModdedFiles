.class final Lcom/android/server/hdmi/SystemAudioStatusAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "SystemAudioStatusAction.java"


# static fields
.field private static final STATE_WAIT_FOR_REPORT_AUDIO_STATUS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SystemAudioStatusAction"


# instance fields
.field private final mAvrAddress:I

.field private final mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/hdmi/SystemAudioStatusAction;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/hdmi/SystemAudioStatusAction;->handleSendGiveAudioStatusFailure()V

    return-void
.end method

.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    iput p2, p0, Lcom/android/server/hdmi/SystemAudioStatusAction;->mAvrAddress:I

    iput-object p3, p0, Lcom/android/server/hdmi/SystemAudioStatusAction;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    return-void
.end method

.method private finishWithCallback(I)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/hdmi/SystemAudioStatusAction;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/hdmi/SystemAudioStatusAction;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    invoke-interface {v1, p1}, Landroid/hardware/hdmi/IHdmiControlCallback;->onComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioStatusAction;->finish()V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SystemAudioStatusAction"

    const-string/jumbo v2, "Failed to invoke callback."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private handleReportAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v1

    aget-byte v3, v1, v5

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_1

    const/4 v0, 0x1

    :goto_0
    aget-byte v3, v1, v5

    and-int/lit8 v2, v3, 0x7f

    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioStatusAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setAudioStatus(ZI)V

    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioStatusAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isSystemAudioActivated()Z

    move-result v3

    xor-int/2addr v3, v0

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/server/hdmi/SystemAudioStatusAction;->mAvrAddress:I

    const/16 v4, 0x43

    invoke-virtual {p0, v3, v4}, Lcom/android/server/hdmi/SystemAudioStatusAction;->sendUserControlPressedAndReleased(II)V

    :cond_0
    invoke-direct {p0, v5}, Lcom/android/server/hdmi/SystemAudioStatusAction;->finishWithCallback(I)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleSendGiveAudioStatusFailure()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioStatusAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setAudioStatus(ZI)V

    iget v0, p0, Lcom/android/server/hdmi/SystemAudioStatusAction;->mAvrAddress:I

    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioStatusAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isSystemAudioActivated()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecKeycode;->getMuteKey(Z)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/SystemAudioStatusAction;->sendUserControlPressedAndReleased(II)V

    invoke-direct {p0, v2}, Lcom/android/server/hdmi/SystemAudioStatusAction;->finishWithCallback(I)V

    return-void
.end method

.method private sendGiveAudioStatus()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioStatusAction;->getSourceAddress()I

    move-result v0

    iget v1, p0, Lcom/android/server/hdmi/SystemAudioStatusAction;->mAvrAddress:I

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGiveAudioStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    new-instance v1, Lcom/android/server/hdmi/SystemAudioStatusAction$1;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/SystemAudioStatusAction$1;-><init>(Lcom/android/server/hdmi/SystemAudioStatusAction;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/SystemAudioStatusAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    return-void
.end method


# virtual methods
.method handleTimerEvent(I)V
    .locals 1

    iget v0, p0, Lcom/android/server/hdmi/SystemAudioStatusAction;->mState:I

    if-eq v0, p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/hdmi/SystemAudioStatusAction;->handleSendGiveAudioStatusFailure()V

    return-void
.end method

.method processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/server/hdmi/SystemAudioStatusAction;->mState:I

    if-ne v0, v3, :cond_0

    iget v0, p0, Lcom/android/server/hdmi/SystemAudioStatusAction;->mAvrAddress:I

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    return v2

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    return v2

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/SystemAudioStatusAction;->handleReportAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)V

    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x7a
        :pswitch_0
    .end packed-switch
.end method

.method start()Z
    .locals 3

    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/hdmi/SystemAudioStatusAction;->mState:I

    iget v0, p0, Lcom/android/server/hdmi/SystemAudioStatusAction;->mState:I

    const/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/SystemAudioStatusAction;->addTimer(II)V

    invoke-direct {p0}, Lcom/android/server/hdmi/SystemAudioStatusAction;->sendGiveAudioStatus()V

    return v2
.end method
