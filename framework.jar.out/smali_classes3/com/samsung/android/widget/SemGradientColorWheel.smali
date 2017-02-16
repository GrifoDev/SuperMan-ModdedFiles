.class Lcom/samsung/android/widget/SemGradientColorWheel;
.super Landroid/view/View;
.source "SemGradientColorWheel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/widget/SemGradientColorWheel$OnWheelColorChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SemGradientColorWheel"


# instance fields
.field private final HUE_COLORS:[I

.field private mCurX:F

.field private mCurY:F

.field private mCursorDrawable:Landroid/graphics/drawable/Drawable;

.field private mCursorPaint:Landroid/graphics/Paint;

.field private final mCursorSize:I

.field private mHuePaint:Landroid/graphics/Paint;

.field private mListener:Lcom/samsung/android/widget/SemGradientColorWheel$OnWheelColorChangedListener;

.field private mOrbitalRadius:I

.field private mRadius:I

.field private mSaturationPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->HUE_COLORS:[I

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050343

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mCursorSize:I

    .line 51
    return-void

    .line 35
    nop

    :array_0
    .array-data 4
        -0x10000
        -0xff01
        -0xffff01
        -0xff0001
        -0xff0100
        -0x100
        -0x10000
    .end array-data
.end method

.method private updateCursorPosition(FF)V
    .locals 10
    .param p1, "hue"    # F
    .param p2, "saturation"    # F

    .prologue
    .line 153
    float-to-double v4, p1

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    const-wide v6, 0x4066800000000000L    # 180.0

    div-double v0, v4, v6

    .line 154
    .local v0, "angle":D
    iget v3, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mOrbitalRadius:I

    int-to-float v3, v3

    mul-float v2, v3, p2

    .line 156
    .local v2, "distance":F
    iget v3, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mRadius:I

    int-to-double v4, v3

    float-to-double v6, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v3, v4

    int-to-float v3, v3

    iput v3, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mCurX:F

    .line 157
    iget v3, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mRadius:I

    int-to-double v4, v3

    float-to-double v6, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    double-to-int v3, v4

    int-to-float v3, v3

    iput v3, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mCurY:F

    .line 159
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 152
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 139
    iput-object v0, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mCursorPaint:Landroid/graphics/Paint;

    .line 140
    iput-object v0, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mHuePaint:Landroid/graphics/Paint;

    .line 141
    iput-object v0, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mSaturationPaint:Landroid/graphics/Paint;

    .line 142
    iput-object v0, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mListener:Lcom/samsung/android/widget/SemGradientColorWheel$OnWheelColorChangedListener;

    .line 138
    return-void
.end method

.method init(I)V
    .locals 11
    .param p1, "wheelSize"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 56
    iget v1, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mCursorSize:I

    add-int/2addr p1, v1

    .line 57
    div-int/lit8 v1, p1, 0x2

    iput v1, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mRadius:I

    .line 58
    iget v1, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mRadius:I

    iget v2, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mCursorSize:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mOrbitalRadius:I

    .line 60
    new-instance v7, Landroid/graphics/SweepGradient;

    iget v1, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->HUE_COLORS:[I

    invoke-direct {v7, v1, v2, v3, v10}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 61
    .local v7, "hueShader":Landroid/graphics/Shader;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mHuePaint:Landroid/graphics/Paint;

    .line 62
    iget-object v1, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mHuePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 63
    iget-object v1, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mHuePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 65
    new-instance v0, Landroid/graphics/RadialGradient;

    iget v1, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mRadius:I

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mOrbitalRadius:I

    int-to-float v3, v3

    .line 66
    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 65
    const/4 v4, -0x1

    .line 66
    const/4 v5, 0x0

    .line 65
    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    .line 67
    .local v0, "saturationShader":Landroid/graphics/Shader;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mSaturationPaint:Landroid/graphics/Paint;

    .line 68
    iget-object v1, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mSaturationPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 70
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mCursorPaint:Landroid/graphics/Paint;

    .line 72
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10807de

    invoke-virtual {v1, v2, v10}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mCursorDrawable:Landroid/graphics/drawable/Drawable;

    .line 74
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v8, p1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 75
    .local v8, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v9, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 76
    invoke-virtual {p0, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 122
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 124
    iget v4, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mRadius:I

    int-to-float v4, v4

    iget v5, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mRadius:I

    int-to-float v5, v5

    iget v6, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mOrbitalRadius:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mHuePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 125
    iget v4, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mRadius:I

    int-to-float v4, v4

    iget v5, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mRadius:I

    int-to-float v5, v5

    iget v6, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mOrbitalRadius:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mSaturationPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 127
    iget v4, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mCurX:F

    iget v5, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mCursorSize:I

    int-to-float v5, v5

    div-float/2addr v5, v8

    sub-float/2addr v4, v5

    float-to-int v1, v4

    .line 128
    .local v1, "left":I
    iget v4, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mCurY:F

    iget v5, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mCursorSize:I

    int-to-float v5, v5

    div-float/2addr v5, v8

    sub-float/2addr v4, v5

    float-to-int v3, v4

    .line 129
    .local v3, "top":I
    iget v4, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mCurX:F

    iget v5, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mCursorSize:I

    int-to-float v5, v5

    div-float/2addr v5, v8

    add-float/2addr v4, v5

    float-to-int v2, v4

    .line 130
    .local v2, "right":I
    iget v4, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mCurY:F

    iget v5, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mCursorSize:I

    int-to-float v5, v5

    div-float/2addr v5, v8

    add-float/2addr v4, v5

    float-to-int v0, v4

    .line 132
    .local v0, "bottom":I
    iget v4, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mCurX:F

    iget v5, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mCurY:F

    iget v6, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mCursorSize:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    iget-object v7, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mCursorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 134
    iget-object v4, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mCursorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 135
    iget-object v4, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mCursorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 121
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 82
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mRadius:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v6, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mRadius:I

    int-to-float v6, v6

    sub-float/2addr v3, v6

    float-to-double v6, v3

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v0, v4

    .line 84
    .local v0, "distance":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 100
    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mCurX:F

    .line 101
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mCurY:F

    .line 103
    iget v3, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mOrbitalRadius:I

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_1

    .line 104
    iget v3, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mRadius:I

    int-to-float v3, v3

    iget v4, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mOrbitalRadius:I

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget v6, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mRadius:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    div-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mCurX:F

    .line 105
    iget v3, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mRadius:I

    int-to-float v3, v3

    iget v4, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mOrbitalRadius:I

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget v6, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mRadius:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    div-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mCurY:F

    .line 108
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mListener:Lcom/samsung/android/widget/SemGradientColorWheel$OnWheelColorChangedListener;

    if-eqz v3, :cond_3

    .line 109
    iget v3, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mCurY:F

    iget v4, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mRadius:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-double v4, v3

    iget v3, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mRadius:I

    int-to-float v3, v3

    iget v6, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mCurX:F

    sub-float/2addr v3, v6

    float-to-double v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    const-wide v6, 0x4066800000000000L    # 180.0

    mul-double/2addr v4, v6

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v4, v6

    double-to-float v3, v4

    const/high16 v4, 0x43340000    # 180.0f

    add-float v1, v3, v4

    .line 110
    .local v1, "hue":F
    iget v3, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mOrbitalRadius:I

    int-to-float v3, v3

    div-float v2, v0, v3

    .line 112
    .local v2, "saturation":F
    iget-object v3, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mListener:Lcom/samsung/android/widget/SemGradientColorWheel$OnWheelColorChangedListener;

    invoke-interface {v3, v1, v2}, Lcom/samsung/android/widget/SemGradientColorWheel$OnWheelColorChangedListener;->onColorChanged(FF)V

    .line 116
    .end local v1    # "hue":F
    .end local v2    # "saturation":F
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 117
    return v11

    .line 86
    :pswitch_1
    iget v3, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mRadius:I

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_2

    .line 87
    return v10

    .line 89
    :cond_2
    invoke-virtual {p0, v10}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_0

    .line 92
    :pswitch_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 93
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v11}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_0

    .line 114
    :cond_3
    const-string/jumbo v3, "SemGradientColorWheel"

    const-string/jumbo v4, "Listener is not set."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 84
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method setColor(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 147
    const/4 v1, 0x3

    new-array v0, v1, [F

    .line 148
    .local v0, "hsv":[F
    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 149
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/widget/SemGradientColorWheel;->updateCursorPosition(FF)V

    .line 146
    return-void
.end method

.method setOnColorWheelInterface(Lcom/samsung/android/widget/SemGradientColorWheel$OnWheelColorChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/widget/SemGradientColorWheel$OnWheelColorChangedListener;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mListener:Lcom/samsung/android/widget/SemGradientColorWheel$OnWheelColorChangedListener;

    .line 47
    return-void
.end method

.method updateCursorColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 165
    iget-object v0, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mCursorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 163
    return-void
.end method
