.class public Lcom/android/incallui/InCallOrientationEventListener;
.super Landroid/view/OrientationEventListener;


# static fields
.field public static FULL_SENSOR_SCREEN_ORIENTATION:I

.field public static NO_SENSOR_SCREEN_ORIENTATION:I

.field private static ROTATION_THRESHOLD:I

.field public static SCREEN_ORIENTATION_0:I

.field public static SCREEN_ORIENTATION_180:I

.field public static SCREEN_ORIENTATION_270:I

.field public static SCREEN_ORIENTATION_360:I

.field public static SCREEN_ORIENTATION_90:I

.field private static SCREEN_ORIENTATION_UNKNOWN:I

.field private static sCurrentOrientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0xa

    const/4 v0, 0x0

    sput v0, Lcom/android/incallui/InCallOrientationEventListener;->SCREEN_ORIENTATION_0:I

    const/16 v0, 0x5a

    sput v0, Lcom/android/incallui/InCallOrientationEventListener;->SCREEN_ORIENTATION_90:I

    const/16 v0, 0xb4

    sput v0, Lcom/android/incallui/InCallOrientationEventListener;->SCREEN_ORIENTATION_180:I

    const/16 v0, 0x10e

    sput v0, Lcom/android/incallui/InCallOrientationEventListener;->SCREEN_ORIENTATION_270:I

    const/16 v0, 0x168

    sput v0, Lcom/android/incallui/InCallOrientationEventListener;->SCREEN_ORIENTATION_360:I

    sput v1, Lcom/android/incallui/InCallOrientationEventListener;->FULL_SENSOR_SCREEN_ORIENTATION:I

    const/4 v0, 0x5

    sput v0, Lcom/android/incallui/InCallOrientationEventListener;->NO_SENSOR_SCREEN_ORIENTATION:I

    const/4 v0, -0x1

    sput v0, Lcom/android/incallui/InCallOrientationEventListener;->SCREEN_ORIENTATION_UNKNOWN:I

    sput v1, Lcom/android/incallui/InCallOrientationEventListener;->ROTATION_THRESHOLD:I

    sget v0, Lcom/android/incallui/InCallOrientationEventListener;->SCREEN_ORIENTATION_0:I

    sput v0, Lcom/android/incallui/InCallOrientationEventListener;->sCurrentOrientation:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private static isInLeftRange(III)Z
    .locals 1

    sub-int v0, p1, p2

    invoke-static {p0, v0, p1}, Lcom/android/incallui/InCallOrientationEventListener;->isWithinRange(III)Z

    move-result v0

    return v0
.end method

.method private static isInRightRange(III)Z
    .locals 1

    add-int v0, p1, p2

    invoke-static {p0, p1, v0}, Lcom/android/incallui/InCallOrientationEventListener;->isWithinRange(III)Z

    move-result v0

    return v0
.end method

.method private static isWithinRange(III)Z
    .locals 1

    if-lt p0, p1, :cond_0

    if-ge p0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isWithinThreshold(III)Z
    .locals 2

    sub-int v0, p1, p2

    add-int v1, p1, p2

    invoke-static {p0, v0, v1}, Lcom/android/incallui/InCallOrientationEventListener;->isWithinRange(III)Z

    move-result v0

    return v0
.end method

.method private toScreenOrientation(I)I
    .locals 2

    sget v0, Lcom/android/incallui/InCallOrientationEventListener;->SCREEN_ORIENTATION_360:I

    sget v1, Lcom/android/incallui/InCallOrientationEventListener;->ROTATION_THRESHOLD:I

    invoke-static {p1, v0, v1}, Lcom/android/incallui/InCallOrientationEventListener;->isInLeftRange(III)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/android/incallui/InCallOrientationEventListener;->SCREEN_ORIENTATION_0:I

    sget v1, Lcom/android/incallui/InCallOrientationEventListener;->ROTATION_THRESHOLD:I

    invoke-static {p1, v0, v1}, Lcom/android/incallui/InCallOrientationEventListener;->isInRightRange(III)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget v0, Lcom/android/incallui/InCallOrientationEventListener;->SCREEN_ORIENTATION_0:I

    :goto_0
    return v0

    :cond_1
    sget v0, Lcom/android/incallui/InCallOrientationEventListener;->SCREEN_ORIENTATION_90:I

    sget v1, Lcom/android/incallui/InCallOrientationEventListener;->ROTATION_THRESHOLD:I

    invoke-static {p1, v0, v1}, Lcom/android/incallui/InCallOrientationEventListener;->isWithinThreshold(III)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/android/incallui/InCallOrientationEventListener;->SCREEN_ORIENTATION_270:I

    goto :goto_0

    :cond_2
    sget v0, Lcom/android/incallui/InCallOrientationEventListener;->SCREEN_ORIENTATION_180:I

    sget v1, Lcom/android/incallui/InCallOrientationEventListener;->ROTATION_THRESHOLD:I

    invoke-static {p1, v0, v1}, Lcom/android/incallui/InCallOrientationEventListener;->isWithinThreshold(III)Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Lcom/android/incallui/InCallOrientationEventListener;->SCREEN_ORIENTATION_180:I

    goto :goto_0

    :cond_3
    sget v0, Lcom/android/incallui/InCallOrientationEventListener;->SCREEN_ORIENTATION_270:I

    sget v1, Lcom/android/incallui/InCallOrientationEventListener;->ROTATION_THRESHOLD:I

    invoke-static {p1, v0, v1}, Lcom/android/incallui/InCallOrientationEventListener;->isWithinThreshold(III)Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Lcom/android/incallui/InCallOrientationEventListener;->SCREEN_ORIENTATION_90:I

    goto :goto_0

    :cond_4
    sget v0, Lcom/android/incallui/InCallOrientationEventListener;->SCREEN_ORIENTATION_UNKNOWN:I

    goto :goto_0
.end method


# virtual methods
.method public enable()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallOrientationEventListener;->enable(Z)V

    return-void
.end method

.method public enable(Z)V
    .locals 2

    invoke-super {p0}, Landroid/view/OrientationEventListener;->enable()V

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    sget v1, Lcom/android/incallui/InCallOrientationEventListener;->sCurrentOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->onDeviceOrientationChange(I)V

    :cond_0
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallOrientationEventListener;->toScreenOrientation(I)I

    move-result v0

    sget v1, Lcom/android/incallui/InCallOrientationEventListener;->SCREEN_ORIENTATION_UNKNOWN:I

    if-eq v0, v1, :cond_0

    sget v1, Lcom/android/incallui/InCallOrientationEventListener;->sCurrentOrientation:I

    if-eq v1, v0, :cond_0

    sput v0, Lcom/android/incallui/InCallOrientationEventListener;->sCurrentOrientation:I

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    sget v1, Lcom/android/incallui/InCallOrientationEventListener;->sCurrentOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->onDeviceOrientationChange(I)V

    goto :goto_0
.end method
