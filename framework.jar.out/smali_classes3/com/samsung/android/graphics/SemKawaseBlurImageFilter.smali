.class public Lcom/samsung/android/graphics/SemKawaseBlurImageFilter;
.super Lcom/samsung/android/graphics/SemGenericImageFilter;
.source "SemKawaseBlurImageFilter.java"


# static fields
.field private static final FRAGMENT_SHADER_CODE:Ljava/lang/String; = "#ifdef GL_ES\nprecision highp float;\n#endif\nuniform sampler2D baseSampler;\nvarying vec2 outTexCoords;\nuniform float areaW;\nuniform float areaH;\nvoid main(void) {\n    vec2 texelOffset = vec2(1.0/areaW, 1.0/areaH);\n    vec4 color = vec4(0.0);\n    float iteration = 0.0;\n    color += texture2D(baseSampler, outTexCoords + vec2(iteration + 0.5, iteration + 0.5) * texelOffset);\n    color += texture2D(baseSampler, outTexCoords + vec2(-iteration - 0.5, iteration + 0.5) * texelOffset);\n    color += texture2D(baseSampler, outTexCoords + vec2(-iteration - 0.5, -iteration - 0.5) * texelOffset);\n    color += texture2D(baseSampler, outTexCoords + vec2(iteration + 0.5, -iteration - 0.5) * texelOffset);\n    gl_FragColor = color * 0.25;\n}"

.field private static final MAX_RADIUS:I = 0xfa

.field private static final MIN_RADIUS:I


# instance fields
.field private mRadius:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string/jumbo v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nattribute vec2 texCoords;\nattribute vec4 position;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\nvoid main() {\n   outTexCoords = texCoords;\n   gl_Position = projection * position;\n}\n"

    const-string/jumbo v1, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D originalSampler;\nuniform sampler2D maskSampler;\nuniform float filterParams[16];\n\n\nvoid main(void) {\n     vec4 colorBase = texture2D(baseSampler, outTexCoords);\n     gl_FragColor = colorBase;\n}\n\n"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/graphics/SemGenericImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/graphics/SemKawaseBlurImageFilter;->mRadius:I

    return-void
.end method

.method private setupShaders()V
    .locals 12

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget v7, p0, Lcom/samsung/android/graphics/SemKawaseBlurImageFilter;->mRadius:I

    const/16 v8, 0xfa

    invoke-static {v7, v10, v8}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(III)I

    move-result v4

    new-array v6, v4, [Ljava/lang/String;

    iget v7, p0, Lcom/samsung/android/graphics/SemKawaseBlurImageFilter;->mRadius:I

    if-le v7, v10, :cond_0

    const-string/jumbo v7, "#ifdef GL_ES\nprecision highp float;\n#endif\nuniform sampler2D baseSampler;\nvarying vec2 outTexCoords;\nuniform float areaW;\nuniform float areaH;\nvoid main(void) {\n    vec2 texelOffset = vec2(1.0/areaW, 1.0/areaH);\n    vec4 color = vec4(0.0);\n    float iteration = 0.0;\n    color += texture2D(baseSampler, outTexCoords + vec2(iteration + 0.5, iteration + 0.5) * texelOffset);\n    color += texture2D(baseSampler, outTexCoords + vec2(-iteration - 0.5, iteration + 0.5) * texelOffset);\n    color += texture2D(baseSampler, outTexCoords + vec2(-iteration - 0.5, -iteration - 0.5) * texelOffset);\n    color += texture2D(baseSampler, outTexCoords + vec2(iteration + 0.5, -iteration - 0.5) * texelOffset);\n    gl_FragColor = color * 0.25;\n}"

    aput-object v7, v6, v9

    const-string/jumbo v3, "iteration = 0.0;"

    const/4 v1, 0x1

    :goto_0
    iget v7, p0, Lcom/samsung/android/graphics/SemKawaseBlurImageFilter;->mRadius:I

    if-ge v1, v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "iteration = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".0;"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "#ifdef GL_ES\nprecision highp float;\n#endif\nuniform sampler2D baseSampler;\nvarying vec2 outTexCoords;\nuniform float areaW;\nuniform float areaH;\nvoid main(void) {\n    vec2 texelOffset = vec2(1.0/areaW, 1.0/areaH);\n    vec4 color = vec4(0.0);\n    float iteration = 0.0;\n    color += texture2D(baseSampler, outTexCoords + vec2(iteration + 0.5, iteration + 0.5) * texelOffset);\n    color += texture2D(baseSampler, outTexCoords + vec2(-iteration - 0.5, iteration + 0.5) * texelOffset);\n    color += texture2D(baseSampler, outTexCoords + vec2(-iteration - 0.5, -iteration - 0.5) * texelOffset);\n    color += texture2D(baseSampler, outTexCoords + vec2(iteration + 0.5, -iteration - 0.5) * texelOffset);\n    gl_FragColor = color * 0.25;\n}"

    const-string/jumbo v7, "iteration = 0.0;"

    invoke-virtual {v5, v7, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v7, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D originalSampler;\nuniform sampler2D maskSampler;\nuniform float filterParams[16];\n\n\nvoid main(void) {\n     vec4 colorBase = texture2D(baseSampler, outTexCoords);\n     gl_FragColor = colorBase;\n}\n\n"

    aput-object v7, v6, v9

    :cond_1
    new-array v7, v10, [Ljava/lang/String;

    const-string/jumbo v8, "#ifdef GL_ES\nprecision mediump float;\n#endif\nattribute vec2 texCoords;\nattribute vec4 position;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\nvoid main() {\n   outTexCoords = texCoords;\n   gl_Position = projection * position;\n}\n"

    aput-object v8, v7, v9

    invoke-virtual {p0, v4, v7, v6}, Lcom/samsung/android/graphics/SemKawaseBlurImageFilter;->setup(I[Ljava/lang/String;[Ljava/lang/String;)V

    iget v7, p0, Lcom/samsung/android/graphics/SemKawaseBlurImageFilter;->mRadius:I

    int-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    double-to-float v0, v8

    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/graphics/SemKawaseBlurImageFilter;->setSamplingRate(FF)V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/samsung/android/graphics/SemGenericImageFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemKawaseBlurImageFilter;->clone()Lcom/samsung/android/graphics/SemKawaseBlurImageFilter;

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

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemKawaseBlurImageFilter;->clone()Lcom/samsung/android/graphics/SemKawaseBlurImageFilter;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/samsung/android/graphics/SemKawaseBlurImageFilter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->clone()Lcom/samsung/android/graphics/SemGenericImageFilter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/SemKawaseBlurImageFilter;

    iget v1, p0, Lcom/samsung/android/graphics/SemKawaseBlurImageFilter;->mRadius:I

    iput v1, v0, Lcom/samsung/android/graphics/SemKawaseBlurImageFilter;->mRadius:I

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemKawaseBlurImageFilter;->clone()Lcom/samsung/android/graphics/SemKawaseBlurImageFilter;

    move-result-object v0

    return-object v0
.end method

.method public getRadius()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemKawaseBlurImageFilter;->mRadius:I

    int-to-float v0, v0

    return v0
.end method

.method public setRadius(F)V
    .locals 3

    const/high16 v0, 0x41200000    # 10.0f

    div-float v0, p1, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    const/4 v1, 0x0

    const/16 v2, 0xfa

    invoke-static {v0, v1, v2}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(III)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/SemKawaseBlurImageFilter;->mRadius:I

    invoke-direct {p0}, Lcom/samsung/android/graphics/SemKawaseBlurImageFilter;->setupShaders()V

    return-void
.end method
