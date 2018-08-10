.class public Landroid/os/storage/StorageManager;
.super Ljava/lang/Object;
.source "StorageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/storage/StorageManager$ObbActionListener;,
        Landroid/os/storage/StorageManager$ObbListenerDelegate;,
        Landroid/os/storage/StorageManager$StorageEventListenerDelegate;
    }
.end annotation


# static fields
.field public static final ACTION_MANAGE_STORAGE:Ljava/lang/String; = "android.os.storage.action.MANAGE_STORAGE"

.field public static final CRYPT_TYPE_DEFAULT:I = 0x1

.field public static final CRYPT_TYPE_DIRECTION:I = 0x4

.field public static final CRYPT_TYPE_PASSWORD:I = 0x0

.field public static final CRYPT_TYPE_PATTERN:I = 0x2

.field public static final CRYPT_TYPE_PIN:I = 0x3

.field public static final DEBUG_EMULATE_FBE:I = 0x2

.field public static final DEBUG_FORCE_ADOPTABLE:I = 0x1

.field public static final DEBUG_SDCARDFS_FORCE_OFF:I = 0x8

.field public static final DEBUG_SDCARDFS_FORCE_ON:I = 0x4

.field public static final DEBUG_VIRTUAL_DISK:I = 0x10

.field private static final DEFAULT_CACHE_MAX_BYTES:J = 0x140000000L

.field private static final DEFAULT_CACHE_PERCENTAGE:I = 0xa

.field private static final DEFAULT_EXHAUSTION_THRESHOLD_BYTES:J = 0x40000000L

.field private static final DEFAULT_FULL_THRESHOLD_BYTES:J = 0x1400000L

.field private static final DEFAULT_THRESHOLD_MAX_BYTES:J = 0x1f400000L

.field private static final DEFAULT_THRESHOLD_PERCENTAGE:I = 0x5

.field public static final DIRECTION_SHOW_KEY:Ljava/lang/String; = "DirectionShow"

.field public static final DIRECTION_SOUND_KEY:Ljava/lang/String; = "DirectionSound"

.field public static final DIRECTION_VIBRATION_KEY:Ljava/lang/String; = "DirectionVibration"

.field public static final DIRECTION_VOICE_KEY:Ljava/lang/String; = "DirectionVoice"

.field public static final ENCRYPTION_STATE_ERROR_CORRUPT:I = -0x4

.field public static final ENCRYPTION_STATE_ERROR_INCOMPLETE:I = -0x2

.field public static final ENCRYPTION_STATE_ERROR_INCOMPLETE_DECRYPTION:I = -0x6

.field public static final ENCRYPTION_STATE_ERROR_INCONSISTENT:I = -0x3

.field public static final ENCRYPTION_STATE_ERROR_INTEGRITY_FAILURE:I = -0x7

.field public static final ENCRYPTION_STATE_ERROR_UNKNOWN:I = -0x1

.field public static final ENCRYPTION_STATE_NONE:I = 0x1

.field public static final ENCRYPTION_STATE_OK:I = 0x0

.field public static final EXTRA_REQUESTED_BYTES:Ljava/lang/String; = "android.os.storage.extra.REQUESTED_BYTES"

.field public static final EXTRA_UUID:Ljava/lang/String; = "android.os.storage.extra.UUID"

.field public static final FLAG_ALLOCATE_AGGRESSIVE:I = 0x1

.field public static final FLAG_ALLOCATE_DEFY_RESERVED:I = 0x2

.field public static final FLAG_FOR_WRITE:I = 0x100

.field public static final FLAG_INCLUDE_INVISIBLE:I = 0x400

.field public static final FLAG_KNOX_LEGACY_ENCRYPTION:I = 0x80

.field public static final FLAG_REAL_STATE:I = 0x200

.field public static final FLAG_STORAGE_CE:I = 0x2

.field public static final FLAG_STORAGE_DE:I = 0x1

.field public static final FSTRIM_FLAG_BENCHMARK:I = 0x2

.field public static final FSTRIM_FLAG_DEEP:I = 0x1

.field public static final OWNER_INFO_KEY:Ljava/lang/String; = "OwnerInfo"

.field public static final PASSWORD_VISIBLE_KEY:Ljava/lang/String; = "PasswordVisible"

.field public static final PATTERN_VISIBLE_KEY:Ljava/lang/String; = "PatternVisible"

.field public static final PROP_EMULATE_FBE:Ljava/lang/String; = "persist.sys.emulate_fbe"

.field public static final PROP_FORCE_ADOPTABLE:Ljava/lang/String; = "persist.fw.force_adoptable"

.field public static final PROP_HAS_ADOPTABLE:Ljava/lang/String; = "vold.has_adoptable"

.field public static final PROP_PRIMARY_PHYSICAL:Ljava/lang/String; = "ro.vold.primary_physical"

.field public static final PROP_SDCARDFS:Ljava/lang/String; = "persist.sys.sdcardfs"

.field public static final PROP_VIRTUAL_DISK:Ljava/lang/String; = "persist.sys.virtual_disk"

.field public static final SYSTEM_LOCALE_KEY:Ljava/lang/String; = "SystemLocale"

.field private static final TAG:Ljava/lang/String; = "StorageManager"

.field public static final UUID_DEFAULT:Ljava/util/UUID;

.field public static final UUID_PRIMARY_PHYSICAL:Ljava/lang/String; = "primary_physical"

.field public static final UUID_PRIMARY_PHYSICAL_:Ljava/util/UUID;

