.class public Lcom/samsung/android/graphics/SemColorClampFilter;
.super Lcom/samsung/android/graphics/SemGenericImageFilter;
.source "SemColorClampFilter.java"


# static fields
.field private static final MAX_ALPHA:I = 0x7

.field private static final MAX_BLUE:I = 0x6

.field private static final MAX_GREEN:I = 0x5

.field private static final MAX_RED:I = 0x4

.field private static final MIN_ALPHA:I = 0x3

.field private static final MIN_BLUE:I = 0x2

.field private static final MIN_GREEN:I = 0x1

.field private static final MIN_RED:I

.field private static mFragmentShaderCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string/jumbo v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform float filterParams[16];\nvoid main(void) {\n  vec4 color = texture2D(baseSampler, outTexCoords);\n  vec4 minVal = vec4(filterParams[0], filterParams[1], filterParams[2], filterParams[3]);\n  vec4 maxVal = vec4(filterParams[4], filterParams[5], filterParams[6], filterParams[7]);\n  gl_FragColor = clamp(color, minVal, maxVal);\n}\n\n"

    .line 31
    sput-object v0, Lcom/samsung/android/graphics/SemColorClampFilter;->mFragmentShaderCode:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 57
    const-string/jumbo v0, "attribute vec2 texCoords;\nattribute vec4 position;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\nvoid main() {\n   outTexCoords = texCoords;\n   gl_Position = projection * position;\n}\n"

    sget-object v1, Lcom/samsung/android/graphics/SemColorClampFilter;->mFragmentShaderCode:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/graphics/SemGenericImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->useFilterParams()V

    .line 59
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/samsung/android/graphics/SemColorClampFilter;->setMinColor(FFFF)V

    .line 60
    invoke-virtual {p0, v3, v3, v3, v3}, Lcom/samsung/android/graphics/SemColorClampFilter;->setMaxColor(FFFF)V

    .line 56
    return-void
.end method


