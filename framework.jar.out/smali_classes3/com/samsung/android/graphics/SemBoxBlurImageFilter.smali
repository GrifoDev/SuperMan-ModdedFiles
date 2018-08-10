.class public Lcom/samsung/android/graphics/SemBoxBlurImageFilter;
.super Lcom/samsung/android/graphics/SemGenericImageFilter;
.source "SemBoxBlurImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/graphics/SemBoxBlurImageFilter$RadiusAnimationParams;
    }
.end annotation


# static fields
.field private static final FRAGMENT_SHADER_CODE:[Ljava/lang/String;

.field private static final INTERPOLATION_STEP_INDEX:I = 0x2

.field private static final MAX_KERNEL_SIZE:I = 0x20

.field private static final MAX_RADIUS:F = 250.0f

.field private static final MIN_RADIUS:F = 0.0f

.field private static final STEP_COUNT_INDEX:I = 0x1

.field private static final WEIGHT_PARAM_INDEX:I


# instance fields
.field private mRadius:F


# direct methods
.method static synthetic -get0(Lcom/samsung/android/graphics/SemBoxBlurImageFilter;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemBoxBlurImageFilter;->mRadius:F

    return v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/graphics/SemBoxBlurImageFilter;)F
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/graphics/SemBoxBlurImageFilter;->getOptimalDownsampleRate()F

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/graphics/SemBoxBlurImageFilter;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/graphics/SemBoxBlurImageFilter;->calculateFilterParams(F)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform float filterParams[16];\nuniform float areaW;\nvoid main(void) {\n    vec2 texPos = vec2(outTexCoords);\n    float weight = filterParams[0];\n    float texelSize = 1.0 / areaW ;\n    float scaledStep = 0.0;\n    vec4 fragColorBlur = texture2D(baseSampler, texPos);\n    for (int i = 1; i < int(filterParams[1]); i++) {\n        scaledStep = float(i) * filterParams[2] * texelSize;\n        texPos.s = outTexCoords.s + scaledStep;\n        fragColorBlur += texture2D(baseSampler, texPos);\n        texPos.s = outTexCoords.s - scaledStep;\n        fragColorBlur += texture2D(baseSampler, texPos);\n    }\n    gl_FragColor = fragColorBlur * weight;\n}\n\n"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform float filterParams[16];\nuniform float areaH;\nvoid main(void) {\n    vec2 texPos = vec2(outTexCoords);\n    float weight = filterParams[0];\n    float texelSize = 1.0 / areaH;\n    float scaledStep = 0.0;\n    vec4 fragColorBlur = texture2D(baseSampler, texPos);\n    for(int i = 1; i < int(filterParams[1]); i++) {\n        scaledStep = float(i) * filterParams[2] * texelSize;\n        texPos.t = outTexCoords.t + scaledStep;\n        fragColorBlur += texture2D(baseSampler, texPos);\n        texPos.t = outTexCoords.t - scaledStep;\n        fragColorBlur += texture2D(baseSampler, texPos);\n    }\n    gl_FragColor = fragColorBlur * weight;\n}\n\n"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/graphics/SemBoxBlurImageFilter;->FRAGMENT_SHADER_CODE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "#ifdef GL_ES\nprecision mediump float;\n#endif\nattribute vec2 texCoords;\nattribute vec4 position;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\nvoid main() {\n   outTexCoords = texCoords;\n   gl_Position = projection * position;\n}\n"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/graphics/SemBoxBlurImageFilter;->FRAGMENT_SHADER_CODE:[Ljava/lang/String;

    const/4 v2, 0x2

    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/graphics/SemGenericImageFilter;-><init>(I[Ljava/lang/String;[Ljava/lang/String;)V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/samsung/android/graphics/SemBoxBlurImageFilter;->mRadius:F

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemBoxBlurImageFilter;->useFilterParams()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemBoxBlurImageFilter;->setRadius(F)V

    return-void
.end method

.method private calculateFilterParams(F)V
    .locals 9

    const/4 v8, 0x1

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/high16 v5, 0x437a0000    # 250.0f

    invoke-static {p1, v4, v5}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v4

    iput v4, p0, Lcom/samsung/android/graphics/SemBoxBlurImageFilter;->mRadius:F

    iget v4, p0, Lcom/samsung/android/graphics/SemBoxBlurImageFilter;->mRadius:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v4, v4

    const/16 v5, 0x20

    invoke-static {v4, v8, v5}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(III)I

    move-result v0

    iget v4, p0, Lcom/samsung/android/graphics/SemBoxBlurImageFilter;->mRadius:F

    int-to-float v5, v0

    div-float v1, v4, v5

    iget v4, p0, Lcom/samsung/android/graphics/SemBoxBlurImageFilter;->mRadius:F

    mul-float/2addr v4, v7

    add-float/2addr v4, v6

    div-float v3, v6, v4

    add-int/lit8 v4, v0, -0x1

    int-to-float v4, v4

    mul-float/2addr v4, v7

    mul-float/2addr v4, v3

    add-float v2, v4, v3

    div-float/2addr v3, v2

    iget-object v4, p0, Lcom/samsung/android/graphics/SemBoxBlurImageFilter;->mParams:[F

    int-to-float v5, v0

    aput v5, v4, v8

    iget-object v4, p0, Lcom/samsung/android/graphics/SemBoxBlurImageFilter;->mParams:[F

    const/4 v5, 0x0

    aput v3, v4, v5

    iget-object v4, p0, Lcom/samsung/android/graphics/SemBoxBlurImageFilter;->mParams:[F

    const/4 v5, 0x2

    aput v1, v4, v5

    return-void
.end method

.method private getOptimalDownsampleRate()F
    .locals 4

    iget v1, p0, Lcom/samsung/android/graphics/SemBoxBlurImageFilter;->mRadius:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v1, v2

    mul-int/lit8 v0, v1, 0x2

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    return v1
.end method

.method private updateFilterParams(F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/graphics/SemBoxBlurImageFilter;->calculateFilterParams(F)V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemBoxBlurImageFilter;->setFilterParamsChanged()V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemBoxBlurImageFilter;->notifyWorkerFilters()V

    return-void
.end method


# virtual methods
.method public clearAnimation()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->clearAnimation()V

    return-void
.end method

.method public clone()Lcom/samsung/android/graphics/SemBoxBlurImageFilter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->clone()Lcom/samsung/android/graphics/SemGenericImageFilter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/SemBoxBlurImageFilter;

    iget v1, p0, Lcom/samsung/android/graphics/SemBoxBlurImageFilter;->mRadius:F

    iput v1, v0, Lcom/samsung/android/graphics/SemBoxBlurImageFilter;->mRadius:F

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/samsung/android/graphics/SemGenericImageFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemBoxBlurImageFilter;->clone()Lcom/samsung/android/graphics/SemBoxBlurImageFilter;

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

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemBoxBlurImageFilter;->clone()Lcom/samsung/android/graphics/SemBoxBlurImageFilter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemBoxBlurImageFilter;->clone()Lcom/samsung/android/graphics/SemBoxBlurImageFilter;

    move-result-object v0

    return-object v0
.end method

.method public getRadius()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemBoxBlurImageFilter;->mRadius:F

    return v0
.end method

.method public setRadius(F)V
    .locals 2

    iget v1, p0, Lcom/samsung/android/graphics/SemBoxBlurImageFilter;->mRadius:F

    invoke-static {p1, v1}, Lcom/samsung/android/graphics/SemMathUtils;->compare(FF)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/graphics/SemBoxBlurImageFilter;->updateFilterParams(F)V

    invoke-direct {p0}, Lcom/samsung/android/graphics/SemBoxBlurImageFilter;->getOptimalDownsampleRate()F

    move-result v0

    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/graphics/SemBoxBlurImageFilter;->setSamplingRate(FF)V

    :cond_0
    return-void
.end method

.method public setRadiusAnimation(FFJJLandroid/animation/TimeInterpolator;)V
    .locals 9

    new-instance v0, Lcom/samsung/android/graphics/SemBoxBlurImageFilter$RadiusAnimationParams;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/graphics/SemBoxBlurImageFilter$RadiusAnimationParams;-><init>(Lcom/samsung/android/graphics/SemBoxBlurImageFilter;FFJJLandroid/animation/TimeInterpolator;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemBoxBlurImageFilter;->setAnimationParams(Lcom/samsung/android/graphics/SemImageFilter$AnimationParamsBase;)V

    return-void
.end method
