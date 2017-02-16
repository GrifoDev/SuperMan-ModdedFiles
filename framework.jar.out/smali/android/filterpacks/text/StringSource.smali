.class public Landroid/filterpacks/text/StringSource;
.super Landroid/filterfw/core/Filter;
.source "StringSource.java"


# instance fields
.field private mOutputFormat:Landroid/filterfw/core/FrameFormat;

.field private mString:Ljava/lang/String;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "stringValue"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 37
    return-void
.end method


# virtual methods
.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 4
    .param p1, "env"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 49
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v1

    iget-object v2, p0, Landroid/filterpacks/text/StringSource;->mOutputFormat:Landroid/filterfw/core/FrameFormat;

    invoke-virtual {v1, v2}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 50
    .local v0, "output":Landroid/filterfw/core/Frame;
    iget-object v1, p0, Landroid/filterpacks/text/StringSource;->mString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/filterfw/core/Frame;->setObjectValue(Ljava/lang/Object;)V

    .line 51
    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/filterfw/core/Frame;->setTimestamp(J)V

    .line 52
    const-string/jumbo v1, "string"

    invoke-virtual {p0, v1, v0}, Landroid/filterfw/core/Filter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 53
    const-string/jumbo v1, "string"

    invoke-virtual {p0, v1}, Landroid/filterfw/core/Filter;->closeOutputPort(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public setupPorts()V
    .locals 2

    .prologue
    .line 43
    const-class v0, Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/filterpacks/text/StringSource;->mOutputFormat:Landroid/filterfw/core/FrameFormat;

    .line 44
    const-string/jumbo v0, "string"

    iget-object v1, p0, Landroid/filterpacks/text/StringSource;->mOutputFormat:Landroid/filterfw/core/FrameFormat;

    invoke-virtual {p0, v0, v1}, Landroid/filterfw/core/Filter;->addOutputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 42
    return-void
.end method
