.class final Ljava/util/stream/SliceOps$1;
.super Ljava/util/stream/ReferencePipeline$StatefulOp;
.source "SliceOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/SliceOps;->makeRef(Ljava/util/stream/AbstractPipeline;JJ)Ljava/util/stream/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/ReferencePipeline$StatefulOp",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$limit:J

.field final synthetic val$skip:J


# direct methods
.method constructor <init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;IJJ)V
    .locals 0
    .param p2, "$anonymous1"    # Ljava/util/stream/StreamShape;
    .param p3, "$anonymous2"    # I
    .param p4, "val$skip"    # J
    .param p6, "val$limit"    # J

    .prologue
    .line 119
    .local p1, "$anonymous0":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*TT;*>;"
    iput-wide p4, p0, Ljava/util/stream/SliceOps$1;->val$skip:J

    iput-wide p6, p0, Ljava/util/stream/SliceOps$1;->val$limit:J

    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/ReferencePipeline$StatefulOp;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;I)V

    .line 120
    return-void
.end method


# virtual methods
.method public opEvaluateParallel(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Ljava/util/function/IntFunction;)Ljava/util/stream/Node;
    .locals 23
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
    .line 163
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TT;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local p3, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TT;>;"
    invoke-virtual/range {p1 .. p2}, Ljava/util/stream/PipelineHelper;->exactOutputSizeIfKnown(Ljava/util/Spliterator;)J

    move-result-wide v10

    .line 164
    .local v10, "size":J
    const-wide/16 v4, 0x0

    cmp-long v4, v10, v4

    if-lez v4, :cond_0

    const/16 v4, 0x4000

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/Spliterator;->hasCharacteristics(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 170
    invoke-virtual/range {p1 .. p1}, Ljava/util/stream/PipelineHelper;->getSourceShape()Ljava/util/stream/StreamShape;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Ljava/util/stream/SliceOps$1;->val$skip:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Ljava/util/stream/SliceOps$1;->val$limit:J

    move-object/from16 v5, p2

    invoke-static/range {v4 .. v9}, Ljava/util/stream/SliceOps;->-wrap0(Ljava/util/stream/StreamShape;Ljava/util/Spliterator;JJ)Ljava/util/Spliterator;

    move-result-object v12

    .line 171
    .local v12, "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    const/4 v4, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v12, v4, v1}, Ljava/util/stream/Nodes;->collect(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;ZLjava/util/function/IntFunction;)Ljava/util/stream/Node;

    move-result-object v4

    return-object v4

    .line 172
    .end local v12    # "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    :cond_0
    sget-object v4, Ljava/util/stream/StreamOpFlag;->ORDERED:Ljava/util/stream/StreamOpFlag;

    invoke-virtual/range {p1 .. p1}, Ljava/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 174
    invoke-virtual/range {p1 .. p2}, Ljava/util/stream/PipelineHelper;->wrapSpliterator(Ljava/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object v5

    .line 175
    move-object/from16 v0, p0

    iget-wide v6, v0, Ljava/util/stream/SliceOps$1;->val$skip:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Ljava/util/stream/SliceOps$1;->val$limit:J

    move-object/from16 v4, p0

    .line 173
    invoke-virtual/range {v4 .. v11}, Ljava/util/stream/SliceOps$1;->unorderedSkipLimitSpliterator(Ljava/util/Spliterator;JJJ)Ljava/util/Spliterator;

    move-result-object v22

    .line 180
    .local v22, "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p3

    invoke-static {v0, v1, v4, v2}, Ljava/util/stream/Nodes;->collect(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;ZLjava/util/function/IntFunction;)Ljava/util/stream/Node;

    move-result-object v4

    return-object v4

    .line 183
    .end local v22    # "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    :cond_1
    new-instance v13, Ljava/util/stream/SliceOps$SliceTask;

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/stream/SliceOps$1;->val$skip:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/stream/SliceOps$1;->val$limit:J

    move-wide/from16 v20, v0

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    invoke-direct/range {v13 .. v21}, Ljava/util/stream/SliceOps$SliceTask;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Ljava/util/function/IntFunction;JJ)V

    invoke-virtual {v13}, Ljava/util/concurrent/ForkJoinTask;->invoke()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/stream/Node;

    return-object v4
.end method

.method public opEvaluateParallelLazy(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)Ljava/util/Spliterator;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper",
            "<TT;>;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;)",
            "Ljava/util/Spliterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 134
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TT;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-virtual/range {p1 .. p2}, Ljava/util/stream/PipelineHelper;->exactOutputSizeIfKnown(Ljava/util/Spliterator;)J

    move-result-wide v8

    .line 135
    .local v8, "size":J
    const-wide/16 v2, 0x0

    cmp-long v2, v8, v2

    if-lez v2, :cond_0

    const/16 v2, 0x4000

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Spliterator;->hasCharacteristics(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 136
    new-instance v2, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;

    .line 137
    invoke-virtual/range {p1 .. p2}, Ljava/util/stream/PipelineHelper;->wrapSpliterator(Ljava/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object v3

    .line 138
    move-object/from16 v0, p0

    iget-wide v4, v0, Ljava/util/stream/SliceOps$1;->val$skip:J

    .line 139
    move-object/from16 v0, p0

    iget-wide v6, v0, Ljava/util/stream/SliceOps$1;->val$skip:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Ljava/util/stream/SliceOps$1;->val$limit:J

    invoke-static {v6, v7, v10, v11}, Ljava/util/stream/SliceOps;->-wrap3(JJ)J

    move-result-wide v6

    .line 136
    invoke-direct/range {v2 .. v7}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;-><init>(Ljava/util/Spliterator;JJ)V

    return-object v2

    .line 140
    :cond_0
    sget-object v2, Ljava/util/stream/StreamOpFlag;->ORDERED:Ljava/util/stream/StreamOpFlag;

    invoke-virtual/range {p1 .. p1}, Ljava/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 142
    invoke-virtual/range {p1 .. p2}, Ljava/util/stream/PipelineHelper;->wrapSpliterator(Ljava/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object v3

    .line 143
    move-object/from16 v0, p0

    iget-wide v4, v0, Ljava/util/stream/SliceOps$1;->val$skip:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Ljava/util/stream/SliceOps$1;->val$limit:J

    move-object/from16 v2, p0

    .line 141
    invoke-virtual/range {v2 .. v9}, Ljava/util/stream/SliceOps$1;->unorderedSkipLimitSpliterator(Ljava/util/Spliterator;JJJ)Ljava/util/Spliterator;

    move-result-object v2

    return-object v2

    .line 154
    :cond_1
    new-instance v11, Ljava/util/stream/SliceOps$SliceTask;

    invoke-static {}, Ljava/util/stream/SliceOps;->-wrap1()Ljava/util/function/IntFunction;

    move-result-object v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/stream/SliceOps$1;->val$skip:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/stream/SliceOps$1;->val$limit:J

    move-wide/from16 v18, v0

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    invoke-direct/range {v11 .. v19}, Ljava/util/stream/SliceOps$SliceTask;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Ljava/util/function/IntFunction;JJ)V

    invoke-virtual {v11}, Ljava/util/concurrent/ForkJoinTask;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/stream/Node;

    invoke-interface {v2}, Ljava/util/stream/Node;->spliterator()Ljava/util/Spliterator;

    move-result-object v2

    return-object v2
.end method

.method public opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
    .locals 8
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
    .line 190
    .local p2, "sink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<TT;>;"
    new-instance v1, Ljava/util/stream/SliceOps$1$1;

    iget-wide v4, p0, Ljava/util/stream/SliceOps$1;->val$skip:J

    iget-wide v6, p0, Ljava/util/stream/SliceOps$1;->val$limit:J

    move-object v2, p0

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Ljava/util/stream/SliceOps$1$1;-><init>(Ljava/util/stream/SliceOps$1;Ljava/util/stream/Sink;JJ)V

    return-object v1
.end method

.method unorderedSkipLimitSpliterator(Ljava/util/Spliterator;JJJ)Ljava/util/Spliterator;
    .locals 6
    .param p2, "skip"    # J
    .param p4, "limit"    # J
    .param p6, "sizeIfKnown"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator",
            "<TT;>;JJJ)",
            "Ljava/util/Spliterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    cmp-long v0, p2, p6

    if-gtz v0, :cond_0

    .line 126
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-ltz v0, :cond_1

    sub-long v0, p6, p2

    invoke-static {p4, p5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p4

    .line 127
    :goto_0
    const-wide/16 p2, 0x0

    .line 129
    :cond_0
    new-instance v0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;-><init>(Ljava/util/Spliterator;JJ)V

    return-object v0

    .line 126
    :cond_1
    sub-long p4, p6, p2

    goto :goto_0
.end method
