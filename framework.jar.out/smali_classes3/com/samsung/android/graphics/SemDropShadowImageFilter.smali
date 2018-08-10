.class public Lcom/samsung/android/graphics/SemDropShadowImageFilter;
.super Lcom/samsung/android/graphics/SemGenericImageFilter;
.source "SemDropShadowImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/graphics/SemDropShadowImageFilter$AngleAnimationParams;,
        Lcom/samsung/android/graphics/SemDropShadowImageFilter$DistanceAnimationParams;,
        Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams;
    }
.end annotation


# static fields
.field private static final ALPHA:I = 0x6

.field private static final BLUE:I = 0x5

.field private static final CYCLES_COUNT:I = 0x2

.field private static final DIRECTION_X:I = 0x0

.field private static final DIRECTION_Y:I = 0x1

.field private static final FRAGMENT_SHADER_CODE:Ljava/lang/String; = "precision highp float;\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform float filterParams[16];\nuniform float areaW;\nuniform float areaH;\nvoid main(void) {\n    vec2 uv = vec2(outTexCoords);\n    float c = areaW / areaH;\n    vec2 vDirection = vec2(filterParams[0] / areaW, filterParams[1] / areaH);\n    if (areaW>areaH) vDirection.y*=c; else vDirection.x/=c; \n    vec4 savedColor = texture2D(baseSampler, uv);\n    if (savedColor.a != 1.0) {\n        float ccl = filterParams[2];\n        for (float i = 0.0; i < ccl; i += 1.0) {\n            uv -= vDirection;\n            if (uv.x<0.0 || uv.x>1.0 || uv.y<0.0 || uv.y>1.0)\n               i = ccl;\n            if (texture2D(baseSampler, uv).a == 1.0) {               savedColor = savedColor + vec4(filterParams[3], filterParams[4], filterParams[5], filterParams[6]) * (1.0 - savedColor.a) * (1.0-i/ccl);\n               i = ccl;\n            }\n        }\n    }\n    gl_FragColor = savedColor;\n}\n\n"

.field private static final GREEN:I = 0x4

.field private static final RED:I = 0x3


# instance fields
.field private mAngle:F

.field private mDistance:F

.field private mQuality:F


