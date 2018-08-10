.class public Lcom/samsung/android/graphics/SemZoomBlurImageFilter;
.super Lcom/samsung/android/graphics/SemGenericImageFilter;
.source "SemZoomBlurImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/graphics/SemZoomBlurImageFilter$ZoomCenterXAnimationParams;,
        Lcom/samsung/android/graphics/SemZoomBlurImageFilter$ZoomCenterYAnimationParams;,
        Lcom/samsung/android/graphics/SemZoomBlurImageFilter$ZoomRatioAnimationParams;
    }
.end annotation


# static fields
.field private static final BLUR_STEP_COUNT_PARAM_INDEX:I = 0x1

.field private static final MAX_CENTER_COORD:F = 1.0f

.field private static final MAX_STEPS_COUNT:F = 100.0f

.field private static final MAX_ZOOM_RATIO:F = 100.0f

.field private static final MIN_CENTER_COORD:F = 0.0f

.field private static final MIN_STEPS_COUNT:F = 12.0f

.field private static final MIN_ZOOM_RATIO:F = 0.0f

.field private static final ZOOM_CENTER_X_INDEX:I = 0x2

.field private static final ZOOM_CENTER_Y_INDEX:I = 0x3

.field private static final ZOOM_RATIO_INDEX:I

.field private static mFragmentShaderCode:Ljava/lang/String;


# instance fields
.field private mZoomCenterX:F

.field private mZoomCenterY:F

.field private mZoomRatio:F


# direct methods
.method static synthetic -get0(Lcom/samsung/android/graphics/SemZoomBlurImageFilter;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemZoomBlurImageFilter;->mZoomCenterX:F

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/graphics/SemZoomBlurImageFilter;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemZoomBlurImageFilter;->mZoomCenterY:F

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/graphics/SemZoomBlurImageFilter;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemZoomBlurImageFilter;->mZoomRatio:F

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/graphics/SemZoomBlurImageFilter;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/graphics/SemZoomBlurImageFilter;->mZoomCenterX:F

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/graphics/SemZoomBlurImageFilter;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/graphics/SemZoomBlurImageFilter;->mZoomCenterY:F

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/graphics/SemZoomBlurImageFilter;)F
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/graphics/SemZoomBlurImageFilter;->getOptimalDownsampleRate()F

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/graphics/SemZoomBlurImageFilter;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/graphics/SemZoomBlurImageFilter;->calculateBlurAmountParams(F)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "#ifdef GL_ES\nprecision highp float;\n#endif\nuniform sampler2D baseSampler;\nvarying vec2 outTexCoords;\nuniform float filterParams[16];\nvoid main() {\n    vec2 texCoord = outTexCoords;\n    float blurStrength = 0.6 * filterParams[0];\n    vec2 center = vec2(filterParams[2], filterParams[3]);\n    vec2 offset = (texCoord - center) * blurStrength / filterParams[1];\n    float totalWeight = 0.0;\n    vec4 color = vec4(0.0);\n    texCoord += offset;\n    for (float t = 0.0; t < filterParams[1] ; t++) {\n        float percent = (filterParams[1] - t) / filterParams[1];\n        float weight = 1.0 * (percent - percent * percent);\n        texCoord -= offset;\n        color += texture2D(baseSampler, texCoord) * weight;\n        totalWeight += weight;\n    }\n    gl_FragColor = vec4(color / totalWeight);\n}\n"

    sput-object v0, Lcom/samsung/android/graphics/SemZoomBlurImageFilter;->mFragmentShaderCode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v2, -0x40800000    # -1.0f

    const-string/jumbo v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nattribute vec2 texCoords;\nattribute vec4 position;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\nvoid main() {\n   outTexCoords = texCoords;\n   gl_Position = projection * position;\n}\n"

    sget-object v1, Lcom/samsung/android/graphics/SemZoomBlurImageFilter;->mFragmentShaderCode:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/graphics/SemGenericImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput v2, p0, Lcom/samsung/android/graphics/SemZoomBlurImageFilter;->mZoomRatio:F

    iput v2, p0, Lcom/samsung/android/graphics/SemZoomBlurImageFilter;->mZoomCenterX:F

    iput v2, p0, Lcom/samsung/android/graphics/SemZoomBlurImageFilter;->mZoomCenterY:F

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemZoomBlurImageFilter;->useFilterParams()V

    invoke-virtual {p0, v3, v3}, Lcom/samsung/android/graphics/SemZoomBlurImageFilter;->setZoomCenter(FF)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemZoomBlurImageFilter;->setZoomRatio(F)V

    return-void
