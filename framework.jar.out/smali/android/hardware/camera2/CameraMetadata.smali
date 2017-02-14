.class public abstract Landroid/hardware/camera2/CameraMetadata;
.super Ljava/lang/Object;
.source "CameraMetadata.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TKey:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final COLOR_CORRECTION_ABERRATION_MODE_FAST:I = 0x1

.field public static final COLOR_CORRECTION_ABERRATION_MODE_HIGH_QUALITY:I = 0x2

.field public static final COLOR_CORRECTION_ABERRATION_MODE_OFF:I = 0x0

.field public static final COLOR_CORRECTION_MODE_FAST:I = 0x1

.field public static final COLOR_CORRECTION_MODE_HIGH_QUALITY:I = 0x2

.field public static final COLOR_CORRECTION_MODE_TRANSFORM_MATRIX:I = 0x0

.field public static final CONTROL_AE_ANTIBANDING_MODE_50HZ:I = 0x1

.field public static final CONTROL_AE_ANTIBANDING_MODE_60HZ:I = 0x2

.field public static final CONTROL_AE_ANTIBANDING_MODE_AUTO:I = 0x3

.field public static final CONTROL_AE_ANTIBANDING_MODE_OFF:I = 0x0

.field public static final CONTROL_AE_MODE_OFF:I = 0x0

.field public static final CONTROL_AE_MODE_ON:I = 0x1

.field public static final CONTROL_AE_MODE_ON_ALWAYS_FLASH:I = 0x3

.field public static final CONTROL_AE_MODE_ON_AUTO_FLASH:I = 0x2

.field public static final CONTROL_AE_MODE_ON_AUTO_FLASH_REDEYE:I = 0x4

.field public static final CONTROL_AE_PRECAPTURE_TRIGGER_CANCEL:I = 0x2

.field public static final CONTROL_AE_PRECAPTURE_TRIGGER_IDLE:I = 0x0

.field public static final CONTROL_AE_PRECAPTURE_TRIGGER_START:I = 0x1

.field public static final CONTROL_AE_STATE_CONVERGED:I = 0x2

.field public static final CONTROL_AE_STATE_FLASH_REQUIRED:I = 0x4

.field public static final CONTROL_AE_STATE_INACTIVE:I = 0x0

.field public static final CONTROL_AE_STATE_LOCKED:I = 0x3

.field public static final CONTROL_AE_STATE_PRECAPTURE:I = 0x5

.field public static final CONTROL_AE_STATE_SEARCHING:I = 0x1

.field public static final CONTROL_AF_MODE_AUTO:I = 0x1

.field public static final CONTROL_AF_MODE_CONTINUOUS_PICTURE:I = 0x4

.field public static final CONTROL_AF_MODE_CONTINUOUS_VIDEO:I = 0x3

.field public static final CONTROL_AF_MODE_EDOF:I = 0x5

.field public static final CONTROL_AF_MODE_MACRO:I = 0x2

.field public static final CONTROL_AF_MODE_OFF:I = 0x0

.field public static final CONTROL_AF_STATE_ACTIVE_SCAN:I = 0x3

.field public static final CONTROL_AF_STATE_FOCUSED_LOCKED:I = 0x4

.field public static final CONTROL_AF_STATE_INACTIVE:I = 0x0

.field public static final CONTROL_AF_STATE_NOT_FOCUSED_LOCKED:I = 0x5

.field public static final CONTROL_AF_STATE_PASSIVE_FOCUSED:I = 0x2

.field public static final CONTROL_AF_STATE_PASSIVE_SCAN:I = 0x1

.field public static final CONTROL_AF_STATE_PASSIVE_UNFOCUSED:I = 0x6

.field public static final CONTROL_AF_TRIGGER_CANCEL:I = 0x2

.field public static final CONTROL_AF_TRIGGER_IDLE:I = 0x0

