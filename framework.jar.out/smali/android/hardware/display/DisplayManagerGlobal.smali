.class public final Landroid/hardware/display/DisplayManagerGlobal;
.super Ljava/lang/Object;
.source "DisplayManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/DisplayManagerGlobal$DeviceListenerDelegate;,
        Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;,
        Landroid/hardware/display/DisplayManagerGlobal$DisplayManagerCallback;,
        Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeKeyListenerDelegate;,
        Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeListenerDelegate;,
        Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;,
        Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallbackDelegate;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final EVENT_CONNECTIONSTATUS_CHANGED:I = 0x4

.field public static final EVENT_DISPLAY_ADDED:I = 0x1

.field public static final EVENT_DISPLAY_CHANGED:I = 0x2

.field public static final EVENT_DISPLAY_REMOVED:I = 0x3

.field public static final EVENT_REMOTE_DISPLAY_STATE_CHANGED:I = 0x5

.field public static final EVENT_VOLUME_KEY_DOWN:I = 0xa

.field public static final EVENT_VOLUME_KEY_UP:I = 0xb

.field public static final EVENT_VOLUME_LEVEL_CHANGED:I = 0x9

.field public static final EVENT_VOLUME_MUTE:I = 0xc

.field public static final EVENT_VOLUME_UNMUTE:I = 0xd

.field private static final TAG:Ljava/lang/String; = "DisplayManager"

.field private static final USE_CACHE:Z

.field private static sInstance:Landroid/hardware/display/DisplayManagerGlobal;


# instance fields
.field private mCallback:Landroid/hardware/display/DisplayManagerGlobal$DisplayManagerCallback;