.field public static final UUID_PRIVATE_INTERNAL:Ljava/lang/String; = null

.field public static final UUID_SYSTEM:Ljava/lang/String; = "system"

.field public static final UUID_SYSTEM_:Ljava/util/UUID;

.field private static final XATTR_CACHE_GROUP:Ljava/lang/String; = "user.cache_group"

.field private static final XATTR_CACHE_TOMBSTONE:Ljava/lang/String; = "user.cache_tombstone"

.field private static volatile sStorageManager:Landroid/os/storage/IStorageManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDelegates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/storage/StorageManager$StorageEventListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mFuseAppLoop:Lcom/android/internal/os/FuseAppLoop;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mFuseAppLoopLock"
    .end annotation
.end field

.field private final mFuseAppLoopLock:Ljava/lang/Object;

.field private final mLooper:Landroid/os/Looper;

.field private final mNextNonce:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mStorageManager:Landroid/os/storage/IStorageManager;


# direct methods
.method static synthetic -get0(Landroid/os/storage/StorageManager;)Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Landroid/os/storage/StorageManager;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/os/storage/StorageManager;)I
    .locals 1

    invoke-direct {p0}, Landroid/os/storage/StorageManager;->getNextNonce()I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "41217664-9172-527a-b3d5-edabb50a7d69"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/os/storage/StorageManager;->UUID_DEFAULT:Ljava/util/UUID;

    const-string/jumbo v0, "0f95a519-dae7-5abf-9519-fbd6209e05fd"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/os/storage/StorageManager;->UUID_PRIMARY_PHYSICAL_:Ljava/util/UUID;

    const-string/jumbo v0, "5d258386-e60d-59e3-826d-0089cdd42cc0"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/os/storage/StorageManager;->UUID_SYSTEM_:Ljava/util/UUID;

    const/4 v0, 0x0

    sput-object v0, Landroid/os/storage/StorageManager;->sStorageManager:Landroid/os/storage/IStorageManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroid/os/storage/StorageManager;->mNextNonce:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/storage/StorageManager;->mDelegates:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/storage/StorageManager$ObbActionListener;

    invoke-direct {v0, p0, v2}, Landroid/os/storage/StorageManager$ObbActionListener;-><init>(Landroid/os/storage/StorageManager;Landroid/os/storage/StorageManager$ObbActionListener;)V

    iput-object v0, p0, Landroid/os/storage/StorageManager;->mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/storage/StorageManager;->mFuseAppLoopLock:Ljava/lang/Object;

    iput-object v2, p0, Landroid/os/storage/StorageManager;->mFuseAppLoop:Lcom/android/internal/os/FuseAppLoop;

    iput-object p1, p0, Landroid/os/storage/StorageManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/StorageManager;->mResolver:Landroid/content/ContentResolver;

    iput-object p2, p0, Landroid/os/storage/StorageManager;->mLooper:Landroid/os/Looper;

    const-string/jumbo v0, "mount"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    return-void
.end method

