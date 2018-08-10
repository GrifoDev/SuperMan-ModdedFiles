.class public Lcom/samsung/android/graphics/SemColorClampImageFilter;
.super Lcom/samsung/android/graphics/SemGenericImageFilter;
.source "SemColorClampImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/graphics/SemColorClampImageFilter$MaxColorAnimationParams;,
        Lcom/samsung/android/graphics/SemColorClampImageFilter$MinColorAnimationParams;
    }
.end annotation


# static fields
.field private static final FRAGMENT_SHADER_CODE:Ljava/lang/String; = "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform float filterParams[16];\nvoid main(void) {\n    vec4 color = texture2D(baseSampler, outTexCoords);\n    vec4 minVal = vec4(filterParams[0], filterParams[1], filterParams[2], filterParams[3]);\n    vec4 maxVal = vec4(filterParams[4], filterParams[5], filterParams[6], filterParams[7]);\n    gl_FragColor = clamp(color, minVal, maxVal);\n}\n\n"

.field private static final MAX_ALPHA:I = 0x7

.field private static final MAX_BLUE:I = 0x6

.field private static final MAX_GREEN:I = 0x5

.field private static final MAX_RED:I = 0x4

.field private static final MIN_ALPHA:I = 0x3

.field private static final MIN_BLUE:I = 0x2

.field private static final MIN_GREEN:I = 0x1

.field private static final MIN_RED:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string/jumbo v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nattribute vec2 texCoords;\nattribute vec4 position;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\nvoid main() {\n   outTexCoords = texCoords;\n   gl_Position = projection * position;\n}\n"

    const-string/jumbo v1, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform float filterParams[16];\nvoid main(void) {\n    vec4 color = texture2D(baseSampler, outTexCoords);\n    vec4 minVal = vec4(filterParams[0], filterParams[1], filterParams[2], filterParams[3]);\n    vec4 maxVal = vec4(filterParams[4], filterParams[5], filterParams[6], filterParams[7]);\n    gl_FragColor = clamp(color, minVal, maxVal);\n}\n\n"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/graphics/SemGenericImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemColorClampImageFilter;->useFilterParams()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemColorClampImageFilter;->setMinColor(I)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemColorClampImageFilter;->setMaxColor(I)V

    return-void
.end method


# virtual methods
.method public clearAnimation()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->clearAnimation()V

    return-void
.end method

.method public clone()Lcom/samsung/android/graphics/SemColorClampImageFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->clone()Lcom/samsung/android/graphics/SemGenericImageFilter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/SemColorClampImageFilter;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/samsung/android/graphics/SemGenericImageFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemColorClampImageFilter;->clone()Lcom/samsung/android/graphics/SemColorClampImageFilter;

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

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemColorClampImageFilter;->clone()Lcom/samsung/android/graphics/SemColorClampImageFilter;

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

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemColorClampImageFilter;->clone()Lcom/samsung/android/graphics/SemColorClampImageFilter;

    move-result-object v0

    return-object v0
.end method

