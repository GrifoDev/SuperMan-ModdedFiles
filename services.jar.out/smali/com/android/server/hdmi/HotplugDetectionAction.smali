.class final Lcom/android/server/hdmi/HotplugDetectionAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "HotplugDetectionAction.java"


# static fields
.field private static final AVR_COUNT_MAX:I = 0x3

.field private static final NUM_OF_ADDRESS:I = 0xf

.field private static final POLLING_INTERVAL_MS:I = 0x1388

.field private static final STATE_WAIT_FOR_NEXT_POLLING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "HotPlugDetectionAction"

.field private static final TIMEOUT_COUNT:I = 0x3


# instance fields
.field private mAvrStatusCount:I

.field private mTimeoutCount:I


# direct methods
.method static synthetic -wrap0(Lcom/android/server/hdmi/HotplugDetectionAction;Ljava/util/List;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/hdmi/HotplugDetectionAction;->checkHotplug(Ljava/util/List;Z)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    iput v0, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mTimeoutCount:I

    iput v0, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mAvrStatusCount:I

    return-void
.end method

.method private addDevice(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/hdmi/HotplugDetectionAction;->getSourceAddress()I

    move-result v0

    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGivePhysicalAddress(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HotplugDetectionAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    return-void
.end method

.method private static addressListToBitSet(Ljava/util/List;)Ljava/util/BitSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/BitSet;"
        }
    .end annotation

    new-instance v0, Ljava/util/BitSet;

    const/16 v3, 0xf

    invoke-direct {v0, v3}, Ljava/util/BitSet;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private checkHotplug(Ljava/util/List;Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    const/4 v11, 0x5

    const/4 v10, 0x0

    const/4 v9, -0x1

    invoke-virtual {p0}, Lcom/android/server/hdmi/HotplugDetectionAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getDeviceInfoList(Z)Ljava/util/List;

    move-result-object v6

    invoke-static {v6, p2}, Lcom/android/server/hdmi/HotplugDetectionAction;->infoListToBitSet(Ljava/util/List;Z)Ljava/util/BitSet;

    move-result-object v2

    invoke-static {p1}, Lcom/android/server/hdmi/HotplugDetectionAction;->addressListToBitSet(Ljava/util/List;)Ljava/util/BitSet;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/hdmi/HotplugDetectionAction;->complement(Ljava/util/BitSet;Ljava/util/BitSet;)Ljava/util/BitSet;

    move-result-object v5

    const/4 v3, -0x1

    :cond_0
    :goto_0
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v3

    if-eq v3, v9, :cond_2

    if-ne v3, v11, :cond_1

    invoke-virtual {p0}, Lcom/android/server/hdmi/HotplugDetectionAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/hdmi/HotplugDetectionAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v6

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isConnected(I)Z

    move-result v6

    if-eqz v6, :cond_1

    iget v6, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mAvrStatusCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mAvrStatusCount:I

    const-string/jumbo v6, "HotPlugDetectionAction"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Ack not returned from AVR. count: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mAvrStatusCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mAvrStatusCount:I

    const/4 v7, 0x3

    if-lt v6, v7, :cond_0

    :cond_1
    const-string/jumbo v6, "HotPlugDetectionAction"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Remove device by hot-plug detection:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v3}, Lcom/android/server/hdmi/HotplugDetectionAction;->removeDevice(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v5, v11}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-nez v6, :cond_3

    iput v10, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mAvrStatusCount:I

    :cond_3
    invoke-static {v4, v2}, Lcom/android/server/hdmi/HotplugDetectionAction;->complement(Ljava/util/BitSet;Ljava/util/BitSet;)Ljava/util/BitSet;

    move-result-object v0

    const/4 v3, -0x1

    :goto_1
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v3

    if-eq v3, v9, :cond_4

    const-string/jumbo v6, "HotPlugDetectionAction"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Add device by hot-plug detection:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v3}, Lcom/android/server/hdmi/HotplugDetectionAction;->addDevice(I)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method private static complement(Ljava/util/BitSet;Ljava/util/BitSet;)Ljava/util/BitSet;
    .locals 1

    invoke-virtual {p0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    return-object v0
.end method

.method private static infoListToBitSet(Ljava/util/List;Z)Ljava/util/BitSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;Z)",
            "Ljava/util/BitSet;"
        }
    .end annotation

    new-instance v2, Ljava/util/BitSet;

    const/16 v3, 0xf

    invoke-direct {v2, v3}, Ljava/util/BitSet;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDeviceType()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method private mayCancelDeviceSelect(I)V
    .locals 3

    const-class v2, Lcom/android/server/hdmi/DeviceSelectAction;

    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HotplugDetectionAction;->getActions(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/DeviceSelectAction;

    invoke-virtual {v0}, Lcom/android/server/hdmi/DeviceSelectAction;->getTargetAddress()I

    move-result v2

    if-ne v2, p1, :cond_1

    const-class v2, Lcom/android/server/hdmi/DeviceSelectAction;

    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HotplugDetectionAction;->removeAction(Ljava/lang/Class;)V

    :cond_1
    return-void
.end method

.method private mayCancelOneTouchRecord(I)V
    .locals 4

    const-class v3, Lcom/android/server/hdmi/OneTouchRecordAction;

    invoke-virtual {p0, v3}, Lcom/android/server/hdmi/HotplugDetectionAction;->getActions(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/OneTouchRecordAction;

    invoke-virtual {v0}, Lcom/android/server/hdmi/OneTouchRecordAction;->getRecorderAddress()I

    move-result v3

    if-ne v3, p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HotplugDetectionAction;->removeAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private mayChangeRoutingPath(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/hdmi/HotplugDetectionAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/hdmi/HotplugDetectionAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v1

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->handleRemoveActiveRoutingPath(I)V

    :cond_0
    return-void
.end method

.method private mayDisableSystemAudioAndARC(I)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->getTypeFromAddress(I)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HotplugDetectionAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setSystemAudioMode(ZZ)V

    invoke-virtual {p0}, Lcom/android/server/hdmi/HotplugDetectionAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isArcEstablished()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/hdmi/HotplugDetectionAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setAudioReturnChannel(Z)V

    new-instance v0, Lcom/android/server/hdmi/RequestArcTerminationAction;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HotplugDetectionAction;->localDevice()Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/server/hdmi/RequestArcTerminationAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HotplugDetectionAction;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    :cond_1
    return-void
.end method

.method private pollAllDevices()V
    .locals 3

    const-string/jumbo v0, "HotPlugDetectionAction"

    const-string/jumbo v1, "Poll all devices."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/hdmi/HotplugDetectionAction$1;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HotplugDetectionAction$1;-><init>(Lcom/android/server/hdmi/HotplugDetectionAction;)V

    const v1, 0x10001

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/hdmi/HotplugDetectionAction;->pollDevices(Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;II)V

    return-void
.end method

.method private pollAudioSystem()V
    .locals 3

    const-string/jumbo v0, "HotPlugDetectionAction"

    const-string/jumbo v1, "Poll audio system."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/hdmi/HotplugDetectionAction$2;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HotplugDetectionAction$2;-><init>(Lcom/android/server/hdmi/HotplugDetectionAction;)V

    const v1, 0x10002

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/hdmi/HotplugDetectionAction;->pollDevices(Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;II)V

    return-void
.end method

.method private pollDevices()V
    .locals 2

    iget v0, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mTimeoutCount:I

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/hdmi/HotplugDetectionAction;->pollAllDevices()V

    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mState:I

    const/16 v1, 0x1388

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HotplugDetectionAction;->addTimer(II)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HotplugDetectionAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isSystemAudioActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/hdmi/HotplugDetectionAction;->pollAudioSystem()V

    goto :goto_0
.end method

.method private removeDevice(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HotplugDetectionAction;->mayChangeRoutingPath(I)V

    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HotplugDetectionAction;->mayCancelDeviceSelect(I)V

    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HotplugDetectionAction;->mayCancelOneTouchRecord(I)V

    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HotplugDetectionAction;->mayDisableSystemAudioAndARC(I)V

    invoke-virtual {p0}, Lcom/android/server/hdmi/HotplugDetectionAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeCecDevice(I)V

    return-void
.end method


# virtual methods
.method handleTimerEvent(I)V
    .locals 2

    iget v0, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mState:I

    if-eq v0, p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mTimeoutCount:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mTimeoutCount:I

    invoke-direct {p0}, Lcom/android/server/hdmi/HotplugDetectionAction;->pollDevices()V

    :cond_1
    return-void
.end method

.method pollAllDevicesNow()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    invoke-interface {v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;->clearTimerMessage()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mTimeoutCount:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mState:I

    invoke-direct {p0}, Lcom/android/server/hdmi/HotplugDetectionAction;->pollAllDevices()V

    iget v0, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mState:I

    const/16 v1, 0x1388

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HotplugDetectionAction;->addTimer(II)V

    return-void
.end method

.method processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method start()Z
    .locals 3

    const/4 v2, 0x1

    const-string/jumbo v0, "HotPlugDetectionAction"

    const-string/jumbo v1, "Hot-plug dection started."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mState:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mTimeoutCount:I

    iget v0, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mState:I

    const/16 v1, 0x1388

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HotplugDetectionAction;->addTimer(II)V

    return v2
.end method