.method public static convert(Ljava/util/UUID;)Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/storage/StorageManager;->UUID_DEFAULT:Ljava/util/UUID;

    invoke-virtual {v0, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    return-object v0

    :cond_0
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIMARY_PHYSICAL_:Ljava/util/UUID;

    invoke-virtual {v0, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "primary_physical"

    return-object v0

    :cond_1
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_SYSTEM_:Ljava/util/UUID;

    invoke-virtual {v0, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "system"

    return-object v0

    :cond_2
    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convert(Ljava/lang/String;)Ljava/util/UUID;
    .locals 1

    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/storage/StorageManager;->UUID_DEFAULT:Ljava/util/UUID;

    return-object v0

    :cond_0
    const-string/jumbo v0, "primary_physical"

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIMARY_PHYSICAL_:Ljava/util/UUID;

    return-object v0

    :cond_1
    const-string/jumbo v0, "system"

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/os/storage/StorageManager;->UUID_SYSTEM_:Ljava/util/UUID;

    return-object v0

    :cond_2
    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public static from(Landroid/content/Context;)Landroid/os/storage/StorageManager;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method private getNextNonce()I
    .locals 1

    iget-object v0, p0, Landroid/os/storage/StorageManager;->mNextNonce:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    return v0
.end method

.method public static getPrimaryStoragePathAndSize()Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/os/FileUtils;->roundStorageSize(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static getPrimaryVolume([Landroid/os/storage/StorageVolume;)Landroid/os/storage/StorageVolume;
    .locals 4

    const/4 v1, 0x0

    array-length v2, p0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p0, v1

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Missing primary storage"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getStorageVolume(Ljava/io/File;I)Landroid/os/storage/StorageVolume;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/os/storage/StorageManager;->getVolumeList(II)[Landroid/os/storage/StorageVolume;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/os/storage/StorageManager;->getStorageVolume([Landroid/os/storage/StorageVolume;Ljava/io/File;)Landroid/os/storage/StorageVolume;

    move-result-object v0

    return-object v0
.end method

.method private static getStorageVolume([Landroid/os/storage/StorageVolume;Ljava/io/File;)Landroid/os/storage/StorageVolume;
    .locals 7

    const/4 v6, 0x0

    if-nez p1, :cond_0

    return-object v6

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    const/4 v3, 0x0

    array-length v4, p0

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v1, p0, v3

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    move-result-object v2

    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    invoke-static {v2, p1}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_1

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v3, "StorageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Could not get canonical path for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :catch_1
    move-exception v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v6
.end method

.method public static getVolumeList(II)[Landroid/os/storage/StorageVolume;
    .locals 7

    const-string/jumbo v5, "mount"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v3

    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    invoke-interface {v5, v6}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v5, v2

    if-gtz v5, :cond_1

    :cond_0
    const/4 v5, 0x0

    new-array v5, v5, [Landroid/os/storage/StorageVolume;

    return-object v5

    :cond_1
    const/4 v5, 0x0

    aget-object v1, v2, v5

    :cond_2
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    const/high16 v6, 0x10000000

    invoke-interface {v5, v1, v6, p0}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v4

    if-gtz v4, :cond_3

    const/4 v5, 0x0

    new-array v5, v5, [Landroid/os/storage/StorageVolume;

    return-object v5

    :cond_3
    invoke-interface {v3, v4, v1, p1}, Landroid/os/storage/IStorageManager;->getVolumeList(ILjava/lang/String;I)[Landroid/os/storage/StorageVolume;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    return-object v5

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5
.end method

.method public static inCryptKeeperBounce()Z
    .locals 2

    const-string/jumbo v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "trigger_restart_min_framework"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isBlockEncrypted()Z
    .locals 1

    invoke-static {}, Landroid/os/storage/StorageManager;->isEncrypted()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    sget-boolean v0, Lcom/android/internal/os/RoSystemProperties;->CRYPTO_BLOCK_ENCRYPTED:Z

    return v0
.end method

.method public static isBlockEncrypting()Z
    .locals 3

    const-string/jumbo v1, "vold.encrypt_progress"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private static isCacheBehavior(Ljava/io/File;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/system/Os;->getxattr(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v0

    iget v1, v0, Landroid/system/ErrnoException;->errno:I

    sget v2, Landroid/system/OsConstants;->ENODATA:I

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static isEncryptable()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/os/RoSystemProperties;->CRYPTO_ENCRYPTABLE:Z

    return v0
.end method

.method public static isEncrypted()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/os/RoSystemProperties;->CRYPTO_ENCRYPTED:Z

    return v0
.end method

.method public static isFileEncryptedEmulatedOnly()Z
    .locals 2

    const-string/jumbo v0, "persist.sys.emulate_fbe"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isFileEncryptedNativeOnly()Z
    .locals 1

    invoke-static {}, Landroid/os/storage/StorageManager;->isEncrypted()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    sget-boolean v0, Lcom/android/internal/os/RoSystemProperties;->CRYPTO_FILE_ENCRYPTED:Z

    return v0
.end method

.method public static isFileEncryptedNativeOrEmulated()Z
    .locals 1

    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOnly()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedEmulatedOnly()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isNonDefaultBlockEncrypted()Z
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/storage/StorageManager;->isBlockEncrypted()Z

    move-result v4

    if-nez v4, :cond_0

    return v3

    :cond_0
    :try_start_0
    const-string/jumbo v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/storage/IStorageManager;->getPasswordType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eq v4, v2, :cond_1

    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "StorageManager"

    const-string/jumbo v4, "Error getting encryption type"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public static isUserKeyUnlocked(I)Z
    .locals 5

    sget-object v1, Landroid/os/storage/StorageManager;->sStorageManager:Landroid/os/storage/IStorageManager;

    if-nez v1, :cond_0

    const-string/jumbo v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v1

    sput-object v1, Landroid/os/storage/StorageManager;->sStorageManager:Landroid/os/storage/IStorageManager;

    :cond_0
    sget-object v1, Landroid/os/storage/StorageManager;->sStorageManager:Landroid/os/storage/IStorageManager;

    if-nez v1, :cond_1

    const-string/jumbo v1, "StorageManager"

    const-string/jumbo v4, "Early during boot, assuming locked"

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    sget-object v1, Landroid/os/storage/StorageManager;->sStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v1, p0}, Landroid/os/storage/IStorageManager;->isUserKeyUnlocked(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public static maybeTranslateEmulatedPathToInternal(Ljava/io/File;)Ljava/io/File;
    .locals 0

    return-object p0
.end method

.method private static setCacheBehavior(Ljava/io/File;Ljava/lang/String;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Cache behavior can only be set on directories"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-eqz p2, :cond_2

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, p1, v2, v3}, Landroid/system/Os;->setxattr(Ljava/lang/String;Ljava/lang/String;[BI)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1

    :cond_2
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/system/Os;->removexattr(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    iget v1, v0, Landroid/system/ErrnoException;->errno:I

    sget v2, Landroid/system/OsConstants;->ENODATA:I

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public addPrivateVolume()V
    .locals 3

    iget-object v1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v1}, Landroid/os/storage/IStorageManager;->addPrivateVolume()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "StorageManager"

    const-string/jumbo v2, "Failed to addPrivateVolume"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public allocateBytes(Ljava/io/File;JI)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Doclava125"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/os/storage/StorageManager;->getUuidForPath(Ljava/io/File;)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/os/storage/StorageManager;->allocateBytes(Ljava/util/UUID;JI)V

    return-void
.end method

.method public allocateBytes(Ljava/io/FileDescriptor;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/os/storage/StorageManager;->allocateBytes(Ljava/io/FileDescriptor;JI)V

    return-void
.end method

.method public allocateBytes(Ljava/io/FileDescriptor;JI)V
    .locals 14
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Doclava125"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->getFile(Ljava/io/FileDescriptor;)Ljava/io/File;

    move-result-object v3

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x3

    if-ge v6, v7, :cond_2

    :try_start_0
    invoke-static {p1}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v7

    iget-wide v10, v7, Landroid/system/StructStat;->st_blocks:J

    const-wide/16 v12, 0x200

    mul-long v4, v10, v12

    sub-long v8, p2, v4

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-lez v7, :cond_0

    move/from16 v0, p4

    invoke-virtual {p0, v3, v8, v9, v0}, Landroid/os/storage/StorageManager;->allocateBytes(Ljava/io/File;JI)V

    :cond_0
    const-wide/16 v10, 0x0

    move-wide/from16 v0, p2

    invoke-static {p1, v10, v11, v0, v1}, Landroid/system/Os;->posix_fallocate(Ljava/io/FileDescriptor;JJ)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    iget v7, v2, Landroid/system/ErrnoException;->errno:I

    sget v10, Landroid/system/OsConstants;->ENOSPC:I

    if-ne v7, v10, :cond_1

    const-string/jumbo v7, "StorageManager"

    const-string/jumbo v10, "Odd, not enough space; let\'s try again?"

    invoke-static {v7, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v7

    throw v7

    :cond_2
    new-instance v7, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Well this is embarassing; we can\'t allocate "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, p2

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public allocateBytes(Ljava/util/UUID;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/os/storage/StorageManager;->allocateBytes(Ljava/util/UUID;JI)V

    return-void
.end method

.method public allocateBytes(Ljava/util/UUID;JI)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Doclava125"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-static {p1}, Landroid/os/storage/StorageManager;->convert(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p2, p3, p4}, Landroid/os/storage/IStorageManager;->allocateBytes(Ljava/lang/String;JI)V
    :try_end_0
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :catch_1
    move-exception v0

    const-class v2, Ljava/io/IOException;

    invoke-virtual {v0, v2}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public benchmark(Ljava/lang/String;)J
    .locals 4

    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v1, p1}, Landroid/os/storage/IStorageManager;->benchmark(Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public createUserKey(IIZ)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/storage/IStorageManager;->createUserKey(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public destroyUserKey(I)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v1, p1}, Landroid/os/storage/IStorageManager;->destroyUserKey(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public destroyUserStorage(Ljava/lang/String;II)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/storage/IStorageManager;->destroyUserStorage(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public disableUsbMassStorage()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public enableUsbMassStorage()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public findDiskById(Ljava/lang/String;)Landroid/os/storage/DiskInfo;
    .locals 3

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getDisks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/DiskInfo;

    iget-object v2, v0, Landroid/os/storage/DiskInfo;->id:Ljava/lang/String;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public findEmulatedForPrivate(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "private"

    const-string/jumbo v2, "emulated"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v0
.end method

.method public findPathForUuid(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/os/storage/StorageManager;->findVolumeByQualifiedUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v1

    return-object v1

    :cond_0
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to find a storage device for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public findPrivateForEmulated(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "emulated"

    const-string/jumbo v2, "private"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v0
.end method

.method public findRecordByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;
    .locals 3

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumeRecords()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeRecord;

    iget-object v2, v0, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;
    .locals 3

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeInfo;

    iget-object v2, v0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public findVolumeByQualifiedUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;
    .locals 1

    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "private"

    invoke-virtual {p0, v0}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "primary_physical"

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getPrimaryPhysicalVolume()Landroid/os/storage/VolumeInfo;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    return-object v0
.end method

.method public findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;
    .locals 3

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeInfo;

    iget-object v2, v0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public forgetVolume(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v1, p1}, Landroid/os/storage/IStorageManager;->forgetVolume(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public format(Ljava/lang/String;)V
    .locals 5

    const-string/jumbo v1, "StorageManager"

    const-string/jumbo v2, "format"

    new-instance v3, Ljava/lang/Exception;

    const-string/jumbo v4, "who\'s calling"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v1, p1}, Landroid/os/storage/IStorageManager;->format(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getAllocatableBytes(Ljava/io/File;I)J
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Doclava125"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/os/storage/StorageManager;->getUuidForPath(Ljava/io/File;)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/os/storage/StorageManager;->getAllocatableBytes(Ljava/util/UUID;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAllocatableBytes(Ljava/util/UUID;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/storage/StorageManager;->getAllocatableBytes(Ljava/util/UUID;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAllocatableBytes(Ljava/util/UUID;I)J
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Doclava125"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-static {p1}, Landroid/os/storage/StorageManager;->convert(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Landroid/os/storage/IStorageManager;->getAllocatableBytes(Ljava/lang/String;I)J
    :try_end_0
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :catch_1
    move-exception v0

    const-class v2, Ljava/io/IOException;

    invoke-virtual {v0, v2}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return-object v2

    :cond_0
    iget-object v1, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/storage/StorageManager;->findRecordByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    return-object v1

    :cond_1
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2
    iget-object v1, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    if-eqz v1, :cond_3

    iget-object v1, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v1}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_3
    return-object v2
.end method

.method public getCCmodeForCryptKeeper()I
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v1}, Landroid/os/storage/IStorageManager;->getCCmodeForCryptKeeper()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getCacheQuotaBytes()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/os/storage/StorageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/storage/StorageManager;->getCacheQuotaBytes(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCacheQuotaBytes(Ljava/io/File;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/os/storage/StorageManager;->getUuidForPath(Ljava/io/File;)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/storage/StorageManager;->getCacheQuotaBytes(Ljava/util/UUID;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCacheQuotaBytes(Ljava/util/UUID;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v3, p0, Landroid/os/storage/StorageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v3, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-static {p1}, Landroid/os/storage/StorageManager;->convert(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v4

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v3, v4, v5}, Landroid/os/storage/IStorageManager;->getCacheQuotaBytes(Ljava/lang/String;I)J
    :try_end_0
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    return-wide v4

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    :catch_1
    move-exception v1

    const-class v3, Ljava/io/IOException;

    invoke-virtual {v1, v3}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getCacheSizeBytes()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/os/storage/StorageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/storage/StorageManager;->getCacheSizeBytes(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCacheSizeBytes(Ljava/io/File;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/os/storage/StorageManager;->getUuidForPath(Ljava/io/File;)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/storage/StorageManager;->getCacheSizeBytes(Ljava/util/UUID;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCacheSizeBytes(Ljava/util/UUID;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v3, p0, Landroid/os/storage/StorageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v3, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-static {p1}, Landroid/os/storage/StorageManager;->convert(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v4

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v3, v4, v5}, Landroid/os/storage/IStorageManager;->getCacheSizeBytes(Ljava/lang/String;I)J
    :try_end_0
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    return-wide v4

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    :catch_1
    move-exception v1

    const-class v3, Ljava/io/IOException;

    invoke-virtual {v1, v3}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getCurrentEncryptionFailCount()I
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v1}, Landroid/os/storage/IStorageManager;->getCurrentEncryptionFailCount()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getDisks()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/storage/DiskInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v1}, Landroid/os/storage/IStorageManager;->getDisks()[Landroid/os/storage/DiskInfo;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
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

.method public getExternalCacheQuotaBytes()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/os/storage/StorageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/storage/StorageManager;->getCacheQuotaBytes(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getExternalCacheSizeBytes()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/os/storage/StorageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/storage/StorageManager;->getCacheSizeBytes(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v1, "rawPath cannot be null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v1, p1}, Landroid/os/storage/IStorageManager;->getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;
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

.method public getPrimaryPhysicalVolume()Landroid/os/storage/VolumeInfo;
    .locals 4

    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->isPrimaryPhysical()Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v0

    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method public getPrimaryStorageSize()J
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/os/FileUtils;->roundStorageSize(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPrimaryStorageUuid()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v1}, Landroid/os/storage/IStorageManager;->getPrimaryStorageUuid()Ljava/lang/String;
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

.method public getPrimaryStorageVolume()Landroid/os/storage/StorageVolume;
    .locals 2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/16 v1, 0x600

    invoke-static {v0, v1}, Landroid/os/storage/StorageManager;->getVolumeList(II)[Landroid/os/storage/StorageVolume;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getPrimaryVolume()Landroid/os/storage/StorageVolume;
    .locals 1

    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/StorageManager;->getPrimaryVolume([Landroid/os/storage/StorageVolume;)Landroid/os/storage/StorageVolume;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyFromFooter(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v1, p1}, Landroid/os/storage/IStorageManager;->getPropertyFromFooter(Ljava/lang/String;)Ljava/lang/String;
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

.method public getProxyFileDescriptorMountPointId()I
    .locals 2

    iget-object v1, p0, Landroid/os/storage/StorageManager;->mFuseAppLoopLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mFuseAppLoop:Lcom/android/internal/os/FuseAppLoop;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/storage/StorageManager;->mFuseAppLoop:Lcom/android/internal/os/FuseAppLoop;

    invoke-virtual {v0}, Lcom/android/internal/os/FuseAppLoop;->getMountPointId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getStorageBytesUntilLow(Ljava/io/File;)J
    .locals 4

    const-string/jumbo v0, "StorageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getStorageBytesUntilLow usablespace : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " full bytes : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Landroid/os/storage/StorageManager;->getStorageFullBytes(Ljava/io/File;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v0

    invoke-virtual {p0, p1}, Landroid/os/storage/StorageManager;->getStorageFullBytes(Ljava/io/File;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getStorageCacheBytes(Ljava/io/File;)J
    .locals 10

    iget-object v6, p0, Landroid/os/storage/StorageManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v7, "sys_storage_cache_percentage"

    const/16 v8, 0xa

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    int-to-long v2, v6

    invoke-virtual {p1}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v6

    mul-long/2addr v6, v2

    const-wide/16 v8, 0x64

    div-long v0, v6, v8

    iget-object v6, p0, Landroid/os/storage/StorageManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v7, "sys_storage_cache_max_bytes"

    const-wide v8, 0x140000000L

    invoke-static {v6, v7, v8, v9}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    return-wide v6
.end method

.method public getStorageExhaustionBytes()J
    .locals 2

    const-wide/32 v0, 0x40000000

    return-wide v0
.end method

.method public getStorageFullBytes(Ljava/io/File;)J
    .locals 6

    iget-object v2, p0, Landroid/os/storage/StorageManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "sys_storage_full_threshold_bytes"

    const-wide/32 v4, 0x1400000

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    const-string/jumbo v2, "StorageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getStorageFullBytes DEFAULT_FULL_THRESHOLD_BYTES : 20971520, threadhold : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method public getStorageLowBytes(Ljava/io/File;)J
    .locals 10

    iget-object v6, p0, Landroid/os/storage/StorageManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v7, "sys_storage_threshold_percentage"

    const/4 v8, 0x5

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    int-to-long v2, v6

    invoke-virtual {p1}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v6

    mul-long/2addr v6, v2

    const-wide/16 v8, 0x64

    div-long v0, v6, v8

    iget-object v6, p0, Landroid/os/storage/StorageManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v7, "sys_storage_threshold_max_bytes"

    const-wide/32 v8, 0x1f400000

    invoke-static {v6, v7, v8, v9}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    const-string/jumbo v6, "StorageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getStorageLowBytes lowPercent : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", lowBytes : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", maxLowBytes : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    return-wide v6
.end method

.method public getStorageVolume(Ljava/io/File;)Landroid/os/storage/StorageVolume;
    .locals 1

    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/os/storage/StorageManager;->getStorageVolume([Landroid/os/storage/StorageVolume;Ljava/io/File;)Landroid/os/storage/StorageVolume;

    move-result-object v0

    return-object v0
.end method

.method public getStorageVolumes()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/storage/StorageVolume;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/16 v2, 0x600

    invoke-static {v1, v2}, Landroid/os/storage/StorageManager;->getVolumeList(II)[Landroid/os/storage/StorageVolume;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getUuidForPath(Ljava/io/File;)Ljava/util/UUID;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Landroid/os/FileUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v3, Landroid/os/storage/StorageManager;->UUID_DEFAULT:Ljava/util/UUID;

    return-object v3

    :cond_0
    :try_start_0
    iget-object v4, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/os/storage/IStorageManager;->getVolumes(I)[Landroid/os/storage/VolumeInfo;

    move-result-object v4

    array-length v5, v4

    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v2, v4, v3

    iget-object v6, v2, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v6, v2, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-static {v6, v1}, Landroid/os/FileUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v3, v2, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    :cond_2
    new-instance v3, Ljava/io/FileNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to find a storage device for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getVolume(Ljava/lang/String;)Landroid/os/storage/StorageVolume;
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v2

    if-nez v2, :cond_0

    return-object v4

    :cond_0
    array-length v0, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    aget-object v3, v2, v1

    return-object v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v4
.end method

.method public getVolumeList()[Landroid/os/storage/StorageVolume;
    .locals 2

    iget-object v0, p0, Landroid/os/storage/StorageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/storage/StorageManager;->getVolumeList(II)[Landroid/os/storage/StorageVolume;

    move-result-object v0

    return-object v0
.end method

.method public getVolumePaths()[Ljava/lang/String;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v3

    array-length v0, v3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v4, v3, v1

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public getVolumeRecords()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/storage/VolumeRecord;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/os/storage/IStorageManager;->getVolumeRecords(I)[Landroid/os/storage/VolumeRecord;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
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

.method public getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/os/storage/StorageManager;->getStorageVolume(Ljava/io/File;)Landroid/os/storage/StorageVolume;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string/jumbo v1, "unknown"

    return-object v1
.end method

.method public getVolumes()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/storage/VolumeInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/os/storage/IStorageManager;->getVolumes(I)[Landroid/os/storage/VolumeInfo;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
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

.method public getWritablePrivateVolumes()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/storage/VolumeInfo;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/os/storage/IStorageManager;->getVolumes(I)[Landroid/os/storage/VolumeInfo;

    move-result-object v4

    array-length v5, v4

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v2, v4, v3

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public isCacheBehaviorAtomic(Ljava/io/File;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/os/storage/StorageManager;->isCacheBehaviorGroup(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public isCacheBehaviorGroup(Ljava/io/File;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "user.cache_group"

    invoke-static {p1, v0}, Landroid/os/storage/StorageManager;->isCacheBehavior(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isCacheBehaviorTombstone(Ljava/io/File;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "user.cache_tombstone"

    invoke-static {p1, v0}, Landroid/os/storage/StorageManager;->isCacheBehavior(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isEncrypted(Ljava/io/File;)Z
    .locals 1

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/storage/StorageManager;->isEncrypted()Z

    move-result v0

    return v0

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExpandDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isObbMounted(Ljava/lang/String;)Z
    .locals 2

    const-string/jumbo v1, "rawPath cannot be null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v1, p1}, Landroid/os/storage/IStorageManager;->isObbMounted(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isStorageFullyEncrypted()I
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v1}, Landroid/os/storage/IStorageManager;->isStorageFullyEncrypted()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isUsbMassStorageConnected()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public isUsbMassStorageEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public lockUserKey(I)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v1, p1}, Landroid/os/storage/IStorageManager;->lockUserKey(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public mount(Ljava/lang/String;)V
    .locals 5

    const-string/jumbo v1, "StorageManager"

    const-string/jumbo v2, "mount"

    new-instance v3, Ljava/lang/Exception;

    const-string/jumbo v4, "who\'s calling"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v1, p1}, Landroid/os/storage/IStorageManager;->mount(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public mountObb(Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/OnObbStateChangeListener;)Z
    .locals 8

    const-string/jumbo v0, "rawPath cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "listener cannot be null"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Landroid/os/storage/StorageManager;->mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

    invoke-virtual {v0, p3}, Landroid/os/storage/StorageManager$ObbActionListener;->addListener(Landroid/os/storage/OnObbStateChangeListener;)I

    move-result v5

    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    iget-object v4, p0, Landroid/os/storage/StorageManager;->mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

    move-object v1, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Landroid/os/storage/IStorageManager;->mountObb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/IObbActionListener;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :catch_1
    move-exception v7

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to resolve path: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public odeNativeTest(Ljava/lang/String;)I
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v1, p1}, Landroid/os/storage/IStorageManager;->odeNativeTest(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public openProxyFileDescriptor(ILandroid/os/ProxyFileDescriptorCallback;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/os/storage/StorageManager;->openProxyFileDescriptor(ILandroid/os/ProxyFileDescriptorCallback;Landroid/os/Handler;Ljava/util/concurrent/ThreadFactory;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public openProxyFileDescriptor(ILandroid/os/ProxyFileDescriptorCallback;Landroid/os/Handler;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/os/storage/StorageManager;->openProxyFileDescriptor(ILandroid/os/ProxyFileDescriptorCallback;Landroid/os/Handler;Ljava/util/concurrent/ThreadFactory;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public openProxyFileDescriptor(ILandroid/os/ProxyFileDescriptorCallback;Landroid/os/Handler;Ljava/util/concurrent/ThreadFactory;)Landroid/os/ParcelFileDescriptor;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Landroid/os/storage/StorageManager;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "storage_open_proxy_file_descriptor"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    move-object v3, p3

    :goto_0
    :try_start_0
    iget-object v8, p0, Landroid/os/storage/StorageManager;->mFuseAppLoopLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v5, 0x0

    :try_start_1
    iget-object v7, p0, Landroid/os/storage/StorageManager;->mFuseAppLoop:Lcom/android/internal/os/FuseAppLoop;

    if-nez v7, :cond_1

    iget-object v7, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v7}, Landroid/os/storage/IStorageManager;->mountProxyFileDescriptorBridge()Lcom/android/internal/os/AppFuseMount;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v9, "Failed to mount proxy bridge"

    invoke-direct {v7, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v7

    move-object p3, v3

    :goto_1
    :try_start_2
    monitor-exit v8

    throw v7
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    :goto_2
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    :cond_0
    :try_start_3
    new-instance v7, Lcom/android/internal/os/FuseAppLoop;

    iget v9, v4, Lcom/android/internal/os/AppFuseMount;->mountPointId:I

    iget-object v10, v4, Lcom/android/internal/os/AppFuseMount;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v7, v9, v10, p4}, Lcom/android/internal/os/FuseAppLoop;-><init>(ILandroid/os/ParcelFileDescriptor;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v7, p0, Landroid/os/storage/StorageManager;->mFuseAppLoop:Lcom/android/internal/os/FuseAppLoop;

    const/4 v5, 0x1

    :cond_1
    if-nez v3, :cond_4

    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {p3, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    :try_start_4
    iget-object v7, p0, Landroid/os/storage/StorageManager;->mFuseAppLoop:Lcom/android/internal/os/FuseAppLoop;

    invoke-virtual {v7, p2, p3}, Lcom/android/internal/os/FuseAppLoop;->registerCallback(Landroid/os/ProxyFileDescriptorCallback;Landroid/os/Handler;)I

    move-result v2

    iget-object v7, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    iget-object v9, p0, Landroid/os/storage/StorageManager;->mFuseAppLoop:Lcom/android/internal/os/FuseAppLoop;

    invoke-virtual {v9}, Lcom/android/internal/os/FuseAppLoop;->getMountPointId()I

    move-result v9

    invoke-interface {v7, v9, v2, p1}, Landroid/os/storage/IStorageManager;->openProxyFileDescriptor(III)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    if-nez v6, :cond_2

    iget-object v7, p0, Landroid/os/storage/StorageManager;->mFuseAppLoop:Lcom/android/internal/os/FuseAppLoop;

    invoke-virtual {v7, v2}, Lcom/android/internal/os/FuseAppLoop;->unregisterCallback(I)V

    new-instance v7, Lcom/android/internal/os/FuseUnavailableMountException;

    iget-object v9, p0, Landroid/os/storage/StorageManager;->mFuseAppLoop:Lcom/android/internal/os/FuseAppLoop;

    invoke-virtual {v9}, Lcom/android/internal/os/FuseAppLoop;->getMountPointId()I

    move-result v9

    invoke-direct {v7, v9}, Lcom/android/internal/os/FuseUnavailableMountException;-><init>(I)V

    throw v7
    :try_end_4
    .catch Lcom/android/internal/os/FuseUnavailableMountException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_1
    move-exception v1

    if-eqz v5, :cond_3

    :try_start_5
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v7

    goto :goto_1

    :cond_2
    :try_start_6
    monitor-exit v8
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    return-object v6

    :cond_3
    const/4 v7, 0x0

    :try_start_7
    iput-object v7, p0, Landroid/os/storage/StorageManager;->mFuseAppLoop:Lcom/android/internal/os/FuseAppLoop;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    monitor-exit v8
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0

    move-object v3, p3

    goto :goto_0

    :catch_2
    move-exception v0

    move-object p3, v3

    goto :goto_2

    :cond_4
    move-object p3, v3

    goto :goto_3
.end method

.method public partitionMixed(Ljava/lang/String;I)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v1, p1, p2}, Landroid/os/storage/IStorageManager;->partitionMixed(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public partitionPrivate(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v1, p1}, Landroid/os/storage/IStorageManager;->partitionPrivate(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public partitionPublic(Ljava/lang/String;)V
    .locals 5

    const-string/jumbo v1, "StorageManager"

    const-string/jumbo v2, "partitionPublic"

    new-instance v3, Ljava/lang/Exception;

    const-string/jumbo v4, "who\'s calling"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v1, p1}, Landroid/os/storage/IStorageManager;->partitionPublic(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public prepareUserStorage(Ljava/lang/String;III)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/os/storage/IStorageManager;->prepareUserStorage(Ljava/lang/String;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public registerListener(Landroid/os/storage/StorageEventListener;)V
    .locals 4

    iget-object v3, p0, Landroid/os/storage/StorageManager;->mDelegates:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    new-instance v0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;

    iget-object v2, p0, Landroid/os/storage/StorageManager;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, p1, v2}, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;-><init>(Landroid/os/storage/StorageEventListener;Landroid/os/Looper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v2, v0}, Landroid/os/storage/IStorageManager;->registerListener(Landroid/os/storage/IStorageEventListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Landroid/os/storage/StorageManager;->mDelegates:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    return-void

    :catch_0
    move-exception v1

    :try_start_3
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public removePrivateVolume()V
    .locals 3

    iget-object v1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v1}, Landroid/os/storage/IStorageManager;->removePrivateVolume()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "StorageManager"

    const-string/jumbo v2, "Failed to removePrivateVolume"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public secdiscard(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v1, p1}, Landroid/os/storage/IStorageManager;->secdiscard(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setCacheBehaviorAtomic(Ljava/io/File;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroid/os/storage/StorageManager;->setCacheBehaviorGroup(Ljava/io/File;Z)V

    return-void
.end method

.method public setCacheBehaviorGroup(Ljava/io/File;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "user.cache_group"

    invoke-static {p1, v0, p2}, Landroid/os/storage/StorageManager;->setCacheBehavior(Ljava/io/File;Ljava/lang/String;Z)V

    return-void
.end method

.method public setCacheBehaviorTombstone(Ljava/io/File;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "user.cache_tombstone"

    invoke-static {p1, v0, p2}, Landroid/os/storage/StorageManager;->setCacheBehavior(Ljava/io/File;Ljava/lang/String;Z)V

    return-void
.end method

.method public setExternalEncryptionPassword(Ljava/lang/String;)I
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v1, p1}, Landroid/os/storage/IStorageManager;->setExternalEncryptionPassword(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setPrimaryStorageUuid(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v1, p1, p2}, Landroid/os/storage/IStorageManager;->setPrimaryStorageUuid(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setPropertyIntoFooter(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v1, p1, p2}, Landroid/os/storage/IStorageManager;->setPropertyIntoFooter(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setVolumeInited(Ljava/lang/String;Z)V
    .locals 4

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    if-eqz p2, :cond_0

    :goto_0
    const/4 v3, 0x1

    invoke-interface {v2, p1, v1, v3}, Landroid/os/storage/IStorageManager;->setVolumeUserFlags(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setVolumeNickname(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v1, p1, p2}, Landroid/os/storage/IStorageManager;->setVolumeNickname(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setVolumeSnoozed(Ljava/lang/String;Z)V
    .locals 4

    const/4 v1, 0x2

    :try_start_0
    iget-object v2, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    if-eqz p2, :cond_0

    :goto_0
    const/4 v3, 0x2

    invoke-interface {v2, p1, v1, v3}, Landroid/os/storage/IStorageManager;->setVolumeUserFlags(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setVolumeState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v1, p1, p2}, Landroid/os/storage/IStorageManager;->setVolumeState(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "StorageManager"

    const-string/jumbo v2, "Failed to set volume state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public unlockUserKey(II[B[B)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/os/storage/IStorageManager;->unlockUserKey(II[B[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public unmount(Ljava/lang/String;)V
    .locals 5

    const-string/jumbo v1, "StorageManager"

    const-string/jumbo v2, "unmount"

    new-instance v3, Ljava/lang/Exception;

    const-string/jumbo v4, "who\'s calling"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v1, p1}, Landroid/os/storage/IStorageManager;->unmount(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public unmountObb(Ljava/lang/String;ZLandroid/os/storage/OnObbStateChangeListener;)Z
    .locals 4

    const-string/jumbo v2, "rawPath cannot be null"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "listener cannot be null"

    invoke-static {p3, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v2, p0, Landroid/os/storage/StorageManager;->mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

    invoke-virtual {v2, p3}, Landroid/os/storage/StorageManager$ObbActionListener;->addListener(Landroid/os/storage/OnObbStateChangeListener;)I

    move-result v1

    iget-object v2, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    iget-object v3, p0, Landroid/os/storage/StorageManager;->mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

    invoke-interface {v2, p1, p2, v3, v1}, Landroid/os/storage/IStorageManager;->unmountObb(Ljava/lang/String;ZLandroid/os/storage/IObbActionListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public unregisterListener(Landroid/os/storage/StorageEventListener;)V
    .locals 5

    iget-object v4, p0, Landroid/os/storage/StorageManager;->mDelegates:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Landroid/os/storage/StorageManager;->mDelegates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;

    iget-object v3, v0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mCallback:Landroid/os/storage/StorageEventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, p1, :cond_0

    :try_start_1
    iget-object v3, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v3, v0}, Landroid/os/storage/IStorageManager;->unregisterListener(Landroid/os/storage/IStorageEventListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :catch_0
    move-exception v1

    :try_start_3
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    monitor-exit v4

    return-void
.end method

.method public wipeAdoptableDisks()V
    .locals 8

    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getDisks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/DiskInfo;

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isAdoptable()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const-string/jumbo v5, "StorageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Found adoptable "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "; wiping"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v5, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v5, v2}, Landroid/os/storage/IStorageManager;->partitionPublic(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    const-string/jumbo v5, "StorageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to wipe "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", but soldiering onward"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    const-string/jumbo v5, "StorageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Ignorning non-adoptable disk "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    return-void
.end method
