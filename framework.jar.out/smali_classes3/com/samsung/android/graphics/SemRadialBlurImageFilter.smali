.class public Lcom/samsung/android/graphics/SemRadialBlurImageFilter;
.super Lcom/samsung/android/graphics/SemGenericImageFilter;
.source "SemRadialBlurImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/graphics/SemRadialBlurImageFilter$RotationAngleAnimationParams;,
        Lcom/samsung/android/graphics/SemRadialBlurImageFilter$RotationCenterXAnimationParams;,
        Lcom/samsung/android/graphics/SemRadialBlurImageFilter$RotationCenterYAnimationParams;
    }
.end annotation


# static fields
.field private static final BLUR_STEP_COUNT_PARAM_INDEX:I = 0x1

.field private static FRAGMENT_SHADER_CODE:Ljava/lang/String; = null

.field private static final MAX_CENTER_COORD:F = 1.0f

.field private static final MAX_ROTATION_ANGLE:F = 90.0f

.field private static final MAX_STEPS_COUNT:F = 12.0f

.field private static final MIN_CENTER_COORD:F = 0.0f

.field private static final MIN_ROTATION_ANGLE:F = -90.0f

.field private static final MIN_STEPS_COUNT:F = 64.0f

.field private static final ROTATION_ANGLE_PARAM_INDEX:I = 0x0

.field private static final ROTATION_CENTER_X_PARAM_INDEX:I = 0x2

.field private static final ROTATION_CENTER_Y_PARAM_INDEX:I = 0x3


# instance fields
.field private mRotationAngle:F

.field private mRotationCenterX:F

.field private mRotationCenterY:F


# direct methods
.method static synthetic -get0(Lcom/samsung/android/graphics/SemRadialBlurImageFilter;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemRadialBlurImageFilter;->mRotationAngle:F

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/graphics/SemRadialBlurImageFilter;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemRadialBlurImageFilter;->mRotationCenterX:F

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/graphics/SemRadialBlurImageFilter;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemRadialBlurImageFilter;->mRotationCenterY:F

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/graphics/SemRadialBlurImageFilter;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/graphics/SemRadialBlurImageFilter;->mRotationCenterX:F

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/graphics/SemRadialBlurImageFilter;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/graphics/SemRadialBlurImageFilter;->mRotationCenterY:F

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/graphics/SemRadialBlurImageFilter;)F
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/graphics/SemRadialBlurImageFilter;->getOptimalDownsampleRate()F

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/graphics/SemRadialBlurImageFilter;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/graphics/SemRadialBlurImageFilter;->calculateBlurAmountParams(F)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "#ifdef GL_ES\nprecision highp float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform float filterParams[16];\nuniform float areaW;\nuniform float areaH;\nvoid main(void) {\n    float aspectRatio = areaH/areaW;\n    vec2 rotationCenter = vec2(filterParams[2], filterParams[3]);\n    vec2 m = outTexCoords - rotationCenter;\n    m.x /= aspectRatio;\n    float r = length(m);\n    float theta = atan(m.y, m.x);\n    vec4 blurColor = vec4(0.0);\n    vec2 stepCoords = vec2(0.0);\n    for(int i=0; i < int(filterParams[1]); i++) {\n        float stepTheta = theta + (float(i))/filterParams[1] * filterParams[0];\n        float stepR = r;\n        stepCoords.x = stepR  * aspectRatio * cos(stepTheta);\n        stepCoords.y = stepR * sin(stepTheta);\n        blurColor += texture2D(baseSampler, clamp(stepCoords + rotationCenter, 0.0, 1.0));\n    }\n    gl_FragColor = blurColor / filterParams[1];\n}\n\n"

    sput-object v0, Lcom/samsung/android/graphics/SemRadialBlurImageFilter;->FRAGMENT_SHADER_CODE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v2, -0x40800000    # -1.0f

    const-string/jumbo v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nattribute vec2 texCoords;\nattribute vec4 position;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\nvoid main() {\n   outTexCoords = texCoords;\n   gl_Position = projection * position;\n}\n"

    sget-object v1, Lcom/samsung/android/graphics/SemRadialBlurImageFilter;->FRAGMENT_SHADER_CODE:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/graphics/SemGenericImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput v2, p0, Lcom/samsung/android/graphics/SemRadialBlurImageFilter;->mRotationAngle:F

    iput v2, p0, Lcom/samsung/android/graphics/SemRadialBlurImageFilter;->mRotationCenterX:F

    iput v2, p0, Lcom/samsung/android/graphics/SemRadialBlurImageFilter;->mRotationCenterY:F

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemRadialBlurImageFilter;->useFilterParams()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/SemRadialBlurImageFilter;->calculateBlurAmountParams(F)V

    invoke-virtual {p0, v3, v3}, Lcom/samsung/android/graphics/SemRadialBlurImageFilter;->setRotationCenter(FF)V

    return-void
