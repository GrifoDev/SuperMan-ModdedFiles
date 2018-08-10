.class public Lcom/samsung/android/media/virtualtour/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# static fields
.field public static final AREA_SWEEP_COLOR:I = -0x10000

.field public static final ARROW_COLOR:I = -0xffff01

.field public static B_AUTO_CAPTURE_MODE:Z = false

.field public static final CIRCLE_COLOR:I

.field public static final RECENT_AREA_SWEEP_COLOR:I = -0xff0100

.field public static SETTINGS_SCREEN_VISIBILITY:Z

.field public static cameraHorizontalViewAngle:F

.field public static cameraVerticalViewAngle:F

.field public static m_nImageHeight:I

.field public static m_nImageWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x1

    const/16 v0, 0x780

    sput v0, Lcom/samsung/android/media/virtualtour/Settings;->m_nImageWidth:I

    const/16 v0, 0x438

    sput v0, Lcom/samsung/android/media/virtualtour/Settings;->m_nImageHeight:I

    const/high16 v0, 0x42780000    # 62.0f

    sput v0, Lcom/samsung/android/media/virtualtour/Settings;->cameraHorizontalViewAngle:F

    const/high16 v0, 0x422a0000    # 42.5f

    sput v0, Lcom/samsung/android/media/virtualtour/Settings;->cameraVerticalViewAngle:F

    const-string/jumbo v0, "#FFFF96"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/samsung/android/media/virtualtour/Settings;->CIRCLE_COLOR:I

    sput-boolean v1, Lcom/samsung/android/media/virtualtour/Settings;->SETTINGS_SCREEN_VISIBILITY:Z

    sput-boolean v1, Lcom/samsung/android/media/virtualtour/Settings;->B_AUTO_CAPTURE_MODE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
