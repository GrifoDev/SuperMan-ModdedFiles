.class public Lcom/android/server/hdmi/OneTouchRecordAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "OneTouchRecordAction.java"


# static fields
.field private static final RECORD_STATUS_TIMEOUT_MS:I = 0x1d4c0

.field private static final STATE_RECORDING_IN_PROGRESS:I = 0x2

.field private static final STATE_WAITING_FOR_RECORD_STATUS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OneTouchRecordAction"


# instance fields
.field private final mRecordSource:[B

.field private final mRecorderAddress:I


# direct methods
.method static synthetic -get0(Lcom/android/server/hdmi/OneTouchRecordAction;)I
    .locals 1

    iget v0, p0, Lcom/android/server/hdmi/OneTouchRecordAction;->mRecorderAddress:I

    return v0
.end method

.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I[B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    iput p2, p0, Lcom/android/server/hdmi/OneTouchRecordAction;->mRecorderAddress:I

    iput-object p3, p0, Lcom/android/server/hdmi/OneTouchRecordAction;->mRecordSource:[B

    return-void
.end method

.method private handleRecordStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v1

    iget v2, p0, Lcom/android/server/hdmi/OneTouchRecordAction;->mRecorderAddress:I

    if-eq v1, v2, :cond_0

    return v3

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v1

    aget-byte v0, v1, v3

    invoke-virtual {p0}, Lcom/android/server/hdmi/OneTouchRecordAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v1

    iget v2, p0, Lcom/android/server/hdmi/OneTouchRecordAction;->mRecorderAddress:I

    invoke-virtual {v1, v2, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceOneTouchRecordResult(II)V

    const-string/jumbo v1, "OneTouchRecordAction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Got record status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/android/server/hdmi/OneTouchRecordAction;->finish()V

    :goto_0
    const/4 v1, 0x1

    return v1

    :pswitch_0
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/hdmi/OneTouchRecordAction;->mState:I

    iget-object v1, p0, Lcom/android/server/hdmi/OneTouchRecordAction;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    invoke-interface {v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;->clearTimerMessage()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private sendRecordOn()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/hdmi/OneTouchRecordAction;->getSourceAddress()I

    move-result v0

    iget v1, p0, Lcom/android/server/hdmi/OneTouchRecordAction;->mRecorderAddress:I

    iget-object v2, p0, Lcom/android/server/hdmi/OneTouchRecordAction;->mRecordSource:[B

    invoke-static {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildRecordOn(II[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    new-instance v1, Lcom/android/server/hdmi/OneTouchRecordAction$1;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/OneTouchRecordAction$1;-><init>(Lcom/android/server/hdmi/OneTouchRecordAction;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/OneTouchRecordAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/hdmi/OneTouchRecordAction;->mState:I

    iget v0, p0, Lcom/android/server/hdmi/OneTouchRecordAction;->mState:I

    const v1, 0x1d4c0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/OneTouchRecordAction;->addTimer(II)V

    return-void
.end method


# virtual methods
.method getRecorderAddress()I
    .locals 1

    iget v0, p0, Lcom/android/server/hdmi/OneTouchRecordAction;->mRecorderAddress:I

    return v0
.end method

.method handleTimerEvent(I)V
    .locals 3

    iget v0, p0, Lcom/android/server/hdmi/OneTouchRecordAction;->mState:I

    if-eq v0, p1, :cond_0

    const-string/jumbo v0, "OneTouchRecordAction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Timeout in invalid state:[Expected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/hdmi/OneTouchRecordAction;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", Actual:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/OneTouchRecordAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    iget v1, p0, Lcom/android/server/hdmi/OneTouchRecordAction;->mRecorderAddress:I

    const/16 v2, 0x31

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceOneTouchRecordResult(II)V

    invoke-virtual {p0}, Lcom/android/server/hdmi/OneTouchRecordAction;->finish()V

    return-void
.end method

.method processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/server/hdmi/OneTouchRecordAction;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/hdmi/OneTouchRecordAction;->mRecorderAddress:I

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
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/OneTouchRecordAction;->handleRecordStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method start()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/hdmi/OneTouchRecordAction;->sendRecordOn()V

    const/4 v0, 0x1

    return v0
.end method
