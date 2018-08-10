.class public final Landroid/hardware/camera2/CaptureRequest;
.super Landroid/hardware/camera2/CameraMetadata;
.source "CaptureRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/CaptureRequest$1;,
        Landroid/hardware/camera2/CaptureRequest$2;,
        Landroid/hardware/camera2/CaptureRequest$Builder;,
        Landroid/hardware/camera2/CaptureRequest$Key;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/hardware/camera2/CameraMetadata",
        "<",
        "Landroid/hardware/camera2/CaptureRequest$Key",
        "<*>;>;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final BLACK_LEVEL_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final COLOR_CORRECTION_ABERRATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final COLOR_CORRECTION_GAINS:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Landroid/hardware/camera2/params/RggbChannelVector;",
            ">;"
        }
    .end annotation
.end field

.field public static final COLOR_CORRECTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final COLOR_CORRECTION_TRANSFORM:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Landroid/hardware/camera2/params/ColorSpaceTransform;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_AE_ANTIBANDING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<[",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<[",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_AWB_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<[",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_EFFECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final EDGE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final HOT_PIXEL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final JPEG_GPS_COORDINATES:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<[D>;"
        }
    .end annotation
.end field

.field public static final JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation runtime Landroid/hardware/camera2/impl/SyntheticKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field public static final JPEG_GPS_PROCESSING_METHOD:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final JPEG_GPS_TIMESTAMP:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public static final JPEG_THUMBNAIL_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public static final JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field public static final LED_TRANSMIT:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final LENS_APERTURE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final LENS_FILTER_DENSITY:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final LENS_OPTICAL_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final REPROCESS_EFFECTIVE_EXPOSURE_FACTOR:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final REQUEST_ID:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field public static final SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final SENSOR_FRAME_DURATION:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final SENSOR_TEST_PATTERN_DATA:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<[I>;"
        }
    .end annotation
.end field

.field public static final SENSOR_TEST_PATTERN_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final SHADING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATISTICS_HOT_PIXEL_MAP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATISTICS_LENS_SHADING_MAP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final TONEMAP_CURVE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation runtime Landroid/hardware/camera2/impl/SyntheticKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Landroid/hardware/camera2/params/TonemapCurve;",
            ">;"
        }
    .end annotation
.end field

.field public static final TONEMAP_CURVE_BLUE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<[F>;"
        }
    .end annotation
.end field

.field public static final TONEMAP_CURVE_GREEN:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<[F>;"
        }
    .end annotation
.end field

.field public static final TONEMAP_CURVE_RED:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<[F>;"
        }
    .end annotation
.end field

.field public static final TONEMAP_GAMMA:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final TONEMAP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final TONEMAP_PRESET_CURVE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mEmptySurfaceSet:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mIsPartOfCHSRequestList:Z

.field private mIsReprocess:Z

.field private mReprocessableSessionId:I

.field private final mSettings:Landroid/hardware/camera2/impl/CameraMetadataNative;