.field public static final CONTROL_AF_TRIGGER_START:I = 0x1

.field public static final CONTROL_AWB_MODE_AUTO:I = 0x1

.field public static final CONTROL_AWB_MODE_CLOUDY_DAYLIGHT:I = 0x6

.field public static final CONTROL_AWB_MODE_DAYLIGHT:I = 0x5

.field public static final CONTROL_AWB_MODE_FLUORESCENT:I = 0x3

.field public static final CONTROL_AWB_MODE_INCANDESCENT:I = 0x2

.field public static final CONTROL_AWB_MODE_OFF:I = 0x0

.field public static final CONTROL_AWB_MODE_SHADE:I = 0x8

.field public static final CONTROL_AWB_MODE_TWILIGHT:I = 0x7

.field public static final CONTROL_AWB_MODE_WARM_FLUORESCENT:I = 0x4

.field public static final CONTROL_AWB_STATE_CONVERGED:I = 0x2

.field public static final CONTROL_AWB_STATE_INACTIVE:I = 0x0

.field public static final CONTROL_AWB_STATE_LOCKED:I = 0x3

.field public static final CONTROL_AWB_STATE_SEARCHING:I = 0x1

.field public static final CONTROL_CAPTURE_INTENT_CUSTOM:I = 0x0

.field public static final CONTROL_CAPTURE_INTENT_MANUAL:I = 0x6

.field public static final CONTROL_CAPTURE_INTENT_PREVIEW:I = 0x1

.field public static final CONTROL_CAPTURE_INTENT_STILL_CAPTURE:I = 0x2

.field public static final CONTROL_CAPTURE_INTENT_VIDEO_RECORD:I = 0x3

.field public static final CONTROL_CAPTURE_INTENT_VIDEO_SNAPSHOT:I = 0x4

.field public static final CONTROL_CAPTURE_INTENT_ZERO_SHUTTER_LAG:I = 0x5

.field public static final CONTROL_EFFECT_MODE_AQUA:I = 0x8

.field public static final CONTROL_EFFECT_MODE_BLACKBOARD:I = 0x7

.field public static final CONTROL_EFFECT_MODE_MONO:I = 0x1

.field public static final CONTROL_EFFECT_MODE_NEGATIVE:I = 0x2

.field public static final CONTROL_EFFECT_MODE_OFF:I = 0x0

.field public static final CONTROL_EFFECT_MODE_POSTERIZE:I = 0x5

.field public static final CONTROL_EFFECT_MODE_SEPIA:I = 0x4

.field public static final CONTROL_EFFECT_MODE_SOLARIZE:I = 0x3

.field public static final CONTROL_EFFECT_MODE_WHITEBOARD:I = 0x6

.field public static final CONTROL_MODE_AUTO:I = 0x1

.field public static final CONTROL_MODE_OFF:I = 0x0

.field public static final CONTROL_MODE_OFF_KEEP_STATE:I = 0x3

.field public static final CONTROL_MODE_USE_SCENE_MODE:I = 0x2

.field public static final CONTROL_SCENE_MODE_ACTION:I = 0x2

.field public static final CONTROL_SCENE_MODE_BARCODE:I = 0x10

.field public static final CONTROL_SCENE_MODE_BEACH:I = 0x8

.field public static final CONTROL_SCENE_MODE_CANDLELIGHT:I = 0xf

.field public static final CONTROL_SCENE_MODE_DEVICE_CUSTOM_END:I = 0x7f

.field public static final CONTROL_SCENE_MODE_DEVICE_CUSTOM_START:I = 0x64

.field public static final CONTROL_SCENE_MODE_DISABLED:I = 0x0

.field public static final CONTROL_SCENE_MODE_FACE_PRIORITY:I = 0x1

.field public static final CONTROL_SCENE_MODE_FACE_PRIORITY_LOW_LIGHT:I = 0x13

.field public static final CONTROL_SCENE_MODE_FIREWORKS:I = 0xc

