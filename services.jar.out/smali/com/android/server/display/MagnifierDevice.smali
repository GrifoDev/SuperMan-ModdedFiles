.class final Lcom/android/server/display/MagnifierDevice;
.super Lcom/android/server/display/DisplayDevice;
.source "MagnifierDevice.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "MagnifierDevice"


# instance fields
.field private mCurrentDisplayId:I

.field private mInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field private mName:Ljava/lang/String;

.field private mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

.field private mSurface:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayAdapter;Landroid/os/IBinder;Landroid/view/Surface;Ljava/lang/String;Lcom/android/server/display/MagnifierDisplayPolicy;I)V
    .locals 2

    const-string/jumbo v0, "MagnifierDevice"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/display/DisplayDevice;-><init>(Lcom/android/server/display/DisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/MagnifierDevice;->mCurrentDisplayId:I

    iput-object p3, p0, Lcom/android/server/display/MagnifierDevice;->mSurface:Landroid/view/Surface;

    iput-object p4, p0, Lcom/android/server/display/MagnifierDevice;->mName:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/display/MagnifierDevice;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    iput p6, p0, Lcom/android/server/display/MagnifierDevice;->mCurrentDisplayId:I

    const-string/jumbo v0, "MagnifierDevice"

    const-string/jumbo v1, "MagnifierDevice init"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/display/MagnifierDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/display/DisplayDeviceInfo;

    invoke-direct {v1}, Lcom/android/server/display/DisplayDeviceInfo;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/MagnifierDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v1, p0, Lcom/android/server/display/MagnifierDevice;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/display/MagnifierDisplayPolicy;->getDefaultDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/MagnifierDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v2, p0, Lcom/android/server/display/MagnifierDevice;->mName:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/display/MagnifierDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iget-object v1, p0, Lcom/android/server/display/MagnifierDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    iget-object v1, p0, Lcom/android/server/display/MagnifierDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, v0, Landroid/view/DisplayInfo;->defaultModeId:I

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->defaultModeId:I

    iget-object v1, p0, Lcom/android/server/display/MagnifierDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, v0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    iget-object v1, p0, Lcom/android/server/display/MagnifierDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, v0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    int-to-float v2, v2

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    iget-object v1, p0, Lcom/android/server/display/MagnifierDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, v0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    int-to-float v2, v2

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    iget-object v1, p0, Lcom/android/server/display/MagnifierDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/16 v2, 0x40

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    iget-object v1, p0, Lcom/android/server/display/MagnifierDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/4 v2, 0x4

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    iget-object v1, p0, Lcom/android/server/display/MagnifierDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    iget-object v1, p0, Lcom/android/server/display/MagnifierDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/display/MagnifierDevice;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/display/MagnifierDisplayPolicy;->checkUpdateDisplayInfo()Z

    iget-object v1, p0, Lcom/android/server/display/MagnifierDevice;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/display/MagnifierDisplayPolicy;->getDefaultDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/MagnifierDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iget-object v1, p0, Lcom/android/server/display/MagnifierDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    iget-object v1, p0, Lcom/android/server/display/MagnifierDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    return-object v1
.end method

.method public hasStableUniqueId()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public performTraversalInTransactionLocked()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/MagnifierDevice;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/MagnifierDevice;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/display/MagnifierDisplayPolicy;->checkUpdateDisplayInfo()Z

    iget-object v0, p0, Lcom/android/server/display/MagnifierDevice;->mSurface:Landroid/view/Surface;

    invoke-virtual {p0, v0}, Lcom/android/server/display/MagnifierDevice;->setSurfaceInTransactionLocked(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/MagnifierDevice;->mSurface:Landroid/view/Surface;

    return-void
.end method
