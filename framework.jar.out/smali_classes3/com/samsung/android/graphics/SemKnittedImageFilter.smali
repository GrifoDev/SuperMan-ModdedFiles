.class public Lcom/samsung/android/graphics/SemKnittedImageFilter;
.super Lcom/samsung/android/graphics/SemGenericImageFilter;
.source "SemKnittedImageFilter.java"

# interfaces
.implements Lcom/samsung/android/graphics/SemImageFilter$ImageFilterListener;


# static fields
.field private static final DEFAULT_MASK_ITEM_SIZE:F = 30.0f

.field private static final DEFAULT_MASK_NAME:Ljava/lang/String; = "zknitted_filter_mask"

.field private static final DOWNSAMPLE_RATE_PARAM_INDEX:I = 0x0

.field private static final FRAGMENT_SHADER_FINAL_PASS:Ljava/lang/String; = "#ifdef GL_ES\nprecision highp float;\n#endif\n\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D originalSampler;\nuniform sampler2D maskSampler;\nuniform float filterParams[16];\nuniform float areaW;\nuniform float areaH;\n\nvec3 getColor(float shiftY, float shiftPx) {\n    vec2 knotSize = vec2(areaW, areaH / 2.0) / filterParams[0];\n    vec2 texel = vec2(outTexCoords * knotSize);\n    texel.y += shiftY;\n    texel = floor(texel);\n    float knotsCount = filterParams[1];\n    float lineRatioW = knotSize.x / knotsCount;\n    vec2 samplerUV = vec2(texel.x / knotSize.x, (texel.y + shiftPx) / knotSize.y);\n    vec2 maskUV = vec2(outTexCoords.x * lineRatioW + knotsCount, outTexCoords.y * knotSize.y - texel.y + shiftY);\n    return texture2D(baseSampler, samplerUV).rgb * texture2D(maskSampler, maskUV).rgb;\n}\n\nvoid main(void) {\n    gl_FragColor.rgb = getColor(0.0, 2.0) + getColor(0.5, 1.0);\n    gl_FragColor.a = 1.0;\n}\n"

.field private static final KNOTS_PER_ROW_COUNT_PARAM_INDEX:I = 0x1

.field private static final KNOT_SIZE_TRASHOLD_SIZE:F = 6.0f

.field private static final MAX_DOWNSAMPLE_RATE:F = 125.0f

.field private static final MIN_DOWNSAMPLE_RATE:F = 1.0f

.field private static final SAMPLER_MASK_NAME:Ljava/lang/String; = "maskSampler"


# instance fields
.field private mDownSampleRate:F

.field private mKnotSize:F

