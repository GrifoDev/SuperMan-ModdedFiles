.class public final Lcom/samsung/android/media/SemMediaResourceHelper;
.super Ljava/lang/Object;
.source "SemMediaResourceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/SemMediaResourceHelper$CodecStateChangedListener;,
        Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;,
        Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;,
        Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;,
        Lcom/samsung/android/media/SemMediaResourceHelper$VideoCapacityErrorListener;
    }
.end annotation


# static fields
.field public static final CODEC_STATE_RUNNING:I = 0x1

.field public static final CODEC_STATE_WAITING:I = 0x0

.field private static final DEBUG:Z = true

.field private static final EVENT_ADD_RESOURCE:I = 0x1

.field private static final EVENT_CAPACITY_ERROR:I = 0x4

.field private static final EVENT_ERROR:I = 0x64

.field private static final EVENT_REMOVE_RESOURCE:I = 0x2

.field private static final EVENT_UPDATE_STATE:I = 0x3

.field private static final LISTENER_TYPE_CAPACITY_ERROR:I = 0x2

.field private static final LISTENER_TYPE_INFO:I = 0x0

.field private static final LISTENER_TYPE_STATE:I = 0x1

.field private static final PARAMETER_CAPACITY_MAX:I = 0x0

.field private static final PARAMETER_CAPACITY_REMAINED:I = 0x1

.field public static final RESOURCE_PRIORITY_HIGH:I = 0xa

.field public static final RESOURCE_PRIORITY_LOW:I = 0x0

.field public static final RESOURCE_TYPE_ALL:I = 0x0

.field public static final RESOURCE_TYPE_AUDIO:I = 0x1

.field public static final RESOURCE_TYPE_VIDEO:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SemMediaResourceHelper"

.field private static mMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;


# instance fields
.field private mCodecStateChangedListener:Lcom/samsung/android/media/SemMediaResourceHelper$CodecStateChangedListener;

.field private mEventHandler:Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;

.field private mNativeContext:J

.field private mOwnResourceEventExcluded:Z

.field private mPid:I

.field private mResourceInfoChangedListener:Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;

.field private mResourceType:I

