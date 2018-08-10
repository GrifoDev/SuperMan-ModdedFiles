.class public Lcom/samsung/android/media/virtualtour/Constant;
.super Ljava/lang/Object;
.source "Constant.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/virtualtour/Constant$DataType;,
        Lcom/samsung/android/media/virtualtour/Constant$KeyName;
    }
.end annotation


# static fields
.field public static final BYTES_PER_FLOAT:I = 0x4

.field public static final B_USE_ACC_NATIVE:Z = true

.field public static final DEVICE_NAME:Ljava/lang/String;

.field public static final EG_VT_ORIENTATION_LANDSCAPE:I = 0x2

.field public static final EG_VT_ORIENTATION_PORTRAIT:I = 0x1

.field public static final EG_VT_ORIENTATION_REVERSE_LANDSCAPE:I = 0x4

.field public static final EG_VT_ORIENTATION_REVERSE_PORTRAIT:I = 0x3

.field public static final EG_VT_WALK_INDICATOR:F = 1000.0f

.field public static final IMAGE_ALIGNMENT_THREAD:Z = true

.field public static MODELLER_IMAGE_ALIGNMENT_MODULE:Z = false

.field public static final MODELLER_ONCAPTURE_POSTPROCESS_DEPTHMAP:I = 0x3e7

.field public static final MODELLER_ONVIEW_PREPROCESS_DEPTHMAP:I = 0x3e6

.field public static final NODE_TYPE_TURN:I = 0x1

.field public static final NODE_TYPE_WALK:I = 0x0

.field public static final SEC_PRODUCT_FEATURE_VISION_SUPPORT_VIRTUALTOUR_RENDERING_ENGINE:Ljava/lang/String; = "SRIB"

.field public static final SELECTED_VIRTUALTOUR_KEY:Ljava/lang/String; = "sef_file_name"

.field public static final SWEEP_MAX_PHOTO:I = 0x1e

.field public static final TRANSTION_TYPE_FORWARD_WALK:I = 0x9

.field public static final TRANSTION_TYPE_FORWARD_WALK_PLUS:I = 0xa

.field public static final TRANSTION_TYPE_NONE:I = 0x0

.field public static final TRANSTION_TYPE_TURN_LEFT:I = 0x1

.field public static final TRANSTION_TYPE_TURN_RIGHT:I = 0x2

.field public static final VIRTUALTOUR_MAX_PHOTO:I = 0x1e

.field public static final m_fImageAspect:F = 1.7777778f


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/media/virtualtour/Constant;->DEVICE_NAME:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/media/virtualtour/Constant;->MODELLER_IMAGE_ALIGNMENT_MODULE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
