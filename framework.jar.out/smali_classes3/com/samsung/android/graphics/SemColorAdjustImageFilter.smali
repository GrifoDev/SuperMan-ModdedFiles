.class public Lcom/samsung/android/graphics/SemColorAdjustImageFilter;
.super Lcom/samsung/android/graphics/SemGenericImageFilter;
.source "SemColorAdjustImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/graphics/SemColorAdjustImageFilter$BrightnessLevelAnimationParams;,
        Lcom/samsung/android/graphics/SemColorAdjustImageFilter$ContrastLevelAnimationParams;,
        Lcom/samsung/android/graphics/SemColorAdjustImageFilter$SaturationLevelAnimationParams;
    }
.end annotation


# static fields
.field private static final FRAGMENT_SHADER_CODE:Ljava/lang/String; = "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform float filterParams[16];\nvoid main(void) {\n    vec4 texColor = texture2D(baseSampler, outTexCoords);\n    mat4 colorTransformMatrix = mat4(filterParams[0], filterParams[1], filterParams[2], filterParams[3],filterParams[4], filterParams[5], filterParams[6], filterParams[7],filterParams[8], filterParams[9], filterParams[10], filterParams[11],filterParams[12], filterParams[13], filterParams[14], filterParams[15]);\n    gl_FragColor = colorTransformMatrix * texColor;}\n\n"

.field private static final MAX_LEVEL_VALUE:F = 100.0f

.field private static final MIN_LEVEL_VALUE:F = -100.0f


# instance fields
.field private mBrightnessLevel:F

.field private mContrastLevel:F

.field private mSaturationLevel:F


