.class public Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;
.super Lcom/samsung/android/graphics/SemGenericImageFilter;
.source "SemBitmapColorMaskImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams;,
        Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndXAnimationParams;,
        Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndYAnimationParams;,
        Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientStartColorAnimationParams;,
        Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientStartXAnimationParams;,
        Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientStartYAnimationParams;
    }
.end annotation


# static fields
.field private static final BITMAP_COLOR_ALPHA_PARAM_INDEX:I = 0x3

.field private static final BITMAP_COLOR_BLUE_PARAM_INDEX:I = 0x2

.field private static final BITMAP_COLOR_GREEN_PARAM_INDEX:I = 0x1

.field private static final BITMAP_COLOR_RED_PARAM_INDEX:I = 0x0

.field private static final FRAGMENT_SHADER_CODE:Ljava/lang/String; = "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D maskSampler;\nuniform float filterParams[16];\nvoid main(void) {\n    vec4 resColor = vec4(1.0);\n    vec4 texColor = texture2D(baseSampler, outTexCoords);\n    vec4 maskColor = texture2D(maskSampler, outTexCoords);\n    vec4 maskOverlayColor = vec4(filterParams[0], filterParams[1], filterParams[2], filterParams[3]) * texColor;\n    float maskOverlayAlpha = maskOverlayColor.a * maskColor.a;\n    maskOverlayColor.rgb *= maskOverlayAlpha;\n    maskOverlayColor.a = maskOverlayAlpha;\n    resColor = maskOverlayColor + texColor * (1.0 - maskOverlayAlpha);\n    vec4 gradStartColor = vec4(filterParams[4], filterParams[5], filterParams[6], filterParams[7]);\n    vec4 gradEndColor = vec4(filterParams[8], filterParams[9], filterParams[10], filterParams[11]);\n    vec2 gradStartPoint = vec2(filterParams[12], filterParams[13]);\n    vec2 gradEndPoint = vec2(filterParams[14], filterParams[15]);\n    vec2 gradVector = gradEndPoint - gradStartPoint;\n    vec2 gradOffset = outTexCoords - gradStartPoint;\n    float step = dot(gradVector, gradOffset) / dot(gradVector, gradVector);\n    vec4 gradMaskColor = mix(gradStartColor, gradEndColor, smoothstep(0.0, 1.0, step));\n    gradMaskColor.rgb *= gradMaskColor.a;\n    gl_FragColor = gradMaskColor + resColor * (1.0 - gradMaskColor.a);\n}\n\n"

.field private static final GRADIENT_END_ALPHA_PARAM_INDEX:I = 0xb

.field private static final GRADIENT_END_BLUE_PARAM_INDEX:I = 0xa

.field private static final GRADIENT_END_GREEN_PARAM_INDEX:I = 0x9

.field private static final GRADIENT_END_RED_PARAM_INDEX:I = 0x8

.field private static final GRADIENT_END_X_PARAM_INDEX:I = 0xe

.field private static final GRADIENT_END_Y_PARAM_INDEX:I = 0xf

.field private static final GRADIENT_START_ALPHA_PARAM_INDEX:I = 0x7

.field private static final GRADIENT_START_BLUE_PARAM_INDEX:I = 0x6

.field private static final GRADIENT_START_GREEN_PARAM_INDEX:I = 0x5

.field private static final GRADIENT_START_RED_PARAM_INDEX:I = 0x4

.field private static final GRADIENT_START_X_PARAM_INDEX:I = 0xc

.field private static final GRADIENT_START_Y_PARAM_INDEX:I = 0xd


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string/jumbo v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nattribute vec2 texCoords;\nattribute vec4 position;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\nvoid main() {\n   outTexCoords = texCoords;\n   gl_Position = projection * position;\n}\n"

    const-string/jumbo v1, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D maskSampler;\nuniform float filterParams[16];\nvoid main(void) {\n    vec4 resColor = vec4(1.0);\n    vec4 texColor = texture2D(baseSampler, outTexCoords);\n    vec4 maskColor = texture2D(maskSampler, outTexCoords);\n    vec4 maskOverlayColor = vec4(filterParams[0], filterParams[1], filterParams[2], filterParams[3]) * texColor;\n    float maskOverlayAlpha = maskOverlayColor.a * maskColor.a;\n    maskOverlayColor.rgb *= maskOverlayAlpha;\n    maskOverlayColor.a = maskOverlayAlpha;\n    resColor = maskOverlayColor + texColor * (1.0 - maskOverlayAlpha);\n    vec4 gradStartColor = vec4(filterParams[4], filterParams[5], filterParams[6], filterParams[7]);\n    vec4 gradEndColor = vec4(filterParams[8], filterParams[9], filterParams[10], filterParams[11]);\n    vec2 gradStartPoint = vec2(filterParams[12], filterParams[13]);\n    vec2 gradEndPoint = vec2(filterParams[14], filterParams[15]);\n    vec2 gradVector = gradEndPoint - gradStartPoint;\n    vec2 gradOffset = outTexCoords - gradStartPoint;\n    float step = dot(gradVector, gradOffset) / dot(gradVector, gradVector);\n    vec4 gradMaskColor = mix(gradStartColor, gradEndColor, smoothstep(0.0, 1.0, step));\n    gradMaskColor.rgb *= gradMaskColor.a;\n    gl_FragColor = gradMaskColor + resColor * (1.0 - gradMaskColor.a);\n}\n\n"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/graphics/SemGenericImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;->useFilterParams()V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;->resetGradient()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;->setColor(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;->setBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public clearAnimation()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->clearAnimation()V

    return-void
