.class public Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;
.super Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;
.source "CameraConstrainedHighSpeedCaptureSessionImpl.java"

# interfaces
.implements Landroid/hardware/camera2/impl/CameraCaptureSessionCore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl$WrapperCallback;
    }
.end annotation


# instance fields
.field private final mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private final mSessionImpl:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;


# direct methods
.method constructor <init>(ILandroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;Landroid/hardware/camera2/impl/CameraDeviceImpl;Landroid/os/Handler;ZLandroid/hardware/camera2/CameraCharacteristics;)V
    .locals 8

    invoke-direct {p0}, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;-><init>()V

    iput-object p7, p0, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    new-instance v3, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl$WrapperCallback;

    invoke-direct {v3, p0, p2}, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl$WrapperCallback;-><init>(Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    new-instance v0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    const/4 v2, 0x0

    move v1, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;-><init>(ILandroid/view/Surface;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;Landroid/hardware/camera2/impl/CameraDeviceImpl;Landroid/os/Handler;Z)V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;->mSessionImpl:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    return-void
.end method

.method private isConstrainedHighSpeedRequestList(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;)Z"
        }
    .end annotation

    const-string/jumbo v2, "High speed request list"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkCollectionNotEmpty(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest;->isPartOfCRequestList()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_1
    const/4 v2, 0x1

    return v2
.end method


# virtual methods
.method public abortCaptures()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;->mSessionImpl:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->abortCaptures()V

    return-void
.end method

.method public capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Constrained high speed session doesn\'t support this method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;",
            "Landroid/os/Handler;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;->isConstrainedHighSpeedRequestList(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Only request lists created by createHighSpeedRequestList() can be submitted to a constrained high speed capture session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;->mSessionImpl:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;->mSessionImpl:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->close()V

    return-void
.end method

.method public createHighSpeedRequestList(Landroid/hardware/camera2/CaptureRequest;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CaptureRequest;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v15, "Input capture request must not be null"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/CaptureRequest;->getTargets()Ljava/util/Collection;

    move-result-object v7

    sget-object v14, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Range;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v15, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v14, v15}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/StreamConfigurationMap;

    invoke-static {v7, v4, v1}, Landroid/hardware/camera2/utils/SurfaceUtils;->checkConstrainedHighSpeedSurfaces(Ljava/util/Collection;Landroid/util/Range;Landroid/hardware/camera2/params/StreamConfigurationMap;)V

    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    div-int/lit8 v10, v14, 0x1e

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/CaptureRequest;->getNativeCopy()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v14

    invoke-direct {v11, v14}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    new-instance v13, Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v14, 0x0

    const/4 v15, -0x1

    invoke-direct {v13, v11, v14, v15}, Landroid/hardware/camera2/CaptureRequest$Builder;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;ZI)V

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Surface;

    const/4 v12, 0x0

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_2

    invoke-static {v3}, Landroid/hardware/camera2/utils/SurfaceUtils;->isSurfaceForHwVideoEncoder(Landroid/view/Surface;)Z

    move-result v14

    if-eqz v14, :cond_2

    sget-object v14, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_0
    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/hardware/camera2/CaptureRequest$Builder;->setPartOfCHSRequestList(Z)V

    const/4 v2, 0x0

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_3

    new-instance v11, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/CaptureRequest;->getNativeCopy()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v14

    invoke-direct {v11, v14}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    new-instance v2, Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v14, 0x0

    const/4 v15, -0x1

    invoke-direct {v2, v11, v14, v15}, Landroid/hardware/camera2/CaptureRequest$Builder;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;ZI)V

    sget-object v14, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v15, 0x3

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v2, v14, v15}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/Surface;

    invoke-virtual {v2, v12}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Landroid/hardware/camera2/CaptureRequest$Builder;->setPartOfCHSRequestList(Z)V

    move-object v8, v3

    invoke-static {v3}, Landroid/hardware/camera2/utils/SurfaceUtils;->isSurfaceForHwVideoEncoder(Landroid/view/Surface;)Z

    move-result v14

    if-nez v14, :cond_1

    move-object v8, v12

    :cond_1
    invoke-virtual {v13, v8}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    :goto_1
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v10, :cond_5

    if-nez v5, :cond_4

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v14

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    sget-object v14, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v15, 0x3

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v13, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v13}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v14

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    invoke-static {v9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v14

    return-object v14
.end method

.method public createHighSpeedRequestList(Landroid/hardware/camera2/CaptureRequest;I)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CaptureRequest;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v16, "Input capture request must not be null"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/CaptureRequest;->getTargets()Ljava/util/Collection;

    move-result-object v7

    sget-object v15, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    div-int v10, v15, p2

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/CaptureRequest;->getNativeCopy()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v15

    invoke-direct {v11, v15}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    new-instance v13, Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v15, 0x0

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-direct {v13, v11, v15, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;ZI)V

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v3, 0x0

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-lt v15, v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/Surface;

    invoke-static {v12}, Landroid/hardware/camera2/utils/SurfaceUtils;->isFlexibleConsumer(Landroid/view/Surface;)Z

    move-result v3

    :cond_1
    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v15

    const/16 v16, 0x3

    move/from16 v0, v16

    if-lt v15, v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/Surface;

    invoke-static {v14}, Landroid/hardware/camera2/utils/SurfaceUtils;->isFlexibleConsumer(Landroid/view/Surface;)Z

    move-result v3

    :cond_2
    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    invoke-static {v1}, Landroid/hardware/camera2/utils/SurfaceUtils;->isSurfaceForHwVideoEncoder(Landroid/view/Surface;)Z

    move-result v15

    if-nez v15, :cond_4

    :cond_3
    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    if-eqz v3, :cond_6

    :cond_4
    sget-object v15, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_0
    const/4 v15, 0x1

    invoke-virtual {v13, v15}, Landroid/hardware/camera2/CaptureRequest$Builder;->setPartOfCHSRequestList(Z)V

    const/4 v6, 0x0

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_8

    new-instance v11, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/CaptureRequest;->getNativeCopy()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v15

    invoke-direct {v11, v15}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    new-instance v6, Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v15, 0x0

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-direct {v6, v11, v15, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;ZI)V

    sget-object v15, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v16, 0x3

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-virtual {v6, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    invoke-virtual {v6, v12}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    const/4 v15, 0x1

    invoke-virtual {v6, v15}, Landroid/hardware/camera2/CaptureRequest$Builder;->setPartOfCHSRequestList(Z)V

    if-nez v3, :cond_7

    move-object v8, v1

    invoke-static {v1}, Landroid/hardware/camera2/utils/SurfaceUtils;->isSurfaceForHwVideoEncoder(Landroid/view/Surface;)Z

    move-result v15

    if-nez v15, :cond_5

    move-object v8, v12

    :cond_5
    invoke-virtual {v13, v8}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    :goto_1
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v10, :cond_c

    if-nez v4, :cond_b

    if-eqz v6, :cond_b

    invoke-virtual {v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v15

    invoke-interface {v9, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    sget-object v15, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v16, 0x3

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_7
    invoke-virtual {v13, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    goto :goto_1

    :cond_8
    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v15

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v15, v0, :cond_a

    new-instance v11, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/CaptureRequest;->getNativeCopy()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v15

    invoke-direct {v11, v15}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    new-instance v6, Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v15, 0x0

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-direct {v6, v11, v15, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;ZI)V

    sget-object v15, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v16, 0x3

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-virtual {v6, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    invoke-virtual {v6, v12}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    invoke-virtual {v6, v14}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    const/4 v15, 0x1

    invoke-virtual {v6, v15}, Landroid/hardware/camera2/CaptureRequest$Builder;->setPartOfCHSRequestList(Z)V

    move-object v8, v1

    invoke-static {v1}, Landroid/hardware/camera2/utils/SurfaceUtils;->isSurfaceForHwVideoEncoder(Landroid/view/Surface;)Z

    move-result v15

    if-nez v15, :cond_9

    move-object v8, v12

    :cond_9
    invoke-virtual {v13, v8}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    goto :goto_1

    :cond_a
    invoke-virtual {v13, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    goto :goto_1

    :cond_b
    invoke-virtual {v13}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v15

    invoke-interface {v9, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_c
    invoke-static {v9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v15

    return-object v15
.end method

.method public finalizeOutputConfigurations(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;->mSessionImpl:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->finalizeOutputConfigurations(Ljava/util/List;)V

    return-void
.end method

.method public getDevice()Landroid/hardware/camera2/CameraDevice;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;->mSessionImpl:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->getDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceStateCallback()Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;->mSessionImpl:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->getDeviceStateCallback()Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;

    move-result-object v0

    return-object v0
.end method

.method public getInputSurface()Landroid/view/Surface;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isAborting()Z
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;->mSessionImpl:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->isAborting()Z

    move-result v0

    return v0
.end method

.method public isReprocessable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public prepare(ILandroid/view/Surface;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;->mSessionImpl:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->prepare(ILandroid/view/Surface;)V

    return-void
.end method

.method public prepare(Landroid/view/Surface;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;->mSessionImpl:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->prepare(Landroid/view/Surface;)V

    return-void
.end method

.method public replaceSessionClose()V
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;->mSessionImpl:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->replaceSessionClose()V

    return-void
.end method

.method public setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;",
            "Landroid/os/Handler;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;->isConstrainedHighSpeedRequestList(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Only request lists created by createHighSpeedRequestList() can be submitted to a constrained high speed capture session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;->mSessionImpl:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result v0

    return v0
.end method

.method public setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Constrained high speed session doesn\'t support this method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stopRepeating()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;->mSessionImpl:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->stopRepeating()V

    return-void
.end method

.method public tearDown(Landroid/view/Surface;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;->mSessionImpl:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->tearDown(Landroid/view/Surface;)V

    return-void
.end method