.field private mVideoCapacityErrorListener:Lcom/samsung/android/media/SemMediaResourceHelper$VideoCapacityErrorListener;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/media/SemMediaResourceHelper;)Lcom/samsung/android/media/SemMediaResourceHelper$CodecStateChangedListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mCodecStateChangedListener:Lcom/samsung/android/media/SemMediaResourceHelper$CodecStateChangedListener;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/media/SemMediaResourceHelper;)Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mResourceInfoChangedListener:Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/media/SemMediaResourceHelper;)Lcom/samsung/android/media/SemMediaResourceHelper$VideoCapacityErrorListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mVideoCapacityErrorListener:Lcom/samsung/android/media/SemMediaResourceHelper$VideoCapacityErrorListener;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/media/SemMediaResourceHelper;->mMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    const-string/jumbo v0, "mediaresourcehelper"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(IZ)V
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mResourceInfoChangedListener:Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;

    iput-object v2, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mCodecStateChangedListener:Lcom/samsung/android/media/SemMediaResourceHelper$CodecStateChangedListener;

    iput-object v2, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mVideoCapacityErrorListener:Lcom/samsung/android/media/SemMediaResourceHelper$VideoCapacityErrorListener;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mPid:I

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;-><init>(Lcom/samsung/android/media/SemMediaResourceHelper;Lcom/samsung/android/media/SemMediaResourceHelper;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mEventHandler:Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;

    :goto_0
    iput p1, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mResourceType:I

    iput-boolean p2, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mOwnResourceEventExcluded:Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mPid:I

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/samsung/android/media/SemMediaResourceHelper;->native_setup(Ljava/lang/Object;)V

    const-string/jumbo v1, "SemMediaResourceHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SemMediaResourceHelper() resourceType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", ownResourceEventExcluded : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", myPid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mPid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;-><init>(Lcom/samsung/android/media/SemMediaResourceHelper;Lcom/samsung/android/media/SemMediaResourceHelper;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mEventHandler:Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;

    goto :goto_0

    :cond_1
    iput-object v2, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mEventHandler:Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;

    goto :goto_0
.end method

.method public static declared-synchronized createInstance(IZ)Lcom/samsung/android/media/SemMediaResourceHelper;
    .locals 3

    const-class v1, Lcom/samsung/android/media/SemMediaResourceHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/media/SemMediaResourceHelper;->mMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/media/SemMediaResourceHelper;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/media/SemMediaResourceHelper;-><init>(IZ)V

    sput-object v0, Lcom/samsung/android/media/SemMediaResourceHelper;->mMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    :goto_0
    sget-object v0, Lcom/samsung/android/media/SemMediaResourceHelper;->mMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    const-string/jumbo v0, "SemMediaResourceHelper"

    const-string/jumbo v2, "SemMediaResourceHelper is already created"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private dropOwnResourceEvent(I)Z
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mOwnResourceEventExcluded:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mPid:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mPid:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method private makeMediaResourceInfo(Landroid/os/Parcel;)Ljava/util/ArrayList;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;",
            ">;"
        }
    .end annotation

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    if-lez v16, :cond_5

    const-string/jumbo v4, "SemMediaResourceHelper"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "makeMediaResourceInfo mOwnResourceEventExcluded : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/media/SemMediaResourceHelper;->mOwnResourceEventExcluded:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ", mPid : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/media/SemMediaResourceHelper;->mPid:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_0
    move/from16 v0, v16

    if-ge v2, v0, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v4, v0, :cond_3

    const/4 v6, 0x1

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v4, v0, :cond_4

    const/4 v14, 0x1

    :goto_2
    const-string/jumbo v4, "SemMediaResourceHelper"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "["

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    add-int/lit8 v18, v2, 0x1

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "] makeMediaResourceInfo resourceType : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " isSecured : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ", pid : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ", client id : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/media/SemMediaResourceHelper;->mResourceType:I

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/media/SemMediaResourceHelper;->mResourceType:I

    if-ne v4, v5, :cond_2

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/media/SemMediaResourceHelper;->mOwnResourceEventExcluded:Z

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/media/SemMediaResourceHelper;->mOwnResourceEventExcluded:Z

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/media/SemMediaResourceHelper;->mPid:I

    if-lez v4, :cond_2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/media/SemMediaResourceHelper;->mPid:I

    if-eq v4, v7, :cond_2

    :cond_1
    new-instance v3, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v14}, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;-><init>(Lcom/samsung/android/media/SemMediaResourceHelper;IZIJIIIIZ)V

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_4
    const/4 v14, 0x0

    goto/16 :goto_2

    :cond_5
    return-object v15
.end method

