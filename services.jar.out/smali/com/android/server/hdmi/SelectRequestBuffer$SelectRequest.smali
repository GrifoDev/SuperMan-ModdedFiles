.class public abstract Lcom/android/server/hdmi/SelectRequestBuffer$SelectRequest;
.super Ljava/lang/Object;
.source "SelectRequestBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/SelectRequestBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SelectRequest"
.end annotation


# instance fields
.field protected final mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

.field protected final mId:I

.field protected final mService:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/SelectRequestBuffer$SelectRequest;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iput p2, p0, Lcom/android/server/hdmi/SelectRequestBuffer$SelectRequest;->mId:I

    iput-object p3, p0, Lcom/android/server/hdmi/SelectRequestBuffer$SelectRequest;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    return-void
.end method

.method private invokeCallback(I)V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/android/server/hdmi/SelectRequestBuffer$SelectRequest;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/hdmi/SelectRequestBuffer$SelectRequest;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    invoke-interface {v1, p1}, Landroid/hardware/hdmi/IHdmiControlCallback;->onComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SelectRequestBuffer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invoking callback failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected isLocalDeviceReady()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/hdmi/SelectRequestBuffer$SelectRequest;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "SelectRequestBuffer"

    const-string/jumbo v1, "Local tv device not available"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/SelectRequestBuffer$SelectRequest;->invokeCallback(I)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public abstract process()V
.end method

.method protected tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
    .locals 1

    iget-object v0, p0, Lcom/android/server/hdmi/SelectRequestBuffer$SelectRequest;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    return-object v0
.end method
