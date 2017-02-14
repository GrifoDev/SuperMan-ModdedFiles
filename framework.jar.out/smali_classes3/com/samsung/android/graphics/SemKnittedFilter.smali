.class public Lcom/samsung/android/graphics/SemKnittedFilter;
.super Lcom/samsung/android/graphics/SemGenericImageFilter;
.source "SemKnittedFilter.java"

# interfaces
.implements Lcom/samsung/android/graphics/SemImageFilter$IImageFilterListener;


# static fields
.field private static final ELEM_COUNT:I = 0x8

.field private static final INV_ELEM_COUNT:I = 0x9

.field private static final INV_SAMPLER_H:I = 0x5

.field private static final INV_SAMPLER_W:I = 0x4

.field private static final INV_TEXEL_HEIGHT:I = 0x7

.field private static final INV_TEXEL_WIDTH:I = 0x6

.field private static final LINE_W_RATIO:I = 0xa

.field private static final mFragmentShaderFirstPass:Ljava/lang/String; = "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D originalSampler;\nuniform sampler2D maskSampler;\nuniform float filterParams[16];\n\n\nvoid main(void) {\n     vec4 colorBase = texture2D(baseSampler, outTexCoords);\n     gl_FragColor = colorBase;\n}\n\n"

.field private static final mFragmentShaderSecondPass:Ljava/lang/String; = "#ifdef GL_ES\nprecision highp float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D originalSampler;\nuniform sampler2D maskSampler;\nuniform float filterParams[16];\n\nfloat rand(float a){                                                                   \n  return fract(abs(sin(dot(vec2(a, 1.0 - a), vec2(12.9898,78.233)))) * 43758.5453);    \n}                                                                                      \n\nvec3 getColor(float shiftY, float shiftPx) {                                           \n    vec2 texel = vec2(floor(outTexCoords.x * filterParams[6]),                          \n                      floor(outTexCoords.y * filterParams[7] + shiftY));                \n                                                                                       \n   float maxValue = filterParams[7] + shiftY;                                          \n    float shiftX = floor(rand(texel.y / maxValue) * filterParams[8]) * filterParams[9]; \n                                                                                        \n    vec2 maskUV = vec2( outTexCoords.x * filterParams[10] + shiftX,                     \n                        outTexCoords.y * filterParams[7] - texel.y + shiftY );          \n                                                                                       \n    vec2 samplerUV = vec2( texel.x * filterParams[4],                                   \n                          (texel.y *2.0 + shiftPx) * filterParams[5] );                 \n                                                                                       \n    return texture2D(baseSampler, samplerUV).rgb * texture2D(maskSampler, maskUV).b;    \n}                                                                                      \n\n\nvoid main(void) {                                                                    \n     gl_FragColor.rgb = getColor(0.0, 2.0) + getColor(0.5, 1.0);                        \n     gl_FragColor.a = 1.0;                                                              \n}\n\n"

.field private static final mVertexShader:Ljava/lang/String; = "#ifdef GL_ES\nprecision mediump float;\n#endif\nattribute vec2 texCoords;\nattribute vec4 position;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\nuniform float filterParams[16];\nvoid main() {\n   outTexCoords = texCoords;\n   gl_Position = projection * position;\n}\n"


# instance fields
.field private final DEFAULT_DOWNSAMPLING_RATE:F

.field private final DEFAULT_MASK_ITEM_SIZE:F

.field private final DEFAULT_MASK_NAME:Ljava/lang/String;

.field private final SAMPLER_MASK_NAME:Ljava/lang/String;

.field private mDownSampleRate:F

.field private mInvDownSamplerHeight:F

.field private mInvDownSamplerWidth:F

.field private mInvItemsCount:F

.field private mInvTexelSizeX:F

.field private mInvTexelSizeY:F

.field private mItemWidth:F

.field private mItemsCount:F

.field private mMaskWidth:F

.field private mSamplerLineRatio:F


