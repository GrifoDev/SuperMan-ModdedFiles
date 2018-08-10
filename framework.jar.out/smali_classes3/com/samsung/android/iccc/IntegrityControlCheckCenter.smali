.class public Lcom/samsung/android/iccc/IntegrityControlCheckCenter;
.super Ljava/lang/Object;
.source "IntegrityControlCheckCenter.java"


# static fields
.field public static final COMPONENT_TYPE_HARD_INTEGRITY:I = 0x1

.field public static final COMPONENT_TYPE_SOFT_INTEGRITY:I = 0x2

.field public static final FLAG_ABOOT_RP_VER:I = -0x100000

.field public static final FLAG_AFW_STATUS:I = -0xffff5

.field public static final FLAG_BOOT_IMAGE:I = -0xffff2

.field public static final FLAG_CACHE_IMAGE:I = -0xfffef

.field public static final FLAG_CC_MODE:I = -0xffff8

.field public static final FLAG_CURRENT_BIN_STATUS:I = -0xffff6

.field public static final FLAG_DMV_STATUS:I = -0xf00000

.field public static final FLAG_FRP_LOCK:I = -0xffff9

.field public static final FLAG_KAP_STATUS:I = -0xffff3

.field public static final FLAG_KERNEL_RP_VER:I = -0xfffff

.field public static final FLAG_KIWI_LOCK:I = -0xffffa

.field public static final FLAG_MDM_MODE:I = -0xffff7

.field public static final FLAG_PKM_RO:I = -0xffffff

.field public static final FLAG_PKM_TEXT:I = -0x1000000

.field public static final FLAG_REACT_LOCK:I = -0xffffb

.field public static final FLAG_RECOVERY_IMAGE:I = -0xffff1

.field public static final FLAG_RESERVE_IMAGE1:I = -0xfffee

.field public static final FLAG_RESERVE_IMAGE2:I = -0xfffed

.field public static final FLAG_SEC_BOOT:I = -0xffffc

.field public static final FLAG_SELINUX_STATUS:I = -0xfffffe

.field public static final FLAG_SYSSCOPE_STATUS:I = -0xe00000

.field public static final FLAG_SYSTEM_IMAGE:I = -0xffff0

.field public static final FLAG_SYSTEM_RP_VER:I = -0xffffe

.field public static final FLAG_TEST_BIT:I = -0xffffd

.field public static final FLAG_TIMA_VERSION:I = -0xdffffe

.field public static final FLAG_TRUSTBOOT_STATUS:I = -0xdfffff

.field public static final FLAG_WB_STATUS:I = -0xffff4


# instance fields
.field mService:Lcom/samsung/android/iccc/IIntegrityControlCheckCenter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/iccc/IIntegrityControlCheckCenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/iccc/IntegrityControlCheckCenter;->mService:Lcom/samsung/android/iccc/IIntegrityControlCheckCenter;

    return-void
.end method


# virtual methods
.method public declared-synchronized getDeviceStatus(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_0
    const-string/jumbo v1, "ICCC"

    const-string/jumbo v2, "Method getDeviceStatus in IntegrityControlCheckCenter Class"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/iccc/IntegrityControlCheckCenter;->mService:Lcom/samsung/android/iccc/IIntegrityControlCheckCenter;

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/iccc/IntegrityControlCheckCenter;->mService:Lcom/samsung/android/iccc/IIntegrityControlCheckCenter;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/samsung/android/iccc/IIntegrityControlCheckCenter;->getDeviceStatus(I[B)[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_0
    monitor-exit p0

    return-object v3

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getSecureData(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "ICCC"

    const-string/jumbo v1, "Method getSecureData in IntegrityControlCheckCenter Class"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/iccc/IntegrityControlCheckCenter;->mService:Lcom/samsung/android/iccc/IIntegrityControlCheckCenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/iccc/IntegrityControlCheckCenter;->mService:Lcom/samsung/android/iccc/IIntegrityControlCheckCenter;

    invoke-interface {v0, p1}, Lcom/samsung/android/iccc/IIntegrityControlCheckCenter;->getSecureData(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTrustedBootData()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "ICCC"

    const-string/jumbo v1, "Method getTrustedBootData in IntegrityControlCheckCenter Class"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/iccc/IntegrityControlCheckCenter;->mService:Lcom/samsung/android/iccc/IIntegrityControlCheckCenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/iccc/IntegrityControlCheckCenter;->mService:Lcom/samsung/android/iccc/IIntegrityControlCheckCenter;

    invoke-interface {v0}, Lcom/samsung/android/iccc/IIntegrityControlCheckCenter;->getTrustedBootData()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSecureData(II)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "ICCC"

    const-string/jumbo v1, "Method setSecureData in IntegrityControlCheckCenter Class"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/iccc/IntegrityControlCheckCenter;->mService:Lcom/samsung/android/iccc/IIntegrityControlCheckCenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/iccc/IntegrityControlCheckCenter;->mService:Lcom/samsung/android/iccc/IIntegrityControlCheckCenter;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/iccc/IIntegrityControlCheckCenter;->setSecureData(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
