.class public Landroid/filterpacks/base/FrameStore;
.super Landroid/filterfw/core/Filter;
.source "FrameStore.java"


# instance fields
.field private mKey:Ljava/lang/String;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "key"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 33
    return-void
.end method


# virtual methods
.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 2
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 44
    const-string/jumbo v1, "frame"

    invoke-virtual {p0, v1}, Landroid/filterfw/core/Filter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 47
    .local v0, "input":Landroid/filterfw/core/Frame;
    iget-object v1, p0, Landroid/filterpacks/base/FrameStore;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/filterfw/core/FilterContext;->storeFrame(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 42
    return-void
.end method

.method public setupPorts()V
    .locals 1

    .prologue
    .line 39
    const-string/jumbo v0, "frame"

    invoke-virtual {p0, v0}, Landroid/filterfw/core/Filter;->addInputPort(Ljava/lang/String;)V

    .line 38
    return-void
.end method