.field public static final CONTROL_SCENE_MODE_HDR:I = 0x12

.field public static final CONTROL_SCENE_MODE_HIGH_SPEED_VIDEO:I = 0x11

.field public static final CONTROL_SCENE_MODE_LANDSCAPE:I = 0x4

.field public static final CONTROL_SCENE_MODE_NIGHT:I = 0x5

.field public static final CONTROL_SCENE_MODE_NIGHT_PORTRAIT:I = 0x6

.field public static final CONTROL_SCENE_MODE_PARTY:I = 0xe

.field public static final CONTROL_SCENE_MODE_PORTRAIT:I = 0x3

.field public static final CONTROL_SCENE_MODE_SNOW:I = 0x9

.field public static final CONTROL_SCENE_MODE_SPORTS:I = 0xd

.field public static final CONTROL_SCENE_MODE_STEADYPHOTO:I = 0xb

.field public static final CONTROL_SCENE_MODE_SUNSET:I = 0xa

.field public static final CONTROL_SCENE_MODE_THEATRE:I = 0x7

.field public static final CONTROL_VIDEO_STABILIZATION_MODE_OFF:I = 0x0

.field public static final CONTROL_VIDEO_STABILIZATION_MODE_ON:I = 0x1

.field private static final DEBUG:Z = false

.field public static final EDGE_MODE_FAST:I = 0x1

.field public static final EDGE_MODE_HIGH_QUALITY:I = 0x2

.field public static final EDGE_MODE_OFF:I = 0x0

.field public static final EDGE_MODE_ZERO_SHUTTER_LAG:I = 0x3

.field public static final FLASH_MODE_OFF:I = 0x0

.field public static final FLASH_MODE_SINGLE:I = 0x1

.field public static final FLASH_MODE_TORCH:I = 0x2

.field public static final FLASH_STATE_CHARGING:I = 0x1

.field public static final FLASH_STATE_FIRED:I = 0x3

.field public static final FLASH_STATE_PARTIAL:I = 0x4

.field public static final FLASH_STATE_READY:I = 0x2

.field public static final FLASH_STATE_UNAVAILABLE:I = 0x0

.field public static final HOT_PIXEL_MODE_FAST:I = 0x1

.field public static final HOT_PIXEL_MODE_HIGH_QUALITY:I = 0x2

.field public static final HOT_PIXEL_MODE_OFF:I = 0x0

.field public static final INFO_SUPPORTED_HARDWARE_LEVEL_3:I = 0x3

.field public static final INFO_SUPPORTED_HARDWARE_LEVEL_FULL:I = 0x1

.field public static final INFO_SUPPORTED_HARDWARE_LEVEL_LEGACY:I = 0x2

.field public static final INFO_SUPPORTED_HARDWARE_LEVEL_LIMITED:I = 0x0

.field public static final LED_AVAILABLE_LEDS_TRANSMIT:I = 0x0

.field public static final LENS_FACING_BACK:I = 0x1

.field public static final LENS_FACING_EXTERNAL:I = 0x2

.field public static final LENS_FACING_FRONT:I = 0x0

.field public static final LENS_INFO_FOCUS_DISTANCE_CALIBRATION_APPROXIMATE:I = 0x1

.field public static final LENS_INFO_FOCUS_DISTANCE_CALIBRATION_CALIBRATED:I = 0x2

.field public static final LENS_INFO_FOCUS_DISTANCE_CALIBRATION_UNCALIBRATED:I = 0x0

.field public static final LENS_OPTICAL_STABILIZATION_MODE_OFF:I = 0x0

.field public static final LENS_OPTICAL_STABILIZATION_MODE_ON:I = 0x1

.field public static final LENS_STATE_MOVING:I = 0x1

.field public static final LENS_STATE_STATIONARY:I = 0x0

.field public static final NOISE_REDUCTION_MODE_FAST:I = 0x1

