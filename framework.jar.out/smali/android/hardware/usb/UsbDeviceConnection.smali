.class public Landroid/hardware/usb/UsbDeviceConnection;
.super Ljava/lang/Object;
.source "UsbDeviceConnection.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UsbDeviceConnection"


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private mContext:Landroid/content/Context;

.field private final mDevice:Landroid/hardware/usb/UsbDevice;

.field private mNativeContext:J


# direct methods
.method public constructor <init>(Landroid/hardware/usb/UsbDevice;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/usb/UsbDeviceConnection;->mCloseGuard:Ldalvik/system/CloseGuard;

    iput-object p1, p0, Landroid/hardware/usb/UsbDeviceConnection;->mDevice:Landroid/hardware/usb/UsbDevice;

    return-void
.end method

.method private static checkBounds([BII)V
    .locals 3

    if-eqz p0, :cond_1

    array-length v0, p0

    :goto_0
    if-ltz p2, :cond_0

    if-gez p1, :cond_2

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Buffer start or length out of bounds."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    add-int v1, p1, p2

    if-gt v1, v0, :cond_0

    return-void
.end method

.method private native native_bulk_request(I[BIII)I
.end method

.method private native native_claim_interface(IZ)Z
.end method

.method private native native_close()V
.end method

.method private native native_control_request(IIII[BIII)I
.end method

.method private native native_get_desc()[B
.end method

.method private native native_get_fd()I
.end method

.method private native native_get_serial()Ljava/lang/String;
.end method

.method private native native_open(Ljava/lang/String;Ljava/io/FileDescriptor;)Z
.end method

.method private native native_release_interface(I)Z
.end method

.method private native native_request_wait(J)Landroid/hardware/usb/UsbRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation
.end method

.method private native native_reset_device()Z
.end method

.method private native native_set_configuration(I)Z
.end method

.method private native native_set_interface(II)Z
.end method


# virtual methods
.method public bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BIII)I

    move-result v0

    return v0
.end method

.method public bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BIII)I
    .locals 6

    invoke-static {p2, p3, p4}, Landroid/hardware/usb/UsbDeviceConnection;->checkBounds([BII)V

    invoke-virtual {p1}, Landroid/hardware/usb/UsbEndpoint;->getAddress()I

    move-result v1

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/hardware/usb/UsbDeviceConnection;->native_bulk_request(I[BIII)I

    move-result v0

    return v0
.end method

.method public claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z
    .locals 2

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {v0, p1}, Lcom/samsung/android/knox/SemPersonaManager;->shouldBlockUsbInterface(ILandroid/hardware/usb/UsbInterface;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getId()I

    move-result v1

    invoke-direct {p0, v1, p2}, Landroid/hardware/usb/UsbDeviceConnection;->native_claim_interface(IZ)Z

    move-result v1

    return v1
.end method

.method public close()V
    .locals 4

    iget-wide v0, p0, Landroid/hardware/usb/UsbDeviceConnection;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/hardware/usb/UsbDeviceConnection;->native_close()V

    iget-object v0, p0, Landroid/hardware/usb/UsbDeviceConnection;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    :cond_0
    return-void
.end method

.method public controlTransfer(IIII[BII)I
    .locals 9

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BIII)I

    move-result v0

    return v0
.end method

.method public controlTransfer(IIII[BIII)I
    .locals 1

    invoke-static {p5, p6, p7}, Landroid/hardware/usb/UsbDeviceConnection;->checkBounds([BII)V

    invoke-direct/range {p0 .. p8}, Landroid/hardware/usb/UsbDeviceConnection;->native_control_request(IIII[BIII)I

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/hardware/usb/UsbDeviceConnection;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/hardware/usb/UsbDeviceConnection;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getFileDescriptor()I
    .locals 1

    invoke-direct {p0}, Landroid/hardware/usb/UsbDeviceConnection;->native_get_fd()I

    move-result v0

    return v0
.end method

.method public getRawDescriptors()[B
    .locals 1

    invoke-direct {p0}, Landroid/hardware/usb/UsbDeviceConnection;->native_get_desc()[B

    move-result-object v0

    return-object v0
.end method

.method public getSerial()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Landroid/hardware/usb/UsbDeviceConnection;->native_get_serial()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method open(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/usb/UsbDeviceConnection;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Landroid/hardware/usb/UsbDeviceConnection;->native_open(Ljava/lang/String;Ljava/io/FileDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/hardware/usb/UsbDeviceConnection;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v2, "close"

    invoke-virtual {v1, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public releaseInterface(Landroid/hardware/usb/UsbInterface;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/hardware/usb/UsbDeviceConnection;->native_release_interface(I)Z

    move-result v0

    return v0
.end method

.method public requestWait()Landroid/hardware/usb/UsbRequest;
    .locals 4

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    :try_start_0
    invoke-direct {p0, v2, v3}, Landroid/hardware/usb/UsbDeviceConnection;->native_request_wait(J)Landroid/hardware/usb/UsbRequest;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/hardware/usb/UsbDeviceConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbRequest;->dequeue(Z)V

    :cond_0
    return-object v1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public requestWait(J)Landroid/hardware/usb/UsbRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    const-string/jumbo v1, "timeout"

    invoke-static {p1, p2, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(JLjava/lang/String;)J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Landroid/hardware/usb/UsbDeviceConnection;->native_request_wait(J)Landroid/hardware/usb/UsbRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbRequest;->dequeue(Z)V

    :cond_0
    return-object v0
.end method

.method public resetDevice()Z
    .locals 1

    invoke-direct {p0}, Landroid/hardware/usb/UsbDeviceConnection;->native_reset_device()Z

    move-result v0

    return v0
.end method

.method public setConfiguration(Landroid/hardware/usb/UsbConfiguration;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/hardware/usb/UsbConfiguration;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/hardware/usb/UsbDeviceConnection;->native_set_configuration(I)Z

    move-result v0

    return v0
.end method

.method public setInterface(Landroid/hardware/usb/UsbInterface;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getId()I

    move-result v0

    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getAlternateSetting()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/usb/UsbDeviceConnection;->native_set_interface(II)Z

    move-result v0

    return v0
.end method
