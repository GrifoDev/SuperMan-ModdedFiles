.class Ljava/util/stream/ReferencePipeline$2$1;
.super Ljava/util/stream/Sink$ChainedReference;
.source "ReferencePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/ReferencePipeline$2;->opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Sink$ChainedReference",
        "<TP_OUT;TP_OUT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava/util/stream/ReferencePipeline$2;

.field final synthetic val$predicate:Ljava/util/function/Predicate;


# direct methods
.method constructor <init>(Ljava/util/stream/ReferencePipeline$2;Ljava/util/stream/Sink;Ljava/util/function/Predicate;)V
    .locals 0
    .param p1, "this$1"    # Ljava/util/stream/ReferencePipeline$2;

    .prologue
    .line 167
    .local p2, "$anonymous0":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-TP_OUT;>;"
    .local p3, "val$predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TP_OUT;>;"
    iput-object p1, p0, Ljava/util/stream/ReferencePipeline$2$1;->this$1:Ljava/util/stream/ReferencePipeline$2;

    iput-object p3, p0, Ljava/util/stream/ReferencePipeline$2$1;->val$predicate:Ljava/util/function/Predicate;

    invoke-direct {p0, p2}, Ljava/util/stream/Sink$ChainedReference;-><init>(Ljava/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP_OUT;)V"
        }
    .end annotation

    .prologue
    .line 175
    .local p1, "u":Ljava/lang/Object;, "TP_OUT;"
    iget-object v0, p0, Ljava/util/stream/ReferencePipeline$2$1;->val$predicate:Ljava/util/function/Predicate;

    invoke-interface {v0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Ljava/util/stream/Sink$ChainedReference;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v0, p1}, Ljava/util/stream/Sink;->accept(Ljava/lang/Object;)V

    .line 174
    :cond_0
    return-void
.end method

.method public begin(J)V
    .locals 4
    .param p1, "size"    # J

    .prologue
    .line 170
    iget-object v0, p0, Ljava/util/stream/Sink$ChainedReference;->downstream:Ljava/util/stream/Sink;

    const-wide/16 v2, -0x1

    invoke-interface {v0, v2, v3}, Ljava/util/stream/Sink;->begin(J)V

    .line 169
    return-void
.end method