.field public static final NOISE_REDUCTION_MODE_HIGH_QUALITY:I = 0x2

.field public static final NOISE_REDUCTION_MODE_MINIMAL:I = 0x3

.field public static final NOISE_REDUCTION_MODE_OFF:I = 0x0

.field public static final NOISE_REDUCTION_MODE_ZERO_SHUTTER_LAG:I = 0x4

.field public static final REQUEST_AVAILABLE_CAPABILITIES_BACKWARD_COMPATIBLE:I = 0x0

.field public static final REQUEST_AVAILABLE_CAPABILITIES_BURST_CAPTURE:I = 0x6

.field public static final REQUEST_AVAILABLE_CAPABILITIES_CONSTRAINED_HIGH_SPEED_VIDEO:I = 0x9

.field public static final REQUEST_AVAILABLE_CAPABILITIES_DEPTH_OUTPUT:I = 0x8

.field public static final REQUEST_AVAILABLE_CAPABILITIES_MANUAL_POST_PROCESSING:I = 0x2

.field public static final REQUEST_AVAILABLE_CAPABILITIES_MANUAL_SENSOR:I = 0x1

.field public static final REQUEST_AVAILABLE_CAPABILITIES_PRIVATE_REPROCESSING:I = 0x4

.field public static final REQUEST_AVAILABLE_CAPABILITIES_RAW:I = 0x3

.field public static final REQUEST_AVAILABLE_CAPABILITIES_READ_SENSOR_SETTINGS:I = 0x5

.field public static final REQUEST_AVAILABLE_CAPABILITIES_YUV_REPROCESSING:I = 0x7

.field public static final SCALER_CROPPING_TYPE_CENTER_ONLY:I = 0x0

.field public static final SCALER_CROPPING_TYPE_FREEFORM:I = 0x1

.field public static final SENSOR_INFO_COLOR_FILTER_ARRANGEMENT_BGGR:I = 0x3

.field public static final SENSOR_INFO_COLOR_FILTER_ARRANGEMENT_GBRG:I = 0x2

.field public static final SENSOR_INFO_COLOR_FILTER_ARRANGEMENT_GRBG:I = 0x1

.field public static final SENSOR_INFO_COLOR_FILTER_ARRANGEMENT_RGB:I = 0x4

.field public static final SENSOR_INFO_COLOR_FILTER_ARRANGEMENT_RGGB:I = 0x0

.field public static final SENSOR_INFO_TIMESTAMP_SOURCE_REALTIME:I = 0x1

.field public static final SENSOR_INFO_TIMESTAMP_SOURCE_UNKNOWN:I = 0x0

.field public static final SENSOR_REFERENCE_ILLUMINANT1_CLOUDY_WEATHER:I = 0xa

.field public static final SENSOR_REFERENCE_ILLUMINANT1_COOL_WHITE_FLUORESCENT:I = 0xe

.field public static final SENSOR_REFERENCE_ILLUMINANT1_D50:I = 0x17

.field public static final SENSOR_REFERENCE_ILLUMINANT1_D55:I = 0x14

.field public static final SENSOR_REFERENCE_ILLUMINANT1_D65:I = 0x15

.field public static final SENSOR_REFERENCE_ILLUMINANT1_D75:I = 0x16

.field public static final SENSOR_REFERENCE_ILLUMINANT1_DAYLIGHT:I = 0x1

.field public static final SENSOR_REFERENCE_ILLUMINANT1_DAYLIGHT_FLUORESCENT:I = 0xc

.field public static final SENSOR_REFERENCE_ILLUMINANT1_DAY_WHITE_FLUORESCENT:I = 0xd

.field public static final SENSOR_REFERENCE_ILLUMINANT1_FINE_WEATHER:I = 0x9

.field public static final SENSOR_REFERENCE_ILLUMINANT1_FLASH:I = 0x4

