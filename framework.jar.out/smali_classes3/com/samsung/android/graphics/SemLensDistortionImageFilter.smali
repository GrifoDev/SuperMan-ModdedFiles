.class public Lcom/samsung/android/graphics/SemLensDistortionImageFilter;
.super Lcom/samsung/android/graphics/SemGenericImageFilter;
.source "SemLensDistortionImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/graphics/SemLensDistortionImageFilter$DistortionAnimationParams;
    }
.end annotation


# static fields
.field private static final DISTORTION_PARAM_INDEX:I = 0x0

.field private static FRAGMENT_SHADER_CODE:Ljava/lang/String; = null

.field private static final MAX_DISTORTION:F = 50.0f

.field private static final MIN_DISTORTION:F = -100.0f


# instance fields
.field private mDistortion:F


# direct methods
.method static synthetic -get0(Lcom/samsung/android/graphics/SemLensDistortionImageFilter;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemLensDistortionImageFilter;->mDistortion:F

    return v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/graphics/SemLensDistortionImageFilter;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/graphics/SemLensDistortionImageFilter;->updateDistortionParam(F)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "#ifdef GL_ES\nprecision highp float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D originalSampler;\nuniform float filterParams[16];\nuniform float areaW;\nuniform float areaH;\nvoid main(void) {\n    vec2 center = vec2(0.5, 0.5);\n    vec2 centerVector = outTexCoords.xy - center;\n    float r = length(centerVector);\n    float power = 4.44 * (filterParams[0]);\n    float bind = (power > 0.0 ? 0.707 : 0.5);\n    vec2 uv = outTexCoords.xy;\n    if (power > 0.0) {\n      uv = center + normalize(centerVector) * tan(r * power) * bind / tan(bind * power);\n    } else if (power < 0.0) {\n      uv = center + normalize(centerVector) * atan(-r * power * 10.0) * bind / atan(-bind * power * 10.0);\n    }\n    gl_FragColor = texture2D(baseSampler, vec2(uv.x, -uv.y));\n}\n\n"

    sput-object v0, Lcom/samsung/android/graphics/SemLensDistortionImageFilter;->FRAGMENT_SHADER_CODE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string/jumbo v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nattribute vec2 texCoords;\nattribute vec4 position;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\nvoid main() {\n   outTexCoords = texCoords;\n   gl_Position = projection * position;\n}\n"

    sget-object v1, Lcom/samsung/android/graphics/SemLensDistortionImageFilter;->FRAGMENT_SHADER_CODE:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/graphics/SemGenericImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/samsung/android/graphics/SemLensDistortionImageFilter;->mDistortion:F

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemLensDistortionImageFilter;->useFilterParams()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemLensDistortionImageFilter;->setDistortion(F)V

    return-void
.end method

.method private updateDistortionParam(F)V
    .locals 3

    const/high16 v0, -0x3d380000    # -100.0f

    const/high16 v1, 0x42480000    # 50.0f

    invoke-static {p1, v0, v1}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/SemLensDistortionImageFilter;->mDistortion:F

    iget-object v0, p0, Lcom/samsung/android/graphics/SemLensDistortionImageFilter;->mParams:[F

    iget v1, p0, Lcom/samsung/android/graphics/SemLensDistortionImageFilter;->mDistortion:F

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    const/4 v2, 0x0

    aput v1, v0, v2

    return-void
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

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemLensDistortionImageFilter;->clone()Lcom/samsung/android/graphics/SemLensDistortionImageFilter;

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

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemLensDistortionImageFilter;->clone()Lcom/samsung/android/graphics/SemLensDistortionImageFilter;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/samsung/android/graphics/SemLensDistortionImageFilter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->clone()Lcom/samsung/android/graphics/SemGenericImageFilter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/SemLensDistortionImageFilter;

    iget v1, p0, Lcom/samsung/android/graphics/SemLensDistortionImageFilter;->mDistortion:F

    iput v1, v0, Lcom/samsung/android/graphics/SemLensDistortionImageFilter;->mDistortion:F

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemLensDistortionImageFilter;->clone()Lcom/samsung/android/graphics/SemLensDistortionImageFilter;

    move-result-object v0

    return-object v0
.end method

.method public getDistortion()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemLensDistortionImageFilter;->mDistortion:F

    return v0
.end method

.method public setDistortion(F)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemLensDistortionImageFilter;->mDistortion:F

    invoke-static {v0, p1}, Lcom/samsung/android/graphics/SemMathUtils;->compare(FF)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/graphics/SemLensDistortionImageFilter;->updateDistortionParam(F)V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemLensDistortionImageFilter;->setFilterParamsChanged()V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemLensDistortionImageFilter;->notifyWorkerFilters()V

    :cond_0
    return-void
.end method

.method public setDistortionAnimation(FFJJLandroid/animation/TimeInterpolator;)V
    .locals 9

    new-instance v0, Lcom/samsung/android/graphics/SemLensDistortionImageFilter$DistortionAnimationParams;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/graphics/SemLensDistortionImageFilter$DistortionAnimationParams;-><init>(Lcom/samsung/android/graphics/SemLensDistortionImageFilter;FFJJLandroid/animation/TimeInterpolator;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemLensDistortionImageFilter;->setAnimationParams(Lcom/samsung/android/graphics/SemImageFilter$AnimationParamsBase;)V

    return-void
.end method
