.class public Lcom/samsung/android/graphics/SemColorizeFilter;
.super Lcom/samsung/android/graphics/SemGenericImageFilter;
.source "SemColorizeFilter.java"


# static fields
.field private static final ALPHA:I = 0x3

.field private static final BLEND_RATIO:I = 0x4

.field private static final BLUE:I = 0x2

.field private static final GREEN:I = 0x1

.field private static final RED:I

.field private static mFragmentShaderCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string/jumbo v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform float filterParams[16];\n\nvoid main(void) {\n   vec4 texColor = texture2D(baseSampler, outTexCoords);\n    vec4 colorizeColor = vec4(filterParams[0], filterParams[1], filterParams[2], filterParams[3]);\n   gl_FragColor = mix(colorizeColor, texColor, filterParams[4]);\n}\n\n"

    .line 31
    sput-object v0, Lcom/samsung/android/graphics/SemColorizeFilter;->mFragmentShaderCode:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 53
    const-string/jumbo v0, "attribute vec2 texCoords;\nattribute vec4 position;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\nvoid main() {\n   outTexCoords = texCoords;\n   gl_Position = projection * position;\n}\n"

    sget-object v1, Lcom/samsung/android/graphics/SemColorizeFilter;->mFragmentShaderCode:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/graphics/SemGenericImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->useFilterParams()V

    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemColorizeFilter;->setBlendRatio(F)V

    .line 52
    return-void
.end method


# virtual methods
.method public animateBlendRatio(FFJJLandroid/animation/TimeInterpolator;)[I
    .locals 7
    .param p1, "aStartValue"    # F
    .param p2, "aEndValue"    # F
    .param p3, "aDuration"    # J
    .param p5, "aDelay"    # J
    .param p7, "aInterpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 203
    new-instance v1, Lcom/samsung/android/graphics/SemColorizeFilter$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/samsung/android/graphics/SemColorizeFilter$2;-><init>(Lcom/samsung/android/graphics/SemColorizeFilter;FF)V

    move-object v0, p0

    move-wide v2, p3

    move-wide v4, p5

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/graphics/SemImageFilterSet;->addAnimationForAllPasses(Lcom/samsung/android/graphics/SemImageFilter$IAnimationListener;JJLandroid/animation/TimeInterpolator;)[I

    move-result-object v0

    return-object v0
.end method

.method public animateColor(FFFFFFFFJJLandroid/animation/TimeInterpolator;)[I
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
    .line 150
    new-instance v0, Lcom/samsung/android/graphics/SemColorizeFilter$1;

    move-object v1, p0

    move v2, p2

    move v3, p1

    move v4, p4

    move v5, p3

    move/from16 v6, p6

    move/from16 v7, p5

    move/from16 v8, p8

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/graphics/SemColorizeFilter$1;-><init>(Lcom/samsung/android/graphics/SemColorizeFilter;FFFFFFFF)V

    move-object v2, p0

    move-object v3, v0

    move-wide/from16 v4, p9

    move-wide/from16 v6, p11

    move-object/from16 v8, p13

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/graphics/SemImageFilterSet;->addAnimationForAllPasses(Lcom/samsung/android/graphics/SemImageFilter$IAnimationListener;JJLandroid/animation/TimeInterpolator;)[I

    move-result-object v0

    return-object v0
.end method

.method public animateColor(IIJJLandroid/animation/TimeInterpolator;)[I
    .locals 15
    .param p1, "aStartValueColor"    # I
    .param p2, "aEndValueColor"    # I
    .param p3, "aDuration"    # J
    .param p5, "aDelay"    # J
    .param p7, "aInterpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 118
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

    .line 119
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

    .line 120
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

    .line 121
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

    .line 117
    invoke-virtual/range {v1 .. v14}, Lcom/samsung/android/graphics/SemColorizeFilter;->animateColor(FFFFFFFFJJLandroid/animation/TimeInterpolator;)[I

    move-result-object v0

    return-object v0
.end method

.method public setBlendRatio(F)V
    .locals 3
    .param p1, "ratio"    # F

    .prologue
    .line 97
    iget-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mParams:[F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/4 v2, 0x4

    aput v1, v0, v2

    .line 98
    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setFilterParamsChanged()V

    .line 99
    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->notifyWorkerFilters()V

    .line 96
    return-void
.end method

.method public setColor(FFFF)V
    .locals 5
    .param p1, "red"    # F
    .param p2, "green"    # F
    .param p3, "blue"    # F
    .param p4, "alpha"    # F

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 80
    iget-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mParams:[F

    invoke-static {p1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 81
    iget-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mParams:[F

    invoke-static {p2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 82
    iget-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mParams:[F

    invoke-static {p3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 83
    iget-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mParams:[F

    invoke-static {p4, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 84
    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setFilterParamsChanged()V

    .line 85
    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->notifyWorkerFilters()V

    .line 79
    return-void
.end method

.method public setColor(I)V
    .locals 5
    .param p1, "color"    # I

    .prologue
    const/high16 v4, 0x437f0000    # 255.0f

    .line 66
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

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/graphics/SemColorizeFilter;->setColor(FFFF)V

    .line 65
    return-void
.end method
