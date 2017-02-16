.class public Landroid/filterpacks/imageproc/CropRectFilter;
.super Landroid/filterfw/core/Filter;
.source "CropRectFilter.java"


# instance fields
.field private mHeight:I

.field private mOutputHeight:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "height"
    .end annotation
.end field

.field private mOutputWidth:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "width"
    .end annotation
.end field

.field private mProgram:Landroid/filterfw/core/Program;

.field private mTarget:I

.field private mTileSize:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "tile_size"
    .end annotation
.end field

.field private mWidth:I

.field private mXorigin:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "xorigin"
    .end annotation
.end field

.field private mYorigin:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "yorigin"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 46
    const/16 v0, 0x280

    iput v0, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mTileSize:I

    .line 50
    iput v1, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mWidth:I

    .line 51
    iput v1, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mHeight:I

    .line 53
    iput v1, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mTarget:I

    .line 55
    return-void
.end method


# virtual methods
.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 82
    iget-object v0, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v0, :cond_0

    .line 83
    iget v0, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mWidth:I

    iget v1, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mHeight:I

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/CropRectFilter;->updateSourceRect(II)V

    .line 81
    :cond_0
    return-void
.end method

.method public initProgram(Landroid/filterfw/core/FilterContext;I)V
    .locals 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "target"    # I

    .prologue
    .line 66
    packed-switch p2, :pswitch_data_0

    .line 74
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Filter Sharpen does not support frames of target "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 75
    const-string/jumbo v3, "!"

    .line 74
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 68
    :pswitch_0
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    move-result-object v0

    .line 69
    .local v0, "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mTileSize:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 70
    iput-object v0, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 77
    iput p2, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mTarget:I

    .line 65
    return-void

    .line 66
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 7
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    const/4 v6, 0x3

    .line 90
    const-string/jumbo v4, "image"

    invoke-virtual {p0, v4}, Landroid/filterfw/core/Filter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 91
    .local v0, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    .line 94
    .local v1, "inputFormat":Landroid/filterfw/core/FrameFormat;
    iget v4, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mOutputWidth:I

    iget v5, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mOutputHeight:I

    invoke-static {v4, v5, v6, v6}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v3

    .line 97
    .local v3, "outputFormat":Landroid/filterfw/core/FrameFormat;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v2

    .line 100
    .local v2, "output":Landroid/filterfw/core/Frame;
    iget-object v4, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v4

    iget v5, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mTarget:I

    if-eq v4, v5, :cond_1

    .line 101
    :cond_0
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v4

    invoke-virtual {p0, p1, v4}, Landroid/filterpacks/imageproc/CropRectFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    .line 105
    :cond_1
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v4

    iget v5, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mWidth:I

    if-ne v4, v5, :cond_2

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v4

    iget v5, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mHeight:I

    if-eq v4, v5, :cond_3

    .line 106
    :cond_2
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Landroid/filterpacks/imageproc/CropRectFilter;->updateSourceRect(II)V

    .line 110
    :cond_3
    iget-object v4, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v4, v0, v2}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 113
    const-string/jumbo v4, "image"

    invoke-virtual {p0, v4, v2}, Landroid/filterfw/core/Filter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 116
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 88
    return-void
.end method

.method public setupPorts()V
    .locals 2

    .prologue
    .line 61
    const-string/jumbo v0, "image"

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/filterfw/core/Filter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 62
    const-string/jumbo v0, "image"

    const-string/jumbo v1, "image"

    invoke-virtual {p0, v0, v1}, Landroid/filterfw/core/Filter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method updateSourceRect(II)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 120
    iput p1, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mWidth:I

    .line 121
    iput p2, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mHeight:I

    .line 131
    iget-object v0, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mProgram:Landroid/filterfw/core/Program;

    check-cast v0, Landroid/filterfw/core/ShaderProgram;

    iget v1, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mXorigin:I

    int-to-float v1, v1

    iget v2, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 132
    iget v2, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mYorigin:I

    int-to-float v2, v2

    iget v3, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 133
    iget v3, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mOutputWidth:I

    int-to-float v3, v3

    iget v4, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 134
    iget v4, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mOutputHeight:I

    int-to-float v4, v4

    iget v5, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 131
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/filterfw/core/ShaderProgram;->setSourceRect(FFFF)V

    .line 119
    return-void
.end method