.field public static final SENSOR_REFERENCE_ILLUMINANT1_FLUORESCENT:I = 0x2

.field public static final SENSOR_REFERENCE_ILLUMINANT1_ISO_STUDIO_TUNGSTEN:I = 0x18

.field public static final SENSOR_REFERENCE_ILLUMINANT1_SHADE:I = 0xb

.field public static final SENSOR_REFERENCE_ILLUMINANT1_STANDARD_A:I = 0x11

.field public static final SENSOR_REFERENCE_ILLUMINANT1_STANDARD_B:I = 0x12

.field public static final SENSOR_REFERENCE_ILLUMINANT1_STANDARD_C:I = 0x13

.field public static final SENSOR_REFERENCE_ILLUMINANT1_TUNGSTEN:I = 0x3

.field public static final SENSOR_REFERENCE_ILLUMINANT1_WHITE_FLUORESCENT:I = 0xf

.field public static final SENSOR_TEST_PATTERN_MODE_COLOR_BARS:I = 0x2

.field public static final SENSOR_TEST_PATTERN_MODE_COLOR_BARS_FADE_TO_GRAY:I = 0x3

.field public static final SENSOR_TEST_PATTERN_MODE_CUSTOM1:I = 0x100

.field public static final SENSOR_TEST_PATTERN_MODE_OFF:I = 0x0

.field public static final SENSOR_TEST_PATTERN_MODE_PN9:I = 0x4

.field public static final SENSOR_TEST_PATTERN_MODE_SOLID_COLOR:I = 0x1

.field public static final SHADING_MODE_FAST:I = 0x1

.field public static final SHADING_MODE_HIGH_QUALITY:I = 0x2

.field public static final SHADING_MODE_OFF:I = 0x0

.field public static final STATISTICS_FACE_DETECT_MODE_FULL:I = 0x2

.field public static final STATISTICS_FACE_DETECT_MODE_OFF:I = 0x0

.field public static final STATISTICS_FACE_DETECT_MODE_SIMPLE:I = 0x1

.field public static final STATISTICS_LENS_SHADING_MAP_MODE_OFF:I = 0x0

.field public static final STATISTICS_LENS_SHADING_MAP_MODE_ON:I = 0x1

.field public static final STATISTICS_SCENE_FLICKER_50HZ:I = 0x1

.field public static final STATISTICS_SCENE_FLICKER_60HZ:I = 0x2

.field public static final STATISTICS_SCENE_FLICKER_NONE:I = 0x0

.field public static final SYNC_FRAME_NUMBER_CONVERGING:I = -0x1

.field public static final SYNC_FRAME_NUMBER_UNKNOWN:I = -0x2

.field public static final SYNC_MAX_LATENCY_PER_FRAME_CONTROL:I = 0x0

.field public static final SYNC_MAX_LATENCY_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "CameraMetadataAb"

.field public static final TONEMAP_MODE_CONTRAST_CURVE:I = 0x0

.field public static final TONEMAP_MODE_FAST:I = 0x1

.field public static final TONEMAP_MODE_GAMMA_VALUE:I = 0x3

.field public static final TONEMAP_MODE_HIGH_QUALITY:I = 0x2

.field public static final TONEMAP_MODE_PRESET_CURVE:I = 0x4

.field public static final TONEMAP_PRESET_CURVE_REC709:I = 0x1

