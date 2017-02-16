.class Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;
.super Ljava/lang/Object;
.source "CameraDeviceUserShim.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/legacy/CameraDeviceUserShim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CameraLooper"
.end annotation


# instance fields
.field private final mCamera:Landroid/hardware/Camera;

.field private final mCameraId:I

.field private volatile mInitErrors:I

.field private mLooper:Landroid/os/Looper;

.field private final mStartDone:Landroid/os/ConditionVariable;

.field private final mThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "cameraId"    # I

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    invoke-static {}, Landroid/hardware/Camera;->openUninitialized()Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->mCamera:Landroid/hardware/Camera;

    .line 114
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->mStartDone:Landroid/os/ConditionVariable;

    .line 127
    iput p1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->mCameraId:I

    .line 129
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->mThread:Ljava/lang/Thread;

    .line 130
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 126
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 155
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->mLooper:Landroid/os/Looper;

    if-nez v1, :cond_0

    .line 156
    return-void

    .line 159
    :cond_0
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->mLooper:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->quitSafely()V

    .line 161
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    iput-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->mLooper:Landroid/os/Looper;

    .line 154
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public getCamera()Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 140
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 144
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->mLooper:Landroid/os/Looper;

    .line 145
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->mCamera:Landroid/hardware/Camera;

    iget v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->mCameraId:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->cameraInitUnspecified(I)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->mInitErrors:I

    .line 146
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->mStartDone:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 147
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 138
    return-void
.end method

.method public waitForOpen(I)I
    .locals 4
    .param p1, "timeoutMs"    # I

    .prologue
    .line 180
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->mStartDone:Landroid/os/ConditionVariable;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 181
    const-string/jumbo v1, "CameraDeviceUserShim"

    const-string/jumbo v2, "waitForOpen - Camera failed to open after timeout of 5000 ms"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :goto_0
    new-instance v1, Landroid/os/ServiceSpecificException;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Landroid/os/ServiceSpecificException;-><init>(I)V

    throw v1

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v1, "CameraDeviceUserShim"

    const-string/jumbo v2, "connectBinderShim - Failed to release camera after timeout "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 192
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_0
    iget v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->mInitErrors:I

    return v1
.end method
