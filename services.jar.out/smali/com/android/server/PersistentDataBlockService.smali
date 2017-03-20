.class public Lcom/android/server/PersistentDataBlockService;
.super Lcom/android/server/SystemService;
.source "PersistentDataBlockService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PersistentDataBlockService$1;
    }
.end annotation


# static fields
.field private static final ANDROID_SYSTEM_UID:I = 0x3e8

.field public static final DIGEST_SIZE_BYTES:I = 0x20

.field private static final FLASH_LOCK_LOCKED:Ljava/lang/String; = "1"

.field private static final FLASH_LOCK_PROP:Ljava/lang/String; = "ro.boot.flash.locked"

.field private static final FLASH_LOCK_UNLOCKED:Ljava/lang/String; = "0"

.field private static final HEADER_SIZE:I = 0x8

.field private static final MAX_DATA_BLOCK_SIZE:I = 0x19000

.field private static final OEM_UNLOCK_PROP:Ljava/lang/String; = "sys.oem_unlock_allowed"

.field private static final PARTITION_TYPE_MARKER:I = 0x19901873

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAllowedUid:I

.field private mBlockDeviceSize:J

.field private final mContext:Landroid/content/Context;

.field private final mDataBlockFile:Ljava/lang/String;

.field private mIsWritable:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mService:Landroid/os/IBinder;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/PersistentDataBlockService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/PersistentDataBlockService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/PersistentDataBlockService;->mIsWritable:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/PersistentDataBlockService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/PersistentDataBlockService;->mIsWritable:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/PersistentDataBlockService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->computeAndWriteDigestLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/PersistentDataBlockService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->doGetOemUnlockEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/PersistentDataBlockService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/PersistentDataBlockService;->enforceUid(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/PersistentDataBlockService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->enforceChecksumValidity()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/PersistentDataBlockService;Ljava/io/DataInputStream;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/PersistentDataBlockService;->getTotalDataSizeLocked(Ljava/io/DataInputStream;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/PersistentDataBlockService;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/PersistentDataBlockService;->nativeWipe(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/android/server/PersistentDataBlockService;)J
    .locals 2

    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->getBlockDeviceSize()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap6(Lcom/android/server/PersistentDataBlockService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/PersistentDataBlockService;->doSetOemUnlockEnabledLocked(Z)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/PersistentDataBlockService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->enforceIsAdmin()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/PersistentDataBlockService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->enforceOemUnlockReadPermission()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/PersistentDataBlockService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->enforceOemUnlockWritePermission()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/PersistentDataBlockService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/PersistentDataBlockService;->mAllowedUid:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/PersistentDataBlockService;->mIsWritable:Z

    new-instance v0, Lcom/android/server/PersistentDataBlockService$1;

    invoke-direct {v0, p0}, Lcom/android/server/PersistentDataBlockService$1;-><init>(Lcom/android/server/PersistentDataBlockService;)V

    iput-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mService:Landroid/os/IBinder;

    iput-object p1, p0, Lcom/android/server/PersistentDataBlockService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "ro.frp.pst"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/PersistentDataBlockService;->mBlockDeviceSize:J

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/PersistentDataBlockService;->getAllowedUid(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/PersistentDataBlockService;->mAllowedUid:I

    return-void
.end method

.method private computeAndWriteDigestLocked()Z
    .locals 8

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-direct {p0, v4}, Lcom/android/server/PersistentDataBlockService;->computeDigestLocked([B)[B

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v3, Ljava/io/DataOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x0

    const/16 v5, 0x20

    :try_start_1
    invoke-virtual {v3, v0, v4, v5}, Ljava/io/DataOutputStream;->write([BII)V

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    const/4 v4, 0x1

    return v4

    :catch_0
    move-exception v1

    sget-object v4, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "partition not available?"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v7

    :catch_1
    move-exception v2

    :try_start_2
    sget-object v4, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "failed to write block checksum"

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return v7

    :catchall_0
    move-exception v4

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v4

    :cond_0
    return v7
.end method

.method private computeDigestLocked([B)[B
    .locals 12

    const/16 v11, 0x20

    const/4 v10, 0x0

    :try_start_0
    new-instance v4, Ljava/io/DataInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string/jumbo v7, "SHA-256"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v5

    if-eqz p1, :cond_0

    :try_start_2
    array-length v7, p1

    if-ne v7, v11, :cond_0

    invoke-virtual {v4, p1}, Ljava/io/DataInputStream;->read([B)I

    :goto_0
    const/16 v7, 0x400

    new-array v0, v7, [B

    const/4 v7, 0x0

    const/16 v8, 0x20

    invoke-virtual {v5, v0, v7, v8}, Ljava/security/MessageDigest;->update([BII)V

    :goto_1
    invoke-virtual {v4, v0}, Ljava/io/DataInputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    const/4 v7, 0x0

    invoke-virtual {v5, v0, v7, v6}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_3
    sget-object v7, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "failed to read partition"

    invoke-static {v7, v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v10

    :catch_1
    move-exception v1

    sget-object v7, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "partition not available?"

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v10

    :catch_2
    move-exception v3

    sget-object v7, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "SHA-256 not supported?"

    invoke-static {v7, v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v10

    :cond_0
    const/16 v7, 0x20

    :try_start_4
    invoke-virtual {v4, v7}, Ljava/io/DataInputStream;->skipBytes(I)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v7

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v7

    :cond_1
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    return-object v7
.end method

.method private doGetOemUnlockEnabled()Z
    .locals 10

    const/4 v4, 0x0

    :try_start_0
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v5, p0, Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->getBlockDeviceSize()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    invoke-virtual {v2, v6, v7}, Ljava/io/DataInputStream;->skip(J)J

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return v3

    :catch_0
    move-exception v0

    sget-object v3, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "partition not available"

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    move v3, v4

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v5

    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_1
    move-exception v1

    :try_start_5
    sget-object v3, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "unable to access persistent partition"

    invoke-static {v3, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return v4

    :catchall_1
    move-exception v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3
.end method

.method private doSetOemUnlockEnabledLocked(Z)V
    .locals 10

    const/4 v5, 0x1

    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->getBlockDeviceSize()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string/jumbo v6, "sys.oem_unlock_allowed"

    if-eqz p1, :cond_1

    const-string/jumbo v5, "1"

    :goto_1
    invoke-static {v6, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :catch_0
    move-exception v2

    sget-object v5, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "partition not available"

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    const-string/jumbo v5, "0"

    goto :goto_1

    :catch_1
    move-exception v3

    :try_start_2
    sget-object v5, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "unable to access persistent partition"

    invoke-static {v5, v6, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string/jumbo v6, "sys.oem_unlock_allowed"

    if-eqz p1, :cond_2

    const-string/jumbo v5, "1"

    :goto_2
    invoke-static {v6, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :cond_2
    const-string/jumbo v5, "0"

    goto :goto_2

    :catchall_0
    move-exception v5

    const-string/jumbo v7, "sys.oem_unlock_allowed"

    if-eqz p1, :cond_3

    const-string/jumbo v6, "1"

    :goto_3
    invoke-static {v7, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v5

    :cond_3
    const-string/jumbo v6, "0"

    goto :goto_3
.end method

.method private enforceChecksumValidity()Z
    .locals 6

    const/4 v5, 0x0

    const/16 v2, 0x20

    new-array v1, v2, [B

    iget-object v3, p0, Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/server/PersistentDataBlockService;->computeDigestLocked([B)[B

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit v3

    const/4 v2, 0x1

    return v2

    :cond_0
    :try_start_1
    sget-object v2, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Formatting FRP partition..."

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/PersistentDataBlockService;->formatPartitionLocked(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    return v5

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private enforceIsAdmin()V
    .locals 4

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/PersistentDataBlockService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/UserManager;->isUserAdmin(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "Only the Admin user is allowed to change OEM unlock state"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    return-void
.end method

.method private enforceOemUnlockReadPermission()V
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.READ_OEM_UNLOCK_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.OEM_UNLOCK_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Can\'t access OEM unlock state. Requires READ_OEM_UNLOCK_STATE or OEM_UNLOCK_STATE permission."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private enforceOemUnlockWritePermission()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.OEM_UNLOCK_STATE"

    const-string/jumbo v2, "Can\'t modify OEM unlock state"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enforceUid(I)V
    .locals 3

    iget v0, p0, Lcom/android/server/PersistentDataBlockService;->mAllowedUid:I

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not allowed to access PST"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private formatIfOemUnlockEnabled()V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->doGetOemUnlockEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/PersistentDataBlockService;->formatPartitionLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    :cond_0
    const-string/jumbo v2, "sys.oem_unlock_allowed"

    if-eqz v0, :cond_1

    const-string/jumbo v1, "1"

    :goto_0
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    :cond_1
    const-string/jumbo v1, "0"

    goto :goto_0
.end method

.method private formatPartitionLocked(Z)V
    .locals 8

    const/16 v7, 0x20

    :try_start_0
    new-instance v3, Ljava/io/DataOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    new-array v0, v7, [B

    const/4 v4, 0x0

    const/16 v5, 0x20

    :try_start_1
    invoke-virtual {v3, v0, v4, v5}, Ljava/io/DataOutputStream;->write([BII)V

    const v4, 0x19901873

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-direct {p0, p1}, Lcom/android/server/PersistentDataBlockService;->doSetOemUnlockEnabledLocked(Z)V

    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->computeAndWriteDigestLocked()Z

    return-void

    :catch_0
    move-exception v1

    sget-object v4, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "partition not available?"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catch_1
    move-exception v2

    :try_start_2
    sget-object v4, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "failed to format block"

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :catchall_0
    move-exception v4

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v4
.end method

.method private getAllowedUid(I)I
    .locals 7

    iget-object v4, p0, Lcom/android/server/PersistentDataBlockService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040068

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/PersistentDataBlockService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v1, -0x1

    const/high16 v4, 0x100000

    :try_start_0
    invoke-virtual {v3, v0, v4, p1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v2

    sget-object v4, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "not able to find package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getBlockDeviceSize()J
    .locals 6

    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/android/server/PersistentDataBlockService;->mBlockDeviceSize:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/PersistentDataBlockService;->nativeGetBlockDeviceSize(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/PersistentDataBlockService;->mBlockDeviceSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    iget-wide v0, p0, Lcom/android/server/PersistentDataBlockService;->mBlockDeviceSize:J

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getTotalDataSizeLocked(Ljava/io/DataInputStream;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Ljava/io/DataInputStream;->skipBytes(I)I

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    const v2, 0x19901873

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private native nativeGetBlockDeviceSize(Ljava/lang/String;)J
.end method

.method private native nativeWipe(Ljava/lang/String;)I
.end method


# virtual methods
.method public onStart()V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->enforceChecksumValidity()Z

    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->formatIfOemUnlockEnabled()V

    const-string/jumbo v0, "persistent_data_block"

    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/PersistentDataBlockService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
