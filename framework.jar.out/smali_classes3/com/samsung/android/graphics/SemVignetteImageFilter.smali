.class public Lcom/samsung/android/graphics/SemVignetteImageFilter;
.super Lcom/samsung/android/graphics/SemGenericImageFilter;
.source "SemVignetteImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/graphics/SemVignetteImageFilter$RadiusAnimationParams;
    }
.end annotation


# static fields
.field private static final FRAGMENT_SHADER_CODE:Ljava/lang/String; = "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform float filterParams[16];\nuniform float areaW;\nuniform float areaH;\nvoid main(void) {\n    vec2 resolution = vec2(areaW, areaH);\n    vec4 texColor = texture2D(baseSampler, outTexCoords);\n    vec2 relativePosition = gl_FragCoord.xy / resolution - 0.5;\n    float len = length(relativePosition);\n    float vignette = smoothstep(filterParams[0] + 0.1, filterParams[0] - 0.1, len);\n    texColor.rgb = mix(texColor.rgb, texColor.rgb * vignette, 0.9);\n    gl_FragColor = texColor;\n}\n\n"

.field private static final MAX_RADIUS:F = 1.0f

.field private static final MIN_RADIUS:F

.field private static final RADIUS_PARAM_INDEX:I


# instance fields
.field private mRadius:F


# direct methods
.method static synthetic -get0(Lcom/samsung/android/graphics/SemVignetteImageFilter;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemVignetteImageFilter;->mRadius:F

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/graphics/SemVignetteImageFilter;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/graphics/SemVignetteImageFilter;->mRadius:F

    return p1
.end method

.method public constructor <init>()V
    .locals 2

    const-string/jumbo v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nattribute vec2 texCoords;\nattribute vec4 position;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\nvoid main() {\n   outTexCoords = texCoords;\n   gl_Position = projection * position;\n}\n"

    const-string/jumbo v1, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform float filterParams[16];\nuniform float areaW;\nuniform float areaH;\nvoid main(void) {\n    vec2 resolution = vec2(areaW, areaH);\n    vec4 texColor = texture2D(baseSampler, outTexCoords);\n    vec2 relativePosition = gl_FragCoord.xy / resolution - 0.5;\n    float len = length(relativePosition);\n    float vignette = smoothstep(filterParams[0] + 0.1, filterParams[0] - 0.1, len);\n    texColor.rgb = mix(texColor.rgb, texColor.rgb * vignette, 0.9);\n    gl_FragColor = texColor;\n}\n\n"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/graphics/SemGenericImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/samsung/android/graphics/SemVignetteImageFilter;->mRadius:F

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemVignetteImageFilter;->useFilterParams()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemVignetteImageFilter;->setRadius(F)V

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

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemVignetteImageFilter;->clone()Lcom/samsung/android/graphics/SemVignetteImageFilter;

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

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemVignetteImageFilter;->clone()Lcom/samsung/android/graphics/SemVignetteImageFilter;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/samsung/android/graphics/SemVignetteImageFilter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->clone()Lcom/samsung/android/graphics/SemGenericImageFilter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/SemVignetteImageFilter;

    iget v1, p0, Lcom/samsung/android/graphics/SemVignetteImageFilter;->mRadius:F

    iput v1, v0, Lcom/samsung/android/graphics/SemVignetteImageFilter;->mRadius:F

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemVignetteImageFilter;->clone()Lcom/samsung/android/graphics/SemVignetteImageFilter;

    move-result-object v0

    return-object v0
.end method

.method public getRadius()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemVignetteImageFilter;->mRadius:F

    return v0
.end method

.method public setRadius(F)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/graphics/SemVignetteImageFilter;->mRadius:F

    invoke-static {v0, p1}, Lcom/samsung/android/graphics/SemMathUtils;->compare(FF)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/SemVignetteImageFilter;->mRadius:F

    iget v0, p0, Lcom/samsung/android/graphics/SemVignetteImageFilter;->mRadius:F

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/graphics/SemVignetteImageFilter;->setParam(IF)V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemVignetteImageFilter;->notifyWorkerFilters()V

    :cond_0
    return-void
.end method

.method public setRadiusAnimation(FFJJLandroid/animation/TimeInterpolator;)V
    .locals 9

    new-instance v0, Lcom/samsung/android/graphics/SemVignetteImageFilter$RadiusAnimationParams;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/graphics/SemVignetteImageFilter$RadiusAnimationParams;-><init>(Lcom/samsung/android/graphics/SemVignetteImageFilter;FFJJLandroid/animation/TimeInterpolator;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemVignetteImageFilter;->setAnimationParams(Lcom/samsung/android/graphics/SemImageFilter$AnimationParamsBase;)V

    return-void
.end method