.field private mMaskBitmapWidth:F


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "#ifdef GL_ES\nprecision mediump float;\n#endif\nattribute vec2 texCoords;\nattribute vec4 position;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\nvoid main() {\n   outTexCoords = texCoords;\n   gl_Position = projection * position;\n}\n"

    aput-object v1, v0, v3

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D originalSampler;\nuniform sampler2D maskSampler;\nuniform float filterParams[16];\n\n\nvoid main(void) {\n     vec4 colorBase = texture2D(baseSampler, outTexCoords);\n     gl_FragColor = colorBase;\n}\n\n"

    aput-object v2, v1, v3

    const-string/jumbo v2, "#ifdef GL_ES\nprecision highp float;\n#endif\n\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D originalSampler;\nuniform sampler2D maskSampler;\nuniform float filterParams[16];\nuniform float areaW;\nuniform float areaH;\n\nvec3 getColor(float shiftY, float shiftPx) {\n    vec2 knotSize = vec2(areaW, areaH / 2.0) / filterParams[0];\n    vec2 texel = vec2(outTexCoords * knotSize);\n    texel.y += shiftY;\n    texel = floor(texel);\n    float knotsCount = filterParams[1];\n    float lineRatioW = knotSize.x / knotsCount;\n    vec2 samplerUV = vec2(texel.x / knotSize.x, (texel.y + shiftPx) / knotSize.y);\n    vec2 maskUV = vec2(outTexCoords.x * lineRatioW + knotsCount, outTexCoords.y * knotSize.y - texel.y + shiftY);\n    return texture2D(baseSampler, samplerUV).rgb * texture2D(maskSampler, maskUV).rgb;\n}\n\nvoid main(void) {\n    gl_FragColor.rgb = getColor(0.0, 2.0) + getColor(0.5, 1.0);\n    gl_FragColor.a = 1.0;\n}\n"

    aput-object v2, v1, v4

    invoke-direct {p0, v5, v0, v1}, Lcom/samsung/android/graphics/SemGenericImageFilter;-><init>(I[Ljava/lang/String;[Ljava/lang/String;)V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/samsung/android/graphics/SemKnittedImageFilter;->mKnotSize:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/graphics/SemKnittedImageFilter;->mDownSampleRate:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/graphics/SemKnittedImageFilter;->mMaskBitmapWidth:F

    invoke-virtual {p0, p0}, Lcom/samsung/android/graphics/SemKnittedImageFilter;->setListener(Lcom/samsung/android/graphics/SemImageFilter$ImageFilterListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemKnittedImageFilter;->useFilterParams()V

    sget-object v0, Lcom/samsung/android/graphics/SemImageFilter$TextureFiltering;->ANTIALIASING_DISABLED:Lcom/samsung/android/graphics/SemImageFilter$TextureFiltering;

    sget-object v1, Lcom/samsung/android/graphics/SemImageFilter$TextureFiltering;->ANTIALIASING_DISABLED:Lcom/samsung/android/graphics/SemImageFilter$TextureFiltering;

    invoke-virtual {p0, v3, v0, v1}, Lcom/samsung/android/graphics/SemKnittedImageFilter;->setFiltering(ILcom/samsung/android/graphics/SemImageFilter$TextureFiltering;Lcom/samsung/android/graphics/SemImageFilter$TextureFiltering;)V

    sget-object v0, Lcom/samsung/android/graphics/SemImageFilter$TextureFiltering;->ANTIALIASING_DISABLED:Lcom/samsung/android/graphics/SemImageFilter$TextureFiltering;

    sget-object v1, Lcom/samsung/android/graphics/SemImageFilter$TextureFiltering;->ANTIALIASING_ENABLED:Lcom/samsung/android/graphics/SemImageFilter$TextureFiltering;

    invoke-virtual {p0, v4, v0, v1}, Lcom/samsung/android/graphics/SemKnittedImageFilter;->setFiltering(ILcom/samsung/android/graphics/SemImageFilter$TextureFiltering;Lcom/samsung/android/graphics/SemImageFilter$TextureFiltering;)V

    return-void
.end method

.method private setKnotBitmapMask(I)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/graphics/SemKnittedImageFilter;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/samsung/android/graphics/SemKnittedImageFilter;->mMaskBitmapWidth:F

    const-string/jumbo v1, "maskSampler"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/graphics/SemKnittedImageFilter;->setBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    const-string/jumbo v1, "maskSampler"

    sget-object v2, Lcom/samsung/android/graphics/SemImageFilter$TextureWrapping;->REPEATE:Lcom/samsung/android/graphics/SemImageFilter$TextureWrapping;

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/graphics/SemKnittedImageFilter;->setBitmapWrap(Ljava/lang/String;Lcom/samsung/android/graphics/SemImageFilter$TextureWrapping;)V

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-direct {p0, v1}, Lcom/samsung/android/graphics/SemKnittedImageFilter;->updateKnotTilingParams(F)V

    return-void
.end method

.method private updateKnotTilingParams(F)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v3, 0x40c00000    # 6.0f

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v2, p1, v3

    if-gtz v2, :cond_0

    add-float/2addr p1, v3

    :cond_0
    iput p1, p0, Lcom/samsung/android/graphics/SemKnittedImageFilter;->mKnotSize:F

    const/high16 v2, 0x42c80000    # 100.0f

    div-float v2, p1, v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v4}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v1

    const/high16 v2, 0x42fa0000    # 125.0f

    mul-float/2addr v2, v1

    iput v2, p0, Lcom/samsung/android/graphics/SemKnittedImageFilter;->mDownSampleRate:F

    iget v2, p0, Lcom/samsung/android/graphics/SemKnittedImageFilter;->mMaskBitmapWidth:F

    const/high16 v3, 0x41f00000    # 30.0f

    div-float v0, v2, v3

    iget v2, p0, Lcom/samsung/android/graphics/SemKnittedImageFilter;->mDownSampleRate:F

    iget v3, p0, Lcom/samsung/android/graphics/SemKnittedImageFilter;->mDownSampleRate:F

    invoke-virtual {p0, v5, v2, v3}, Lcom/samsung/android/graphics/SemKnittedImageFilter;->setSamplingRate(IFF)V

    invoke-virtual {p0, v6, v4, v4}, Lcom/samsung/android/graphics/SemKnittedImageFilter;->setSamplingRate(IFF)V

    iget v2, p0, Lcom/samsung/android/graphics/SemKnittedImageFilter;->mDownSampleRate:F

    invoke-virtual {p0, v5, v2}, Lcom/samsung/android/graphics/SemKnittedImageFilter;->setParam(IF)V

    invoke-virtual {p0, v6, v0}, Lcom/samsung/android/graphics/SemKnittedImageFilter;->setParam(IF)V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemKnittedImageFilter;->notifyWorkerFilters()V

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

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemKnittedImageFilter;->clone()Lcom/samsung/android/graphics/SemKnittedImageFilter;

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

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemKnittedImageFilter;->clone()Lcom/samsung/android/graphics/SemKnittedImageFilter;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/samsung/android/graphics/SemKnittedImageFilter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->clone()Lcom/samsung/android/graphics/SemGenericImageFilter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/SemKnittedImageFilter;

    iget v1, p0, Lcom/samsung/android/graphics/SemKnittedImageFilter;->mDownSampleRate:F

    iput v1, v0, Lcom/samsung/android/graphics/SemKnittedImageFilter;->mDownSampleRate:F

    iget v1, p0, Lcom/samsung/android/graphics/SemKnittedImageFilter;->mMaskBitmapWidth:F

    iput v1, v0, Lcom/samsung/android/graphics/SemKnittedImageFilter;->mMaskBitmapWidth:F

    iget v1, p0, Lcom/samsung/android/graphics/SemKnittedImageFilter;->mKnotSize:F

    iput v1, v0, Lcom/samsung/android/graphics/SemKnittedImageFilter;->mKnotSize:F

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemKnittedImageFilter;->clone()Lcom/samsung/android/graphics/SemKnittedImageFilter;

    move-result-object v0

    return-object v0
.end method

.method public getKnotScaleSize()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemKnittedImageFilter;->mKnotSize:F

    return v0
.end method

.method public onAttachedToView()V
    .locals 5

    iget-object v1, p0, Lcom/samsung/android/graphics/SemKnittedImageFilter;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "zknitted_filter_mask"

    const-string/jumbo v3, "drawable"

    const-string/jumbo v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/SemKnittedImageFilter;->setKnotBitmapMask(I)V

    :cond_0
    return-void
.end method

.method public setKnotScaleSize(F)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemKnittedImageFilter;->mKnotSize:F

    invoke-static {p1, v0}, Lcom/samsung/android/graphics/SemMathUtils;->compare(FF)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/graphics/SemKnittedImageFilter;->updateKnotTilingParams(F)V

    :cond_0
    return-void
.end method