.end method

.method public clone()Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->clone()Lcom/samsung/android/graphics/SemGenericImageFilter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/samsung/android/graphics/SemGenericImageFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;->clone()Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;

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

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;->clone()Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;

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

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;->clone()Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;

    move-result-object v0

    return-object v0
.end method

.method public getColor()[F
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x4

    new-array v0, v1, [F

    iget-object v1, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;->mParams:[F

    aget v1, v1, v2

    aput v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;->mParams:[F

    aget v1, v1, v3

    aput v1, v0, v3

    iget-object v1, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;->mParams:[F

    aget v1, v1, v4

    aput v1, v0, v4

    iget-object v1, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;->mParams:[F

    aget v1, v1, v5

    aput v1, v0, v5

    return-object v0
.end method

.method public getGradient()[F
    .locals 8

    const/4 v7, 0x7

    const/4 v6, 0x6

    const/4 v5, 0x5

    const/4 v4, 0x4

    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v1, 0xc

    new-array v0, v1, [F

    iget-object v1, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;->mParams:[F

    const/16 v2, 0xc

    aget v1, v1, v2

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;->mParams:[F

    const/16 v2, 0xd

    aget v1, v1, v2

    sub-float v1, v3, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;->mParams:[F

    aget v1, v1, v4

    const/4 v2, 0x2

    aput v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;->mParams:[F

    aget v1, v1, v5

    const/4 v2, 0x3

    aput v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;->mParams:[F

    aget v1, v1, v6

    aput v1, v0, v4

    iget-object v1, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;->mParams:[F

    aget v1, v1, v7

    aput v1, v0, v5

    iget-object v1, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;->mParams:[F

    const/16 v2, 0xe

    aget v1, v1, v2

    aput v1, v0, v6

    iget-object v1, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;->mParams:[F

    const/16 v2, 0xf

    aget v1, v1, v2

    sub-float v1, v3, v1

    aput v1, v0, v7

    iget-object v1, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;->mParams:[F

    const/16 v2, 0x8

    aget v1, v1, v2

    const/16 v2, 0x8

    aput v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;->mParams:[F

    const/16 v2, 0x9

    aget v1, v1, v2

    const/16 v2, 0x9

    aput v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;->mParams:[F

    const/16 v2, 0xa

    aget v1, v1, v2

    const/16 v2, 0xa

    aput v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;->mParams:[F

    const/16 v2, 0xb

    aget v1, v1, v2

    const/16 v2, 0xb

    aput v1, v0, v2

    return-object v0
.end method

.method public resetGradient()V
    .locals 7

    const v3, 0xffffff

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    move-object v0, p0

    move v2, v1

    move v5, v4

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;->setGradient(FFIFFI)V

    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    const-string/jumbo v0, "maskSampler"

    invoke-super {p0, v0, p1}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setColor(FFFF)V
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-static {p1, v2, v3}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;->setParam(IF)V

    invoke-static {p2, v2, v3}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;->setParam(IF)V

    invoke-static {p3, v2, v3}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;->setParam(IF)V

    invoke-static {p4, v2, v3}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;->setParam(IF)V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;->setFilterParamsChanged()V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;->notifyWorkerFilters()V

    return-void
.end method

.method public setColor(I)V
    .locals 6

    const/high16 v5, 0x437f0000    # 255.0f

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    int-to-float v4, v4

    div-float v3, v4, v5

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    div-float v2, v4, v5

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    div-float v1, v4, v5

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    int-to-float v4, v4

    div-float v0, v4, v5

    invoke-virtual {p0, v3, v2, v1, v0}, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;->setColor(FFFF)V

    return-void
.end method

.method public setGradient(FFIFFI)V
    .locals 8

    const/high16 v7, 0x437f0000    # 255.0f

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {p3}, Landroid/graphics/Color;->red(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v7

    invoke-static {v4, v5, v6}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v3

    invoke-static {p3}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v7

    invoke-static {v4, v5, v6}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v2

    invoke-static {p3}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v7

    invoke-static {v4, v5, v6}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v1

    invoke-static {p3}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v7

    invoke-static {v4, v5, v6}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v0

    const/4 v4, 0x4

    invoke-virtual {p0, v4, v3}, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;->setParam(IF)V

    const/4 v4, 0x5

    invoke-virtual {p0, v4, v2}, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;->setParam(IF)V

    const/4 v4, 0x6

    invoke-virtual {p0, v4, v1}, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;->setParam(IF)V

    const/4 v4, 0x7

    invoke-virtual {p0, v4, v0}, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;->setParam(IF)V

    invoke-static {p6}, Landroid/graphics/Color;->red(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v7

    invoke-static {v4, v5, v6}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v3

    invoke-static {p6}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v7

    invoke-static {v4, v5, v6}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v2

    invoke-static {p6}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v7

    invoke-static {v4, v5, v6}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v1

    invoke-static {p6}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v7

    invoke-static {v4, v5, v6}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v0

    const/16 v4, 0x8

    invoke-virtual {p0, v4, v3}, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;->setParam(IF)V

    const/16 v4, 0x9

    invoke-virtual {p0, v4, v2}, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;->setParam(IF)V

    const/16 v4, 0xa

    invoke-virtual {p0, v4, v1}, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;->setParam(IF)V

    const/16 v4, 0xb

    invoke-virtual {p0, v4, v0}, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;->setParam(IF)V

    const/16 v4, 0xc

    invoke-virtual {p0, v4, p1}, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;->setParam(IF)V

    sub-float v4, v6, p2

    const/16 v5, 0xd

    invoke-virtual {p0, v5, v4}, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;->setParam(IF)V

    const/16 v4, 0xe

    invoke-virtual {p0, v4, p4}, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;->setParam(IF)V

    sub-float v4, v6, p5

    const/16 v5, 0xf

    invoke-virtual {p0, v5, v4}, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;->setParam(IF)V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;->notifyWorkerFilters()V

    return-void
.end method

.method public setGradientEndColorAnimation(IIJJLandroid/animation/TimeInterpolator;)V
    .locals 9

    new-instance v0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams;-><init>(Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;IIJJLandroid/animation/TimeInterpolator;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;->setAnimationParams(Lcom/samsung/android/graphics/SemImageFilter$AnimationParamsBase;)V

    return-void
.end method

.method public setGradientEndXAnimation(FFJJLandroid/animation/TimeInterpolator;)V
    .locals 9

    new-instance v0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndXAnimationParams;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndXAnimationParams;-><init>(Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;FFJJLandroid/animation/TimeInterpolator;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;->setAnimationParams(Lcom/samsung/android/graphics/SemImageFilter$AnimationParamsBase;)V

    return-void
.end method

.method public setGradientEndYAnimation(FFJJLandroid/animation/TimeInterpolator;)V
    .locals 9

    new-instance v0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndYAnimationParams;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndYAnimationParams;-><init>(Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;FFJJLandroid/animation/TimeInterpolator;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;->setAnimationParams(Lcom/samsung/android/graphics/SemImageFilter$AnimationParamsBase;)V

    return-void
.end method

.method public setGradientStartColorAnimation(IIJJLandroid/animation/TimeInterpolator;)V
    .locals 9

    new-instance v0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientStartColorAnimationParams;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientStartColorAnimationParams;-><init>(Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;IIJJLandroid/animation/TimeInterpolator;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;->setAnimationParams(Lcom/samsung/android/graphics/SemImageFilter$AnimationParamsBase;)V

    return-void
.end method

.method public setGradientStartXAnimation(FFJJLandroid/animation/TimeInterpolator;)V
    .locals 9

    new-instance v0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientStartXAnimationParams;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientStartXAnimationParams;-><init>(Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;FFJJLandroid/animation/TimeInterpolator;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;->setAnimationParams(Lcom/samsung/android/graphics/SemImageFilter$AnimationParamsBase;)V

    return-void
.end method

.method public setGradientStartYAnimation(FFJJLandroid/animation/TimeInterpolator;)V
    .locals 9

    new-instance v0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientStartYAnimationParams;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientStartYAnimationParams;-><init>(Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;FFJJLandroid/animation/TimeInterpolator;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;->setAnimationParams(Lcom/samsung/android/graphics/SemImageFilter$AnimationParamsBase;)V

    return-void
.end method
