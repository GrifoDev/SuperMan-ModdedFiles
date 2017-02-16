.class Landroid/app/VRSurfaceManager;
.super Ljava/lang/Object;
.source "VRSurfaceManager.java"


# static fields
.field private static mService:Lcom/samsung/android/vr/IGearVrManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Landroid/app/VRSurfaceManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    .line 12
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static enforceCallingPermission(Ljava/lang/String;)V
    .locals 4
    .param p0, "method"    # Ljava/lang/String;

    .prologue
    .line 98
    :try_start_0
    invoke-static {}, Landroid/app/VRSurfaceManager;->getService()Lcom/samsung/android/vr/IGearVrManagerService;

    move-result-object v1

    .line 99
    .local v1, "svc":Lcom/samsung/android/vr/IGearVrManagerService;
    if-eqz v1, :cond_0

    .line 100
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-interface {v1, v2, v3, p0}, Lcom/samsung/android/vr/IGearVrManagerService;->enforceCallingPermission(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :cond_0
    return-void

    .line 102
    .end local v1    # "svc":Lcom/samsung/android/vr/IGearVrManagerService;
    :catch_0
    move-exception v0

    .line 103
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static getClientBufferAddress(I)I
    .locals 3
    .param p0, "surface"    # I

    .prologue
    .line 53
    const/4 v0, -0x1

    .line 54
    .local v0, "result":I
    const-string/jumbo v1, "VRSurfaceManager"

    const-string/jumbo v2, "VRSurfaceManager: get ClientBuffer Address"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const-string/jumbo v1, "getClientBufferAddress"

    invoke-static {v1}, Landroid/app/VRSurfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    .line 56
    invoke-static {p0}, Landroid/app/VRSurfaceManager;->get_client_buffer_address(I)I

    move-result v0

    .line 57
    return v0
.end method

.method private static getClientBufferAddress64(J)J
    .locals 4
    .param p0, "surface"    # J

    .prologue
    .line 87
    const-wide/16 v0, -0x1

    .line 88
    .local v0, "result":J
    const-string/jumbo v2, "VRSurfaceManager"

    const-string/jumbo v3, "VRSurfaceManager: get ClientBuffer Address"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const-string/jumbo v2, "getClientBufferAddress"

    invoke-static {v2}, Landroid/app/VRSurfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    .line 90
    invoke-static {p0, p1}, Landroid/app/VRSurfaceManager;->get_client_buffer_address_64(J)J

    move-result-wide v0

    .line 91
    return-wide v0
.end method

.method private static getFrontBufferAddress(I)I
    .locals 3
    .param p0, "surface"    # I

    .prologue
    .line 36
    const/4 v0, -0x1

    .line 37
    .local v0, "result":I
    const-string/jumbo v1, "VRSurfaceManager"

    const-string/jumbo v2, "VRSurfaceManager: get FrontBuffer Address"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const-string/jumbo v1, "getFrontBufferAddress"

    invoke-static {v1}, Landroid/app/VRSurfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    .line 39
    invoke-static {p0}, Landroid/app/VRSurfaceManager;->get_front_buffer_address(I)I

    move-result v0

    .line 40
    return v0
.end method

.method private static getFrontBufferAddress64(J)J
    .locals 4
    .param p0, "surface"    # J

    .prologue
    .line 70
    const-wide/16 v0, -0x1

    .line 71
    .local v0, "result":J
    const-string/jumbo v2, "VRSurfaceManager"

    const-string/jumbo v3, "VRSurfaceManager: get FrontBuffer Address"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const-string/jumbo v2, "getFrontBufferAddress"

    invoke-static {v2}, Landroid/app/VRSurfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    .line 73
    invoke-static {p0, p1}, Landroid/app/VRSurfaceManager;->get_front_buffer_address_64(J)J

    move-result-wide v0

    .line 74
    return-wide v0
.end method

.method private static declared-synchronized getService()Lcom/samsung/android/vr/IGearVrManagerService;
    .locals 3

    .prologue
    const-class v1, Landroid/app/VRSurfaceManager;

    monitor-enter v1

    .line 16
    :try_start_0
    sget-object v0, Landroid/app/VRSurfaceManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    if-nez v0, :cond_0

    .line 17
    const-string/jumbo v0, "vr"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/vr/IGearVrManagerService;

    move-result-object v0

    sput-object v0, Landroid/app/VRSurfaceManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    .line 18
    sget-object v0, Landroid/app/VRSurfaceManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    if-nez v0, :cond_0

    .line 19
    const-string/jumbo v0, "VRSurfaceManager"

    const-string/jumbo v2, "warning: no VR_MANAGER_SERVICE"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :cond_0
    sget-object v0, Landroid/app/VRSurfaceManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getSurfaceBufferAddress(I[II)I
    .locals 3
    .param p0, "surface"    # I
    .param p1, "attribs"    # [I
    .param p2, "pitch"    # I

    .prologue
    .line 44
    const/4 v0, -0x1

    .line 45
    .local v0, "result":I
    const-string/jumbo v1, "VRSurfaceManager"

    const-string/jumbo v2, "VRSurfaceManager: get SurfaceBuffer Address "

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const-string/jumbo v1, "getSurfaceBufferAddress"

    invoke-static {v1}, Landroid/app/VRSurfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    .line 47
    invoke-static {p0, p1, p2}, Landroid/app/VRSurfaceManager;->get_surface_buffer_address(I[II)I

    move-result v0

    .line 49
    return v0
.end method

.method private static getSurfaceBufferAddress64(J[JJ)J
    .locals 4
    .param p0, "surface"    # J
    .param p2, "attribs"    # [J
    .param p3, "pitch"    # J

    .prologue
    .line 78
    const-wide/16 v0, -0x1

    .line 79
    .local v0, "result":J
    const-string/jumbo v2, "VRSurfaceManager"

    const-string/jumbo v3, "VRSurfaceManager: get SurfaceBuffer Address "

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const-string/jumbo v2, "getSurfaceBufferAddress"

    invoke-static {v2}, Landroid/app/VRSurfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    .line 81
    invoke-static {p0, p1, p2, p3, p4}, Landroid/app/VRSurfaceManager;->get_surface_buffer_address_64(J[JJ)J

    move-result-wide v0

    .line 83
    return-wide v0
.end method

.method private static native get_client_buffer_address(I)I
.end method

.method private static native get_client_buffer_address_64(J)J
.end method

.method private static native get_front_buffer_address(I)I
.end method

.method private static native get_front_buffer_address_64(J)J
.end method

.method private static native get_surface_buffer_address(I[II)I
.end method

.method private static native get_surface_buffer_address_64(J[JJ)J
.end method

.method private static setFrontBuffer(IZ)V
    .locals 2
    .param p0, "surface"    # I
    .param p1, "set"    # Z

    .prologue
    .line 30
    const-string/jumbo v0, "VRSurfaceManager"

    const-string/jumbo v1, "VRSurfaceManager : setFrontBuffer"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    const-string/jumbo v0, "setFrontBuffer"

    invoke-static {v0}, Landroid/app/VRSurfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    .line 32
    invoke-static {p0, p1}, Landroid/app/VRSurfaceManager;->set_front_buffer(IZ)V

    .line 29
    return-void
.end method

.method private static setFrontBuffer64(JZ)V
    .locals 2
    .param p0, "surface"    # J
    .param p2, "set"    # Z

    .prologue
    .line 64
    const-string/jumbo v0, "VRSurfaceManager"

    const-string/jumbo v1, "VRSurfaceManager : setFrontBuffer"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const-string/jumbo v0, "setFrontBuffer"

    invoke-static {v0}, Landroid/app/VRSurfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    .line 66
    invoke-static {p0, p1, p2}, Landroid/app/VRSurfaceManager;->set_front_buffer_64(JZ)V

    .line 63
    return-void
.end method

.method private static native set_front_buffer(IZ)V
.end method

.method private static native set_front_buffer_64(JZ)V
.end method
