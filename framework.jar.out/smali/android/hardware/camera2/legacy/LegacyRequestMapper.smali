.class public Landroid/hardware/camera2/legacy/LegacyRequestMapper;
.super Ljava/lang/Object;
.source "LegacyRequestMapper.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_JPEG_QUALITY:B = 0x55t

.field private static final TAG:Ljava/lang/String; = "LegacyRequestMapper"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkForCompleteGpsData(Landroid/location/Location;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static convertAeAntiBandingModeToLegacy(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "off"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "50hz"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "60hz"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "auto"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static convertAeFpsRangeToLegacy(Landroid/util/Range;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    const/4 v1, 0x2

    new-array v0, v1, [I

    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    const/4 v2, 0x1

    aput v1, v0, v2

    return-object v0
.end method

.method private static convertAwbModeToLegacy(I)Ljava/lang/String;
    .locals 3

    packed-switch p0, :pswitch_data_0

    const-string/jumbo v0, "LegacyRequestMapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "convertAwbModeToLegacy - unrecognized control.awbMode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "auto"

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "auto"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "incandescent"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "fluorescent"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "warm-fluorescent"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "daylight"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "cloudy-daylight"

    return-object v0

    :pswitch_6
    const-string/jumbo v0, "twilight"

    return-object v0

    :pswitch_7
    const-string/jumbo v0, "shade"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private static convertMeteringRegionsToLegacy(Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;[Landroid/hardware/camera2/params/MeteringRectangle;ILjava/lang/String;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;",
            "[",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v10, 0x1

    const/4 v7, 0x0

    if-eqz p2, :cond_0

    if-gtz p3, :cond_2

    :cond_0
    if-lez p3, :cond_1

    new-array v6, v10, [Landroid/hardware/Camera$Area;

    sget-object v8, Landroid/hardware/camera2/legacy/ParameterUtils;->CAMERA_AREA_DEFAULT:Landroid/hardware/Camera$Area;

    aput-object v8, v6, v7

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    return-object v6

    :cond_1
    return-object v6

    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    array-length v8, p2

    move v6, v7

    :goto_0
    if-ge v6, v8, :cond_4

    aget-object v5, p2, v6

    invoke-virtual {v5}, Landroid/hardware/camera2/params/MeteringRectangle;->getMeteringWeight()I

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_5

    const-string/jumbo v6, "LegacyRequestMapper"

    const-string/jumbo v8, "Only received metering rectangles with weight 0."

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-array v6, v10, [Landroid/hardware/Camera$Area;

    sget-object v8, Landroid/hardware/camera2/legacy/ParameterUtils;->CAMERA_AREA_DEFAULT:Landroid/hardware/Camera$Area;

    aput-object v8, v6, v7

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    return-object v6

    :cond_5
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {p3, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_6

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-static {p0, v5, p1}, Landroid/hardware/camera2/legacy/ParameterUtils;->convertMeteringRectangleToLegacy(Landroid/graphics/Rect;Landroid/hardware/camera2/params/MeteringRectangle;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;)Landroid/hardware/camera2/legacy/ParameterUtils$MeteringData;

    move-result-object v3

    iget-object v6, v3, Landroid/hardware/camera2/legacy/ParameterUtils$MeteringData;->meteringArea:Landroid/hardware/Camera$Area;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge p3, v6, :cond_7

    const-string/jumbo v6, "LegacyRequestMapper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "convertMeteringRegionsToLegacy - Too many requested "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " regions, ignoring all beyond the first "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-object v2
.end method

.method public static convertRequestMetadata(Landroid/hardware/camera2/legacy/LegacyRequest;)V
    .locals 58

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/legacy/LegacyRequest;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/legacy/LegacyRequest;->captureRequest:Landroid/hardware/camera2/CaptureRequest;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/legacy/LegacyRequest;->previewSize:Landroid/util/Size;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/legacy/LegacyRequest;->parameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v40, v0

    sget-object v53, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, v17

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    move-object/from16 v0, v45

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Landroid/graphics/Rect;

    move-object/from16 v0, v53

    move-object/from16 v1, v41

    move-object/from16 v2, v40

    invoke-static {v7, v0, v1, v2}, Landroid/hardware/camera2/legacy/ParameterUtils;->convertScalerCropRegion(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/util/Size;Landroid/hardware/Camera$Parameters;)Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;

    move-result-object v52

    invoke-virtual/range {v40 .. v40}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v53

    if-eqz v53, :cond_0

    move-object/from16 v0, v52

    iget v0, v0, Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;->zoomIndex:I

    move/from16 v53, v0

    move-object/from16 v0, v40

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    :cond_0
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_ABERRATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v54, 0x1

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    move-object/from16 v0, v45

    move-object/from16 v1, v53

    move-object/from16 v2, v54

    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/lang/Integer;

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v53, 0x1

    move/from16 v0, v53

    if-eq v6, v0, :cond_1

    const/16 v53, 0x2

    move/from16 v0, v53

    if-eq v6, v0, :cond_1

    const-string/jumbo v53, "LegacyRequestMapper"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "convertRequestToMetadata - Ignoring unsupported colorCorrection.aberrationMode = "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_ANTIBANDING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    move-object/from16 v0, v45

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    if-eqz v13, :cond_18

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v53

    invoke-static/range {v53 .. v53}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->convertAeAntiBandingModeToLegacy(I)Ljava/lang/String;

    move-result-object v31

    :goto_0
    if-eqz v31, :cond_2

    move-object/from16 v0, v40

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    :cond_2
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    move-object/from16 v0, v45

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/hardware/camera2/params/MeteringRectangle;

    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    move-object/from16 v0, v45

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v53

    if-eqz v53, :cond_3

    const-string/jumbo v53, "LegacyRequestMapper"

    const-string/jumbo v54, "convertRequestMetadata - control.awbRegions setting is not supported, ignoring value"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual/range {v40 .. v40}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v35

    const-string/jumbo v53, "AE"

    move-object/from16 v0, v52

    move/from16 v1, v35

    move-object/from16 v2, v53

    invoke-static {v7, v0, v10, v1, v2}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->convertMeteringRegionsToLegacy(Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;[Landroid/hardware/camera2/params/MeteringRectangle;ILjava/lang/String;)Ljava/util/List;

    move-result-object v36

    if-lez v35, :cond_4

    move-object/from16 v0, v40

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    :cond_4
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    move-object/from16 v0, v45

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-virtual/range {v40 .. v40}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v34

    const-string/jumbo v53, "AF"

    move-object/from16 v0, v52

    move/from16 v1, v34

    move-object/from16 v2, v53

    invoke-static {v7, v0, v12, v1, v2}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->convertMeteringRegionsToLegacy(Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;[Landroid/hardware/camera2/params/MeteringRectangle;ILjava/lang/String;)Ljava/util/List;

    move-result-object v22

    if-lez v34, :cond_5

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    :cond_5
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    move-object/from16 v0, v45

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Range;

    if-eqz v8, :cond_8

    invoke-static {v8}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->convertAeFpsRangeToLegacy(Landroid/util/Range;)[I

    move-result-object v30

    const/16 v44, 0x0

    invoke-virtual/range {v40 .. v40}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v53

    invoke-interface/range {v53 .. v53}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v43

    :cond_6
    invoke-interface/range {v43 .. v43}, Ljava/util/Iterator;->hasNext()Z

    move-result v53

    if-eqz v53, :cond_7

    invoke-interface/range {v43 .. v43}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v42

    check-cast v42, [I

    const/16 v53, 0x0

    aget v53, v42, v53

    move/from16 v0, v53

    int-to-double v0, v0

    move-wide/from16 v54, v0

    const-wide v56, 0x408f400000000000L    # 1000.0

    div-double v54, v54, v56

    invoke-static/range {v54 .. v55}, Ljava/lang/Math;->floor(D)D

    move-result-wide v54

    move-wide/from16 v0, v54

    double-to-int v0, v0

    move/from16 v53, v0

    move/from16 v0, v53

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v27, v0

    const/16 v53, 0x1

    aget v53, v42, v53

    move/from16 v0, v53

    int-to-double v0, v0

    move-wide/from16 v54, v0

    const-wide v56, 0x408f400000000000L    # 1000.0

    div-double v54, v54, v56

    invoke-static/range {v54 .. v55}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v54

    move-wide/from16 v0, v54

    double-to-int v0, v0

    move/from16 v53, v0

    move/from16 v0, v53

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v26, v0

    const/16 v53, 0x0

    aget v53, v30, v53

    move/from16 v0, v53

    move/from16 v1, v27

    if-ne v0, v1, :cond_6

    const/16 v53, 0x1

    aget v53, v30, v53

    move/from16 v0, v53

    move/from16 v1, v26

    if-ne v0, v1, :cond_6

    move-object/from16 v44, v42

    :cond_7
    if-eqz v44, :cond_19

    const/16 v53, 0x0

    aget v53, v44, v53

    const/16 v54, 0x1

    aget v54, v44, v54

    move-object/from16 v0, v40

    move/from16 v1, v53

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    :cond_8
    :goto_1
    sget-object v53, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, v17

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/util/Range;

    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v54, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    move-object/from16 v0, v45

    move-object/from16 v1, v53

    move-object/from16 v2, v54

    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/lang/Integer;

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v53

    move-object/from16 v0, v19

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v53

    if-nez v53, :cond_9

    const-string/jumbo v53, "LegacyRequestMapper"

    const-string/jumbo v54, "convertRequestMetadata - control.aeExposureCompensation is out of range, ignoring value"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, 0x0

    :cond_9
    move-object/from16 v0, v40

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v54, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v54

    invoke-virtual/range {v40 .. v40}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v55

    const/16 v56, 0x0

    invoke-static/range {v56 .. v56}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v56

    move-object/from16 v0, v45

    move-object/from16 v1, v53

    move-object/from16 v2, v54

    move/from16 v3, v55

    move-object/from16 v4, v56

    invoke-static {v0, v1, v2, v3, v4}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->getIfSupported(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;ZLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    if-eqz v9, :cond_a

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v53

    move-object/from16 v0, v40

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    :cond_a
    move-object/from16 v0, v45

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->mapAeAndFlashMode(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/Camera$Parameters;)V

    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v54, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    move-object/from16 v0, v45

    move-object/from16 v1, v53

    move-object/from16 v2, v54

    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/lang/Integer;

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual/range {v40 .. v40}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v53

    move-object/from16 v0, v53

    invoke-static {v11, v0}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->convertAfModeToLegacy(ILjava/util/List;)Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_b

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    :cond_b
    sget-object v54, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v53, 0x1

    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    invoke-virtual/range {v40 .. v40}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v53

    if-eqz v53, :cond_1a

    const/16 v53, 0x1

    :goto_2
    const/16 v56, 0x1

    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v56

    move-object/from16 v0, v45

    move-object/from16 v1, v54

    move-object/from16 v2, v55

    move/from16 v3, v53

    move-object/from16 v4, v56

    invoke-static {v0, v1, v2, v3, v4}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->getIfSupported(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;ZLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    const/16 v51, 0x0

    if-eqz v15, :cond_c

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v53

    invoke-static/range {v53 .. v53}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->convertAwbModeToLegacy(I)Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v40

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    :cond_c
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v54, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v54

    invoke-virtual/range {v40 .. v40}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v55

    const/16 v56, 0x0

    invoke-static/range {v56 .. v56}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v56

    move-object/from16 v0, v45

    move-object/from16 v1, v53

    move-object/from16 v2, v54

    move/from16 v3, v55

    move-object/from16 v4, v56

    invoke-static {v0, v1, v2, v3, v4}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->getIfSupported(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;ZLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    if-eqz v14, :cond_d

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v53

    move-object/from16 v0, v40

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    :cond_d
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v54, 0x1

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    move-object/from16 v0, v45

    move-object/from16 v1, v53

    move-object/from16 v2, v54

    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/lang/Integer;

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-static/range {v16 .. v16}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->filterSupportedCaptureIntent(I)I

    move-result v16

    const/16 v53, 0x3

    move/from16 v0, v16

    move/from16 v1, v53

    if-eq v0, v1, :cond_1b

    const/16 v53, 0x4

    move/from16 v0, v16

    move/from16 v1, v53

    if-ne v0, v1, :cond_1c

    const/16 v53, 0x1

    :goto_3
    move-object/from16 v0, v40

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v54, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    invoke-virtual/range {v40 .. v40}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result v55

    const/16 v56, 0x0

    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v56

    move-object/from16 v0, v45

    move-object/from16 v1, v53

    move-object/from16 v2, v54

    move/from16 v3, v55

    move-object/from16 v4, v56

    invoke-static {v0, v1, v2, v3, v4}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->getIfSupported(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;ZLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Ljava/lang/Integer;

    if-eqz v49, :cond_e

    invoke-virtual/range {v49 .. v49}, Ljava/lang/Integer;->intValue()I

    move-result v53

    const/16 v54, 0x1

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_1d

    const/16 v53, 0x1

    :goto_4
    move-object/from16 v0, v40

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    :cond_e
    invoke-virtual/range {v40 .. v40}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v53

    const-string/jumbo v54, "infinity"

    invoke-static/range {v53 .. v54}, Landroid/hardware/camera2/utils/ListUtils;->listContains(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v25

    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v54, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v54

    const/16 v55, 0x0

    invoke-static/range {v55 .. v55}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v55

    move-object/from16 v0, v45

    move-object/from16 v1, v53

    move-object/from16 v2, v54

    move/from16 v3, v25

    move-object/from16 v4, v55

    invoke-static {v0, v1, v2, v3, v4}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->getIfSupported(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;ZLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Float;

    if-eqz v23, :cond_f

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v53

    const/16 v54, 0x0

    cmpl-float v53, v53, v54

    if-eqz v53, :cond_10

    :cond_f
    const-string/jumbo v53, "LegacyRequestMapper"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "convertRequestToMetadata - Ignoring android.lens.focusDistance "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v54

    const-string/jumbo v55, ", only 0.0f is supported"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    invoke-virtual/range {v40 .. v40}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v53

    if-eqz v53, :cond_11

    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v54, 0x1

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    move-object/from16 v0, v45

    move-object/from16 v1, v53

    move-object/from16 v2, v54

    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/lang/Integer;

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v20

    packed-switch v20, :pswitch_data_0

    const-string/jumbo v53, "LegacyRequestMapper"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "Control mode "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    const-string/jumbo v55, " is unsupported, defaulting to AUTO"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v38, "auto"

    :goto_5
    move-object/from16 v0, v40

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    :cond_11
    invoke-virtual/range {v40 .. v40}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v53

    if-eqz v53, :cond_12

    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->CONTROL_EFFECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v54, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    move-object/from16 v0, v45

    move-object/from16 v1, v53

    move-object/from16 v2, v54

    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/lang/Integer;

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v21

    invoke-static/range {v21 .. v21}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->convertEffectModeToLegacy(I)Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_1f

    move-object/from16 v0, v40

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    :cond_12
    :goto_6
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->SENSOR_TEST_PATTERN_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v54, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    move-object/from16 v0, v45

    move-object/from16 v1, v53

    move-object/from16 v2, v54

    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/lang/Integer;

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v50

    if-eqz v50, :cond_13

    const-string/jumbo v53, "LegacyRequestMapper"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "convertRequestToMetadata - ignoring sensor.testPatternMode "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    const-string/jumbo v55, "; only OFF is supported"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureRequest$Key;

    move-object/from16 v0, v45

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/location/Location;

    if-eqz v33, :cond_21

    invoke-static/range {v33 .. v33}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->checkForCompleteGpsData(Landroid/location/Location;)Z

    move-result v53

    if-eqz v53, :cond_20

    invoke-virtual/range {v33 .. v33}, Landroid/location/Location;->getAltitude()D

    move-result-wide v54

    move-object/from16 v0, v40

    move-wide/from16 v1, v54

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    invoke-virtual/range {v33 .. v33}, Landroid/location/Location;->getLatitude()D

    move-result-wide v54

    move-object/from16 v0, v40

    move-wide/from16 v1, v54

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setGpsLatitude(D)V

    invoke-virtual/range {v33 .. v33}, Landroid/location/Location;->getLongitude()D

    move-result-wide v54

    move-object/from16 v0, v40

    move-wide/from16 v1, v54

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setGpsLongitude(D)V

    invoke-virtual/range {v33 .. v33}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v40

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setGpsProcessingMethod(Ljava/lang/String;)V

    invoke-virtual/range {v33 .. v33}, Landroid/location/Location;->getTime()J

    move-result-wide v54

    move-object/from16 v0, v40

    move-wide/from16 v1, v54

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    :goto_7
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    move-object/from16 v0, v45

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/Integer;

    sget-object v54, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    if-nez v39, :cond_22

    const/16 v53, 0x0

    :goto_8
    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v53

    move-object/from16 v0, v45

    move-object/from16 v1, v54

    move-object/from16 v2, v53

    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/lang/Integer;

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v53

    move-object/from16 v0, v40

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v54, 0x55

    invoke-static/range {v54 .. v54}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v54

    move-object/from16 v0, v45

    move-object/from16 v1, v53

    move-object/from16 v2, v54

    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/lang/Byte;

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Byte;->byteValue()B

    move-result v53

    move/from16 v0, v53

    and-int/lit16 v0, v0, 0xff

    move/from16 v53, v0

    move-object/from16 v0, v40

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v54, 0x55

    invoke-static/range {v54 .. v54}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v54

    move-object/from16 v0, v45

    move-object/from16 v1, v53

    move-object/from16 v2, v54

    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/lang/Byte;

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Byte;->byteValue()B

    move-result v53

    move/from16 v0, v53

    and-int/lit16 v0, v0, 0xff

    move/from16 v53, v0

    move-object/from16 v0, v40

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailQuality(I)V

    invoke-virtual/range {v40 .. v40}, Landroid/hardware/Camera$Parameters;->getSupportedJpegThumbnailSizes()Ljava/util/List;

    move-result-object v48

    if-eqz v48, :cond_16

    invoke-interface/range {v48 .. v48}, Ljava/util/List;->size()I

    move-result v53

    if-lez v53, :cond_16

    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    move-object/from16 v0, v45

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Landroid/util/Size;

    if-nez v46, :cond_23

    const/16 v28, 0x0

    :goto_9
    if-eqz v28, :cond_14

    const-string/jumbo v53, "LegacyRequestMapper"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "Invalid JPEG thumbnail size set "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    const-string/jumbo v55, ", skipping thumbnail..."

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    if-eqz v46, :cond_15

    if-eqz v28, :cond_24

    :cond_15
    const/16 v53, 0x0

    const/16 v54, 0x0

    move-object/from16 v0, v40

    move/from16 v1, v53

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailSize(II)V

    :cond_16
    :goto_a
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v54, 0x1

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    move-object/from16 v0, v45

    move-object/from16 v1, v53

    move-object/from16 v2, v54

    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/lang/Integer;

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v37

    const/16 v53, 0x1

    move/from16 v0, v37

    move/from16 v1, v53

    if-eq v0, v1, :cond_17

    const/16 v53, 0x2

    move/from16 v0, v37

    move/from16 v1, v53

    if-eq v0, v1, :cond_17

    const-string/jumbo v53, "LegacyRequestMapper"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "convertRequestToMetadata - Ignoring unsupported noiseReduction.mode = "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    return-void

    :cond_18
    invoke-virtual/range {v40 .. v40}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v53

    const/16 v54, 0x4

    move/from16 v0, v54

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v54, v0

    const-string/jumbo v55, "auto"

    const/16 v56, 0x0

    aput-object v55, v54, v56

    const-string/jumbo v55, "off"

    const/16 v56, 0x1

    aput-object v55, v54, v56

    const-string/jumbo v55, "50hz"

    const/16 v56, 0x2

    aput-object v55, v54, v56

    const-string/jumbo v55, "60hz"

    const/16 v56, 0x3

    aput-object v55, v54, v56

    invoke-static/range {v53 .. v54}, Landroid/hardware/camera2/utils/ListUtils;->listSelectFirstFrom(Ljava/util/List;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    goto/16 :goto_0

    :cond_19
    const-string/jumbo v53, "LegacyRequestMapper"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "Unsupported FPS range set ["

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    const/16 v55, 0x0

    aget v55, v30, v55

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    const-string/jumbo v55, ","

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    const/16 v55, 0x1

    aget v55, v30, v55

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    const-string/jumbo v55, "]"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_1a
    const/16 v53, 0x0

    goto/16 :goto_2

    :cond_1b
    const/16 v53, 0x1

    goto/16 :goto_3

    :cond_1c
    const/16 v53, 0x0

    goto/16 :goto_3

    :cond_1d
    const/16 v53, 0x0

    goto/16 :goto_4

    :pswitch_0
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v54, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    move-object/from16 v0, v45

    move-object/from16 v1, v53

    move-object/from16 v2, v54

    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/lang/Integer;

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v47

    invoke-static/range {v47 .. v47}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->convertSceneModeToLegacy(I)Ljava/lang/String;

    move-result-object v32

    if-eqz v32, :cond_1e

    move-object/from16 v38, v32

    goto/16 :goto_5

    :cond_1e
    const-string/jumbo v38, "auto"

    const-string/jumbo v53, "LegacyRequestMapper"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "Skipping unknown requested scene mode: "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :pswitch_1
    const-string/jumbo v38, "auto"

    goto/16 :goto_5

    :cond_1f
    const-string/jumbo v53, "none"

    move-object/from16 v0, v40

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    const-string/jumbo v53, "LegacyRequestMapper"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "Skipping unknown requested effect mode: "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_20
    const-string/jumbo v53, "LegacyRequestMapper"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "Incomplete GPS parameters provided in location "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_21
    invoke-virtual/range {v40 .. v40}, Landroid/hardware/Camera$Parameters;->removeGpsData()V

    goto/16 :goto_7

    :cond_22
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v53

    goto/16 :goto_8

    :cond_23
    invoke-virtual/range {v46 .. v46}, Landroid/util/Size;->getWidth()I

    move-result v53

    invoke-virtual/range {v46 .. v46}, Landroid/util/Size;->getHeight()I

    move-result v54

    move-object/from16 v0, v48

    move/from16 v1, v53

    move/from16 v2, v54

    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/legacy/ParameterUtils;->containsSize(Ljava/util/List;II)Z

    move-result v53

    xor-int/lit8 v28, v53, 0x1

    goto/16 :goto_9

    :cond_24
    invoke-virtual/range {v46 .. v46}, Landroid/util/Size;->getWidth()I

    move-result v53

    invoke-virtual/range {v46 .. v46}, Landroid/util/Size;->getHeight()I

    move-result v54

    move-object/from16 v0, v40

    move/from16 v1, v53

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailSize(II)V

    goto/16 :goto_a

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static filterSupportedCaptureIntent(I)I
    .locals 3

    packed-switch p0, :pswitch_data_0

    :goto_0
    const/4 p0, 0x1

    const-string/jumbo v0, "LegacyRequestMapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown control.captureIntent value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; default to PREVIEW"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :pswitch_0
    return p0

    :pswitch_1
    const/4 p0, 0x1

    const-string/jumbo v0, "LegacyRequestMapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported control.captureIntent value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; default to PREVIEW"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static getIfSupported(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;ZLjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest;",
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<TT;>;TT;ZTT;)TT;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez p3, :cond_1

    invoke-static {v0, p4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "LegacyRequestMapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not supported; ignoring requested value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    return-object v1

    :cond_1
    return-object v0
.end method

.method private static mapAeAndFlashMode(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/Camera$Parameters;)V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p0, v4, v5}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p0, v4, v5}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v3

    const/4 v2, 0x0

    const-string/jumbo v4, "off"

    invoke-static {v3, v4}, Landroid/hardware/camera2/utils/ListUtils;->listContains(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v2, "off"

    :cond_0
    if-ne v0, v6, :cond_6

    if-ne v1, v7, :cond_4

    const-string/jumbo v4, "torch"

    invoke-static {v3, v4}, Landroid/hardware/camera2/utils/ListUtils;->listContains(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v2, "torch"

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {p1, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    const-string/jumbo v4, "LegacyRequestMapper"

    const-string/jumbo v5, "mapAeAndFlashMode - Ignore flash.mode == TORCH;camera does not support it"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    if-ne v1, v6, :cond_1

    const-string/jumbo v4, "on"

    invoke-static {v3, v4}, Landroid/hardware/camera2/utils/ListUtils;->listContains(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string/jumbo v2, "on"

    goto :goto_0

    :cond_5
    const-string/jumbo v4, "LegacyRequestMapper"

    const-string/jumbo v5, "mapAeAndFlashMode - Ignore flash.mode == SINGLE;camera does not support it"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    const/4 v4, 0x3

    if-ne v0, v4, :cond_8

    const-string/jumbo v4, "on"

    invoke-static {v3, v4}, Landroid/hardware/camera2/utils/ListUtils;->listContains(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string/jumbo v2, "on"

    goto :goto_0

    :cond_7
    const-string/jumbo v4, "LegacyRequestMapper"

    const-string/jumbo v5, "mapAeAndFlashMode - Ignore control.aeMode == ON_ALWAYS_FLASH;camera does not support it"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_8
    if-ne v0, v7, :cond_a

    const-string/jumbo v4, "auto"

    invoke-static {v3, v4}, Landroid/hardware/camera2/utils/ListUtils;->listContains(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string/jumbo v2, "auto"

    goto :goto_0

    :cond_9
    const-string/jumbo v4, "LegacyRequestMapper"

    const-string/jumbo v5, "mapAeAndFlashMode - Ignore control.aeMode == ON_AUTO_FLASH;camera does not support it"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_a
    const/4 v4, 0x4

    if-ne v0, v4, :cond_1

    const-string/jumbo v4, "red-eye"

    invoke-static {v3, v4}, Landroid/hardware/camera2/utils/ListUtils;->listContains(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string/jumbo v2, "red-eye"

    goto :goto_0

    :cond_b
    const-string/jumbo v4, "LegacyRequestMapper"

    const-string/jumbo v5, "mapAeAndFlashMode - Ignore control.aeMode == ON_AUTO_FLASH_REDEYE;camera does not support it"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
