.class public Lcom/samsung/android/virtualspace/SemVirtualSpaceManager;
.super Ljava/lang/Object;
.source "SemVirtualSpaceManager.java"


# static fields
.field public static final DEBUG:Z

.field public static final ENABLED:Z = false

.field static final TAG:Ljava/lang/String; = "SemVirtualSpace"

.field public static final VIRTUALSPACE_ENABLED:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mService:Lcom/samsung/android/virtualspace/IVSManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/samsung/android/virtualspace/SemVirtualSpaceManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "virtualspace"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/virtualspace/IVSManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/virtualspace/IVSManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceManager;->mService:Lcom/samsung/android/virtualspace/IVSManagerService;

    sget-boolean v0, Lcom/samsung/android/virtualspace/SemVirtualSpaceManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SemVirtualSpace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SemVirtualSpaceManager() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceManager;->mService:Lcom/samsung/android/virtualspace/IVSManagerService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceManager;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public connect()Lcom/samsung/android/virtualspace/SemVirtualSpaceSession;
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v2, "SemVirtualSpace"

    const-string/jumbo v3, "connect()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceManager;->mService:Lcom/samsung/android/virtualspace/IVSManagerService;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceManager;->mService:Lcom/samsung/android/virtualspace/IVSManagerService;

    iget-object v3, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/android/virtualspace/IVSManagerService;->connect(Landroid/os/IBinder;)Lcom/samsung/android/virtualspace/IVSSession;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/samsung/android/virtualspace/SemVirtualSpaceSession;

    invoke-direct {v2, v1}, Lcom/samsung/android/virtualspace/SemVirtualSpaceSession;-><init>(Lcom/samsung/android/virtualspace/IVSSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SemVirtualSpace"

    const-string/jumbo v3, "Call failed with"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-object v4
.end method

.method public getVersion()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceManager;->mService:Lcom/samsung/android/virtualspace/IVSManagerService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceManager;->mService:Lcom/samsung/android/virtualspace/IVSManagerService;

    invoke-interface {v1}, Lcom/samsung/android/virtualspace/IVSManagerService;->getVersion()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SemVirtualSpace"

    const-string/jumbo v2, "Call failed with"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-object v3
.end method
