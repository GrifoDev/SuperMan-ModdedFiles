.class public Lcom/samsung/android/graphics/SemBlurFilter;
.super Lcom/samsung/android/graphics/SemImageFilter;
.source "SemBlurFilter.java"


# static fields
.field public static final TYPE_COSINE:I = 0x1

.field public static final TYPE_GAUSSIAN:I = 0x0

.field public static final TYPE_SGI:I = 0x2


# instance fields
.field private mOptimization:I

.field private mRadius:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/graphics/SemImageFilter;-><init>()V

    const-string/jumbo v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nattribute vec2 texCoords;\nattribute vec4 position;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\nvoid main() {\n   outTexCoords = texCoords;\n   gl_Position = projection * position;\n}\n"

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemBlurFilter;->setVertexShader(Ljava/lang/String;)V

    const-string/jumbo v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D originalSampler;\nuniform sampler2D maskSampler;\nuniform float filterParams[16];\n\n\nvoid main(void) {\n     vec4 colorBase = texture2D(baseSampler, outTexCoords);\n     gl_FragColor = colorBase;\n}\n\n"

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemBlurFilter;->setFragmentShader(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clone()Lcom/samsung/android/graphics/SemBlurFilter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/samsung/android/graphics/SemImageFilter;->clone()Lcom/samsung/android/graphics/SemImageFilter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/SemBlurFilter;

    iget v1, p0, Lcom/samsung/android/graphics/SemBlurFilter;->mRadius:F

    iput v1, v0, Lcom/samsung/android/graphics/SemBlurFilter;->mRadius:F

    iget v1, p0, Lcom/samsung/android/graphics/SemBlurFilter;->mOptimization:I

    iput v1, v0, Lcom/samsung/android/graphics/SemBlurFilter;->mOptimization:I

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/samsung/android/graphics/SemImageFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemBlurFilter;->clone()Lcom/samsung/android/graphics/SemBlurFilter;

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

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemBlurFilter;->clone()Lcom/samsung/android/graphics/SemBlurFilter;

    move-result-object v0

    return-object v0
.end method

.method public getOptimization()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemBlurFilter;->mOptimization:I

    int-to-float v0, v0

    return v0
.end method

.method public getRadius()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemBlurFilter;->mRadius:F

    return v0
.end method

.method public setOptimization(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/graphics/SemBlurFilter;->mOptimization:I

    return-void
.end method

.method public setRadius(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/graphics/SemBlurFilter;->mRadius:F

    return-void
.end method