.end method

.method private calculateBlurAmountParams(F)V
    .locals 6

    const/high16 v5, 0x41400000    # 12.0f

    const/high16 v4, 0x42c80000    # 100.0f

    const/4 v1, 0x0

    invoke-static {p1, v1, v4}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v1

    iput v1, p0, Lcom/samsung/android/graphics/SemZoomBlurImageFilter;->mZoomRatio:F

    iget-object v1, p0, Lcom/samsung/android/graphics/SemZoomBlurImageFilter;->mParams:[F

    iget v2, p0, Lcom/samsung/android/graphics/SemZoomBlurImageFilter;->mZoomRatio:F

    div-float/2addr v2, v4

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v1, p0, Lcom/samsung/android/graphics/SemZoomBlurImageFilter;->mZoomRatio:F

    add-float/2addr v1, v5

    invoke-static {v1, v5, v4}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v0, v2

    iget-object v1, p0, Lcom/samsung/android/graphics/SemZoomBlurImageFilter;->mParams:[F

    const/4 v2, 0x1

    aput v0, v1, v2

    return-void
.end method

.method private getOptimalDownsampleRate()F
    .locals 4

    iget v0, p0, Lcom/samsung/android/graphics/SemZoomBlurImageFilter;->mZoomRatio:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method


# virtual methods
.method public clearAnimation()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->clearAnimation()V

    return-void
.end method

.method public bridge synthetic clone()Lcom/samsung/android/graphics/SemGenericImageFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemZoomBlurImageFilter;->clone()Lcom/samsung/android/graphics/SemZoomBlurImageFilter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/samsung/android/graphics/SemImageFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemZoomBlurImageFilter;->clone()Lcom/samsung/android/graphics/SemZoomBlurImageFilter;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/samsung/android/graphics/SemZoomBlurImageFilter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->clone()Lcom/samsung/android/graphics/SemGenericImageFilter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/SemZoomBlurImageFilter;

    iget v1, p0, Lcom/samsung/android/graphics/SemZoomBlurImageFilter;->mZoomRatio:F

    iput v1, v0, Lcom/samsung/android/graphics/SemZoomBlurImageFilter;->mZoomRatio:F

    iget v1, p0, Lcom/samsung/android/graphics/SemZoomBlurImageFilter;->mZoomCenterX:F

    iput v1, v0, Lcom/samsung/android/graphics/SemZoomBlurImageFilter;->mZoomCenterX:F

    iget v1, p0, Lcom/samsung/android/graphics/SemZoomBlurImageFilter;->mZoomCenterY:F

    iput v1, v0, Lcom/samsung/android/graphics/SemZoomBlurImageFilter;->mZoomCenterY:F

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemZoomBlurImageFilter;->clone()Lcom/samsung/android/graphics/SemZoomBlurImageFilter;

    move-result-object v0

    return-object v0
.end method

.method public getZoomCenter(FF)[F
    .locals 3

    const/4 v1, 0x2

    new-array v0, v1, [F

    iget v1, p0, Lcom/samsung/android/graphics/SemZoomBlurImageFilter;->mZoomCenterX:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/samsung/android/graphics/SemZoomBlurImageFilter;->mZoomCenterY:F

    const/4 v2, 0x1

    aput v1, v0, v2

    return-object v0
.end method

.method public getZoomRatio()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemZoomBlurImageFilter;->mZoomRatio:F

    return v0
.end method

.method public setZoomCenter(FF)V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    iget v0, p0, Lcom/samsung/android/graphics/SemZoomBlurImageFilter;->mZoomCenterX:F

    invoke-static {v0, p1}, Lcom/samsung/android/graphics/SemMathUtils;->compare(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/graphics/SemZoomBlurImageFilter;->mZoomCenterY:F

    invoke-static {v0, p2}, Lcom/samsung/android/graphics/SemMathUtils;->compare(FF)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p1, v1, v2}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/SemZoomBlurImageFilter;->mZoomCenterX:F

    invoke-static {p2, v1, v2}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/SemZoomBlurImageFilter;->mZoomCenterY:F

    iget v0, p0, Lcom/samsung/android/graphics/SemZoomBlurImageFilter;->mZoomCenterX:F

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/graphics/SemZoomBlurImageFilter;->setParam(IF)V

    iget v0, p0, Lcom/samsung/android/graphics/SemZoomBlurImageFilter;->mZoomCenterY:F

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/graphics/SemZoomBlurImageFilter;->setParam(IF)V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemZoomBlurImageFilter;->notifyWorkerFilters()V

    :cond_1
    return-void
.end method

.method public setZoomCenterXAnimation(FFJJLandroid/animation/TimeInterpolator;)V
    .locals 9

    new-instance v0, Lcom/samsung/android/graphics/SemZoomBlurImageFilter$ZoomCenterXAnimationParams;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/graphics/SemZoomBlurImageFilter$ZoomCenterXAnimationParams;-><init>(Lcom/samsung/android/graphics/SemZoomBlurImageFilter;FFJJLandroid/animation/TimeInterpolator;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemZoomBlurImageFilter;->setAnimationParams(Lcom/samsung/android/graphics/SemImageFilter$AnimationParamsBase;)V

    return-void
.end method

.method public setZoomCenterYAnimation(FFJJLandroid/animation/TimeInterpolator;)V
    .locals 9

    new-instance v0, Lcom/samsung/android/graphics/SemZoomBlurImageFilter$ZoomCenterYAnimationParams;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/graphics/SemZoomBlurImageFilter$ZoomCenterYAnimationParams;-><init>(Lcom/samsung/android/graphics/SemZoomBlurImageFilter;FFJJLandroid/animation/TimeInterpolator;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemZoomBlurImageFilter;->setAnimationParams(Lcom/samsung/android/graphics/SemImageFilter$AnimationParamsBase;)V

    return-void
.end method

.method public setZoomRatio(F)V
    .locals 2

    iget v1, p0, Lcom/samsung/android/graphics/SemZoomBlurImageFilter;->mZoomRatio:F

    invoke-static {v1, p1}, Lcom/samsung/android/graphics/SemMathUtils;->compare(FF)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/graphics/SemZoomBlurImageFilter;->calculateBlurAmountParams(F)V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemZoomBlurImageFilter;->setFilterParamsChanged()V

    invoke-direct {p0}, Lcom/samsung/android/graphics/SemZoomBlurImageFilter;->getOptimalDownsampleRate()F

    move-result v0

    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/graphics/SemZoomBlurImageFilter;->setSamplingRate(FF)V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemZoomBlurImageFilter;->notifyWorkerFilters()V

    :cond_0
    return-void
.end method

.method public setZoomRatioAnimation(FFJJLandroid/animation/TimeInterpolator;)V
    .locals 9

    new-instance v0, Lcom/samsung/android/graphics/SemZoomBlurImageFilter$ZoomRatioAnimationParams;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/graphics/SemZoomBlurImageFilter$ZoomRatioAnimationParams;-><init>(Lcom/samsung/android/graphics/SemZoomBlurImageFilter;FFJJLandroid/animation/TimeInterpolator;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemZoomBlurImageFilter;->setAnimationParams(Lcom/samsung/android/graphics/SemImageFilter$AnimationParamsBase;)V

    return-void
.end method