.method private native native_enableObserver(IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private final native native_finalize()V
.end method

.method private native native_getCodecCapacity(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native native_getMediaResourceInfo(ILandroid/os/Parcel;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private final native native_release()V
.end method

.method private native native_setResourcePriority(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private final native native_setup(Ljava/lang/Object;)V
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 7

    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/media/SemMediaResourceHelper;

    if-nez v4, :cond_0

    const-string/jumbo v5, "SemMediaResourceHelper"

    const-string/jumbo v6, "semMediaResourceHelper ref is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v5, v4, Lcom/samsung/android/media/SemMediaResourceHelper;->mEventHandler:Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;

    if-eqz v5, :cond_3

    if-eqz p4, :cond_2

    move-object v3, p4

    check-cast v3, Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-direct {v4, v0}, Lcom/samsung/android/media/SemMediaResourceHelper;->dropOwnResourceEvent(I)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "SemMediaResourceHelper"

    const-string/jumbo v6, "Skip event. mOwnResourceEventExcluded is enabled and owned resource"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-direct {v4, v3}, Lcom/samsung/android/media/SemMediaResourceHelper;->makeMediaResourceInfo(Landroid/os/Parcel;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    move-object p4, v1

    :cond_2
    iget-object v5, v4, Lcom/samsung/android/media/SemMediaResourceHelper;->mEventHandler:Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;

    invoke-virtual {v5, p1, p2, p3, p4}, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v5, v4, Lcom/samsung/android/media/SemMediaResourceHelper;->mEventHandler:Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;

    invoke-virtual {v5, v2}, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaResourceHelper;->native_finalize()V

    return-void
.end method

.method public getMaxVideoCapacity()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemMediaResourceHelper;->native_getCodecCapacity(I)I

    move-result v0

    return v0
.end method

.method public final getMediaResourceInfo(I)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/media/SemMediaResourceHelper;->native_getMediaResourceInfo(ILandroid/os/Parcel;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemMediaResourceHelper;->makeMediaResourceInfo(Landroid/os/Parcel;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public getRemainedVideoCapacity()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemMediaResourceHelper;->native_getCodecCapacity(I)I

    move-result v0

    return v0
.end method

.method public release()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaResourceHelper;->native_release()V

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mEventHandler:Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mEventHandler:Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    iput-object v1, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mResourceInfoChangedListener:Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;

    iput-object v1, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mCodecStateChangedListener:Lcom/samsung/android/media/SemMediaResourceHelper$CodecStateChangedListener;

    iput-object v1, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mVideoCapacityErrorListener:Lcom/samsung/android/media/SemMediaResourceHelper$VideoCapacityErrorListener;

    iput-object v1, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mEventHandler:Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;

    sput-object v1, Lcom/samsung/android/media/SemMediaResourceHelper;->mMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    return-void
.end method

.method public setCodecStateChangedListener(Lcom/samsung/android/media/SemMediaResourceHelper$CodecStateChangedListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v1, 0x1

    iput-object p1, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mCodecStateChangedListener:Lcom/samsung/android/media/SemMediaResourceHelper$CodecStateChangedListener;

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mCodecStateChangedListener:Lcom/samsung/android/media/SemMediaResourceHelper$CodecStateChangedListener;

    if-eqz v0, :cond_0

    invoke-direct {p0, v1, v1}, Lcom/samsung/android/media/SemMediaResourceHelper;->native_enableObserver(IZ)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/media/SemMediaResourceHelper;->native_enableObserver(IZ)V

    goto :goto_0
.end method

.method public declared-synchronized setOwnResourceEventExcluded(Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "SemMediaResourceHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOwnResourceEventExcluded() ownResourceEventExcluded : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mOwnResourceEventExcluded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setResourceInfoChangedListener(Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mResourceInfoChangedListener:Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mResourceInfoChangedListener:Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/media/SemMediaResourceHelper;->native_enableObserver(IZ)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v1, v1}, Lcom/samsung/android/media/SemMediaResourceHelper;->native_enableObserver(IZ)V

    goto :goto_0
.end method

.method public setResourcePriority(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string/jumbo v0, "SemMediaResourceHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setResourcePriority(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/samsung/android/media/SemMediaResourceHelper;->native_setResourcePriority(I)V

    return-void
.end method

.method public declared-synchronized setResourceTypeForEvent(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "SemMediaResourceHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setResourceTypeForEvent() resourceType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mResourceType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setVideoCapacityErrorListener(Lcom/samsung/android/media/SemMediaResourceHelper$VideoCapacityErrorListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v1, 0x2

    iput-object p1, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mVideoCapacityErrorListener:Lcom/samsung/android/media/SemMediaResourceHelper$VideoCapacityErrorListener;

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mVideoCapacityErrorListener:Lcom/samsung/android/media/SemMediaResourceHelper$VideoCapacityErrorListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/media/SemMediaResourceHelper;->native_enableObserver(IZ)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/media/SemMediaResourceHelper;->native_enableObserver(IZ)V

    goto :goto_0
.end method
