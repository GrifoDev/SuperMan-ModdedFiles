.class final Ljava/util/stream/SortedOps$OfRef;
.super Ljava/util/stream/ReferencePipeline$StatefulOp;
.source "SortedOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/SortedOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OfRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/ReferencePipeline$StatefulOp",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private final isNaturalSort:Z


# direct methods
.method constructor <init>(Ljava/util/stream/AbstractPipeline;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/AbstractPipeline",
            "<*TT;*>;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "this":Ljava/util/stream/SortedOps$OfRef;, "Ljava/util/stream/SortedOps$OfRef<TT;>;"
    .local p1, "upstream":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*TT;*>;"
    sget-object v1, Ljava/util/stream/StreamShape;->REFERENCE:Ljava/util/stream/StreamShape;

    .line 112
    sget v2, Ljava/util/stream/StreamOpFlag;->IS_ORDERED:I

    sget v3, Ljava/util/stream/StreamOpFlag;->IS_SORTED:I

    or-int/2addr v2, v3

    .line 111
    invoke-direct {p0, p1, v1, v2}, Ljava/util/stream/ReferencePipeline$StatefulOp;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;I)V

    .line 113
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/stream/SortedOps$OfRef;->isNaturalSort:Z

    .line 116
    invoke-static {}, Ljava/util/Comparator;->naturalOrder()Ljava/util/Comparator;

    move-result-object v0

    .line 117
    .local v0, "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    iput-object v0, p0, Ljava/util/stream/SortedOps$OfRef;->comparator:Ljava/util/Comparator;

    .line 110
    return-void
.end method

.method constructor <init>(Ljava/util/stream/AbstractPipeline;Ljava/util/Comparator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/AbstractPipeline",
            "<*TT;*>;",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p0, "this":Ljava/util/stream/SortedOps$OfRef;, "Ljava/util/stream/SortedOps$OfRef<TT;>;"
    .local p1, "upstream":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*TT;*>;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    sget-object v0, Ljava/util/stream/StreamShape;->REFERENCE:Ljava/util/stream/StreamShape;

    .line 127
    sget v1, Ljava/util/stream/StreamOpFlag;->IS_ORDERED:I

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_SORTED:I

    or-int/2addr v1, v2

    .line 126
    invoke-direct {p0, p1, v0, v1}, Ljava/util/stream/ReferencePipeline$StatefulOp;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;I)V

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/stream/SortedOps$OfRef;->isNaturalSort:Z

    .line 129
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Ljava/util/stream/SortedOps$OfRef;->comparator:Ljava/util/Comparator;

    .line 125
    return-void
.end method


# virtual methods
.method public opEvaluateParallel(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Ljava/util/function/IntFunction;)Ljava/util/stream/Node;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper",
            "<TT;>;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;",
            "Ljava/util/function/IntFunction",
            "<[TT;>;)",
            "Ljava/util/stream/Node",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 152
    .local p0, "this":Ljava/util/stream/SortedOps$OfRef;, "Ljava/util/stream/SortedOps$OfRef<TT;>;"
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TT;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local p3, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TT;>;"
    sget-object v1, Ljava/util/stream/StreamOpFlag;->SORTED:Ljava/util/stream/StreamOpFlag;

    invoke-virtual {p1}, Ljava/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Ljava/util/stream/SortedOps$OfRef;->isNaturalSort:Z

    if-eqz v1, :cond_0

    .line 153
    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, p3}, Ljava/util/stream/PipelineHelper;->evaluate(Ljava/util/Spliterator;ZLjava/util/function/IntFunction;)Ljava/util/stream/Node;

    move-result-object v1

    return-object v1

    .line 157
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1, p3}, Ljava/util/stream/PipelineHelper;->evaluate(Ljava/util/Spliterator;ZLjava/util/function/IntFunction;)Ljava/util/stream/Node;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/stream/Node;->asArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    .line 158
    .local v0, "flattenedData":[Ljava/lang/Object;, "[TT;"
    iget-object v1, p0, Ljava/util/stream/SortedOps$OfRef;->comparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->parallelSort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 159
    invoke-static {v0}, Ljava/util/stream/Nodes;->node([Ljava/lang/Object;)Ljava/util/stream/Node;

    move-result-object v1

    return-object v1
.end method

.method public opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
    .locals 2
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/stream/Sink",
            "<TT;>;)",
            "Ljava/util/stream/Sink",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 134
    .local p0, "this":Ljava/util/stream/SortedOps$OfRef;, "Ljava/util/stream/SortedOps$OfRef<TT;>;"
    .local p2, "sink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<TT;>;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Ljava/util/stream/StreamOpFlag;->SORTED:Ljava/util/stream/StreamOpFlag;

    invoke-virtual {v0, p1}, Ljava/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ljava/util/stream/SortedOps$OfRef;->isNaturalSort:Z

    if-eqz v0, :cond_0

    .line 139
    return-object p2

    .line 140
    :cond_0
    sget-object v0, Ljava/util/stream/StreamOpFlag;->SIZED:Ljava/util/stream/StreamOpFlag;

    invoke-virtual {v0, p1}, Ljava/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    new-instance v0, Ljava/util/stream/SortedOps$SizedRefSortingSink;

    iget-object v1, p0, Ljava/util/stream/SortedOps$OfRef;->comparator:Ljava/util/Comparator;

    invoke-direct {v0, p2, v1}, Ljava/util/stream/SortedOps$SizedRefSortingSink;-><init>(Ljava/util/stream/Sink;Ljava/util/Comparator;)V

    return-object v0

    .line 143
    :cond_1
    new-instance v0, Ljava/util/stream/SortedOps$RefSortingSink;

    iget-object v1, p0, Ljava/util/stream/SortedOps$OfRef;->comparator:Ljava/util/Comparator;

    invoke-direct {v0, p2, v1}, Ljava/util/stream/SortedOps$RefSortingSink;-><init>(Ljava/util/stream/Sink;Ljava/util/Comparator;)V

    return-object v0
.end method
