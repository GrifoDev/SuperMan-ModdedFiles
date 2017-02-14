.class public Lcom/samsung/android/knox/tima/iccc/SemIntegrityControlCheckCenterServiceManager;
.super Ljava/lang/Object;
.source "SemIntegrityControlCheckCenterServiceManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemIntegrityControlCheckCenterServiceManager"

.field public static final TYPE_BOOT_LOADER_AFW_VALUE:I = -0xffff5

.field public static final TYPE_BOOT_LOADER_CACHE_IMAGE_STATUS:I = -0xfffef

.field public static final TYPE_BOOT_LOADER_CHECK_SKIP_ROLLBACK_PREVENTION:I = -0xffffd

.field public static final TYPE_BOOT_LOADER_CURRENT_BINARY_STATUS:I = -0xffff6

.field public static final TYPE_BOOT_LOADER_FACTORY_RESET_PROTECTION_LOCK_STATUS:I = -0xffff9

.field public static final TYPE_BOOT_LOADER_FLASH_CUSTOM_BINARY_ALLOWED:I = -0xffff8

.field public static final TYPE_BOOT_LOADER_FLASH_CUSTOM_KERNEL_ALLOWED:I = -0xffffa

.field public static final TYPE_BOOT_LOADER_IMAGE_STATUS:I = -0xffff2

.field public static final TYPE_BOOT_LOADER_KERNEL_ROLLBACK_PREVENTION_VERSION:I = -0xfffff

.field public static final TYPE_BOOT_LOADER_KNOX_ACTIVE_PROTECTION_STATUS:I = -0xffff3

.field public static final TYPE_BOOT_LOADER_MDM_RECOVERY_ALLOWED:I = -0xffff7

.field public static final TYPE_BOOT_LOADER_REACTIVATION_LOCK_STATUS:I = -0xffffb

.field public static final TYPE_BOOT_LOADER_RECOVERY_IMAGE_STATUS:I = -0xffff1

.field public static final TYPE_BOOT_LOADER_ROLLBACK_PREVENTION_VERSION:I = -0x100000

.field public static final TYPE_BOOT_LOADER_SECURE_BOOT_STATUS:I = -0xffffc

.field public static final TYPE_BOOT_LOADER_SYSTEM_IMAGE_STATUS:I = -0xffff0

.field public static final TYPE_BOOT_LOADER_SYSTEM_ROLLBACK_PREVENTION_VERSION:I = -0xffffe

.field public static final TYPE_BOOT_LOADER_WARRANTY_BIT:I = -0xffff4

.field public static final TYPE_IMAGE_RESERVED_1:I = -0xfffee

.field public static final TYPE_IMAGE_RESERVED_2:I = -0xfffed

.field public static final TYPE_KERNEL_PARAMETERS_DEVICE_MAPPER_VERITY_STATUS:I = -0xf00000

.field public static final TYPE_SYSTEM_PARAMETERS_SYSTEM_SECURITY_DIAGNOSIS_STATUS:I = -0xe00000

.field public static final TYPE_SYSTEM_PARAMETERS_TRUST_BOOT_STATUS:I = -0xdfffff

.field public static final TYPE_TIMA_VERSION:I = -0xdffffe

.field public static final TYPE_TRUST_APPLICATION_PERIODIC_KERNEL_MONITORING_READONLY:I = -0xffffff

.field public static final TYPE_TRUST_APPLICATION_PERIODIC_KERNEL_MONITORING_TEXT:I = -0x1000000

.field public static final TYPE_TRUST_APPLICATION_SECURITY_ENABLED_LINUX_STATUS:I = -0xfffffe


# instance fields
.field private mIcccService:Lcom/samsung/android/iccc/IIntegrityControlCheckCenter;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "SemIntegrityControlCheckCenterServiceManager"

    const-string/jumbo v1, "SemIntegrityControlCheckCenterServiceManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "iccc"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/iccc/IIntegrityControlCheckCenter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/iccc/IIntegrityControlCheckCenter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/tima/iccc/SemIntegrityControlCheckCenterServiceManager;->mIcccService:Lcom/samsung/android/iccc/IIntegrityControlCheckCenter;

    iget-object v0, p0, Lcom/samsung/android/knox/tima/iccc/SemIntegrityControlCheckCenterServiceManager;->mIcccService:Lcom/samsung/android/iccc/IIntegrityControlCheckCenter;

    if-nez v0, :cond_0

    const-string/jumbo v0, "SemIntegrityControlCheckCenterServiceManager"

    const-string/jumbo v1, "failed to get Iccc Service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public getSecureData(I)I
    .locals 6

    const/4 v5, -0x1

    const-string/jumbo v2, "SemIntegrityControlCheckCenterServiceManager"

    const-string/jumbo v3, "getSecureData"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/knox/tima/iccc/SemIntegrityControlCheckCenterServiceManager;->mIcccService:Lcom/samsung/android/iccc/IIntegrityControlCheckCenter;

    if-nez v2, :cond_0

    const-string/jumbo v2, "SemIntegrityControlCheckCenterServiceManager"

    const-string/jumbo v3, "failed to get Iccc Service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/tima/iccc/SemIntegrityControlCheckCenterServiceManager;->mIcccService:Lcom/samsung/android/iccc/IIntegrityControlCheckCenter;

    invoke-interface {v2, p1}, Lcom/samsung/android/iccc/IIntegrityControlCheckCenter;->getSecureData(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v1

    const-string/jumbo v2, "SemIntegrityControlCheckCenterServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :catch_1
    move-exception v0

    const-string/jumbo v2, "SemIntegrityControlCheckCenterServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RemoteException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5
.end method