.field public static final TONEMAP_PRESET_CURVE_SRGB:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getKeysStatic(Ljava/lang/Class;Ljava/lang/Class;Landroid/hardware/camera2/CameraMetadata;[I)Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TKey:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<TTKey;>;",
            "Landroid/hardware/camera2/CameraMetadata",
            "<TTKey;>;[I)",
            "Ljava/util/ArrayList",
            "<TTKey;>;"
        }
    .end annotation

    const-class v11, Landroid/hardware/camera2/TotalCaptureResult;

    invoke-virtual {p0, v11}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const-class p0, Landroid/hardware/camera2/CaptureResult;

    :cond_0
    if-eqz p3, :cond_1

    invoke-static/range {p3 .. p3}, Ljava/util/Arrays;->sort([I)V

    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v11, 0x0

    array-length v12, v4

    :goto_0
    if-ge v11, v12, :cond_4

    aget-object v3, v4, v11

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v13

    and-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_3

    :try_start_0
    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    if-eqz p2, :cond_2

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/hardware/camera2/CameraMetadata;->getProtected(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_3

    :cond_2
    move-object/from16 v0, p3

    invoke-static {v7, v3, v0}, Landroid/hardware/camera2/CameraMetadata;->shouldKeyBeAdded(Ljava/lang/Object;Ljava/lang/reflect/Field;[I)Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v11, Ljava/lang/AssertionError;

    const-string/jumbo v12, "Can\'t get IllegalArgumentException"

    invoke-direct {v11, v12, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    :catch_1
    move-exception v1

    new-instance v11, Ljava/lang/AssertionError;

    const-string/jumbo v12, "Can\'t get IllegalAccessException"

    invoke-direct {v11, v12, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    :cond_4
    invoke-static {p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getAllVendorKeys(Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v10

    if-eqz v10, :cond_9

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    instance-of v11, v5, Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz v11, :cond_7

    move-object v11, v5

    check-cast v11, Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v11}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v9

    :goto_2
    if-eqz p3, :cond_6

    invoke-static {v9}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getTag(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p3

    invoke-static {v0, v11}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v11

    if-ltz v11, :cond_5

    :cond_6
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    instance-of v11, v5, Landroid/hardware/camera2/CaptureResult$Key;

    if-eqz v11, :cond_8

    move-object v11, v5

    check-cast v11, Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v11}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :cond_8
    instance-of v11, v5, Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-eqz v11, :cond_5

    move-object v11, v5

    check-cast v11, Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v11}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :cond_9
    return-object v8
.end method

.method private static shouldKeyBeAdded(Ljava/lang/Object;Ljava/lang/reflect/Field;[I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TKey:",
            "Ljava/lang/Object;",
            ">(TTKey;",
            "Ljava/lang/reflect/Field;",
            "[I)Z"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "key must not be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    instance-of v4, p0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-eqz v4, :cond_1

    check-cast p0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    :goto_0
    const-class v4, Landroid/hardware/camera2/impl/PublicKey;

    invoke-virtual {p1, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    if-nez v4, :cond_4

    return v3

    :cond_1
    instance-of v4, p0, Landroid/hardware/camera2/CaptureResult$Key;

    if-eqz v4, :cond_2

    check-cast p0, Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    goto :goto_0

    :cond_2
    instance-of v4, p0, Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz v4, :cond_3

    check-cast p0, Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0}, Landroid/hardware/camera2/CaptureRequest$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "key type must be that of a metadata key"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    if-nez p2, :cond_5

    return v2

    :cond_5
    const-class v4, Landroid/hardware/camera2/impl/SyntheticKey;

    invoke-virtual {p1, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    if-eqz v4, :cond_6

    return v2

    :cond_6
    invoke-virtual {v1}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->getTag()I

    move-result v0

    invoke-static {p2, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v4

    if-ltz v4, :cond_7

    :goto_1
    return v2

    :cond_7
    move v2, v3

    goto :goto_1
.end method


# virtual methods
.method protected abstract getKeyClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TTKey;>;"
        }
    .end annotation
.end method

.method public getKeys()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TTKey;>;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraMetadata;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraMetadata;->getKeyClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2}, Landroid/hardware/camera2/CameraMetadata;->getKeysStatic(Ljava/lang/Class;Ljava/lang/Class;Landroid/hardware/camera2/CameraMetadata;[I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method protected abstract getProtected(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TTKey;)TT;"
        }
    .end annotation
.end method
