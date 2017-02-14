.class public Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;
.super Ljava/lang/Object;
.source "StorageMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MainHandler;,
        Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;,
        Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;,
        Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;,
        Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$StatsObserver;
    }
.end annotation


# static fields
.field public static final DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

.field static final LOGV:Z

.field public static final URI_AUDIO_FILE:Landroid/net/Uri;

.field public static final URI_IMAGE_FILE:Landroid/net/Uri;

.field public static final URI_VIDEO_FILE:Landroid/net/Uri;

.field private static final sMeasureMediaTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAvailSize:J

.field private final mContext:Landroid/content/Context;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private final mMainHandler:Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MainHandler;

.field private final mMeasurementHandler:Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

.field private mReceiver:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mSharedVolume:Landroid/os/storage/VolumeInfo;

.field private mSystemMemSize:J

.field private mTotalSize:J

.field private final mVolume:Landroid/os/storage/VolumeInfo;

.field private totalMediaSize:J


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;)Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MainHandler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mMainHandler:Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MainHandler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/util/SparseLongArray;IJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->addValueIfKeyExists(Landroid/util/SparseLongArray;IJ)V

    return-void
.end method

.method static synthetic -wrap1(Landroid/util/SparseLongArray;IJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->addValue(Landroid/util/SparseLongArray;IJ)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;Lcom/android/internal/app/IMediaContainerService;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->measureExactStorage(Lcom/android/internal/app/IMediaContainerService;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->setMetaSize(Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x2

    const-string/jumbo v0, "StorageMeasurement"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->LOGV:Z

    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->URI_AUDIO_FILE:Landroid/net/Uri;

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->URI_IMAGE_FILE:Landroid/net/Uri;

    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->URI_VIDEO_FILE:Landroid/net/Uri;

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v1, "com.android.defcontainer"

    const-string/jumbo v2, "com.android.defcontainer.DefaultContainerService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    aput-object v1, v0, v3

    sget-object v1, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "Android"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->sMeasureMediaTypes:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;Landroid/os/storage/VolumeInfo;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->totalMediaSize:J

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/VolumeInfo;

    iput-object p3, p0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "MemoryMeasurement"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mHandlerThread:Landroid/os/HandlerThread;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MainHandler;

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MainHandler;-><init>(Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MainHandler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mMainHandler:Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MainHandler;

    new-instance v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;-><init>(Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mMeasurementHandler:Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    return-void
.end method

.method private static addValue(Landroid/util/SparseLongArray;IJ)V
    .locals 2

    invoke-virtual {p0, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-virtual {p0, p1, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    return-void
.end method

.method private static addValueIfKeyExists(Landroid/util/SparseLongArray;IJ)V
    .locals 4

    invoke-virtual {p0, p1}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v2

    add-long/2addr v2, p2

    invoke-virtual {p0, p1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    :cond_0
    return-void
.end method

.method private static getDirectorySize(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J
    .locals 6

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/android/internal/app/IMediaContainerService;->calculateDirectorySize(Ljava/lang/String;)J

    move-result-wide v2

    const-string/jumbo v1, "StorageMeasurement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getDirectorySize("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") returned "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v2

    :catch_0
    move-exception v0

    const-string/jumbo v1, "StorageMeasurement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Could not read memory from default container service for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 v4, 0x0

    return-wide v4
.end method

.method public static getFolderSize(Ljava/io/File;)J
    .locals 8

    const-wide/16 v2, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v4, 0x0

    array-length v5, v1

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v0, v1, v4

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->getFolderSize(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr v2, v6

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v2, v6

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    return-wide v4

    :cond_2
    return-wide v2
.end method

.method private invalidate()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mMeasurementHandler:Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private measureExactStorage(Lcom/android/internal/app/IMediaContainerService;)V
    .locals 40

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mContext:Landroid/content/Context;

    const-class v7, Landroid/os/UserManager;

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/os/UserManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    invoke-virtual/range {v33 .. v33}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v35

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Landroid/os/UserManager;->getEnabledProfiles(I)Ljava/util/List;

    move-result-object v8

    new-instance v6, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    invoke-direct {v6}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mMeasurementHandler:Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    const/4 v7, 0x4

    invoke-virtual {v5, v7, v6}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/VolumeInfo;

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/UserInfo;

    iget v0, v15, Landroid/content/pm/UserInfo;->id:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    move/from16 v0, v32

    invoke-virtual {v5, v0}, Landroid/os/storage/VolumeInfo;->getPathForUser(I)Ljava/io/File;

    move-result-object v14

    new-instance v19, Ljava/util/HashMap;

    sget-object v5, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->sMeasureMediaTypes:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    move-object/from16 v0, v19

    invoke-direct {v0, v5}, Ljava/util/HashMap;-><init>(I)V

    iget-object v5, v6, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Landroid/util/SparseArray;

    move/from16 v0, v32

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v5, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->sMeasureMediaTypes:Ljava/util/Set;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :goto_1
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    new-instance v23, Ljava/io/File;

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-direct {v0, v14, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->getDirectorySize(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_1
    iget-object v5, v6, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->audioSize:Landroid/util/SparseLongArray;

    sget-object v7, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->URI_AUDIO_FILE:Landroid/net/Uri;

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v7, v1}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->getMediaSize(Landroid/net/Uri;I)J

    move-result-wide v38

    move/from16 v0, v32

    move-wide/from16 v1, v38

    invoke-static {v5, v0, v1, v2}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->addValue(Landroid/util/SparseLongArray;IJ)V

    iget-object v5, v6, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->imageSize:Landroid/util/SparseLongArray;

    sget-object v7, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->URI_IMAGE_FILE:Landroid/net/Uri;

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v7, v1}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->getMediaSize(Landroid/net/Uri;I)J

    move-result-wide v38

    move/from16 v0, v32

    move-wide/from16 v1, v38

    invoke-static {v5, v0, v1, v2}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->addValue(Landroid/util/SparseLongArray;IJ)V

    iget-object v5, v6, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->videoSize:Landroid/util/SparseLongArray;

    sget-object v7, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->URI_VIDEO_FILE:Landroid/net/Uri;

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v7, v1}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->getMediaSize(Landroid/net/Uri;I)J

    move-result-wide v38

    move/from16 v0, v32

    move-wide/from16 v1, v38

    invoke-static {v5, v0, v1, v2}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->addValue(Landroid/util/SparseLongArray;IJ)V

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v5

    const/4 v7, 0x2

    if-ne v5, v7, :cond_3

    invoke-interface/range {v35 .. v35}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v31

    :goto_2
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/content/pm/UserInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    move-object/from16 v0, v30

    iget v7, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v7}, Landroid/os/storage/VolumeInfo;->getPathForUser(I)Ljava/io/File;

    move-result-object v34

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->getDirectorySize(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J

    move-result-wide v26

    iget-object v5, v6, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->usersSize:Landroid/util/SparseLongArray;

    move-object/from16 v0, v30

    iget v7, v0, Landroid/content/pm/UserInfo;->id:I

    move-wide/from16 v0, v26

    invoke-static {v5, v7, v0, v1}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->addValue(Landroid/util/SparseLongArray;IJ)V

    goto :goto_2

    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v18

    if-eqz v18, :cond_4

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v38

    move-wide/from16 v0, v38

    iput-wide v0, v6, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->totalSize:J

    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/VolumeInfo;

    if-eqz v5, :cond_6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v24

    :goto_3
    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lcom/android/internal/app/IMediaContainerService;->getFileSystemStats(Ljava/lang/String;)[J

    move-result-object v25

    const/4 v5, 0x0

    aget-wide v38, v25, v5

    move-wide/from16 v0, v38

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mTotalSize:J

    const/4 v5, 0x1

    aget-wide v38, v25, v5

    move-wide/from16 v0, v38

    iput-wide v0, v6, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->availSize:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    iget-wide v0, v6, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->totalSize:J

    move-wide/from16 v38, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->getDeviceTotalSize(J)J

    move-result-wide v20

    iget-wide v0, v6, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->totalSize:J

    move-wide/from16 v38, v0

    sub-long v38, v20, v38

    move-wide/from16 v0, v38

    iput-wide v0, v6, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->systemSize:J

    move-wide/from16 v0, v20

    iput-wide v0, v6, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->deviceTotalSize:J

    iget-wide v0, v6, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->deviceTotalSize:J

    move-wide/from16 v38, v0

    move-wide/from16 v0, v38

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mTotalSize:J

    iget-wide v0, v6, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->availSize:J

    move-wide/from16 v38, v0

    move-wide/from16 v0, v38

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mAvailSize:J

    iget-wide v0, v6, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->systemSize:J

    move-wide/from16 v38, v0

    move-wide/from16 v0, v38

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mSystemMemSize:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_a

    const/16 v5, 0x2200

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v13

    new-instance v36, Ljava/util/ArrayList;

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_5
    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ApplicationInfo;

    iget-object v5, v11, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move-object/from16 v0, v36

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_6
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_3

    :catch_0
    move-exception v17

    const-string/jumbo v5, "StorageMeasurement"

    const-string/jumbo v7, "Problem in container service"

    move-object/from16 v0, v17

    invoke-static {v5, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    :cond_7
    invoke-interface/range {v35 .. v35}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface/range {v36 .. v36}, Ljava/util/List;->size()I

    move-result v7

    mul-int v10, v5, v7

    if-nez v10, :cond_8

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_8
    new-instance v4, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$StatsObserver;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    const/4 v5, 0x1

    invoke-direct/range {v4 .. v10}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$StatsObserver;-><init>(ZLcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;ILjava/util/List;Landroid/os/Message;I)V

    invoke-interface/range {v35 .. v35}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v31

    :cond_9
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/content/pm/UserInfo;

    invoke-interface/range {v36 .. v36}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ApplicationInfo;

    iget-object v5, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v30

    iget v7, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v7, v4}, Landroid/content/pm/PackageManager;->getPackageSizeInfoAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V

    goto :goto_6

    :cond_a
    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_b
    return-void
.end method

.method private setMetaSize(Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mContext:Landroid/content/Context;

    const-class v13, Landroid/os/UserManager;

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/UserManager;

    invoke-virtual {v10}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v11

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v12

    invoke-virtual {v10, v12}, Landroid/os/UserManager;->getEnabledProfiles(I)Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v12}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:Landroid/util/SparseLongArray;

    invoke-virtual {v12, v7}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v12

    sget-object v14, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->URI_AUDIO_FILE:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v7}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->getAppMediaSize(Landroid/net/Uri;I)J

    move-result-wide v14

    sget-object v16, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->URI_VIDEO_FILE:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v7}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->getAppMediaSize(Landroid/net/Uri;I)J

    move-result-wide v16

    add-long v14, v14, v16

    sget-object v16, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->URI_IMAGE_FILE:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v7}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->getAppMediaSize(Landroid/net/Uri;I)J

    move-result-wide v16

    add-long v14, v14, v16

    sub-long v2, v12, v14

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:Landroid/util/SparseLongArray;

    invoke-virtual {v12, v7, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->deviceTotalSize:J

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->availSize:J

    sub-long/2addr v12, v14

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->systemSize:J

    sub-long/2addr v12, v14

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->audioSize:Landroid/util/SparseLongArray;

    invoke-virtual {v14, v7}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v14

    sub-long/2addr v12, v14

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->videoSize:Landroid/util/SparseLongArray;

    invoke-virtual {v14, v7}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v14

    sub-long/2addr v12, v14

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->imageSize:Landroid/util/SparseLongArray;

    invoke-virtual {v14, v7}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v14

    sub-long/2addr v12, v14

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:Landroid/util/SparseLongArray;

    invoke-virtual {v14, v7}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v14

    sub-long/2addr v12, v14

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    sub-long v8, v12, v14

    const-string/jumbo v12, "StorageMeasurement"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "1 : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->deviceTotalSize:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " /2 : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->availSize:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " /3 : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->systemSize:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " /4 : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->audioSize:Landroid/util/SparseLongArray;

    invoke-virtual {v14, v7}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " /5 : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->videoSize:Landroid/util/SparseLongArray;

    invoke-virtual {v14, v7}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " /6 : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->imageSize:Landroid/util/SparseLongArray;

    invoke-virtual {v14, v7}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " /7 : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->imageSize:Landroid/util/SparseLongArray;

    invoke-virtual {v14, v7}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " /8 : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:Landroid/util/SparseLongArray;

    invoke-virtual {v14, v7}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " /9 : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v12, "StorageMeasurement"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "metaSize : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " / userId "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v12, 0x0

    cmp-long v12, v8, v12

    if-gez v12, :cond_0

    const-wide/16 v8, 0x0

    :cond_0
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->miscSize:Landroid/util/SparseLongArray;

    invoke-static {v12, v7, v8, v9}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->addValue(Landroid/util/SparseLongArray;IJ)V

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->metaSize:Landroid/util/SparseLongArray;

    invoke-static {v12, v7, v8, v9}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->addValue(Landroid/util/SparseLongArray;IJ)V

    goto/16 :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public forceMeasure()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->invalidate()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->measure()V

    return-void
.end method

.method public getAppMediaSize(Landroid/net/Uri;I)J
    .locals 13

    const/4 v12, 0x0

    const/4 v4, 0x0

    const-wide/16 v10, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "/storage/emulated/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/Android/media/%/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "SUM(_size)"

    aput-object v0, v2, v12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "_data LIKE \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_1
    return-wide v10
.end method

.method public getDeviceTotalSize(J)J
    .locals 11

    const/4 v4, 0x2

    const-wide/16 v2, 0x0

    new-instance v5, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v6

    add-long v0, p1, v6

    :goto_0
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    int-to-double v8, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-long v6, v6

    const-wide/32 v8, 0x40000000

    mul-long v2, v8, v6

    cmp-long v6, v0, v2

    if-gtz v6, :cond_0

    iput-wide v2, p0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mTotalSize:J

    return-wide v2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public getKnoxTotalSize(I)J
    .locals 20

    const-wide/16 v12, 0x0

    const-string/jumbo v14, "/data/knox/data/"

    const-string/jumbo v15, "/data/user/"

    const-string/jumbo v9, "/storage/emulated/"

    const-string/jumbo v10, "/mnt/knox/default/emulated/"

    const-string/jumbo v11, "/data/knox/sdcard/"

    new-instance v3, Ljava/io/File;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    if-eqz v8, :cond_2

    const/16 v16, 0x0

    array-length v0, v8

    move/from16 v17, v0

    :goto_0
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_2

    aget-object v2, v8, v16

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->getFolderSize(Ljava/io/File;)J

    move-result-wide v18

    add-long v12, v12, v18

    :goto_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v18

    add-long v12, v12, v18

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    add-long v12, v18, v16

    :cond_2
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    if-eqz v8, :cond_5

    const/16 v16, 0x0

    array-length v0, v8

    move/from16 v17, v0

    :goto_2
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_5

    aget-object v2, v8, v16

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->getFolderSize(Ljava/io/File;)J

    move-result-wide v18

    add-long v12, v12, v18

    :goto_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v18

    add-long v12, v12, v18

    goto :goto_3

    :cond_4
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v16

    add-long v12, v12, v16

    :cond_5
    if-eqz v5, :cond_8

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v16

    if-eqz v16, :cond_8

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v16

    if-eqz v16, :cond_7

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    if-eqz v8, :cond_8

    const/16 v16, 0x0

    array-length v0, v8

    move/from16 v17, v0

    :goto_4
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_8

    aget-object v2, v8, v16

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->getFolderSize(Ljava/io/File;)J

    move-result-wide v18

    add-long v12, v12, v18

    :goto_5
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v18

    add-long v12, v12, v18

    goto :goto_5

    :cond_7
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v16

    add-long v12, v12, v16

    :cond_8
    if-eqz v6, :cond_b

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v16

    if-eqz v16, :cond_b

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v16

    if-eqz v16, :cond_a

    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    if-eqz v8, :cond_b

    const/16 v16, 0x0

    array-length v0, v8

    move/from16 v17, v0

    :goto_6
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_b

    aget-object v2, v8, v16

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v18

    if-eqz v18, :cond_9

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->getFolderSize(Ljava/io/File;)J

    move-result-wide v18

    add-long v12, v12, v18

    :goto_7
    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    :cond_9
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v18

    add-long v12, v12, v18

    goto :goto_7

    :cond_a
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v16

    add-long v12, v12, v16

    :cond_b
    if-eqz v7, :cond_e

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v16

    if-eqz v16, :cond_e

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v16

    if-eqz v16, :cond_d

    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    if-eqz v8, :cond_e

    const/16 v16, 0x0

    array-length v0, v8

    move/from16 v17, v0

    :goto_8
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_e

    aget-object v2, v8, v16

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v18

    if-eqz v18, :cond_c

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->getFolderSize(Ljava/io/File;)J

    move-result-wide v18

    add-long v12, v12, v18

    :goto_9
    add-int/lit8 v16, v16, 0x1

    goto :goto_8

    :cond_c
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v18

    add-long v12, v12, v18

    goto :goto_9

    :cond_d
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v16

    add-long v12, v12, v16

    :cond_e
    const-string/jumbo v16, "StorageMeasurement"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Knox total size : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v12
.end method

.method public getMediaSize(Landroid/net/Uri;I)J
    .locals 14

    const-wide/16 v12, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "/storage/emulated/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "SUM(_size)"

    const/4 v1, 0x0

    aput-object v0, v2, v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "_data LIKE \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-wide v12

    :catch_0
    move-exception v10

    goto :goto_0
.end method

.method public measure()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mMeasurementHandler:Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mMeasurementHandler:Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mMeasurementHandler:Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mMeasurementHandler:Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setReceiver(Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method