.end method

.method private calculateBlurAmountParams(F)V
    .locals 4

    const/high16 v1, -0x3d4c0000    # -90.0f

    const/high16 v2, 0x42b40000    # 90.0f

    invoke-static {p1, v1, v2}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v1

    iput v1, p0, Lcom/samsung/android/graphics/SemRadialBlurImageFilter;->mRotationAngle:F

    iget v1, p0, Lcom/samsung/android/graphics/SemRadialBlurImageFilter;->mRotationAngle:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x42800000    # 64.0f

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v1, v2, v3}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v0, v2

    iget-object v1, p0, Lcom/samsung/android/graphics/SemRadialBlurImageFilter;->mParams:[F

    const/4 v2, 0x1

    aput v0, v1, v2

    iget-object v1, p0, Lcom/samsung/android/graphics/SemRadialBlurImageFilter;->mParams:[F

    iget v2, p0, Lcom/samsung/android/graphics/SemRadialBlurImageFilter;->mRotationAngle:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    double-to-float v2, v2

    const/4 v3, 0x0

    aput v2, v1, v3

    return-void
.end method

.method private getOptimalDownsampleRate()F
    .locals 4

    iget v0, p0, Lcom/samsung/android/graphics/SemRadialBlurImageFilter;->mRotationAngle:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

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

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemRadialBlurImageFilter;->clone()Lcom/samsung/android/graphics/SemRadialBlurImageFilter;

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

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemRadialBlurImageFilter;->clone()Lcom/samsung/android/graphics/SemRadialBlurImageFilter;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/samsung/android/graphics/SemRadialBlurImageFilter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->clone()Lcom/samsung/android/graphics/SemGenericImageFilter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/SemRadialBlurImageFilter;

    iget v1, p0, Lcom/samsung/android/graphics/SemRadialBlurImageFilter;->mRotationAngle:F

    iput v1, v0, Lcom/samsung/android/graphics/SemRadialBlurImageFilter;->mRotationAngle:F

    iget v1, p0, Lcom/samsung/android/graphics/SemRadialBlurImageFilter;->mRotationCenterX:F

    iput v1, v0, Lcom/samsung/android/graphics/SemRadialBlurImageFilter;->mRotationCenterX:F

    iget v1, p0, Lcom/samsung/android/graphics/SemRadialBlurImageFilter;->mRotationCenterY:F

    iput v1, v0, Lcom/samsung/android/graphics/SemRadialBlurImageFilter;->mRotationCenterY:F

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemRadialBlurImageFilter;->clone()Lcom/samsung/android/graphics/SemRadialBlurImageFilter;

    move-result-object v0

    return-object v0
.end method

.method public getRotationAngle()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemRadialBlurImageFilter;->mRotationAngle:F

    return v0
.end method

.method public getRotationCenter()[F
    .locals 3

    const/4 v1, 0x2

    new-array v0, v1, [F

    iget v1, p0, Lcom/samsung/android/graphics/SemRadialBlurImageFilter;->mRotationCenterX:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/samsung/android/graphics/SemRadialBlurImageFilter;->mRotationCenterY:F

    const/4 v2, 0x1

    aput v1, v0, v2

    return-object v0
.end method

.method public setRotationAngle(F)V
    .locals 2

    iget v1, p0, Lcom/samsung/android/graphics/SemRadialBlurImageFilter;->mRotationAngle:F

    invoke-static {v1, p1}, Lcom/samsung/android/graphics/SemMathUtils;->compare(FF)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/graphics/SemRadialBlurImageFilter;->calculateBlurAmountParams(F)V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemRadialBlurImageFilter;->setFilterParamsChanged()V

    invoke-direct {p0}, Lcom/samsung/android/graphics/SemRadialBlurImageFilter;->getOptimalDownsampleRate()F

    move-result v0

    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/graphics/SemRadialBlurImageFilter;->setSamplingRate(FF)V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemRadialBlurImageFilter;->notifyWorkerFilters()V

    :cond_0
    return-void
.end method

.method public setRotationAngleAnimation(FFJJLandroid/animation/TimeInterpolator;)V
    .locals 9

    new-instance v0, Lcom/samsung/android/graphics/SemRadialBlurImageFilter$RotationAngleAnimationParams;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/graphics/SemRadialBlurImageFilter$RotationAngleAnimationParams;-><init>(Lcom/samsung/android/graphics/SemRadialBlurImageFilter;FFJJLandroid/animation/TimeInterpolator;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemRadialBlurImageFilter;->setAnimationParams(Lcom/samsung/android/graphics/SemImageFilter$AnimationParamsBase;)V

    return-void
.end method

.method public setRotationCenter(FF)V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    iget v0, p0, Lcom/samsung/android/graphics/SemRadialBlurImageFilter;->mRotationCenterX:F

    invoke-static {v0, p1}, Lcom/samsung/android/graphics/SemMathUtils;->compare(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/graphics/SemRadialBlurImageFilter;->mRotationCenterY:F

    invoke-static {v0, p2}, Lcom/samsung/android/graphics/SemMathUtils;->compare(FF)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p1, v1, v2}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/SemRadialBlurImageFilter;->mRotationCenterX:F

    invoke-static {p2, v1, v2}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/SemRadialBlurImageFilter;->mRotationCenterY:F

    iget-object v0, p0, Lcom/samsung/android/graphics/SemRadialBlurImageFilter;->mParams:[F

    iget v1, p0, Lcom/samsung/android/graphics/SemRadialBlurImageFilter;->mRotationCenterX:F

    const/4 v2, 0x2

    aput v1, v0, v2

    iget-object v0, p0, Lcom/samsung/android/graphics/SemRadialBlurImageFilter;->mParams:[F

    iget v1, p0, Lcom/samsung/android/graphics/SemRadialBlurImageFilter;->mRotationCenterY:F

    const/4 v2, 0x3

    aput v1, v0, v2

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemRadialBlurImageFilter;->setFilterParamsChanged()V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemRadialBlurImageFilter;->notifyWorkerFilters()V

    :cond_1
    return-void
.end method

.method public setRotationCenterXAnimation(FFJJLandroid/animation/TimeInterpolator;)V
    .locals 9

    new-instance v0, Lcom/samsung/android/graphics/SemRadialBlurImageFilter$RotationCenterXAnimationParams;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/graphics/SemRadialBlurImageFilter$RotationCenterXAnimationParams;-><init>(Lcom/samsung/android/graphics/SemRadialBlurImageFilter;FFJJLandroid/animation/TimeInterpolator;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemRadialBlurImageFilter;->setAnimationParams(Lcom/samsung/android/graphics/SemImageFilter$AnimationParamsBase;)V

    return-void
.end method

.method public setRotationCenterYAnimation(FFJJLandroid/animation/TimeInterpolator;)V
    .locals 9

    new-instance v0, Lcom/samsung/android/graphics/SemRadialBlurImageFilter$RotationCenterYAnimationParams;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/graphics/SemRadialBlurImageFilter$RotationCenterYAnimationParams;-><init>(Lcom/samsung/android/graphics/SemRadialBlurImageFilter;FFJJLandroid/animation/TimeInterpolator;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemRadialBlurImageFilter;->setAnimationParams(Lcom/samsung/android/graphics/SemImageFilter$AnimationParamsBase;)V

    return-void
.end method