.field private final mDeviceListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/display/DisplayManagerGlobal$DeviceListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayIdCache:[I

.field private final mDisplayInfoCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/DisplayInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayVolumeKeyListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeKeyListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayVolumeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mDm:Landroid/hardware/display/IDisplayManager;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method static synthetic -wrap0(Landroid/hardware/display/DisplayManagerGlobal;Landroid/os/Bundle;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->handleDeviceEvent(Landroid/os/Bundle;I)V

    return-void
.end method

.method static synthetic -wrap1(Landroid/hardware/display/DisplayManagerGlobal;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->handleDisplayEvent(II)V

    return-void
.end method

.method static synthetic -wrap2(Landroid/hardware/display/DisplayManagerGlobal;ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->handleDisplayVolumeEvent(ILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic -wrap3(Landroid/hardware/display/DisplayManagerGlobal;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->handleDisplayVolumeKeyEvent(I)V

    return-void
.end method

.method private constructor <init>(Landroid/hardware/display/IDisplayManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeKeyListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDeviceListeners:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayInfoCache:Landroid/util/SparseArray;

    iput-object p1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    return-void
.end method

.method private findDeviceListnerLocked(Landroid/hardware/display/SemDeviceStatusListener;)I
    .locals 3

    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDeviceListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManagerGlobal$DeviceListenerDelegate;

    iget-object v2, v2, Landroid/hardware/display/DisplayManagerGlobal$DeviceListenerDelegate;->mListener:Landroid/hardware/display/SemDeviceStatusListener;

    if-ne v2, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method private findDisplayListenerLocked(Landroid/hardware/display/DisplayManager$DisplayListener;)I
    .locals 3

    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;

    iget-object v2, v2, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    if-ne v2, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method private findDisplayVolumeKeyListnerLocked(Landroid/hardware/display/SemDisplayVolumeKeyListener;)I
    .locals 5

    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeKeyListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeKeyListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string/jumbo v2, "DisplayManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "findDisplayVolumeKeyListnerLocked numListeners: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeKeyListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeKeyListenerDelegate;

    iget-object v2, v2, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeKeyListenerDelegate;->mListener:Landroid/hardware/display/SemDisplayVolumeKeyListener;

    if-ne v2, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method private findDisplayVolumeListnerLocked(Landroid/hardware/display/SemDisplayVolumeListener;)I
    .locals 5

    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string/jumbo v2, "DisplayManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "findDisplayVolumeListnerLocked numListeners: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeListenerDelegate;

    iget-object v2, v2, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeListenerDelegate;->mListener:Landroid/hardware/display/SemDisplayVolumeListener;

    if-ne v2, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method public static getInstance()Landroid/hardware/display/DisplayManagerGlobal;
    .locals 4

    const-class v2, Landroid/hardware/display/DisplayManagerGlobal;

    monitor-enter v2

    :try_start_0
    sget-object v1, Landroid/hardware/display/DisplayManagerGlobal;->sInstance:Landroid/hardware/display/DisplayManagerGlobal;

    if-nez v1, :cond_0

    const-string/jumbo v1, "display"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/hardware/display/DisplayManagerGlobal;

    invoke-static {v0}, Landroid/hardware/display/IDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/hardware/display/DisplayManagerGlobal;-><init>(Landroid/hardware/display/IDisplayManager;)V

    sput-object v1, Landroid/hardware/display/DisplayManagerGlobal;->sInstance:Landroid/hardware/display/DisplayManagerGlobal;

    :cond_0
    sget-object v1, Landroid/hardware/display/DisplayManagerGlobal;->sInstance:Landroid/hardware/display/DisplayManagerGlobal;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private handleDeviceEvent(Landroid/os/Bundle;I)V
    .locals 4

    iget-object v3, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDeviceListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManagerGlobal$DeviceListenerDelegate;

    invoke-virtual {v2, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal$DeviceListenerDelegate;->sendDeviceEvent(Landroid/os/Bundle;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private handleDisplayEvent(II)V
    .locals 4

    iget-object v3, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;

    invoke-virtual {v2, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->sendDisplayEvent(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private handleDisplayVolumeEvent(ILandroid/os/Bundle;)V
    .locals 4

    iget-object v3, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeListenerDelegate;

    invoke-virtual {v2, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeListenerDelegate;->sendDisplayVolumeEvent(ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private handleDisplayVolumeKeyEvent(I)V
    .locals 4

    iget-object v3, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeKeyListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeKeyListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeKeyListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeKeyListenerDelegate;

    invoke-virtual {v2, p1}, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeKeyListenerDelegate;->sendDisplayVolumeKeyEvent(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private registerCallbackIfNeededLocked()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mCallback:Landroid/hardware/display/DisplayManagerGlobal$DisplayManagerCallback;

    if-nez v1, :cond_0

    new-instance v1, Landroid/hardware/display/DisplayManagerGlobal$DisplayManagerCallback;

    invoke-direct {v1, p0, v2}, Landroid/hardware/display/DisplayManagerGlobal$DisplayManagerCallback;-><init>(Landroid/hardware/display/DisplayManagerGlobal;Landroid/hardware/display/DisplayManagerGlobal$DisplayManagerCallback;)V

    iput-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mCallback:Landroid/hardware/display/DisplayManagerGlobal$DisplayManagerCallback;

    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mCallback:Landroid/hardware/display/DisplayManagerGlobal$DisplayManagerCallback;

    invoke-interface {v1, v2}, Landroid/hardware/display/IDisplayManager;->registerCallback(Landroid/hardware/display/IDisplayManagerCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public connectDevice(Landroid/hardware/display/SemDeviceInfo;)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1, p1}, Landroid/hardware/display/IDisplayManager;->connectDevice(Landroid/hardware/display/SemDeviceInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public connectWifiDisplay(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "deviceAddress must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1, p1}, Landroid/hardware/display/IDisplayManager;->connectWifiDisplay(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public createVirtualDisplay(Landroid/content/Context;Landroid/media/projection/MediaProjection;Ljava/lang/String;IIILandroid/view/Surface;ILandroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;Ljava/lang/String;)Landroid/hardware/display/VirtualDisplay;
    .locals 16

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "name must be non-null and non-empty"

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    if-lez p4, :cond_1

    if-gtz p5, :cond_2

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "width, height, and densityDpi must be greater than 0"

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    if-lez p6, :cond_1

    new-instance v3, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;

    move-object/from16 v0, p9

    move-object/from16 v1, p10

    invoke-direct {v3, v0, v1}, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;-><init>(Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)V

    if-eqz p2, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/media/projection/MediaProjection;->getProjection()Landroid/media/projection/IMediaProjection;

    move-result-object v4

    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v12, p11

    invoke-interface/range {v2 .. v12}, Landroid/hardware/display/IDisplayManager;->createVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;Ljava/lang/String;Ljava/lang/String;IIILandroid/view/Surface;ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    if-gez v14, :cond_4

    const-string/jumbo v2, "DisplayManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Could not create virtual display: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return-object v2

    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    :catch_0
    move-exception v15

    invoke-virtual {v15}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v13

    if-nez v13, :cond_5

    const-string/jumbo v2, "DisplayManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Could not obtain display info for newly created virtual display: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v2, v3}, Landroid/hardware/display/IDisplayManager;->releaseVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v2, 0x0

    return-object v2

    :catch_1
    move-exception v15

    invoke-virtual {v15}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_5
    new-instance v2, Landroid/hardware/display/VirtualDisplay;

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v2, v0, v13, v3, v1}, Landroid/hardware/display/VirtualDisplay;-><init>(Landroid/hardware/display/DisplayManagerGlobal;Landroid/view/Display;Landroid/hardware/display/IVirtualDisplayCallback;Landroid/view/Surface;)V

    return-object v2
.end method

.method public disconnectDevice()V
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1}, Landroid/hardware/display/IDisplayManager;->disconnectDevice()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public disconnectWifiDisplay()V
    .locals 4

    :try_start_0
    const-string/jumbo v1, "DisplayManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "For Debugging : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1}, Landroid/hardware/display/IDisplayManager;->disconnectWifiDisplay()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public fitToActiveDisplay(Z)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1, p1}, Landroid/hardware/display/IDisplayManager;->fitToActiveDisplay(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DisplayManager"

    const-string/jumbo v2, "Failed to fit/unfit to active display"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public forgetWifiDisplay(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "deviceAddress must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1, p1}, Landroid/hardware/display/IDisplayManager;->forgetWifiDisplay(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getActiveDevice()Landroid/hardware/display/SemDeviceInfo;
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1}, Landroid/hardware/display/IDisplayManager;->getActiveDevice()Landroid/hardware/display/SemDeviceInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DisplayManager"

    const-string/jumbo v2, "Failed getActiveDevice "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Landroid/hardware/display/SemDeviceInfo;

    invoke-direct {v1}, Landroid/hardware/display/SemDeviceInfo;-><init>()V

    return-object v1
.end method

.method public getCompatibleDisplay(ILandroid/content/res/Resources;)Landroid/view/Display;
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v1, Landroid/view/Display;

    invoke-direct {v1, p0, p1, v0, p2}, Landroid/view/Display;-><init>(Landroid/hardware/display/DisplayManagerGlobal;ILandroid/view/DisplayInfo;Landroid/content/res/Resources;)V

    return-object v1
.end method

.method public getCompatibleDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v1, Landroid/view/Display;

    invoke-direct {v1, p0, p1, v0, p2}, Landroid/view/Display;-><init>(Landroid/hardware/display/DisplayManagerGlobal;ILandroid/view/DisplayInfo;Landroid/view/DisplayAdjustments;)V

    return-object v1
.end method

.method public getDeviceMaxVolume()I
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1}, Landroid/hardware/display/IDisplayManager;->getDeviceMaxVolume()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DisplayManager"

    const-string/jumbo v2, "Failed getDeviceMaxVolume "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, -0x1

    return v1
.end method

.method public getDeviceMinVolume()I
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1}, Landroid/hardware/display/IDisplayManager;->getDeviceMinVolume()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DisplayManager"

    const-string/jumbo v2, "Failed getDeviceMinVolume "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, -0x1

    return v1
.end method

.method public getDisplayIds()[I
    .locals 4

    :try_start_0
    iget-object v3, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v2}, Landroid/hardware/display/IDisplayManager;->getDisplayIds()[I

    move-result-object v0

    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerGlobal;->registerCallbackIfNeededLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v3

    return-object v0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getDisplayInfo(I)Landroid/view/DisplayInfo;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(IZ)Landroid/view/DisplayInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayInfo(IZ)Landroid/view/DisplayInfo;
    .locals 6

    const/4 v5, 0x0

    :try_start_0
    iget-object v4, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    :try_start_1
    iget-object v3, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v3, p1}, Landroid/hardware/display/IDisplayManager;->getDisplayInfo(I)Landroid/view/DisplayInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    if-nez v2, :cond_0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v5

    :cond_0
    :try_start_3
    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerGlobal;->registerCallbackIfNeededLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v4

    return-object v2

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public getLastConnectedDevice()Landroid/hardware/display/SemDeviceInfo;
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1}, Landroid/hardware/display/IDisplayManager;->getLastConnectedDevice()Landroid/hardware/display/SemDeviceInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DisplayManager"

    const-string/jumbo v2, "Failed getLastConnectedDevice "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Landroid/hardware/display/SemDeviceInfo;

    invoke-direct {v1}, Landroid/hardware/display/SemDeviceInfo;-><init>()V

    return-object v1
.end method

.method public getPresentationOwner(I)Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1, p1}, Landroid/hardware/display/IDisplayManager;->getPresentationOwner(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DisplayManager"

    const-string/jumbo v2, "Fail to get PresentationOwner."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string/jumbo v1, ""

    return-object v1
.end method

.method public getRealDisplay(I)Landroid/view/Display;
    .locals 1

    sget-object v0, Landroid/view/DisplayAdjustments;->DEFAULT_DISPLAY_ADJUSTMENTS:Landroid/view/DisplayAdjustments;

    invoke-virtual {p0, p1, v0}, Landroid/hardware/display/DisplayManagerGlobal;->getCompatibleDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method public getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1}, Landroid/hardware/display/IDisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isConnWithPinSupported(Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1, p1}, Landroid/hardware/display/IDisplayManager;->isConnWithPinSupported(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DisplayManager"

    const-string/jumbo v2, "Failed to get dongle pin supported feature Wifi display"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public isDeviceVolumeMuted()Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1}, Landroid/hardware/display/IDisplayManager;->isDeviceVolumeMuted()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DisplayManager"

    const-string/jumbo v2, "Failed isDeviceVolumeMuted "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public isDongleRenameSupported()Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1}, Landroid/hardware/display/IDisplayManager;->isDongleRenameSupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DisplayManager"

    const-string/jumbo v2, "Failed to get dongle rename feature Wifi display"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public isFitToActiveDisplay()Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1}, Landroid/hardware/display/IDisplayManager;->isFitToActiveDisplay()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DisplayManager"

    const-string/jumbo v2, "Failed to get active display\'s fit status"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public pauseWifiDisplay()V
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1}, Landroid/hardware/display/IDisplayManager;->pauseWifiDisplay()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public registerDeviceListener(Landroid/hardware/display/SemDeviceStatusListener;Landroid/os/Handler;)V
    .locals 4

    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDeviceListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    const-string/jumbo v1, "DisplayManager"

    const-string/jumbo v2, "registerDeviceListener"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "listener must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->findDeviceListnerLocked(Landroid/hardware/display/SemDeviceStatusListener;)I

    move-result v0

    if-gez v0, :cond_1

    const-string/jumbo v1, "DisplayManager"

    const-string/jumbo v3, "registerDeviceListener index < 0"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDeviceListeners:Ljava/util/ArrayList;

    new-instance v3, Landroid/hardware/display/DisplayManagerGlobal$DeviceListenerDelegate;

    invoke-direct {v3, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal$DeviceListenerDelegate;-><init>(Landroid/hardware/display/SemDeviceStatusListener;Landroid/os/Handler;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerGlobal;->registerCallbackIfNeededLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v2

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V
    .locals 4

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "listener must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->findDisplayListenerLocked(Landroid/hardware/display/DisplayManager$DisplayListener;)I

    move-result v0

    if-gez v0, :cond_1

    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayListeners:Ljava/util/ArrayList;

    new-instance v3, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;

    invoke-direct {v3, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;-><init>(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerGlobal;->registerCallbackIfNeededLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public registerDisplayVolumeKeyListener(Landroid/hardware/display/SemDisplayVolumeKeyListener;Landroid/os/Handler;)V
    .locals 4

    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeKeyListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    const-string/jumbo v1, "DisplayManager"

    const-string/jumbo v2, "registerDisplayVolumeKeyListener"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "listener must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->findDisplayVolumeKeyListnerLocked(Landroid/hardware/display/SemDisplayVolumeKeyListener;)I

    move-result v0

    if-gez v0, :cond_1

    const-string/jumbo v1, "DisplayManager"

    const-string/jumbo v3, "registerDisplayVolumeKeyListener index < 0"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeKeyListeners:Ljava/util/ArrayList;

    new-instance v3, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeKeyListenerDelegate;

    invoke-direct {v3, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeKeyListenerDelegate;-><init>(Landroid/hardware/display/SemDisplayVolumeKeyListener;Landroid/os/Handler;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerGlobal;->registerCallbackIfNeededLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v2

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public registerDisplayVolumeListener(Landroid/hardware/display/SemDisplayVolumeListener;Landroid/os/Handler;)V
    .locals 4

    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    const-string/jumbo v1, "DisplayManager"

    const-string/jumbo v2, "registerDisplayVolumeListener"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "listener must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->findDisplayVolumeListnerLocked(Landroid/hardware/display/SemDisplayVolumeListener;)I

    move-result v0

    if-gez v0, :cond_1

    const-string/jumbo v1, "DisplayManager"

    const-string/jumbo v3, "registerDisplayVolumeListener index < 0"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeListeners:Ljava/util/ArrayList;

    new-instance v3, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeListenerDelegate;

    invoke-direct {v3, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeListenerDelegate;-><init>(Landroid/hardware/display/SemDisplayVolumeListener;Landroid/os/Handler;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerGlobal;->registerCallbackIfNeededLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v2

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public releaseVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1, p1}, Landroid/hardware/display/IDisplayManager;->releaseVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public removeLastConnectedDevice()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1}, Landroid/hardware/display/IDisplayManager;->removeLastConnectedDevice()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DisplayManager"

    const-string/jumbo v2, "Failed removeLastConnectedDevice "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public renameDongle(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "deviceName must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1, p1}, Landroid/hardware/display/IDisplayManager;->renameDongle(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DisplayManager"

    const-string/jumbo v2, "Failed to rename dongle"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public renameWifiDisplay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "deviceAddress must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1, p1, p2}, Landroid/hardware/display/IDisplayManager;->renameWifiDisplay(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public requestColorMode(II)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1, p1, p2}, Landroid/hardware/display/IDisplayManager;->requestColorMode(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public resizeVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;III)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/hardware/display/IDisplayManager;->resizeVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public restartWifiDisplay()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1}, Landroid/hardware/display/IDisplayManager;->restartWifiDisplay()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DisplayManager"

    const-string/jumbo v2, "Failed to restart Wifi display."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public resumeWifiDisplay()V
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1}, Landroid/hardware/display/IDisplayManager;->resumeWifiDisplay()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setAppListSupportingDirectStream(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1, p1}, Landroid/hardware/display/IDisplayManager;->setAppListSupportingDirectStream(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DisplayManager"

    const-string/jumbo v2, "Failed setAppListSupportingDirectStream "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setDeviceVolume(I)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1, p1}, Landroid/hardware/display/IDisplayManager;->setDeviceVolume(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DisplayManager"

    const-string/jumbo v2, "Failed setDeviceVolume "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setDeviceVolumeMuted(Z)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1, p1}, Landroid/hardware/display/IDisplayManager;->setDeviceVolumeMuted(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DisplayManager"

    const-string/jumbo v2, "Failed setDeviceVolumeMuted "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setScanningChannel(I)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1, p1}, Landroid/hardware/display/IDisplayManager;->setScanningChannel(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DisplayManager"

    const-string/jumbo v2, "Failed to rename dongle"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setVirtualDisplayFixedOrientation(Landroid/hardware/display/IVirtualDisplayCallback;I)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1, p1, p2}, Landroid/hardware/display/IDisplayManager;->setVirtualDisplayFixedOrientation(Landroid/hardware/display/IVirtualDisplayCallback;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DisplayManager"

    const-string/jumbo v2, "Failed to set the fixedOrientation of virtual display."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setVirtualDisplaySurface(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/view/Surface;)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1, p1, p2}, Landroid/hardware/display/IDisplayManager;->setVirtualDisplaySurface(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/view/Surface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setVolumeKeyEvent(I)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1, p1}, Landroid/hardware/display/IDisplayManager;->setVolumeKeyEvent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DisplayManager"

    const-string/jumbo v2, "Failed setVolumeKeyEvent "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setWifiDisplayRealSize(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1, p1}, Landroid/hardware/display/IDisplayManager;->setWifiDisplayRealSize(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DisplayManager"

    const-string/jumbo v2, "Failed setWifiDisplayRealSize "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startWifiDisplayChannelScan(I)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1, p1}, Landroid/hardware/display/IDisplayManager;->startWifiDisplayChannelScan(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DisplayManager"

    const-string/jumbo v2, "Failed startWifiDisplayChannelScan "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startWifiDisplayScan()V
    .locals 3

    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerGlobal;->registerCallbackIfNeededLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1}, Landroid/hardware/display/IDisplayManager;->startWifiDisplayScan()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public stopWifiDisplayScan()V
    .locals 3

    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1}, Landroid/hardware/display/IDisplayManager;->stopWifiDisplayScan()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public unregisterDeviceListener(Landroid/hardware/display/SemDeviceStatusListener;)V
    .locals 4

    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDeviceListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "listener must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v3, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-direct {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->findDeviceListnerLocked(Landroid/hardware/display/SemDeviceStatusListener;)I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerGlobal$DeviceListenerDelegate;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal$DeviceListenerDelegate;->clearEvents()V

    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v3

    :cond_2
    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V
    .locals 4

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "listener must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v3, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-direct {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->findDisplayListenerLocked(Landroid/hardware/display/DisplayManager$DisplayListener;)I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->clearEvents()V

    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public unregisterDisplayVolumeKeyListener(Landroid/hardware/display/SemDisplayVolumeKeyListener;)V
    .locals 5

    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeKeyListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    const-string/jumbo v2, "DisplayManager"

    const-string/jumbo v3, "unregisterDisplayVolumeKeyListener"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "listener must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v3, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-direct {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->findDisplayVolumeKeyListnerLocked(Landroid/hardware/display/SemDisplayVolumeKeyListener;)I

    move-result v1

    if-ltz v1, :cond_1

    const-string/jumbo v2, "DisplayManager"

    const-string/jumbo v4, "unregisterDisplayVolumeKeyListener index >= 0"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeKeyListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeKeyListenerDelegate;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeKeyListenerDelegate;->clearEvents()V

    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeKeyListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v3

    :cond_2
    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public unregisterDisplayVolumeListener(Landroid/hardware/display/SemDisplayVolumeListener;)V
    .locals 5

    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    const-string/jumbo v2, "DisplayManager"

    const-string/jumbo v3, "unregisterDisplayVolumeListener"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "listener must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v3, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-direct {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->findDisplayVolumeListnerLocked(Landroid/hardware/display/SemDisplayVolumeListener;)I

    move-result v1

    if-ltz v1, :cond_1

    const-string/jumbo v2, "DisplayManager"

    const-string/jumbo v4, "unregisterDisplayVolumeListener index >= 0"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeListenerDelegate;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeListenerDelegate;->clearEvents()V

    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v3

    :cond_2
    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public updateDeviceState(Landroid/hardware/display/SemDeviceInfo;)V
    .locals 4

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    :try_start_0
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v2, p1, v0}, Landroid/hardware/display/IDisplayManager;->updateDeviceState(Landroid/hardware/display/SemDeviceInfo;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "DisplayManager"

    const-string/jumbo v3, "Failed updateDeviceState "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