# direct methods
.method static synthetic -get0(Lcom/samsung/android/graphics/SemDropShadowImageFilter;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemDropShadowImageFilter;->mAngle:F

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/graphics/SemDropShadowImageFilter;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemDropShadowImageFilter;->mDistance:F

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/graphics/SemDropShadowImageFilter;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/graphics/SemDropShadowImageFilter;->mAngle:F

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/graphics/SemDropShadowImageFilter;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/graphics/SemDropShadowImageFilter;->mDistance:F

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/graphics/SemDropShadowImageFilter;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/graphics/SemDropShadowImageFilter;->calculateShadowGeometry()V

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    const-string/jumbo v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nattribute vec2 texCoords;\nattribute vec4 position;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\nvoid main() {\n   outTexCoords = texCoords;\n   gl_Position = projection * position;\n}\n"

    const-string/jumbo v1, "precision highp float;\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform float filterParams[16];\nuniform float areaW;\nuniform float areaH;\nvoid main(void) {\n    vec2 uv = vec2(outTexCoords);\n    float c = areaW / areaH;\n    vec2 vDirection = vec2(filterParams[0] / areaW, filterParams[1] / areaH);\n    if (areaW>areaH) vDirection.y*=c; else vDirection.x/=c; \n    vec4 savedColor = texture2D(baseSampler, uv);\n    if (savedColor.a != 1.0) {\n        float ccl = filterParams[2];\n        for (float i = 0.0; i < ccl; i += 1.0) {\n            uv -= vDirection;\n            if (uv.x<0.0 || uv.x>1.0 || uv.y<0.0 || uv.y>1.0)\n               i = ccl;\n            if (texture2D(baseSampler, uv).a == 1.0) {               savedColor = savedColor + vec4(filterParams[3], filterParams[4], filterParams[5], filterParams[6]) * (1.0 - savedColor.a) * (1.0-i/ccl);\n               i = ccl;\n            }\n        }\n    }\n    gl_FragColor = savedColor;\n}\n\n"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/graphics/SemGenericImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput v2, p0, Lcom/samsung/android/graphics/SemDropShadowImageFilter;->mAngle:F

    iput v2, p0, Lcom/samsung/android/graphics/SemDropShadowImageFilter;->mDistance:F

    iput v2, p0, Lcom/samsung/android/graphics/SemDropShadowImageFilter;->mQuality:F

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemDropShadowImageFilter;->useFilterParams()V

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemDropShadowImageFilter;->setDistance(F)V

    const/high16 v0, -0x3ee00000    # -10.0f

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemDropShadowImageFilter;->setAngle(F)V

    invoke-virtual {p0, v4, v3, v3, v4}, Lcom/samsung/android/graphics/SemDropShadowImageFilter;->setShadowColor(FFFF)V

    const/high16 v0, 0x41700000    # 15.0f

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemDropShadowImageFilter;->setQuality(F)V

    sget-object v0, Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;->GL_ONE:Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;

    sget-object v1, Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;->GL_ONE_MINUS_SRC_ALPHA:Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/graphics/SemDropShadowImageFilter;->setupBlendFactor(Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;)V

    invoke-direct {p0}, Lcom/samsung/android/graphics/SemDropShadowImageFilter;->setupShadowGeometryParams()V

    return-void
.end method

.method private calculateShadowGeometry()V
    .locals 8

    iget v5, p0, Lcom/samsung/android/graphics/SemDropShadowImageFilter;->mAngle:F

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v3, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v4, v6

    iget v5, p0, Lcom/samsung/android/graphics/SemDropShadowImageFilter;->mDistance:F

    iget v6, p0, Lcom/samsung/android/graphics/SemDropShadowImageFilter;->mQuality:F

    div-float v2, v5, v6

    mul-float/2addr v3, v2

    mul-float/2addr v4, v2

    iget-object v5, p0, Lcom/samsung/android/graphics/SemDropShadowImageFilter;->mParams:[F

    const/4 v6, 0x0

    aput v3, v5, v6

    iget-object v5, p0, Lcom/samsung/android/graphics/SemDropShadowImageFilter;->mParams:[F

    const/4 v6, 0x1

    aput v4, v5, v6

    iget-object v5, p0, Lcom/samsung/android/graphics/SemDropShadowImageFilter;->mParams:[F

    iget v6, p0, Lcom/samsung/android/graphics/SemDropShadowImageFilter;->mQuality:F

    const/4 v7, 0x2

    aput v6, v5, v7

    return-void
.end method

.method private setupShadowGeometryParams()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/graphics/SemDropShadowImageFilter;->calculateShadowGeometry()V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemDropShadowImageFilter;->setFilterParamsChanged()V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemDropShadowImageFilter;->notifyWorkerFilters()V

    return-void
.end method


# virtual methods
.method public clearAnimation()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->clearAnimation()V

    return-void
.end method

.method public clone()Lcom/samsung/android/graphics/SemDropShadowImageFilter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->clone()Lcom/samsung/android/graphics/SemGenericImageFilter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/SemDropShadowImageFilter;

    iget v1, p0, Lcom/samsung/android/graphics/SemDropShadowImageFilter;->mAngle:F

    iput v1, v0, Lcom/samsung/android/graphics/SemDropShadowImageFilter;->mAngle:F

    iget v1, p0, Lcom/samsung/android/graphics/SemDropShadowImageFilter;->mDistance:F

    iput v1, v0, Lcom/samsung/android/graphics/SemDropShadowImageFilter;->mDistance:F

    iget v1, p0, Lcom/samsung/android/graphics/SemDropShadowImageFilter;->mQuality:F

    iput v1, v0, Lcom/samsung/android/graphics/SemDropShadowImageFilter;->mQuality:F

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/samsung/android/graphics/SemGenericImageFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemDropShadowImageFilter;->clone()Lcom/samsung/android/graphics/SemDropShadowImageFilter;

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

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemDropShadowImageFilter;->clone()Lcom/samsung/android/graphics/SemDropShadowImageFilter;

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

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemDropShadowImageFilter;->clone()Lcom/samsung/android/graphics/SemDropShadowImageFilter;

    move-result-object v0

    return-object v0
.end method

.method public getAngle()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemDropShadowImageFilter;->mAngle:F

    return v0
.end method

.method public getDistance()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemDropShadowImageFilter;->mDistance:F

    return v0
.end method

.method public getQuality()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemDropShadowImageFilter;->mQuality:F

    return v0
.end method

.method public getShadowColor()[F
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x3

    new-array v0, v4, [F

    iget-object v1, p0, Lcom/samsung/android/graphics/SemDropShadowImageFilter;->mParams:[F

    aget v1, v1, v3

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/graphics/SemDropShadowImageFilter;->mParams:[F

    aget v1, v1, v4

    const/4 v2, 0x1

    aput v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/graphics/SemDropShadowImageFilter;->mParams:[F

    const/4 v2, 0x5

    aget v1, v1, v2

    const/4 v2, 0x2

    aput v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/graphics/SemDropShadowImageFilter;->mParams:[F

    const/4 v2, 0x6

    aget v1, v1, v2

    aput v1, v0, v3

    return-object v0
.end method

.method public setAngle(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/graphics/SemDropShadowImageFilter;->mAngle:F

    invoke-direct {p0}, Lcom/samsung/android/graphics/SemDropShadowImageFilter;->setupShadowGeometryParams()V

    return-void
.end method

.method public setAngleAnimation(FFJJLandroid/animation/TimeInterpolator;)V
    .locals 9

    new-instance v0, Lcom/samsung/android/graphics/SemDropShadowImageFilter$AngleAnimationParams;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/graphics/SemDropShadowImageFilter$AngleAnimationParams;-><init>(Lcom/samsung/android/graphics/SemDropShadowImageFilter;FFJJLandroid/animation/TimeInterpolator;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemDropShadowImageFilter;->setAnimationParams(Lcom/samsung/android/graphics/SemImageFilter$AnimationParamsBase;)V

    return-void
.end method

.method public setDistance(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3fc00000    # 1.5f

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/graphics/SemDropShadowImageFilter;->mDistance:F

    invoke-direct {p0}, Lcom/samsung/android/graphics/SemDropShadowImageFilter;->setupShadowGeometryParams()V

    :cond_0
    return-void
.end method

.method public setDistanceAnimation(FFJJLandroid/animation/TimeInterpolator;)V
    .locals 9

    new-instance v0, Lcom/samsung/android/graphics/SemDropShadowImageFilter$DistanceAnimationParams;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/graphics/SemDropShadowImageFilter$DistanceAnimationParams;-><init>(Lcom/samsung/android/graphics/SemDropShadowImageFilter;FFJJLandroid/animation/TimeInterpolator;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemDropShadowImageFilter;->setAnimationParams(Lcom/samsung/android/graphics/SemImageFilter$AnimationParamsBase;)V

    return-void
.end method

.method public setQuality(F)V
    .locals 4

    const/4 v1, 0x0

    const/high16 v2, 0x447a0000    # 1000.0f

    invoke-static {p1, v1, v2}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v1

    const v2, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v2

    const/high16 v2, 0x40a00000    # 5.0f

    add-float v0, v2, v1

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-float v1, v2

    iput v1, p0, Lcom/samsung/android/graphics/SemDropShadowImageFilter;->mQuality:F

    invoke-direct {p0}, Lcom/samsung/android/graphics/SemDropShadowImageFilter;->setupShadowGeometryParams()V

    return-void
.end method

.method public setShadowColor(FFFF)V
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/samsung/android/graphics/SemDropShadowImageFilter;->mParams:[F

    invoke-static {p1, v3, v4}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v1

    const/4 v2, 0x3

    aput v1, v0, v2

    iget-object v0, p0, Lcom/samsung/android/graphics/SemDropShadowImageFilter;->mParams:[F

    invoke-static {p2, v3, v4}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v1

    const/4 v2, 0x4

    aput v1, v0, v2

    iget-object v0, p0, Lcom/samsung/android/graphics/SemDropShadowImageFilter;->mParams:[F

    invoke-static {p3, v3, v4}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v1

    const/4 v2, 0x5

    aput v1, v0, v2

    iget-object v0, p0, Lcom/samsung/android/graphics/SemDropShadowImageFilter;->mParams:[F

    invoke-static {p4, v3, v4}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v1

    const/4 v2, 0x6

    aput v1, v0, v2

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemDropShadowImageFilter;->setFilterParamsChanged()V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemDropShadowImageFilter;->notifyWorkerFilters()V

    return-void
.end method

.method public setShadowColor(I)V
    .locals 5

    const/high16 v4, 0x437f0000    # 255.0f

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

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/graphics/SemDropShadowImageFilter;->setShadowColor(FFFF)V

    return-void
.end method

.method public setShadowColorAnimation(IIJJLandroid/animation/TimeInterpolator;)V
    .locals 9

    new-instance v0, Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams;-><init>(Lcom/samsung/android/graphics/SemDropShadowImageFilter;IIJJLandroid/animation/TimeInterpolator;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemDropShadowImageFilter;->setAnimationParams(Lcom/samsung/android/graphics/SemImageFilter$AnimationParamsBase;)V

    return-void
.end method
