.class public Lcom/android/server/pm/FastBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "FastBitmapDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/FastBitmapDrawable$1;,
        Lcom/android/server/pm/FastBitmapDrawable$State;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-server-pm-FastBitmapDrawable$StateSwitchesValues:[I = null

.field public static final CLICK_FEEDBACK_DURATION:I = 0x7d0

.field public static final CLICK_FEEDBACK_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field public static final FAST_SCROLL_HIGHLIGHT_DURATION:I = 0xe1

.field public static final FAST_SCROLL_INACTIVE_DURATION:I = 0x113

.field public static final FAST_SCROLL_UNHIGHLIGHT_DURATION:I = 0x96

.field public static final FAST_SCROLL_UNHIGHLIGHT_FROM_NORMAL_DURATION:I = 0xe1

.field private static final REDUCED_FILTER_VALUE_SPACE:I = 0x30

.field private static final sCachedFilter:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTempBrightnessMatrix:Landroid/graphics/ColorMatrix;

.field private static final sTempFilterMatrix:Landroid/graphics/ColorMatrix;


# instance fields
.field private mAlpha:I

.field private final mBitmap:Landroid/graphics/Bitmap;

.field private mBrightness:I

.field private mDesaturation:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mPrevUpdateKey:I

.field private mPropertyAnimator:Landroid/animation/AnimatorSet;

.field private mState:Lcom/android/server/pm/FastBitmapDrawable$State;


# direct methods
.method private static synthetic -getcom-android-server-pm-FastBitmapDrawable$StateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/server/pm/FastBitmapDrawable;->-com-android-server-pm-FastBitmapDrawable$StateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/pm/FastBitmapDrawable;->-com-android-server-pm-FastBitmapDrawable$StateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/server/pm/FastBitmapDrawable$State;->values()[Lcom/android/server/pm/FastBitmapDrawable$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/server/pm/FastBitmapDrawable$State;->DISABLED:Lcom/android/server/pm/FastBitmapDrawable$State;

    invoke-virtual {v1}, Lcom/android/server/pm/FastBitmapDrawable$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/server/pm/FastBitmapDrawable$State;->FAST_SCROLL_HIGHLIGHTED:Lcom/android/server/pm/FastBitmapDrawable$State;

    invoke-virtual {v1}, Lcom/android/server/pm/FastBitmapDrawable$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/server/pm/FastBitmapDrawable$State;->FAST_SCROLL_UNHIGHLIGHTED:Lcom/android/server/pm/FastBitmapDrawable$State;

    invoke-virtual {v1}, Lcom/android/server/pm/FastBitmapDrawable$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/server/pm/FastBitmapDrawable$State;->NORMAL:Lcom/android/server/pm/FastBitmapDrawable$State;

    invoke-virtual {v1}, Lcom/android/server/pm/FastBitmapDrawable$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/server/pm/FastBitmapDrawable$State;->PRESSED:Lcom/android/server/pm/FastBitmapDrawable$State;

    invoke-virtual {v1}, Lcom/android/server/pm/FastBitmapDrawable$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/android/server/pm/FastBitmapDrawable;->-com-android-server-pm-FastBitmapDrawable$StateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/pm/FastBitmapDrawable$1;

    invoke-direct {v0}, Lcom/android/server/pm/FastBitmapDrawable$1;-><init>()V

    sput-object v0, Lcom/android/server/pm/FastBitmapDrawable;->CLICK_FEEDBACK_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/pm/FastBitmapDrawable;->sCachedFilter:Landroid/util/SparseArray;

    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    sput-object v0, Lcom/android/server/pm/FastBitmapDrawable;->sTempBrightnessMatrix:Landroid/graphics/ColorMatrix;

    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    sput-object v0, Lcom/android/server/pm/FastBitmapDrawable;->sTempFilterMatrix:Landroid/graphics/ColorMatrix;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Lcom/android/server/pm/FastBitmapDrawable$State;->NORMAL:Lcom/android/server/pm/FastBitmapDrawable$State;

    iput-object v0, p0, Lcom/android/server/pm/FastBitmapDrawable;->mState:Lcom/android/server/pm/FastBitmapDrawable$State;

    iput v2, p0, Lcom/android/server/pm/FastBitmapDrawable;->mDesaturation:I

    iput v2, p0, Lcom/android/server/pm/FastBitmapDrawable;->mBrightness:I

    const/16 v0, 0xff

    iput v0, p0, Lcom/android/server/pm/FastBitmapDrawable;->mAlpha:I

    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/server/pm/FastBitmapDrawable;->mPrevUpdateKey:I

    iput-object p1, p0, Lcom/android/server/pm/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/android/server/pm/FastBitmapDrawable;->setBounds(IIII)V

    return-void
.end method

.method private cancelAnimator(Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-object v0
.end method

.method public static getDurationForStateChange(Lcom/android/server/pm/FastBitmapDrawable$State;Lcom/android/server/pm/FastBitmapDrawable$State;)I
    .locals 4

    const/16 v3, 0xe1

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/server/pm/FastBitmapDrawable;->-getcom-android-server-pm-FastBitmapDrawable$StateSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/pm/FastBitmapDrawable$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    return v2

    :pswitch_0
    invoke-static {}, Lcom/android/server/pm/FastBitmapDrawable;->-getcom-android-server-pm-FastBitmapDrawable$StateSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/FastBitmapDrawable$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    :pswitch_1
    const/16 v0, 0x7d0

    return v0

    :pswitch_2
    return v2

    :pswitch_3
    const/16 v0, 0x113

    return v0

    :pswitch_4
    return v3

    :pswitch_5
    invoke-static {}, Lcom/android/server/pm/FastBitmapDrawable;->-getcom-android-server-pm-FastBitmapDrawable$StateSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/FastBitmapDrawable$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2

    const/16 v0, 0x96

    return v0

    :pswitch_6
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3
        :pswitch_6
    .end packed-switch
.end method

.method public static getStartDelayForStateChange(Lcom/android/server/pm/FastBitmapDrawable$State;Lcom/android/server/pm/FastBitmapDrawable$State;)I
    .locals 2

    invoke-static {}, Lcom/android/server/pm/FastBitmapDrawable;->-getcom-android-server-pm-FastBitmapDrawable$StateSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/pm/FastBitmapDrawable$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x0

    return v0

    :pswitch_0
    invoke-static {}, Lcom/android/server/pm/FastBitmapDrawable;->-getcom-android-server-pm-FastBitmapDrawable$StateSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/FastBitmapDrawable$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x25

    return v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_1
    .end packed-switch
.end method

.method private updateFilter()V
    .locals 14

    const/4 v13, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/16 v11, 0xff

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v3, -0x1

    iget v8, p0, Lcom/android/server/pm/FastBitmapDrawable;->mDesaturation:I

    if-lez v8, :cond_1

    iget v8, p0, Lcom/android/server/pm/FastBitmapDrawable;->mDesaturation:I

    shl-int/lit8 v8, v8, 0x10

    iget v9, p0, Lcom/android/server/pm/FastBitmapDrawable;->mBrightness:I

    or-int v3, v8, v9

    :cond_0
    :goto_0
    iget v8, p0, Lcom/android/server/pm/FastBitmapDrawable;->mPrevUpdateKey:I

    if-ne v3, v8, :cond_2

    return-void

    :cond_1
    iget v8, p0, Lcom/android/server/pm/FastBitmapDrawable;->mBrightness:I

    if-lez v8, :cond_0

    iget v8, p0, Lcom/android/server/pm/FastBitmapDrawable;->mBrightness:I

    const/high16 v9, 0x10000

    or-int v3, v9, v8

    const/4 v7, 0x1

    goto :goto_0

    :cond_2
    iput v3, p0, Lcom/android/server/pm/FastBitmapDrawable;->mPrevUpdateKey:I

    const/4 v8, -0x1

    if-eq v3, v8, :cond_6

    sget-object v8, Lcom/android/server/pm/FastBitmapDrawable;->sCachedFilter:Landroid/util/SparseArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/ColorFilter;

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/android/server/pm/FastBitmapDrawable;->getBrightness()F

    move-result v0

    const/high16 v8, 0x437f0000    # 255.0f

    mul-float/2addr v8, v0

    float-to-int v1, v8

    if-eqz v7, :cond_4

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v1, v11, v11, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v8, v9}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_1
    sget-object v8, Lcom/android/server/pm/FastBitmapDrawable;->sCachedFilter:Landroid/util/SparseArray;

    invoke-virtual {v8, v3, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_3
    iget-object v8, p0, Lcom/android/server/pm/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :goto_2
    invoke-virtual {p0}, Lcom/android/server/pm/FastBitmapDrawable;->invalidateSelf()V

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/pm/FastBitmapDrawable;->getDesaturation()F

    move-result v8

    sub-float v5, v12, v8

    sget-object v8, Lcom/android/server/pm/FastBitmapDrawable;->sTempFilterMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v8, v5}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    iget v8, p0, Lcom/android/server/pm/FastBitmapDrawable;->mBrightness:I

    if-lez v8, :cond_5

    sub-float v6, v12, v0

    sget-object v8, Lcom/android/server/pm/FastBitmapDrawable;->sTempBrightnessMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v8}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v4

    aput v6, v4, v10

    const/4 v8, 0x6

    aput v6, v4, v8

    const/16 v8, 0xc

    aput v6, v4, v8

    int-to-float v8, v1

    const/4 v9, 0x4

    aput v8, v4, v9

    int-to-float v8, v1

    const/16 v9, 0x9

    aput v8, v4, v9

    int-to-float v8, v1

    const/16 v9, 0xe

    aput v8, v4, v9

    sget-object v8, Lcom/android/server/pm/FastBitmapDrawable;->sTempFilterMatrix:Landroid/graphics/ColorMatrix;

    sget-object v9, Lcom/android/server/pm/FastBitmapDrawable;->sTempBrightnessMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v8, v9}, Landroid/graphics/ColorMatrix;->preConcat(Landroid/graphics/ColorMatrix;)V

    :cond_5
    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    sget-object v8, Lcom/android/server/pm/FastBitmapDrawable;->sTempFilterMatrix:Landroid/graphics/ColorMatrix;

    invoke-direct {v2, v8}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    goto :goto_1

    :cond_6
    iget-object v8, p0, Lcom/android/server/pm/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v13}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_2
