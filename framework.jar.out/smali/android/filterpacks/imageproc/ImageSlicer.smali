.class public Landroid/filterpacks/imageproc/ImageSlicer;
.super Landroid/filterfw/core/Filter;
.source "ImageSlicer.java"


# instance fields
.field private mInputHeight:I

.field private mInputWidth:I

.field private mOriginalFrame:Landroid/filterfw/core/Frame;

.field private mOutputHeight:I

.field private mOutputWidth:I

.field private mPadSize:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "padSize"
    .end annotation
.end field

.field private mProgram:Landroid/filterfw/core/Program;

.field private mSliceHeight:I

.field private mSliceIndex:I

.field private mSliceWidth:I

.field private mXSlices:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "xSlices"
    .end annotation
.end field

.field private mYSlices:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "ySlices"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mSliceIndex:I

    .line 56
    return-void
.end method

.method private calcOutputFormatForInput(Landroid/filterfw/core/Frame;)V
    .locals 2
    .param p1, "frame"    # Landroid/filterfw/core/Frame;

    .prologue
    .line 76
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v0

    iput v0, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mInputWidth:I

    .line 77
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v0

    iput v0, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mInputHeight:I

    .line 79
    iget v0, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mInputWidth:I

    iget v1, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mXSlices:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mXSlices:I

    div-int/2addr v0, v1

    iput v0, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mSliceWidth:I

    .line 80
    iget v0, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mInputHeight:I

    iget v1, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mYSlices:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mYSlices:I

    div-int/2addr v0, v1

    iput v0, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mSliceHeight:I

    .line 82
    iget v0, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mSliceWidth:I

    iget v1, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mPadSize:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mOutputWidth:I

    .line 83
    iget v0, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mSliceHeight:I

    iget v1, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mPadSize:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mOutputHeight:I

    .line 73
    return-void
.end method


# virtual methods
.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    .prologue
    .line 70
    return-object p2
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 12
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    const/4 v11, 0x0

    .line 91
    iget v7, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mSliceIndex:I

    if-nez v7, :cond_0

    .line 92
    const-string/jumbo v7, "image"

    invoke-virtual {p0, v7}, Landroid/filterfw/core/Filter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v7

    iput-object v7, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mOriginalFrame:Landroid/filterfw/core/Frame;

    .line 93
    iget-object v7, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mOriginalFrame:Landroid/filterfw/core/Frame;

    invoke-direct {p0, v7}, Landroid/filterpacks/imageproc/ImageSlicer;->calcOutputFormatForInput(Landroid/filterfw/core/Frame;)V

    .line 96
    :cond_0
    iget-object v7, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mOriginalFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v7}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    .line 97
    .local v0, "inputFormat":Landroid/filterfw/core/FrameFormat;
    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v2

    .line 98
    .local v2, "outputFormat":Landroid/filterfw/core/MutableFrameFormat;
    iget v7, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mOutputWidth:I

    iget v8, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mOutputHeight:I

    invoke-virtual {v2, v7, v8}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    .line 101
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v1

    .line 104
    .local v1, "output":Landroid/filterfw/core/Frame;
    iget-object v7, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mProgram:Landroid/filterfw/core/Program;

    if-nez v7, :cond_1

    .line 105
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    move-result-object v7

    iput-object v7, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mProgram:Landroid/filterfw/core/Program;

    .line 109
    :cond_1
    iget v7, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mSliceIndex:I

    iget v8, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mXSlices:I

    rem-int v4, v7, v8

    .line 110
    .local v4, "xSliceIndex":I
    iget v7, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mSliceIndex:I

    iget v8, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mXSlices:I

    div-int v6, v7, v8

    .line 113
    .local v6, "ySliceIndex":I
    iget v7, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mSliceWidth:I

    mul-int/2addr v7, v4

    iget v8, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mPadSize:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget v8, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mInputWidth:I

    int-to-float v8, v8

    div-float v3, v7, v8

    .line 114
    .local v3, "x0":F
    iget v7, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mSliceHeight:I

    mul-int/2addr v7, v6

    iget v8, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mPadSize:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget v8, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mInputHeight:I

    int-to-float v8, v8

    div-float v5, v7, v8

    .line 116
    .local v5, "y0":F
    iget-object v7, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mProgram:Landroid/filterfw/core/Program;

    check-cast v7, Landroid/filterfw/core/ShaderProgram;

    .line 117
    iget v8, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mOutputWidth:I

    int-to-float v8, v8

    iget v9, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mInputWidth:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    .line 118
    iget v9, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mOutputHeight:I

    int-to-float v9, v9

    iget v10, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mInputHeight:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    .line 116
    invoke-virtual {v7, v3, v5, v8, v9}, Landroid/filterfw/core/ShaderProgram;->setSourceRect(FFFF)V

    .line 121
    iget-object v7, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mProgram:Landroid/filterfw/core/Program;

    iget-object v8, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mOriginalFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v7, v8, v1}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 122
    iget v7, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mSliceIndex:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mSliceIndex:I

    .line 124
    iget v7, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mSliceIndex:I

    iget v8, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mXSlices:I

    iget v9, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mYSlices:I

    mul-int/2addr v8, v9

    if-ne v7, v8, :cond_2

    .line 125
    iput v11, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mSliceIndex:I

    .line 126
    iget-object v7, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mOriginalFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v7}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 127
    const-string/jumbo v7, "image"

    const/4 v8, 0x1

    invoke-virtual {p0, v7, v8}, Landroid/filterfw/core/Filter;->setWaitsOnInputPort(Ljava/lang/String;Z)V

    .line 135
    :goto_0
    const-string/jumbo v7, "image"

    invoke-virtual {p0, v7, v1}, Landroid/filterfw/core/Filter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 138
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 88
    return-void

    .line 130
    :cond_2
    iget-object v7, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mOriginalFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v7}, Landroid/filterfw/core/Frame;->retain()Landroid/filterfw/core/Frame;

    .line 131
    const-string/jumbo v7, "image"

    invoke-virtual {p0, v7, v11}, Landroid/filterfw/core/Filter;->setWaitsOnInputPort(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public setupPorts()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 63
    const-string/jumbo v0, "image"

    invoke-static {v1, v1}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/filterfw/core/Filter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 65
    const-string/jumbo v0, "image"

    const-string/jumbo v1, "image"

    invoke-virtual {p0, v0, v1}, Landroid/filterfw/core/Filter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method