.field private mStreamIdxArray:[I

.field private mSurfaceConverted:Z

.field private mSurfaceIdxArray:[I

.field private final mSurfaceSet:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field private final mSurfacesLock:Ljava/lang/Object;

.field private mUserTag:Ljava/lang/Object;


# direct methods
.method static synthetic -get0(Landroid/hardware/camera2/CaptureRequest;)Landroid/hardware/camera2/impl/CameraMetadataNative;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mSettings:Landroid/hardware/camera2/impl/CameraMetadataNative;

    return-object v0
.end method

.method static synthetic -get1(Landroid/hardware/camera2/CaptureRequest;)Landroid/util/ArraySet;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceSet:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic -set0(Landroid/hardware/camera2/CaptureRequest;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/hardware/camera2/CaptureRequest;->mIsPartOfCHSRequestList:Z

    return p1
.end method

.method static synthetic -set1(Landroid/hardware/camera2/CaptureRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Landroid/hardware/camera2/CaptureRequest;->mUserTag:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic -wrap0(Landroid/hardware/camera2/CaptureRequest;Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/camera2/CaptureRequest;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->mEmptySurfaceSet:Landroid/util/ArraySet;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$1;

    invoke-direct {v0}, Landroid/hardware/camera2/CaptureRequest$1;-><init>()V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string/jumbo v1, "android.colorCorrection.mode"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string/jumbo v1, "android.colorCorrection.transform"

    const-class v2, Landroid/hardware/camera2/params/ColorSpaceTransform;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_TRANSFORM:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string/jumbo v1, "android.colorCorrection.gains"

    const-class v2, Landroid/hardware/camera2/params/RggbChannelVector;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_GAINS:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string/jumbo v1, "android.colorCorrection.aberrationMode"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_ABERRATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string/jumbo v1, "android.control.aeAntibandingMode"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_ANTIBANDING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string/jumbo v1, "android.control.aeExposureCompensation"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string/jumbo v1, "android.control.aeLock"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string/jumbo v1, "android.control.aeMode"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string/jumbo v1, "android.control.aeRegions"

    const-class v2, [Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string/jumbo v1, "android.control.aeTargetFpsRange"

    new-instance v2, Landroid/hardware/camera2/CaptureRequest$2;

    invoke-direct {v2}, Landroid/hardware/camera2/CaptureRequest$2;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Landroid/hardware/camera2/utils/TypeReference;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string/jumbo v1, "android.control.aePrecaptureTrigger"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string/jumbo v1, "android.control.afMode"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string/jumbo v1, "android.control.afRegions"

    const-class v2, [Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string/jumbo v1, "android.control.afTrigger"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string/jumbo v1, "android.control.awbLock"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string/jumbo v1, "android.control.awbMode"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string/jumbo v1, "android.control.awbRegions"

    const-class v2, [Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string/jumbo v1, "android.control.captureIntent"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string/jumbo v1, "android.control.effectMode"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_EFFECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string/jumbo v1, "android.control.mode"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string/jumbo v1, "android.control.sceneMode"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string/jumbo v1, "android.control.videoStabilizationMode"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string/jumbo v1, "android.control.postRawSensitivityBoost"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string/jumbo v1, "android.control.enableZsl"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string/jumbo v1, "android.edge.mode"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->EDGE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string/jumbo v1, "android.flash.mode"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string/jumbo v1, "android.hotPixel.mode"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->HOT_PIXEL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string/jumbo v1, "android.jpeg.gpsLocation"

    const-class v2, Landroid/location/Location;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string/jumbo v1, "android.jpeg.gpsCoordinates"

    const-class v2, [D

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_COORDINATES:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string/jumbo v1, "android.jpeg.gpsProcessingMethod"

    const-class v2, Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_PROCESSING_METHOD:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string/jumbo v1, "android.jpeg.gpsTimestamp"

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_TIMESTAMP:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string/jumbo v1, "android.jpeg.orientation"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string/jumbo v1, "android.jpeg.quality"

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string/jumbo v1, "android.jpeg.thumbnailQuality"

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string/jumbo v1, "android.jpeg.thumbnailSize"

    const-class v2, Landroid/util/Size;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string/jumbo v1, "android.lens.aperture"

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->LENS_APERTURE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string/jumbo v1, "android.lens.filterDensity"

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->LENS_FILTER_DENSITY:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string/jumbo v1, "android.lens.focalLength"

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string/jumbo v1, "android.lens.focusDistance"

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string/jumbo v1, "android.lens.opticalStabilizationMode"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->LENS_OPTICAL_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string/jumbo v1, "android.noiseReduction.mode"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string/jumbo v1, "android.request.id"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->REQUEST_ID:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string/jumbo v1, "android.scaler.cropRegion"

    const-class v2, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string/jumbo v1, "android.sensor.exposureTime"

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string/jumbo v1, "android.sensor.frameDuration"

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->SENSOR_FRAME_DURATION:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string/jumbo v1, "android.sensor.sensitivity"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string/jumbo v1, "android.sensor.testPatternData"

    const-class v2, [I

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->SENSOR_TEST_PATTERN_DATA:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string/jumbo v1, "android.sensor.testPatternMode"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->SENSOR_TEST_PATTERN_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string/jumbo v1, "android.shading.mode"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->SHADING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string/jumbo v1, "android.statistics.faceDetectMode"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string/jumbo v1, "android.statistics.hotPixelMapMode"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_HOT_PIXEL_MAP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string/jumbo v1, "android.statistics.lensShadingMapMode"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_LENS_SHADING_MAP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string/jumbo v1, "android.tonemap.curveBlue"

    const-class v2, [F

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_CURVE_BLUE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string/jumbo v1, "android.tonemap.curveGreen"

    const-class v2, [F

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_CURVE_GREEN:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string/jumbo v1, "android.tonemap.curveRed"

    const-class v2, [F

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_CURVE_RED:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string/jumbo v1, "android.tonemap.curve"

    const-class v2, Landroid/hardware/camera2/params/TonemapCurve;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_CURVE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string/jumbo v1, "android.tonemap.mode"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string/jumbo v1, "android.tonemap.gamma"

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_GAMMA:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string/jumbo v1, "android.tonemap.presetCurve"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_PRESET_CURVE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string/jumbo v1, "android.led.transmit"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->LED_TRANSMIT:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string/jumbo v1, "android.blackLevel.lock"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->BLACK_LEVEL_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string/jumbo v1, "android.reprocess.effectiveExposureFactor"

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->REPROCESS_EFFECTIVE_EXPOSURE_FACTOR:Landroid/hardware/camera2/CaptureRequest$Key;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/hardware/camera2/CameraMetadata;-><init>()V

    const-string/jumbo v0, "CaptureRequest-JV"

    iput-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceSet:Landroid/util/ArraySet;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfacesLock:Ljava/lang/Object;

    iput-boolean v1, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceConverted:Z

    iput-boolean v1, p0, Landroid/hardware/camera2/CaptureRequest;->mIsPartOfCHSRequestList:Z

    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mSettings:Landroid/hardware/camera2/impl/CameraMetadataNative;

    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mSettings:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CaptureRequest;->setNativeInstance(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    iput-boolean v1, p0, Landroid/hardware/camera2/CaptureRequest;->mIsReprocess:Z

    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/camera2/CaptureRequest;->mReprocessableSessionId:I

    return-void
.end method

.method private constructor <init>(Landroid/hardware/camera2/CaptureRequest;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/hardware/camera2/CameraMetadata;-><init>()V

    const-string/jumbo v0, "CaptureRequest-JV"

    iput-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceSet:Landroid/util/ArraySet;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfacesLock:Ljava/lang/Object;

    iput-boolean v1, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceConverted:Z

    iput-boolean v1, p0, Landroid/hardware/camera2/CaptureRequest;->mIsPartOfCHSRequestList:Z

    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    iget-object v1, p1, Landroid/hardware/camera2/CaptureRequest;->mSettings:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    iput-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mSettings:Landroid/hardware/camera2/impl/CameraMetadataNative;

    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mSettings:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CaptureRequest;->setNativeInstance(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceSet:Landroid/util/ArraySet;

    iget-object v1, p1, Landroid/hardware/camera2/CaptureRequest;->mSurfaceSet:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    iget-boolean v0, p1, Landroid/hardware/camera2/CaptureRequest;->mIsReprocess:Z

    iput-boolean v0, p0, Landroid/hardware/camera2/CaptureRequest;->mIsReprocess:Z

    iget-boolean v0, p1, Landroid/hardware/camera2/CaptureRequest;->mIsPartOfCHSRequestList:Z

    iput-boolean v0, p0, Landroid/hardware/camera2/CaptureRequest;->mIsPartOfCHSRequestList:Z

    iget v0, p1, Landroid/hardware/camera2/CaptureRequest;->mReprocessableSessionId:I

    iput v0, p0, Landroid/hardware/camera2/CaptureRequest;->mReprocessableSessionId:I

    iget-object v0, p1, Landroid/hardware/camera2/CaptureRequest;->mUserTag:Ljava/lang/Object;

    iput-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mUserTag:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/camera2/CaptureRequest;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/camera2/CaptureRequest;-><init>(Landroid/hardware/camera2/CaptureRequest;)V

    return-void
.end method

.method private constructor <init>(Landroid/hardware/camera2/impl/CameraMetadataNative;ZI)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Landroid/hardware/camera2/CameraMetadata;-><init>()V

    const-string/jumbo v0, "CaptureRequest-JV"

    iput-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceSet:Landroid/util/ArraySet;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfacesLock:Ljava/lang/Object;

    iput-boolean v2, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceConverted:Z

    iput-boolean v2, p0, Landroid/hardware/camera2/CaptureRequest;->mIsPartOfCHSRequestList:Z

    invoke-static {p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->move(Landroid/hardware/camera2/impl/CameraMetadataNative;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mSettings:Landroid/hardware/camera2/impl/CameraMetadataNative;

    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mSettings:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CaptureRequest;->setNativeInstance(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    iput-boolean p2, p0, Landroid/hardware/camera2/CaptureRequest;->mIsReprocess:Z

    if-eqz p2, :cond_1

    if-ne p3, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Create a reprocess capture request with an invalid session ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p3, p0, Landroid/hardware/camera2/CaptureRequest;->mReprocessableSessionId:I

    :goto_0
    return-void

    :cond_1
    iput v1, p0, Landroid/hardware/camera2/CaptureRequest;->mReprocessableSessionId:I

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/hardware/camera2/impl/CameraMetadataNative;ZILandroid/hardware/camera2/CaptureRequest;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/CaptureRequest;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;ZI)V

    return-void
.end method

.method private equals(Landroid/hardware/camera2/CaptureRequest;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Landroid/hardware/camera2/CaptureRequest;->mUserTag:Ljava/lang/Object;

    iget-object v2, p1, Landroid/hardware/camera2/CaptureRequest;->mUserTag:Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceSet:Landroid/util/ArraySet;

    iget-object v2, p1, Landroid/hardware/camera2/CaptureRequest;->mSurfaceSet:Landroid/util/ArraySet;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/hardware/camera2/CaptureRequest;->mSettings:Landroid/hardware/camera2/impl/CameraMetadataNative;

    iget-object v2, p1, Landroid/hardware/camera2/CaptureRequest;->mSettings:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/hardware/camera2/CaptureRequest;->mIsReprocess:Z

    iget-boolean v2, p1, Landroid/hardware/camera2/CaptureRequest;->mIsReprocess:Z

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/hardware/camera2/CaptureRequest;->mReprocessableSessionId:I

    iget v2, p1, Landroid/hardware/camera2/CaptureRequest;->mReprocessableSessionId:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 9

    const/4 v6, 0x0

    iget-object v5, p0, Landroid/hardware/camera2/CaptureRequest;->mSettings:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {v5, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->readFromParcel(Landroid/os/Parcel;)V

    iget-object v5, p0, Landroid/hardware/camera2/CaptureRequest;->mSettings:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {p0, v5}, Landroid/hardware/camera2/CaptureRequest;->setNativeInstance(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-nez v5, :cond_0

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Landroid/hardware/camera2/CaptureRequest;->mIsReprocess:Z

    const/4 v5, -0x1

    iput v5, p0, Landroid/hardware/camera2/CaptureRequest;->mReprocessableSessionId:I

    iget-object v7, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfacesLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-object v5, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceSet:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->clear()V

    const-class v5, Landroid/view/Surface;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v2

    if-eqz v2, :cond_1

    array-length v5, v2

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v1, v2, v6

    move-object v0, v1

    check-cast v0, Landroid/view/Surface;

    move-object v3, v0

    iget-object v8, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceSet:Landroid/util/ArraySet;

    invoke-virtual {v8, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "Reading cached CaptureRequest is not supported"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v5

    monitor-exit v7

    throw v5

    :cond_2
    monitor-exit v7

    return-void
.end method


# virtual methods
.method public containsTarget(Landroid/view/Surface;)Z
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceSet:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public convertSurfaceToStreamId(Landroid/util/SparseArray;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;)V"
        }
    .end annotation

    iget-object v11, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfacesLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    iget-boolean v10, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceConverted:Z

    if-eqz v10, :cond_0

    const-string/jumbo v10, "CaptureRequest-JV"

    const-string/jumbo v12, "Cannot convert already converted surfaces!"

    invoke-static {v10, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v11

    return-void

    :cond_0
    :try_start_1
    iget-object v10, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceSet:Landroid/util/ArraySet;

    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v10

    new-array v10, v10, [I

    iput-object v10, p0, Landroid/hardware/camera2/CaptureRequest;->mStreamIdxArray:[I

    iget-object v10, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceSet:Landroid/util/ArraySet;

    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v10

    new-array v10, v10, [I

    iput-object v10, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceIdxArray:[I

    const/4 v0, 0x0

    iget-object v10, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceSet:Landroid/util/ArraySet;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/Surface;

    const/4 v7, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-ge v1, v10, :cond_3

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/params/OutputConfiguration;

    const/4 v9, 0x0

    invoke-virtual {v2}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurfaces()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Surface;

    if-ne v5, v3, :cond_4

    const/4 v7, 0x1

    iget-object v10, p0, Landroid/hardware/camera2/CaptureRequest;->mStreamIdxArray:[I

    aput v8, v10, v0

    iget-object v10, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceIdxArray:[I

    aput v9, v10, v0

    add-int/lit8 v0, v0, 0x1

    :cond_2
    if-eqz v7, :cond_5

    :cond_3
    if-nez v7, :cond_1

    const/4 v10, 0x0

    iput-object v10, p0, Landroid/hardware/camera2/CaptureRequest;->mStreamIdxArray:[I

    const/4 v10, 0x0

    iput-object v10, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceIdxArray:[I

    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v12, "CaptureRequest contains unconfigured Input/Output Surface!"

    invoke-direct {v10, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v10

    monitor-exit v11

    throw v10

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    const/4 v10, 0x1

    :try_start_2
    iput-boolean v10, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceConverted:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v11

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Landroid/hardware/camera2/CaptureRequest;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/hardware/camera2/CaptureRequest;

    invoke-direct {p0, p1}, Landroid/hardware/camera2/CaptureRequest;->equals(Landroid/hardware/camera2/CaptureRequest;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mSettings:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getKeyClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<*>;>;"
        }
    .end annotation

    const-class v0, Landroid/hardware/camera2/CaptureRequest$Key;

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method public getKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<*>;>;"
        }
    .end annotation

    invoke-super {p0}, Landroid/hardware/camera2/CameraMetadata;->getKeys()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNativeCopy()Landroid/hardware/camera2/impl/CameraMetadataNative;
    .locals 2

    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    iget-object v1, p0, Landroid/hardware/camera2/CaptureRequest;->mSettings:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    return-object v0
.end method

.method protected getProtected(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<*>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mSettings:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getProtected(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CaptureRequest;->getProtected(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getReprocessableSessionId()I
    .locals 2

    iget-boolean v0, p0, Landroid/hardware/camera2/CaptureRequest;->mIsReprocess:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/hardware/camera2/CaptureRequest;->mReprocessableSessionId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Getting the reprocessable session ID for a non-reprocess capture request is illegal."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Landroid/hardware/camera2/CaptureRequest;->mReprocessableSessionId:I

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mUserTag:Ljava/lang/Object;

    return-object v0
.end method

.method public getTargets()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceSet:Landroid/util/ArraySet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/hardware/camera2/CaptureRequest;->mSettings:Landroid/hardware/camera2/impl/CameraMetadataNative;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceSet:Landroid/util/ArraySet;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/camera2/CaptureRequest;->mUserTag:Ljava/lang/Object;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCodeGeneric([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isPartOfCRequestList()Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/camera2/CaptureRequest;->mIsPartOfCHSRequestList:Z

    return v0
.end method

.method public isReprocess()Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/camera2/CaptureRequest;->mIsReprocess:Z

    return v0
.end method

.method public recoverStreamIdToSurface()V
    .locals 3

    iget-object v1, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfacesLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceConverted:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "CaptureRequest-JV"

    const-string/jumbo v2, "Cannot convert already converted surfaces!"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mStreamIdxArray:[I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceIdxArray:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceConverted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/hardware/camera2/CaptureRequest;->mSettings:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {v3, p1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->writeToParcel(Landroid/os/Parcel;I)V

    iget-boolean v3, p0, Landroid/hardware/camera2/CaptureRequest;->mIsReprocess:Z

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfacesLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-boolean v2, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceConverted:Z

    if-eqz v2, :cond_1

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->mEmptySurfaceSet:Landroid/util/ArraySet;

    :goto_0
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    new-array v2, v2, [Landroid/view/Surface;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/view/Surface;

    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    iget-boolean v2, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceConverted:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/hardware/camera2/CaptureRequest;->mStreamIdxArray:[I

    array-length v2, v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Landroid/hardware/camera2/CaptureRequest;->mStreamIdxArray:[I

    array-length v2, v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Landroid/hardware/camera2/CaptureRequest;->mStreamIdxArray:[I

    aget v2, v2, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceIdxArray:[I

    aget v2, v2, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceSet:Landroid/util/ArraySet;

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
