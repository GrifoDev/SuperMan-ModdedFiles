.class public Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;
.super Ljava/lang/Object;
.source "LegacyFaceDetectMapper.java"


# static fields
.field private static final DEBUG:Z

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mCamera:Landroid/hardware/Camera;

.field private mFaceDetectEnabled:Z

.field private mFaceDetectReporting:Z

.field private mFaceDetectScenePriority:Z

.field private final mFaceDetectSupported:Z

.field private mFaces:[Landroid/hardware/Camera$Face;

.field private mFacesPrev:[Landroid/hardware/Camera$Face;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaceDetectEnabled:Z

    return v0
.end method

.method static synthetic -get2(Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -set0(Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;[Landroid/hardware/Camera$Face;)[Landroid/hardware/Camera$Face;
    .locals 0

    iput-object p1, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaces:[Landroid/hardware/Camera$Face;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "LegacyFaceDetectMapper"

    sput-object v0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/Camera;Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaceDetectEnabled:Z

    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaceDetectScenePriority:Z

    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaceDetectReporting:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mLock:Ljava/lang/Object;

    const-string/jumbo v0, "camera must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera;

    iput-object v0, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mCamera:Landroid/hardware/Camera;

    const-string/jumbo v0, "characteristics must not be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_AVAILABLE_FACE_DETECT_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p2, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaceDetectSupported:Z

    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaceDetectSupported:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mCamera:Landroid/hardware/Camera;

    new-instance v1, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper$1;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper$1;-><init>(Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;)V

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    return-void
.end method


# virtual methods
.method public mapResultFaces(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/legacy/LegacyRequest;)V
    .locals 17

    const-string/jumbo v13, "result must not be null"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v13, "legacyRequest must not be null"

    move-object/from16 v0, p2

    invoke-static {v0, v13}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mLock:Ljava/lang/Object;

    monitor-enter v14

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaceDetectReporting:Z

    if-eqz v13, :cond_0

    const/4 v6, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaceDetectReporting:Z

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaces:[Landroid/hardware/Camera$Face;

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v7, v0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaceDetectScenePriority:Z

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFacesPrev:[Landroid/hardware/Camera$Face;

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFacesPrev:[Landroid/hardware/Camera$Face;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v14

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/hardware/camera2/legacy/LegacyRequest;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    move-object/from16 v0, p2

    iget-object v11, v0, Landroid/hardware/camera2/legacy/LegacyRequest;->captureRequest:Landroid/hardware/camera2/CaptureRequest;

    move-object/from16 v0, p2

    iget-object v9, v0, Landroid/hardware/camera2/legacy/LegacyRequest;->previewSize:Landroid/util/Size;

    move-object/from16 v0, p2

    iget-object v8, v0, Landroid/hardware/camera2/legacy/LegacyRequest;->parameters:Landroid/hardware/Camera$Parameters;

    sget-object v13, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v13}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    sget-object v13, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v11, v13}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Rect;

    invoke-static {v1, v13, v9, v8}, Landroid/hardware/camera2/legacy/ParameterUtils;->convertScalerCropRegion(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/util/Size;Landroid/hardware/Camera$Parameters;)Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;

    move-result-object v12

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v5, :cond_3

    const/4 v13, 0x0

    array-length v14, v5

    :goto_2
    if-ge v13, v14, :cond_3

    aget-object v4, v5, v13

    if-eqz v4, :cond_2

    invoke-static {v4, v1, v12}, Landroid/hardware/camera2/legacy/ParameterUtils;->convertFaceFromLegacy(Landroid/hardware/Camera$Face;Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;)Landroid/hardware/camera2/params/Face;

    move-result-object v15

    invoke-interface {v3, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    :catchall_0
    move-exception v13

    monitor-exit v14

    throw v13

    :cond_2
    sget-object v15, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->TAG:Ljava/lang/String;

    const-string/jumbo v16, "mapResultFaces - read NULL face from camera1 device"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_3
    sget-object v14, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    const/4 v13, 0x0

    new-array v13, v13, [Landroid/hardware/camera2/params/Face;

    invoke-interface {v3, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Landroid/hardware/camera2/params/Face;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v13}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    sget-object v13, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    if-eqz v7, :cond_4

    sget-object v13, Landroid/hardware/camera2/CaptureResult;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public processFaceDetectMode(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/Camera$Parameters;)V
    .locals 7

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string/jumbo v3, "captureRequest must not be null"

    invoke-static {p1, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p1, v3, v6}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v3, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaceDetectSupported:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    sget-object v3, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "processFaceDetectMode - Ignoring statistics.faceDetectMode; face detection is not available"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p1, v3, v6}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v4, :cond_1

    iget-boolean v3, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaceDetectSupported:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    sget-object v3, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "processFaceDetectMode - ignoring control.sceneMode == FACE_PRIORITY; face detection is not available"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    packed-switch v1, :pswitch_data_0

    sget-object v3, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "processFaceDetectMode - ignoring unknown statistics.faceDetectMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    sget-object v3, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "processFaceDetectMode - statistics.faceDetectMode == FULL unsupported, downgrading to SIMPLE"

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :pswitch_1
    if-nez v1, :cond_3

    if-ne v2, v4, :cond_4

    const/4 v0, 0x1

    :goto_0
    iget-object v6, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-boolean v3, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaceDetectEnabled:Z

    if-eq v0, v3, :cond_2

    if-eqz v0, :cond_5

    iget-object v3, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->startFaceDetection()V

    :goto_1
    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaceDetectEnabled:Z

    if-ne v2, v4, :cond_6

    move v3, v4

    :goto_2
    iput-boolean v3, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaceDetectScenePriority:Z

    if-eqz v1, :cond_7

    move v3, v4

    :goto_3
    iput-boolean v3, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaceDetectReporting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v6

    return-void

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    :try_start_1
    iget-object v3, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->stopFaceDetection()V

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaces:[Landroid/hardware/Camera$Face;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v6

    throw v3

    :cond_6
    move v3, v5

    goto :goto_2

    :cond_7
    move v3, v5

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