# direct methods
.method public constructor <init>()V
    .locals 8

    const/high16 v7, 0x42200000    # 40.0f

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "#ifdef GL_ES\nprecision mediump float;\n#endif\nattribute vec2 texCoords;\nattribute vec4 position;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\nuniform float filterParams[16];\nvoid main() {\n   outTexCoords = texCoords;\n   gl_Position = projection * position;\n}\n"

    aput-object v1, v0, v6

    const-string/jumbo v1, "#ifdef GL_ES\nprecision mediump float;\n#endif\nattribute vec2 texCoords;\nattribute vec4 position;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\nuniform float filterParams[16];\nvoid main() {\n   outTexCoords = texCoords;\n   gl_Position = projection * position;\n}\n"

    aput-object v1, v0, v5

    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D originalSampler;\nuniform sampler2D maskSampler;\nuniform float filterParams[16];\n\n\nvoid main(void) {\n     vec4 colorBase = texture2D(baseSampler, outTexCoords);\n     gl_FragColor = colorBase;\n}\n\n"

    aput-object v2, v1, v6

    const-string/jumbo v2, "#ifdef GL_ES\nprecision highp float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D originalSampler;\nuniform sampler2D maskSampler;\nuniform float filterParams[16];\n\nfloat rand(float a){                                                                   \n  return fract(abs(sin(dot(vec2(a, 1.0 - a), vec2(12.9898,78.233)))) * 43758.5453);    \n}                                                                                      \n\nvec3 getColor(float shiftY, float shiftPx) {                                           \n    vec2 texel = vec2(floor(outTexCoords.x * filterParams[6]),                          \n                      floor(outTexCoords.y * filterParams[7] + shiftY));                \n                                                                                       \n   float maxValue = filterParams[7] + shiftY;                                          \n    float shiftX = floor(rand(texel.y / maxValue) * filterParams[8]) * filterParams[9]; \n                                                                                        \n    vec2 maskUV = vec2( outTexCoords.x * filterParams[10] + shiftX,                     \n                        outTexCoords.y * filterParams[7] - texel.y + shiftY );          \n                                                                                       \n    vec2 samplerUV = vec2( texel.x * filterParams[4],                                   \n                          (texel.y *2.0 + shiftPx) * filterParams[5] );                 \n                                                                                       \n    return texture2D(baseSampler, samplerUV).rgb * texture2D(maskSampler, maskUV).b;    \n}                                                                                      \n\n\nvoid main(void) {                                                                    \n     gl_FragColor.rgb = getColor(0.0, 2.0) + getColor(0.5, 1.0);                        \n     gl_FragColor.a = 1.0;                                                              \n}\n\n"

    aput-object v2, v1, v5

    invoke-direct {p0, v4, v0, v1}, Lcom/samsung/android/graphics/SemGenericImageFilter;-><init>(I[Ljava/lang/String;[Ljava/lang/String;)V

    iput v7, p0, Lcom/samsung/android/graphics/SemKnittedFilter;->DEFAULT_DOWNSAMPLING_RATE:F

    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Lcom/samsung/android/graphics/SemKnittedFilter;->DEFAULT_MASK_ITEM_SIZE:F

    const-string/jumbo v0, "zknitted_filter_mask"

    iput-object v0, p0, Lcom/samsung/android/graphics/SemKnittedFilter;->DEFAULT_MASK_NAME:Ljava/lang/String;

    const-string/jumbo v0, "maskSampler"

    iput-object v0, p0, Lcom/samsung/android/graphics/SemKnittedFilter;->SAMPLER_MASK_NAME:Ljava/lang/String;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/graphics/SemKnittedFilter;->mDownSampleRate:F

    iput v3, p0, Lcom/samsung/android/graphics/SemKnittedFilter;->mInvDownSamplerWidth:F

    iput v3, p0, Lcom/samsung/android/graphics/SemKnittedFilter;->mInvDownSamplerHeight:F

    iput v3, p0, Lcom/samsung/android/graphics/SemKnittedFilter;->mInvTexelSizeX:F

    iput v3, p0, Lcom/samsung/android/graphics/SemKnittedFilter;->mInvTexelSizeY:F

    iput v3, p0, Lcom/samsung/android/graphics/SemKnittedFilter;->mItemWidth:F

    iput v3, p0, Lcom/samsung/android/graphics/SemKnittedFilter;->mMaskWidth:F

    iput v3, p0, Lcom/samsung/android/graphics/SemKnittedFilter;->mItemsCount:F

    iput v3, p0, Lcom/samsung/android/graphics/SemKnittedFilter;->mInvItemsCount:F

    iput v3, p0, Lcom/samsung/android/graphics/SemKnittedFilter;->mSamplerLineRatio:F

    invoke-virtual {p0, p0}, Lcom/samsung/android/graphics/SemImageFilterSet;->setListener(Lcom/samsung/android/graphics/SemImageFilter$IImageFilterListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->useFilterParams()V

    invoke-virtual {p0, v6, v4, v4}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setFiltering(III)V

    invoke-virtual {p0, v5, v4, v5}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setFiltering(III)V

    invoke-virtual {p0, v7}, Lcom/samsung/android/graphics/SemKnittedFilter;->setDownSampleRate(F)V

    return-void
.end method

.method private calculateAndSetAllParams()V
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    iget-object v2, p0, Lcom/samsung/android/graphics/SemImageFilter;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/graphics/SemImageFilter;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/graphics/SemImageFilter;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/graphics/SemImageFilter;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/graphics/SemKnittedFilter;->mDownSampleRate:F

    div-float v1, v2, v3

    iget-object v2, p0, Lcom/samsung/android/graphics/SemImageFilter;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/graphics/SemKnittedFilter;->mDownSampleRate:F

    div-float v0, v2, v3

    iput v1, p0, Lcom/samsung/android/graphics/SemKnittedFilter;->mInvTexelSizeX:F

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v2, v0

    iput v2, p0, Lcom/samsung/android/graphics/SemKnittedFilter;->mInvTexelSizeY:F

    div-float v2, v4, v1

    iput v2, p0, Lcom/samsung/android/graphics/SemKnittedFilter;->mInvDownSamplerWidth:F

    div-float v2, v4, v0

    iput v2, p0, Lcom/samsung/android/graphics/SemKnittedFilter;->mInvDownSamplerHeight:F

    iget v2, p0, Lcom/samsung/android/graphics/SemKnittedFilter;->mMaskWidth:F

    iget v3, p0, Lcom/samsung/android/graphics/SemKnittedFilter;->mItemWidth:F

    div-float/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/graphics/SemKnittedFilter;->mItemsCount:F

    iget v2, p0, Lcom/samsung/android/graphics/SemKnittedFilter;->mItemWidth:F

    iget v3, p0, Lcom/samsung/android/graphics/SemKnittedFilter;->mMaskWidth:F

    div-float/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/graphics/SemKnittedFilter;->mInvItemsCount:F

    iget v2, p0, Lcom/samsung/android/graphics/SemKnittedFilter;->mInvTexelSizeX:F

    iget v3, p0, Lcom/samsung/android/graphics/SemKnittedFilter;->mInvItemsCount:F

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/graphics/SemKnittedFilter;->mSamplerLineRatio:F

    iget v2, p0, Lcom/samsung/android/graphics/SemKnittedFilter;->mInvDownSamplerWidth:F

    const/4 v3, 0x4

    invoke-virtual {p0, v3, v2}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setParam(IF)V

    iget v2, p0, Lcom/samsung/android/graphics/SemKnittedFilter;->mInvDownSamplerHeight:F

    const/4 v3, 0x5

    invoke-virtual {p0, v3, v2}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setParam(IF)V

    iget v2, p0, Lcom/samsung/android/graphics/SemKnittedFilter;->mInvTexelSizeX:F

    const/4 v3, 0x6

    invoke-virtual {p0, v3, v2}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setParam(IF)V

    iget v2, p0, Lcom/samsung/android/graphics/SemKnittedFilter;->mInvTexelSizeY:F

    const/4 v3, 0x7

    invoke-virtual {p0, v3, v2}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setParam(IF)V

    iget v2, p0, Lcom/samsung/android/graphics/SemKnittedFilter;->mItemsCount:F

    const/16 v3, 0x8

    invoke-virtual {p0, v3, v2}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setParam(IF)V

    iget v2, p0, Lcom/samsung/android/graphics/SemKnittedFilter;->mInvItemsCount:F

    const/16 v3, 0x9

    invoke-virtual {p0, v3, v2}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setParam(IF)V

    iget v2, p0, Lcom/samsung/android/graphics/SemKnittedFilter;->mSamplerLineRatio:F

    const/16 v3, 0xa

    invoke-virtual {p0, v3, v2}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setParam(IF)V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->notifyWorkerFilters()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onAttachedToView()V
    .locals 6

    iget-object v2, p0, Lcom/samsung/android/graphics/SemImageFilter;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "zknitted_filter_mask"

    const-string/jumbo v4, "drawable"

    const-string/jumbo v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/graphics/SemImageFilter;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/graphics/SemKnittedFilter;->setMask(Landroid/graphics/Bitmap;F)V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/graphics/SemKnittedFilter;->calculateAndSetAllParams()V

    return-void
.end method

.method public onParamsChanged()V
    .locals 0

    return-void
.end method

.method public onViewSizeChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/graphics/SemKnittedFilter;->calculateAndSetAllParams()V

    return-void
.end method

.method public setDownSampleRate(F)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p1}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setSamplingRate(IFF)V

    iput p1, p0, Lcom/samsung/android/graphics/SemKnittedFilter;->mDownSampleRate:F

    invoke-direct {p0}, Lcom/samsung/android/graphics/SemKnittedFilter;->calculateAndSetAllParams()V

    return-void
.end method

.method public setMask(Landroid/graphics/Bitmap;F)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string/jumbo v0, "maskSampler"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    const-string/jumbo v0, "maskSampler"

    invoke-virtual {p0, v1, v0, v2, v1}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setBitmapWrap(ILjava/lang/String;ZZ)V

    const-string/jumbo v0, "maskSampler"

    invoke-virtual {p0, v2, v0, v2, v1}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setBitmapWrap(ILjava/lang/String;ZZ)V

    iput p2, p0, Lcom/samsung/android/graphics/SemKnittedFilter;->mItemWidth:F

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/graphics/SemKnittedFilter;->mMaskWidth:F

    invoke-direct {p0}, Lcom/samsung/android/graphics/SemKnittedFilter;->calculateAndSetAllParams()V

    return-void
.end method
