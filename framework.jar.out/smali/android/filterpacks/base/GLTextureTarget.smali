.class public Landroid/filterpacks/base/GLTextureTarget;
.super Landroid/filterfw/core/Filter;
.source "GLTextureTarget.java"


# instance fields
.field private mTexId:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "texId"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 36
    return-void
.end method


# virtual methods
.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 7
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    const/4 v5, 0x3

    .line 48
    const-string/jumbo v3, "frame"

    invoke-virtual {p0, v3}, Landroid/filterfw/core/Filter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v2

    .line 50
    .local v2, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v3

    invoke-virtual {v3}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v3

    .line 51
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v4

    invoke-virtual {v4}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v4

    .line 50
    invoke-static {v3, v4, v5, v5}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    .line 55
    .local v0, "format":Landroid/filterfw/core/FrameFormat;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v3

    iget v4, p0, Landroid/filterpacks/base/GLTextureTarget;->mTexId:I

    int-to-long v4, v4

    const/16 v6, 0x64

    invoke-virtual {v3, v0, v6, v4, v5}, Landroid/filterfw/core/FrameManager;->newBoundFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;

    move-result-object v1

    .line 58
    .local v1, "frame":Landroid/filterfw/core/Frame;
    invoke-virtual {v1, v2}, Landroid/filterfw/core/Frame;->setDataFromFrame(Landroid/filterfw/core/Frame;)V

    .line 59
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 46
    return-void
.end method

.method public setupPorts()V
    .locals 2

    .prologue
    .line 42
    const-string/jumbo v0, "frame"

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/filterfw/core/Filter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 41
    return-void
.end method
