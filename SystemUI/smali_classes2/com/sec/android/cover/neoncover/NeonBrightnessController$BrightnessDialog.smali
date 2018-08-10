.class Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessDialog;
.super Landroid/app/Dialog;
.source "NeonBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/neoncover/NeonBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BrightnessDialog"
.end annotation


# static fields
.field private static final synthetic -com-sec-android-cover-neoncover-NeonBrightnessController$BrightnessSateSwitchesValues:[I

.field private static BRIGHTNESS_60_NIT:F

.field private static BRIGHTNESS_MAX:F

.field private static BRIGHTNESS_MIN:F

.field private static LUX_FOR_HIGH_BRIGHTNESS:F


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentAvg:F


# direct methods
.method private static synthetic -getcom-sec-android-cover-neoncover-NeonBrightnessController$BrightnessSateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessDialog;->-com-sec-android-cover-neoncover-NeonBrightnessController$BrightnessSateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessDialog;->-com-sec-android-cover-neoncover-NeonBrightnessController$BrightnessSateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;->values()[Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;->BRIGHT:Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;

    invoke-virtual {v1}, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;->DARK:Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;

    invoke-virtual {v1}, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;->NONE:Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;

    invoke-virtual {v1}, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessDialog;->-com-sec-android-cover-neoncover-NeonBrightnessController$BrightnessSateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessDialog;->BRIGHTNESS_MAX:F

    const v0, 0x3df5c28f    # 0.12f

    sput v0, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessDialog;->BRIGHTNESS_60_NIT:F

    const/4 v0, 0x0

    sput v0, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessDialog;->BRIGHTNESS_MIN:F

    const/high16 v0, 0x40000000    # 2.0f

    sput v0, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessDialog;->LUX_FOR_HIGH_BRIGHTNESS:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, -0x1

    const v0, 0x1030011

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessDialog;->mCurrentAvg:F

    iput-object p1, p0, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessDialog;->setCancelable(Z)V

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessDialog;->setCanceledOnTouchOutside(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessDialog;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x833

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    invoke-virtual {p0}, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual {p0}, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method

.method private shouldSetMaxScreenBrightness()Z
    .locals 8

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {}, Lcom/sec/android/cover/neoncover/NeonBrightnessController;->-get0()Ljava/util/Queue;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Queue;->size()I

    move-result v5

    const/4 v6, 0x3

    if-lt v5, v6, :cond_1

    const/4 v3, 0x0

    invoke-static {}, Lcom/sec/android/cover/neoncover/NeonBrightnessController;->-get0()Ljava/util/Queue;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v4

    add-float/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    int-to-float v5, v1

    div-float v0, v3, v5

    iput v0, p0, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessDialog;->mCurrentAvg:F

    :goto_1
    invoke-static {}, Lcom/sec/android/cover/neoncover/NeonBrightnessController;->-get1()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "shouldSetMaxScreenBrightness: count="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " avg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v5, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessDialog;->LUX_FOR_HIGH_BRIGHTNESS:F

    cmpg-float v5, v0, v5

    if-gtz v5, :cond_2

    const/4 v5, 0x0

    return v5

    :cond_1
    iget v0, p0, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessDialog;->mCurrentAvg:F

    invoke-static {}, Lcom/sec/android/cover/neoncover/NeonBrightnessController;->-get1()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "shouldSetMaxScreenBrightness : No have sensor data, set previous brightness sensor value"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const/4 v5, 0x1

    return v5
.end method


# virtual methods
.method public show(Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;)V
    .locals 6

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "brightness_min"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v2

    sput v2, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessDialog;->BRIGHTNESS_MIN:F

    iget-object v2, p0, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "brightness_max"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v2

    sput v2, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessDialog;->BRIGHTNESS_MAX:F

    sget v2, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessDialog;->BRIGHTNESS_MAX:F

    cmpl-float v2, v2, v5

    if-ltz v2, :cond_0

    sput v5, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessDialog;->BRIGHTNESS_MAX:F

    :cond_0
    sget v2, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessDialog;->BRIGHTNESS_MIN:F

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_1

    sput v4, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessDialog;->BRIGHTNESS_MIN:F

    :cond_1
    sget v2, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessDialog;->BRIGHTNESS_MIN:F

    sget v3, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessDialog;->BRIGHTNESS_MAX:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2

    sput v4, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessDialog;->BRIGHTNESS_MIN:F

    sput v5, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessDialog;->BRIGHTNESS_MAX:F

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessDialog;->-getcom-sec-android-cover-neoncover-NeonBrightnessController$BrightnessSateSwitchesValues()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    sget v0, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessDialog;->BRIGHTNESS_MIN:F

    :goto_0
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {p0}, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0}, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessDialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessDialog;->show()V

    :cond_3
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessDialog;->shouldSetMaxScreenBrightness()Z

    move-result v2

    if-eqz v2, :cond_4

    sget v0, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessDialog;->BRIGHTNESS_MAX:F

    goto :goto_0

    :cond_4
    sget v0, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessDialog;->BRIGHTNESS_60_NIT:F

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