.end method


# virtual methods
.method public animateState(Lcom/android/server/pm/FastBitmapDrawable$State;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/server/pm/FastBitmapDrawable;->mState:Lcom/android/server/pm/FastBitmapDrawable$State;

    iget-object v1, p0, Lcom/android/server/pm/FastBitmapDrawable;->mState:Lcom/android/server/pm/FastBitmapDrawable$State;

    if-eq v1, p1, :cond_0

    iput-object p1, p0, Lcom/android/server/pm/FastBitmapDrawable;->mState:Lcom/android/server/pm/FastBitmapDrawable$State;

    iget-object v1, p0, Lcom/android/server/pm/FastBitmapDrawable;->mPropertyAnimator:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v1}, Lcom/android/server/pm/FastBitmapDrawable;->cancelAnimator(Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/FastBitmapDrawable;->mPropertyAnimator:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/FastBitmapDrawable;->mPropertyAnimator:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/server/pm/FastBitmapDrawable;->mPropertyAnimator:Landroid/animation/AnimatorSet;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/Animator;

    const-string/jumbo v3, "desaturation"

    new-array v4, v7, [F

    iget v5, p1, Lcom/android/server/pm/FastBitmapDrawable$State;->desaturation:F

    aput v5, v4, v6

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v6

    const-string/jumbo v3, "brightness"

    new-array v4, v7, [F

    iget v5, p1, Lcom/android/server/pm/FastBitmapDrawable$State;->brightness:F

    aput v5, v4, v6

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v1, p0, Lcom/android/server/pm/FastBitmapDrawable;->mPropertyAnimator:Landroid/animation/AnimatorSet;

    iget-object v2, p1, Lcom/android/server/pm/FastBitmapDrawable$State;->interpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/android/server/pm/FastBitmapDrawable;->mPropertyAnimator:Landroid/animation/AnimatorSet;

    invoke-static {v0, p1}, Lcom/android/server/pm/FastBitmapDrawable;->getDurationForStateChange(Lcom/android/server/pm/FastBitmapDrawable$State;Lcom/android/server/pm/FastBitmapDrawable$State;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/server/pm/FastBitmapDrawable;->mPropertyAnimator:Landroid/animation/AnimatorSet;

    invoke-static {v0, p1}, Lcom/android/server/pm/FastBitmapDrawable;->getStartDelayForStateChange(Lcom/android/server/pm/FastBitmapDrawable$State;Lcom/android/server/pm/FastBitmapDrawable$State;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    iget-object v1, p0, Lcom/android/server/pm/FastBitmapDrawable;->mPropertyAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return v7

    :cond_0
    return v6
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/android/server/pm/FastBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getAlpha()I
    .locals 1

    iget v0, p0, Lcom/android/server/pm/FastBitmapDrawable;->mAlpha:I

    return v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getBrightness()F
    .locals 2

    iget v0, p0, Lcom/android/server/pm/FastBitmapDrawable;->mBrightness:I

    int-to-float v0, v0

    const/high16 v1, 0x42400000    # 48.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getCurrentState()Lcom/android/server/pm/FastBitmapDrawable$State;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/FastBitmapDrawable;->mState:Lcom/android/server/pm/FastBitmapDrawable$State;

    return-object v0
.end method

.method public getDesaturation()F
    .locals 2

    iget v0, p0, Lcom/android/server/pm/FastBitmapDrawable;->mDesaturation:I

    int-to-float v0, v0

    const/high16 v1, 0x42400000    # 48.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/pm/FastBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/pm/FastBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    iput p1, p0, Lcom/android/server/pm/FastBitmapDrawable;->mAlpha:I

    iget-object v0, p0, Lcom/android/server/pm/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setBrightness(F)V
    .locals 4

    const/high16 v1, 0x42400000    # 48.0f

    mul-float/2addr v1, p1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    iget v1, p0, Lcom/android/server/pm/FastBitmapDrawable;->mBrightness:I

    if-eq v1, v0, :cond_0

    iput v0, p0, Lcom/android/server/pm/FastBitmapDrawable;->mBrightness:I

    invoke-direct {p0}, Lcom/android/server/pm/FastBitmapDrawable;->updateFilter()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setDesaturation(F)V
    .locals 4

    const/high16 v1, 0x42400000    # 48.0f

    mul-float/2addr v1, p1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    iget v1, p0, Lcom/android/server/pm/FastBitmapDrawable;->mDesaturation:I

    if-eq v1, v0, :cond_0

    iput v0, p0, Lcom/android/server/pm/FastBitmapDrawable;->mDesaturation:I

    invoke-direct {p0}, Lcom/android/server/pm/FastBitmapDrawable;->updateFilter()V

    :cond_0
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v0, p0, Lcom/android/server/pm/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method public setState(Lcom/android/server/pm/FastBitmapDrawable$State;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/FastBitmapDrawable;->mState:Lcom/android/server/pm/FastBitmapDrawable$State;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/android/server/pm/FastBitmapDrawable;->mState:Lcom/android/server/pm/FastBitmapDrawable$State;

    iget-object v0, p0, Lcom/android/server/pm/FastBitmapDrawable;->mPropertyAnimator:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v0}, Lcom/android/server/pm/FastBitmapDrawable;->cancelAnimator(Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/FastBitmapDrawable;->mPropertyAnimator:Landroid/animation/AnimatorSet;

    iget v0, p1, Lcom/android/server/pm/FastBitmapDrawable$State;->desaturation:F

    invoke-virtual {p0, v0}, Lcom/android/server/pm/FastBitmapDrawable;->setDesaturation(F)V

    iget v0, p1, Lcom/android/server/pm/FastBitmapDrawable$State;->brightness:F

    invoke-virtual {p0, v0}, Lcom/android/server/pm/FastBitmapDrawable;->setBrightness(F)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
