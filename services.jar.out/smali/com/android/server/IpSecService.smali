.class public Lcom/android/server/IpSecService;
.super Landroid/net/IIpSecService$Stub;
.source "IpSecService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/IpSecService$ManagedResource;,
        Lcom/android/server/IpSecService$SpiRecord;,
        Lcom/android/server/IpSecService$TransformRecord;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final DIRECTIONS:[I

.field private static final NETD_FETCH_TIMEOUT:I = 0x1388

.field private static final NETD_SERVICE_NAME:Ljava/lang/String; = "netd"

.field private static final TAG:Ljava/lang/String; = "IpSecService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mLock:Ljava/lang/Object;

.field private mNextResourceId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mSpiRecords:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSpiRecords"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/IpSecService$SpiRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTransformRecords:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mTransformRecords"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/IpSecService$TransformRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()[I
    .locals 1

    sget-object v0, Lcom/android/server/IpSecService;->DIRECTIONS:[I

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/IpSecService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/IpSecService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "IpSecService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/IpSecService;->DBG:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/IpSecService;->DIRECTIONS:[I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Landroid/net/IIpSecService$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/IpSecService;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const v1, 0xfaded0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/IpSecService;->mNextResourceId:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/IpSecService;->mSpiRecords:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/IpSecService;->mTransformRecords:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/server/IpSecService;->mContext:Landroid/content/Context;

    return-void
.end method

.method private connectNativeNetdService()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/IpSecService$1;

    invoke-direct {v1, p0}, Lcom/android/server/IpSecService$1;-><init>(Lcom/android/server/IpSecService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->run()V

    return-void
.end method

.method static create(Landroid/content/Context;)Lcom/android/server/IpSecService;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/IpSecService;

    invoke-direct {v0, p0}, Lcom/android/server/IpSecService;-><init>(Landroid/content/Context;)V

    invoke-direct {v0}, Lcom/android/server/IpSecService;->connectNativeNetdService()V

    return-object v0
.end method


# virtual methods
.method public applyTransportModeTransform(Landroid/os/ParcelFileDescriptor;I)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v12, p0, Lcom/android/server/IpSecService;->mTransformRecords:Landroid/util/SparseArray;

    monitor-enter v12

    :try_start_0
    iget-object v1, p0, Lcom/android/server/IpSecService;->mTransformRecords:Landroid/util/SparseArray;

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/IpSecService$TransformRecord;

    if-nez v10, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Transform "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not active"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v12

    throw v1

    :cond_0
    :try_start_1
    iget v1, v10, Lcom/android/server/IpSecService$TransformRecord;->pid:I

    invoke-static {}, Lcom/android/server/IpSecService;->getCallingPid()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget v1, v10, Lcom/android/server/IpSecService$TransformRecord;->uid:I

    invoke-static {}, Lcom/android/server/IpSecService;->getCallingUid()I

    move-result v2

    if-eq v1, v2, :cond_2

    :cond_1
    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "Only the owner of an IpSec Transform may apply it!"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-virtual {v10}, Lcom/android/server/IpSecService$TransformRecord;->getConfig()Landroid/net/IpSecConfig;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    :try_start_2
    sget-object v13, Lcom/android/server/IpSecService;->DIRECTIONS:[I

    const/4 v1, 0x0

    array-length v14, v13

    move v11, v1

    :goto_0
    if-ge v11, v14, :cond_5

    aget v4, v13, v11

    invoke-virtual {p0}, Lcom/android/server/IpSecService;->getNetdInstance()Landroid/net/INetd;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v8}, Landroid/net/IpSecConfig;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v8}, Landroid/net/IpSecConfig;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v8}, Landroid/net/IpSecConfig;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v8}, Landroid/net/IpSecConfig;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    :goto_2
    invoke-virtual {v8, v4}, Landroid/net/IpSecConfig;->getSpi(I)I

    move-result v7

    move/from16 v3, p2

    invoke-interface/range {v1 .. v7}, Landroid/net/INetd;->ipSecApplyTransportModeTransform(Ljava/io/FileDescriptor;IILjava/lang/String;Ljava/lang/String;I)V

    add-int/lit8 v1, v11, 0x1

    move v11, v1

    goto :goto_0

    :cond_3
    const-string/jumbo v5, ""

    goto :goto_1

    :cond_4
    const-string/jumbo v6, ""
    :try_end_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v9

    :cond_5
    monitor-exit v12

    return-void
.end method

.method public closeUdpEncapsulationSocket(Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    return-void
.end method

.method public createTransportModeTransform(Landroid/net/IpSecConfig;Landroid/os/IBinder;)Landroid/os/Bundle;
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/IpSecService;->mNextResourceId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v5

    sget-object v28, Lcom/android/server/IpSecService;->DIRECTIONS:[I

    const/4 v4, 0x0

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v27, v4

    :goto_0
    move/from16 v0, v27

    move/from16 v1, v29

    if-ge v0, v1, :cond_a

    aget v7, v28, v27

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/net/IpSecConfig;->getAuthentication(I)Landroid/net/IpSecAlgorithm;

    move-result-object v22

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/net/IpSecConfig;->getEncryption(I)Landroid/net/IpSecAlgorithm;

    move-result-object v23

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/IpSecService;->getNetdInstance()Landroid/net/INetd;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getMode()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getNetwork()Landroid/net/Network;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getNetwork()Landroid/net/Network;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide v10

    :goto_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/net/IpSecConfig;->getSpi(I)I

    move-result v12

    if-eqz v22, :cond_3

    invoke-virtual/range {v22 .. v22}, Landroid/net/IpSecAlgorithm;->getName()Ljava/lang/String;

    move-result-object v13

    :goto_4
    if-eqz v22, :cond_4

    invoke-virtual/range {v22 .. v22}, Landroid/net/IpSecAlgorithm;->getKey()[B

    move-result-object v14

    :goto_5
    if-eqz v22, :cond_5

    invoke-virtual/range {v22 .. v22}, Landroid/net/IpSecAlgorithm;->getTruncationLengthBits()I

    move-result v15

    :goto_6
    if-eqz v23, :cond_6

    invoke-virtual/range {v23 .. v23}, Landroid/net/IpSecAlgorithm;->getName()Ljava/lang/String;

    move-result-object v16

    :goto_7
    if-eqz v23, :cond_7

    invoke-virtual/range {v23 .. v23}, Landroid/net/IpSecAlgorithm;->getKey()[B

    move-result-object v17

    :goto_8
    if-eqz v23, :cond_8

    invoke-virtual/range {v23 .. v23}, Landroid/net/IpSecAlgorithm;->getTruncationLengthBits()I

    move-result v18

    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getEncapType()I

    move-result v19

    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getEncapLocalPort()I

    move-result v20

    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getEncapRemotePort()I

    move-result v21

    invoke-interface/range {v4 .. v21}, Landroid/net/INetd;->ipSecAddSecurityAssociation(IIILjava/lang/String;Ljava/lang/String;JILjava/lang/String;[BILjava/lang/String;[BIIII)I

    move-result v25

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/net/IpSecConfig;->getSpi(I)I

    move-result v4

    move/from16 v0, v25

    if-eq v0, v4, :cond_9

    new-instance v26, Landroid/os/Bundle;

    const/4 v4, 0x2

    move-object/from16 v0, v26

    invoke-direct {v0, v4}, Landroid/os/Bundle;-><init>(I)V

    const-string/jumbo v4, "status"

    const/4 v6, 0x2

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v4, "resourceId"

    const/4 v6, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v26

    :cond_0
    const-string/jumbo v8, ""

    goto :goto_1

    :cond_1
    const-string/jumbo v9, ""

    goto :goto_2

    :cond_2
    const-wide/16 v10, 0x0

    goto :goto_3

    :cond_3
    const-string/jumbo v13, ""

    goto :goto_4

    :cond_4
    const/4 v14, 0x0

    goto :goto_5

    :cond_5
    const/4 v15, 0x0

    goto :goto_6

    :cond_6
    const-string/jumbo v16, ""
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :cond_7
    const/16 v17, 0x0

    goto :goto_8

    :cond_8
    const/16 v18, 0x0

    goto :goto_9

    :catch_0
    move-exception v24

    :cond_9
    add-int/lit8 v4, v27, 0x1

    move/from16 v27, v4

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/IpSecService;->mTransformRecords:Landroid/util/SparseArray;

    monitor-enter v6

    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/IpSecService;->mTransformRecords:Landroid/util/SparseArray;

    new-instance v8, Lcom/android/server/IpSecService$TransformRecord;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v8, v0, v1, v5, v2}, Lcom/android/server/IpSecService$TransformRecord;-><init>(Lcom/android/server/IpSecService;Landroid/net/IpSecConfig;ILandroid/os/IBinder;)V

    invoke-virtual {v4, v5, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v6

    new-instance v26, Landroid/os/Bundle;

    const/4 v4, 0x2

    move-object/from16 v0, v26

    invoke-direct {v0, v4}, Landroid/os/Bundle;-><init>(I)V

    const-string/jumbo v4, "status"

    const/4 v6, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v4, "resourceId"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v26

    :catchall_0
    move-exception v4

    monitor-exit v6

    throw v4
.end method

.method public deleteTransportModeTransform(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v2, p0, Lcom/android/server/IpSecService;->mTransformRecords:Landroid/util/SparseArray;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/IpSecService;->mTransformRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/IpSecService$TransformRecord;

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Transform "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is not available to be deleted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_0
    :try_start_1
    iget v1, v0, Lcom/android/server/IpSecService$TransformRecord;->pid:I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, v0, Lcom/android/server/IpSecService$TransformRecord;->uid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    if-eq v1, v3, :cond_2

    :cond_1
    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v3, "Only the owner of an IpSec Transform may delete it!"

    invoke-direct {v1, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-virtual {v0}, Lcom/android/server/IpSecService$TransformRecord;->releaseResources()V

    iget-object v1, p0, Lcom/android/server/IpSecService;->mTransformRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {v0}, Lcom/android/server/IpSecService$TransformRecord;->nullifyRecord()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/IpSecService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.DUMP"

    const-string/jumbo v2, "IpSecService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "IpSecService Log:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "NetdNativeService Connection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/IpSecService;->isNetdAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "alive"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void

    :cond_0
    const-string/jumbo v0, "dead"

    goto :goto_0
.end method

.method getNetdInstance()Landroid/net/INetd;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/net/util/NetdService;->getInstance()Landroid/net/INetd;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Landroid/os/RemoteException;

    const-string/jumbo v2, "Failed to Get Netd Instance"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-object v0
.end method

.method isNetdAlive()Z
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/IpSecService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/IpSecService;->getNetdInstance()Landroid/net/INetd;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_0

    monitor-exit v3

    return v2

    :cond_0
    :try_start_1
    invoke-interface {v0}, Landroid/net/INetd;->isAlive()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    monitor-exit v3

    return v2

    :catch_0
    move-exception v1

    monitor-exit v3

    return v2

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public openUdpEncapsulationSocket(ILandroid/os/IBinder;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public releaseSecurityParameterIndex(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public removeTransportModeTransform(Landroid/os/ParcelFileDescriptor;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/IpSecService;->getNetdInstance()Landroid/net/INetd;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/net/INetd;->ipSecRemoveTransportModeTransform(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public reserveSecurityParameterIndex(ILjava/lang/String;ILandroid/os/IBinder;)Landroid/os/Bundle;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/IpSecService;->mNextResourceId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    const/4 v10, 0x0

    const-string/jumbo v3, ""

    new-instance v14, Landroid/os/Bundle;

    const/4 v0, 0x3

    invoke-direct {v14, v0}, Landroid/os/Bundle;-><init>(I)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/IpSecService;->getNetdInstance()Landroid/net/INetd;

    move-result-object v0

    move/from16 v2, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/net/INetd;->ipSecAllocateSpi(IILjava/lang/String;Ljava/lang/String;I)I

    move-result v10

    const-string/jumbo v0, "IpSecService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Allocated SPI "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "status"

    const/4 v2, 0x0

    invoke-virtual {v14, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "resourceId"

    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "spi"

    invoke-virtual {v14, v0, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/android/server/IpSecService;->mSpiRecords:Landroid/util/SparseArray;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lcom/android/server/IpSecService;->mSpiRecords:Landroid/util/SparseArray;

    new-instance v4, Lcom/android/server/IpSecService$SpiRecord;

    move-object v5, p0

    move v6, v1

    move/from16 v7, p1

    move-object v8, v3

    move-object/from16 v9, p2

    move-object/from16 v11, p4

    invoke-direct/range {v4 .. v11}, Lcom/android/server/IpSecService$SpiRecord;-><init>(Lcom/android/server/IpSecService;IILjava/lang/String;Ljava/lang/String;ILandroid/os/IBinder;)V

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2

    :goto_0
    return-object v14

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
    :try_end_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_0
    move-exception v13

    const-string/jumbo v0, "status"

    const/4 v2, 0x2

    invoke-virtual {v14, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "resourceId"

    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "spi"

    invoke-virtual {v14, v0, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :catch_1
    move-exception v12

    invoke-virtual {v12}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public systemReady()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/IpSecService;->isNetdAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "IpSecService"

    const-string/jumbo v1, "IpSecService is ready"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "IpSecService"

    const-string/jumbo v1, "IpSecService not ready: failed to connect to NetD Native Service!"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