.method public getMaxColor()[F
    .locals 3

    const/4 v2, 0x4

    new-array v0, v2, [F

    iget-object v1, p0, Lcom/samsung/android/graphics/SemColorClampImageFilter;->mParams:[F

    aget v1, v1, v2

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/graphics/SemColorClampImageFilter;->mParams:[F

    const/4 v2, 0x5

    aget v1, v1, v2

    const/4 v2, 0x1

    aput v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/graphics/SemColorClampImageFilter;->mParams:[F

    const/4 v2, 0x6

    aget v1, v1, v2

    const/4 v2, 0x2

    aput v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/graphics/SemColorClampImageFilter;->mParams:[F

    const/4 v2, 0x7

    aget v1, v1, v2

    const/4 v2, 0x3

    aput v1, v0, v2

    return-object v0
.end method

.method public getMinColor()[F
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x4

    new-array v0, v1, [F

    iget-object v1, p0, Lcom/samsung/android/graphics/SemColorClampImageFilter;->mParams:[F

    aget v1, v1, v2

    aput v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/graphics/SemColorClampImageFilter;->mParams:[F

    aget v1, v1, v3

    aput v1, v0, v3

    iget-object v1, p0, Lcom/samsung/android/graphics/SemColorClampImageFilter;->mParams:[F

    aget v1, v1, v4

    aput v1, v0, v4

    iget-object v1, p0, Lcom/samsung/android/graphics/SemColorClampImageFilter;->mParams:[F

    aget v1, v1, v5

    aput v1, v0, v5

    return-object v0
.end method

.method public setMaxColor(I)V
    .locals 9

    const/high16 v5, 0x437f0000    # 255.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

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

    iget-object v4, p0, Lcom/samsung/android/graphics/SemColorClampImageFilter;->mParams:[F

    invoke-static {v3, v7, v8}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v5

    const/4 v6, 0x4

    aput v5, v4, v6

    iget-object v4, p0, Lcom/samsung/android/graphics/SemColorClampImageFilter;->mParams:[F

    invoke-static {v2, v7, v8}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v5

    const/4 v6, 0x5

    aput v5, v4, v6

    iget-object v4, p0, Lcom/samsung/android/graphics/SemColorClampImageFilter;->mParams:[F

    invoke-static {v1, v7, v8}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v5

    const/4 v6, 0x6

    aput v5, v4, v6

    iget-object v4, p0, Lcom/samsung/android/graphics/SemColorClampImageFilter;->mParams:[F

    invoke-static {v0, v7, v8}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v5

    const/4 v6, 0x7

    aput v5, v4, v6

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemColorClampImageFilter;->setFilterParamsChanged()V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemColorClampImageFilter;->notifyWorkerFilters()V

    return-void
.end method

.method public setMaxColorAnimation(IIJJLandroid/animation/TimeInterpolator;)V
    .locals 9

    new-instance v0, Lcom/samsung/android/graphics/SemColorClampImageFilter$MaxColorAnimationParams;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/graphics/SemColorClampImageFilter$MaxColorAnimationParams;-><init>(Lcom/samsung/android/graphics/SemColorClampImageFilter;IIJJLandroid/animation/TimeInterpolator;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemColorClampImageFilter;->setAnimationParams(Lcom/samsung/android/graphics/SemImageFilter$AnimationParamsBase;)V

    return-void
.end method

.method public setMinColor(I)V
    .locals 9

    const/high16 v5, 0x437f0000    # 255.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

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

    iget-object v4, p0, Lcom/samsung/android/graphics/SemColorClampImageFilter;->mParams:[F

    invoke-static {v3, v7, v8}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v5

    const/4 v6, 0x0

    aput v5, v4, v6

    iget-object v4, p0, Lcom/samsung/android/graphics/SemColorClampImageFilter;->mParams:[F

    invoke-static {v2, v7, v8}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v5

    const/4 v6, 0x1

    aput v5, v4, v6

    iget-object v4, p0, Lcom/samsung/android/graphics/SemColorClampImageFilter;->mParams:[F

    invoke-static {v1, v7, v8}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v5

    const/4 v6, 0x2

    aput v5, v4, v6

    iget-object v4, p0, Lcom/samsung/android/graphics/SemColorClampImageFilter;->mParams:[F

    invoke-static {v0, v7, v8}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v5

    const/4 v6, 0x3

    aput v5, v4, v6

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemColorClampImageFilter;->setFilterParamsChanged()V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemColorClampImageFilter;->notifyWorkerFilters()V

    return-void
.end method

.method public setMinColorAnimation(IIJJLandroid/animation/TimeInterpolator;)V
    .locals 9

    new-instance v0, Lcom/samsung/android/graphics/SemColorClampImageFilter$MinColorAnimationParams;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/graphics/SemColorClampImageFilter$MinColorAnimationParams;-><init>(Lcom/samsung/android/graphics/SemColorClampImageFilter;IIJJLandroid/animation/TimeInterpolator;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemColorClampImageFilter;->setAnimationParams(Lcom/samsung/android/graphics/SemImageFilter$AnimationParamsBase;)V

    return-void
.end method