# direct methods
.method static synthetic -get0(Lcom/samsung/android/graphics/SemColorAdjustImageFilter;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemColorAdjustImageFilter;->mBrightnessLevel:F

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/graphics/SemColorAdjustImageFilter;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemColorAdjustImageFilter;->mContrastLevel:F

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/graphics/SemColorAdjustImageFilter;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemColorAdjustImageFilter;->mSaturationLevel:F

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/graphics/SemColorAdjustImageFilter;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/graphics/SemColorAdjustImageFilter;->mBrightnessLevel:F

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/graphics/SemColorAdjustImageFilter;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/graphics/SemColorAdjustImageFilter;->mContrastLevel:F

    return p1
.end method

.method static synthetic -set2(Lcom/samsung/android/graphics/SemColorAdjustImageFilter;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/graphics/SemColorAdjustImageFilter;->mSaturationLevel:F

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/graphics/SemColorAdjustImageFilter;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/graphics/SemColorAdjustImageFilter;->calculateColorTransformMatrix()V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nattribute vec2 texCoords;\nattribute vec4 position;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\nvoid main() {\n   outTexCoords = texCoords;\n   gl_Position = projection * position;\n}\n"

    const-string/jumbo v1, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform float filterParams[16];\nvoid main(void) {\n    vec4 texColor = texture2D(baseSampler, outTexCoords);\n    mat4 colorTransformMatrix = mat4(filterParams[0], filterParams[1], filterParams[2], filterParams[3],filterParams[4], filterParams[5], filterParams[6], filterParams[7],filterParams[8], filterParams[9], filterParams[10], filterParams[11],filterParams[12], filterParams[13], filterParams[14], filterParams[15]);\n    gl_FragColor = colorTransformMatrix * texColor;}\n\n"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/graphics/SemGenericImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput v2, p0, Lcom/samsung/android/graphics/SemColorAdjustImageFilter;->mSaturationLevel:F

    iput v2, p0, Lcom/samsung/android/graphics/SemColorAdjustImageFilter;->mBrightnessLevel:F

    iput v2, p0, Lcom/samsung/android/graphics/SemColorAdjustImageFilter;->mContrastLevel:F

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemColorAdjustImageFilter;->useFilterParams()V

    invoke-direct {p0}, Lcom/samsung/android/graphics/SemColorAdjustImageFilter;->calculateColorTransformMatrix()V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemColorAdjustImageFilter;->setFilterParamsChanged()V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemColorAdjustImageFilter;->notifyWorkerFilters()V

    return-void
.end method

.method private calculateColorTransformMatrix()V
    .locals 12

    const/high16 v9, 0x42c80000    # 100.0f

    const/4 v11, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    iget v7, p0, Lcom/samsung/android/graphics/SemColorAdjustImageFilter;->mBrightnessLevel:F

    div-float v0, v7, v9

    iget v7, p0, Lcom/samsung/android/graphics/SemColorAdjustImageFilter;->mContrastLevel:F

    div-float/2addr v7, v9

    add-float v1, v10, v7

    sub-float v7, v10, v1

    const/high16 v8, 0x40000000    # 2.0f

    div-float v6, v7, v8

    iget v7, p0, Lcom/samsung/android/graphics/SemColorAdjustImageFilter;->mSaturationLevel:F

    div-float/2addr v7, v9

    add-float v2, v10, v7

    sub-float v7, v10, v2

    const v8, 0x3e59999a    # 0.2125f

    mul-float v5, v7, v8

    sub-float v7, v10, v2

    const v8, 0x3f372474    # 0.7154f

    mul-float v4, v7, v8

    sub-float v7, v10, v2

    const v8, 0x3d93a92a    # 0.0721f

    mul-float v3, v7, v8

    iget-object v7, p0, Lcom/samsung/android/graphics/SemColorAdjustImageFilter;->mParams:[F

    add-float v8, v5, v2

    mul-float/2addr v8, v1

    const/4 v9, 0x0

    aput v8, v7, v9

    iget-object v7, p0, Lcom/samsung/android/graphics/SemColorAdjustImageFilter;->mParams:[F

    mul-float v8, v1, v5

    const/4 v9, 0x1

    aput v8, v7, v9

    iget-object v7, p0, Lcom/samsung/android/graphics/SemColorAdjustImageFilter;->mParams:[F

    mul-float v8, v1, v5

    const/4 v9, 0x2

    aput v8, v7, v9

    iget-object v7, p0, Lcom/samsung/android/graphics/SemColorAdjustImageFilter;->mParams:[F

    const/4 v8, 0x3

    aput v11, v7, v8

    iget-object v7, p0, Lcom/samsung/android/graphics/SemColorAdjustImageFilter;->mParams:[F

    mul-float v8, v1, v4

    const/4 v9, 0x4

    aput v8, v7, v9

    iget-object v7, p0, Lcom/samsung/android/graphics/SemColorAdjustImageFilter;->mParams:[F

    add-float v8, v4, v2

    mul-float/2addr v8, v1

    const/4 v9, 0x5

    aput v8, v7, v9

    iget-object v7, p0, Lcom/samsung/android/graphics/SemColorAdjustImageFilter;->mParams:[F

    mul-float v8, v1, v4

    const/4 v9, 0x6

    aput v8, v7, v9

    iget-object v7, p0, Lcom/samsung/android/graphics/SemColorAdjustImageFilter;->mParams:[F

    const/4 v8, 0x7

    aput v11, v7, v8

    iget-object v7, p0, Lcom/samsung/android/graphics/SemColorAdjustImageFilter;->mParams:[F

    mul-float v8, v1, v3

    const/16 v9, 0x8

    aput v8, v7, v9

    iget-object v7, p0, Lcom/samsung/android/graphics/SemColorAdjustImageFilter;->mParams:[F

    mul-float v8, v1, v3

    const/16 v9, 0x9

    aput v8, v7, v9

    iget-object v7, p0, Lcom/samsung/android/graphics/SemColorAdjustImageFilter;->mParams:[F

    add-float v8, v3, v2

    mul-float/2addr v8, v1

    const/16 v9, 0xa

    aput v8, v7, v9

    iget-object v7, p0, Lcom/samsung/android/graphics/SemColorAdjustImageFilter;->mParams:[F

    const/16 v8, 0xb

    aput v11, v7, v8

    iget-object v7, p0, Lcom/samsung/android/graphics/SemColorAdjustImageFilter;->mParams:[F

    add-float v8, v6, v0

    const/16 v9, 0xc

    aput v8, v7, v9

    iget-object v7, p0, Lcom/samsung/android/graphics/SemColorAdjustImageFilter;->mParams:[F

    add-float v8, v6, v0

    const/16 v9, 0xd

    aput v8, v7, v9

    iget-object v7, p0, Lcom/samsung/android/graphics/SemColorAdjustImageFilter;->mParams:[F

    add-float v8, v6, v0

    const/16 v9, 0xe

    aput v8, v7, v9

    iget-object v7, p0, Lcom/samsung/android/graphics/SemColorAdjustImageFilter;->mParams:[F

    const/16 v8, 0xf

    aput v10, v7, v8

    return-void
.end method


# virtual methods
.method public clearAnimation()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->clearAnimation()V

    return-void
.end method

.method public clone()Lcom/samsung/android/graphics/SemColorAdjustImageFilter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->clone()Lcom/samsung/android/graphics/SemGenericImageFilter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/SemColorAdjustImageFilter;

    iget v1, p0, Lcom/samsung/android/graphics/SemColorAdjustImageFilter;->mSaturationLevel:F

    iput v1, v0, Lcom/samsung/android/graphics/SemColorAdjustImageFilter;->mSaturationLevel:F

    iget v1, p0, Lcom/samsung/android/graphics/SemColorAdjustImageFilter;->mBrightnessLevel:F

    iput v1, v0, Lcom/samsung/android/graphics/SemColorAdjustImageFilter;->mBrightnessLevel:F

    iget v1, p0, Lcom/samsung/android/graphics/SemColorAdjustImageFilter;->mContrastLevel:F

    iput v1, v0, Lcom/samsung/android/graphics/SemColorAdjustImageFilter;->mContrastLevel:F

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/samsung/android/graphics/SemGenericImageFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemColorAdjustImageFilter;->clone()Lcom/samsung/android/graphics/SemColorAdjustImageFilter;

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

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemColorAdjustImageFilter;->clone()Lcom/samsung/android/graphics/SemColorAdjustImageFilter;

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

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemColorAdjustImageFilter;->clone()Lcom/samsung/android/graphics/SemColorAdjustImageFilter;

    move-result-object v0

    return-object v0
.end method

.method public getBrightnessLevel()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemColorAdjustImageFilter;->mBrightnessLevel:F

    return v0
.end method

.method public getContrastLevel()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemColorAdjustImageFilter;->mContrastLevel:F

    return v0
.end method

.method public getSaturationLevel()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemColorAdjustImageFilter;->mSaturationLevel:F

    return v0
.end method

.method public setBrightnessLevel(F)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/graphics/SemColorAdjustImageFilter;->mBrightnessLevel:F

    invoke-static {v0, p1}, Lcom/samsung/android/graphics/SemMathUtils;->compare(FF)Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, -0x3d380000    # -100.0f

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {p1, v0, v1}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/SemColorAdjustImageFilter;->mBrightnessLevel:F

    invoke-direct {p0}, Lcom/samsung/android/graphics/SemColorAdjustImageFilter;->calculateColorTransformMatrix()V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemColorAdjustImageFilter;->setFilterParamsChanged()V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemColorAdjustImageFilter;->notifyWorkerFilters()V

    :cond_0
    return-void
.end method

.method public setBrightnessLevelAnimation(FFJJLandroid/animation/TimeInterpolator;)V
    .locals 9

    new-instance v0, Lcom/samsung/android/graphics/SemColorAdjustImageFilter$BrightnessLevelAnimationParams;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/graphics/SemColorAdjustImageFilter$BrightnessLevelAnimationParams;-><init>(Lcom/samsung/android/graphics/SemColorAdjustImageFilter;FFJJLandroid/animation/TimeInterpolator;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemColorAdjustImageFilter;->setAnimationParams(Lcom/samsung/android/graphics/SemImageFilter$AnimationParamsBase;)V

    return-void
.end method

.method public setContrastLevel(F)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/graphics/SemColorAdjustImageFilter;->mContrastLevel:F

    invoke-static {v0, p1}, Lcom/samsung/android/graphics/SemMathUtils;->compare(FF)Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, -0x3d380000    # -100.0f

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {p1, v0, v1}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/SemColorAdjustImageFilter;->mContrastLevel:F

    invoke-direct {p0}, Lcom/samsung/android/graphics/SemColorAdjustImageFilter;->calculateColorTransformMatrix()V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemColorAdjustImageFilter;->setFilterParamsChanged()V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemColorAdjustImageFilter;->notifyWorkerFilters()V

    :cond_0
    return-void
.end method

.method public setContrastLevelAnimation(FFJJLandroid/animation/TimeInterpolator;)V
    .locals 9

    new-instance v0, Lcom/samsung/android/graphics/SemColorAdjustImageFilter$ContrastLevelAnimationParams;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/graphics/SemColorAdjustImageFilter$ContrastLevelAnimationParams;-><init>(Lcom/samsung/android/graphics/SemColorAdjustImageFilter;FFJJLandroid/animation/TimeInterpolator;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemColorAdjustImageFilter;->setAnimationParams(Lcom/samsung/android/graphics/SemImageFilter$AnimationParamsBase;)V

    return-void
.end method

.method public setSaturationLevel(F)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/graphics/SemColorAdjustImageFilter;->mSaturationLevel:F

    invoke-static {v0, p1}, Lcom/samsung/android/graphics/SemMathUtils;->compare(FF)Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, -0x3d380000    # -100.0f

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {p1, v0, v1}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/SemColorAdjustImageFilter;->mSaturationLevel:F

    invoke-direct {p0}, Lcom/samsung/android/graphics/SemColorAdjustImageFilter;->calculateColorTransformMatrix()V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemColorAdjustImageFilter;->setFilterParamsChanged()V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemColorAdjustImageFilter;->notifyWorkerFilters()V

    :cond_0
    return-void
.end method

.method public setSaturationLevelAnimation(FFJJLandroid/animation/TimeInterpolator;)V
    .locals 9

    new-instance v0, Lcom/samsung/android/graphics/SemColorAdjustImageFilter$SaturationLevelAnimationParams;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/graphics/SemColorAdjustImageFilter$SaturationLevelAnimationParams;-><init>(Lcom/samsung/android/graphics/SemColorAdjustImageFilter;FFJJLandroid/animation/TimeInterpolator;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemColorAdjustImageFilter;->setAnimationParams(Lcom/samsung/android/graphics/SemImageFilter$AnimationParamsBase;)V

    return-void
.end method
