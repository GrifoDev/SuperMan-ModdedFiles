.class Ljava/io/ObjectOutputStream$DebugTraceInfoStack;
.super Ljava/lang/Object;
.source "ObjectOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/ObjectOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DebugTraceInfoStack"
.end annotation


# instance fields
.field private final stack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 2506
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2507
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/io/ObjectOutputStream$DebugTraceInfoStack;->stack:Ljava/util/List;

    .line 2506
    return-void
.end method


# virtual methods
.method clear()V
    .locals 1

    .prologue
    .line 2514
    iget-object v0, p0, Ljava/io/ObjectOutputStream$DebugTraceInfoStack;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2513
    return-void
.end method

.method pop()V
    .locals 2

    .prologue
    .line 2521
    iget-object v0, p0, Ljava/io/ObjectOutputStream$DebugTraceInfoStack;->stack:Ljava/util/List;

    iget-object v1, p0, Ljava/io/ObjectOutputStream$DebugTraceInfoStack;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2520
    return-void
.end method

.method push(Ljava/lang/String;)V
    .locals 3
    .param p1, "entry"    # Ljava/lang/String;

    .prologue
    .line 2528
    iget-object v0, p0, Ljava/io/ObjectOutputStream$DebugTraceInfoStack;->stack:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\t- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2527
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2536
    .local v0, "buffer":Ljava/lang/StringBuilder;
    iget-object v2, p0, Ljava/io/ObjectOutputStream$DebugTraceInfoStack;->stack:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2537
    iget-object v2, p0, Ljava/io/ObjectOutputStream$DebugTraceInfoStack;->stack:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_1

    .line 2538
    iget-object v2, p0, Ljava/io/ObjectOutputStream$DebugTraceInfoStack;->stack:Ljava/util/List;

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const-string/jumbo v2, "\n"

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2537
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2538
    :cond_0
    const-string/jumbo v2, ""

    goto :goto_1

    .line 2541
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
