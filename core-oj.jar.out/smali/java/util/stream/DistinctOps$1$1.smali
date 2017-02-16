.class Ljava/util/stream/DistinctOps$1$1;
.super Ljava/util/stream/Sink$ChainedReference;
.source "DistinctOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/DistinctOps$1;->opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Sink$ChainedReference",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field lastSeen:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field seenNull:Z

.field final synthetic this$1:Ljava/util/stream/DistinctOps$1;


# direct methods
.method constructor <init>(Ljava/util/stream/DistinctOps$1;Ljava/util/stream/Sink;)V
    .locals 0
    .param p1, "this$1"    # Ljava/util/stream/DistinctOps$1;

    .prologue
    .line 125
    .local p2, "$anonymous0":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-TT;>;"
    iput-object p1, p0, Ljava/util/stream/DistinctOps$1$1;->this$1:Ljava/util/stream/DistinctOps$1;

    invoke-direct {p0, p2}, Ljava/util/stream/Sink$ChainedReference;-><init>(Ljava/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    .line 145
    if-nez p1, :cond_1

    .line 146
    iget-boolean v0, p0, Ljava/util/stream/DistinctOps$1$1;->seenNull:Z

    if-nez v0, :cond_0

    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/stream/DistinctOps$1$1;->seenNull:Z

    .line 148
    iget-object v0, p0, Ljava/util/stream/Sink$ChainedReference;->downstream:Ljava/util/stream/Sink;

    iput-object v1, p0, Ljava/util/stream/DistinctOps$1$1;->lastSeen:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/stream/Sink;->accept(Ljava/lang/Object;)V

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    iget-object v0, p0, Ljava/util/stream/DistinctOps$1$1;->lastSeen:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljava/util/stream/DistinctOps$1$1;->lastSeen:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    :cond_2
    iget-object v0, p0, Ljava/util/stream/Sink$ChainedReference;->downstream:Ljava/util/stream/Sink;

    iput-object p1, p0, Ljava/util/stream/DistinctOps$1$1;->lastSeen:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/stream/Sink;->accept(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public begin(J)V
    .locals 4
    .param p1, "size"    # J

    .prologue
    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/stream/DistinctOps$1$1;->seenNull:Z

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/stream/DistinctOps$1$1;->lastSeen:Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Ljava/util/stream/Sink$ChainedReference;->downstream:Ljava/util/stream/Sink;

    const-wide/16 v2, -0x1

    invoke-interface {v0, v2, v3}, Ljava/util/stream/Sink;->begin(J)V

    .line 130
    return-void
.end method

.method public end()V
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/stream/DistinctOps$1$1;->seenNull:Z

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/stream/DistinctOps$1$1;->lastSeen:Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Ljava/util/stream/Sink$ChainedReference;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v0}, Ljava/util/stream/Sink;->end()V

    .line 137
    return-void
.end method
