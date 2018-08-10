.class public Lcom/android/server/OemLockService;
.super Lcom/android/server/SystemService;
.source "OemLockService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/OemLockService$1;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mService:Landroid/os/IBinder;


# direct methods
.method static synthetic -get0(Lcom/android/server/OemLockService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/OemLockService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/OemLockService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/OemLockService;->doIsOemUnlockAllowedByCarrier()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/OemLockService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/OemLockService;->doIsOemUnlockAllowedByUser()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/OemLockService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/OemLockService;->enforceManageCarrierOemUnlockPermission()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/OemLockService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/OemLockService;->enforceManageUserOemUnlockPermission()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/OemLockService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/OemLockService;->enforceUserIsAdmin()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/server/OemLockService$1;

    invoke-direct {v0, p0}, Lcom/android/server/OemLockService$1;-><init>(Lcom/android/server/OemLockService;)V

    iput-object v0, p0, Lcom/android/server/OemLockService;->mService:Landroid/os/IBinder;

    iput-object p1, p0, Lcom/android/server/OemLockService;->mContext:Landroid/content/Context;

    return-void
.end method

.method private doIsOemUnlockAllowedByCarrier()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/OemLockService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    const-string/jumbo v1, "no_oem_unlock"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private doIsOemUnlockAllowedByUser()Z
    .locals 5

    iget-object v1, p0, Lcom/android/server/OemLockService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "persistent_data_block"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/persistentdata/PersistentDataBlockManager;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    invoke-virtual {v0}, Landroid/service/persistentdata/PersistentDataBlockManager;->getOemUnlockEnabled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method private enforceManageCarrierOemUnlockPermission()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/OemLockService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.MANAGE_CARRIER_OEM_UNLOCK_STATE"

    const-string/jumbo v2, "Can\'t manage OEM unlock allowed by carrier"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enforceManageUserOemUnlockPermission()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/OemLockService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.MANAGE_USER_OEM_UNLOCK_STATE"

    const-string/jumbo v2, "Can\'t manage OEM unlock allowed by user"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enforceUserIsAdmin()V
    .locals 5

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/OemLockService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/UserManager;->isUserAdmin(I)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/SecurityException;

    const-string/jumbo v4, "Must be an admin user"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 2

    const-string/jumbo v0, "oem_lock"

    iget-object v1, p0, Lcom/android/server/OemLockService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/OemLockService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