# virtual methods
.method public animateMaxColor(FFFFFFFFJJLandroid/animation/TimeInterpolator;)[I
    .locals 11
    .param p1, "aStartValueRed"    # F
    .param p2, "aEndValueRed"    # F
    .param p3, "aStartValueGreen"    # F
    .param p4, "aEndValueGreen"    # F
    .param p5, "aStartValueBlue"    # F
    .param p6, "aEndValueBlue"    # F
    .param p7, "aStartValueAlpha"    # F
    .param p8, "aEndValueAlpha"    # F
    .param p9, "aDuration"    # J
    .param p11, "aDelay"    # J
    .param p13, "aInterpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 256
    new-instance v0, Lcom/samsung/android/graphics/SemColorClampFilter$2;

    move-object v1, p0

    move v2, p2

    move v3, p1

    move v4, p4

    move v5, p3

    move/from16 v6, p6

    move/from16 v7, p5

    move/from16 v8, p8

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/graphics/SemColorClampFilter$2;-><init>(Lcom/samsung/android/graphics/SemColorClampFilter;FFFFFFFF)V

    move-object v2, p0

    move-object v3, v0

    move-wide/from16 v4, p9

    move-wide/from16 v6, p11

    move-object/from16 v8, p13

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/graphics/SemImageFilterSet;->addAnimationForAllPasses(Lcom/samsung/android/graphics/SemImageFilter$IAnimationListener;JJLandroid/animation/TimeInterpolator;)[I

    move-result-object v0

    return-object v0
.end method

.method public animateMaxColor(IIJJLandroid/animation/TimeInterpolator;)[I
    .locals 15
    .param p1, "aStartValueColor"    # I
    .param p2, "aEndValueColor"    # I
    .param p3, "aDuration"    # J
    .param p5, "aDelay"    # J
    .param p7, "aInterpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 224
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float v2, v0, v1

    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float v3, v0, v1

    .line 225
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float v4, v0, v1

    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float v5, v0, v1

    .line 226
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float v6, v0, v1

    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float v7, v0, v1

    .line 227
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float v8, v0, v1

    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float v9, v0, v1

    move-object v1, p0

    move-wide/from16 v10, p3

    move-wide/from16 v12, p5

    move-object/from16 v14, p7

    .line 223
    invoke-virtual/range {v1 .. v14}, Lcom/samsung/android/graphics/SemColorClampFilter;->animateMaxColor(FFFFFFFFJJLandroid/animation/TimeInterpolator;)[I

    move-result-object v0

    return-object v0
.end method

.method public animateMinColor(FFFFFFFFJJLandroid/animation/TimeInterpolator;)[I
    .locals 11
    .param p1, "aStartValueRed"    # F
    .param p2, "aEndValueRed"    # F
    .param p3, "aStartValueGreen"    # F
    .param p4, "aEndValueGreen"    # F
    .param p5, "aStartValueBlue"    # F
    .param p6, "aEndValueBlue"    # F
    .param p7, "aStartValueAlpha"    # F
    .param p8, "aEndValueAlpha"    # F
    .param p9, "aDuration"    # J
    .param p11, "aDelay"    # J
    .param p13, "aInterpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 171
    new-instance v0, Lcom/samsung/android/graphics/SemColorClampFilter$1;

    move-object v1, p0

    move v2, p2

    move v3, p1

    move v4, p4

    move v5, p3

    move/from16 v6, p6

    move/from16 v7, p5

    move/from16 v8, p8

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/graphics/SemColorClampFilter$1;-><init>(Lcom/samsung/android/graphics/SemColorClampFilter;FFFFFFFF)V

    move-object v2, p0

    move-object v3, v0

    move-wide/from16 v4, p9

    move-wide/from16 v6, p11

    move-object/from16 v8, p13

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/graphics/SemImageFilterSet;->addAnimationForAllPasses(Lcom/samsung/android/graphics/SemImageFilter$IAnimationListener;JJLandroid/animation/TimeInterpolator;)[I

    move-result-object v0

    return-object v0
.end method

.method public animateMinColor(IIJJLandroid/animation/TimeInterpolator;)[I
    .locals 15
    .param p1, "aStartValueColor"    # I
    .param p2, "aEndValueColor"    # I
    .param p3, "aDuration"    # J
    .param p5, "aDelay"    # J
    .param p7, "aInterpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 139
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float v2, v0, v1

    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float v3, v0, v1

    .line 140
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float v4, v0, v1

    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float v5, v0, v1

    .line 141
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float v6, v0, v1

    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float v7, v0, v1

    .line 142
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float v8, v0, v1

    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float v9, v0, v1

    move-object v1, p0

    move-wide/from16 v10, p3

    move-wide/from16 v12, p5

    move-object/from16 v14, p7

    .line 138
    invoke-virtual/range {v1 .. v14}, Lcom/samsung/android/graphics/SemColorClampFilter;->animateMinColor(FFFFFFFFJJLandroid/animation/TimeInterpolator;)[I

    move-result-object v0

    return-object v0
.end method

.method public setMaxColor(FFFF)V
    .locals 5
    .param p1, "red"    # F
    .param p2, "green"    # F
    .param p3, "blue"    # F
    .param p4, "alpha"    # F

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 115
    iget-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mParams:[F

    invoke-static {p1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/4 v2, 0x4

    aput v1, v0, v2

    .line 116
    iget-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mParams:[F

    invoke-static {p2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/4 v2, 0x5

    aput v1, v0, v2

    .line 117
    iget-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mParams:[F

    invoke-static {p3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/4 v2, 0x6

    aput v1, v0, v2

    .line 118
    iget-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mParams:[F

    invoke-static {p4, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/4 v2, 0x7

    aput v1, v0, v2

    .line 119
    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setFilterParamsChanged()V

    .line 120
    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->notifyWorkerFilters()V

    .line 114
    return-void
.end method

.method public setMaxColor(I)V
    .locals 5
    .param p1, "color"    # I

    .prologue
    const/high16 v4, 0x437f0000    # 255.0f

    .line 101
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/graphics/SemColorClampFilter;->setMaxColor(FFFF)V

    .line 100
    return-void
.end method

.method public setMinColor(FFFF)V
    .locals 5
    .param p1, "red"    # F
    .param p2, "green"    # F
    .param p3, "blue"    # F
    .param p4, "alpha"    # F

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 85
    iget-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mParams:[F

    invoke-static {p1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 86
    iget-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mParams:[F

    invoke-static {p2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 87
    iget-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mParams:[F

    invoke-static {p3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 88
    iget-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mParams:[F

    invoke-static {p4, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 89
    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setFilterParamsChanged()V

    .line 90
    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->notifyWorkerFilters()V

    .line 84
    return-void
.end method

.method public setMinColor(I)V
    .locals 5
    .param p1, "color"    # I

    .prologue
    const/high16 v4, 0x437f0000    # 255.0f

    .line 71
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/graphics/SemColorClampFilter;->setMinColor(FFFF)V

    .line 70
    return-void
.end method
