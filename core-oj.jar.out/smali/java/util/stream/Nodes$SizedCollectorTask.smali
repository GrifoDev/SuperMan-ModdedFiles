.class abstract Ljava/util/stream/Nodes$SizedCollectorTask;
.super Ljava/util/concurrent/CountedCompleter;
.source "Nodes.java"

# interfaces
.implements Ljava/util/stream/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SizedCollectorTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/Nodes$SizedCollectorTask$OfDouble;,
        Ljava/util/stream/Nodes$SizedCollectorTask$OfInt;,
        Ljava/util/stream/Nodes$SizedCollectorTask$OfLong;,
        Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        "P_OUT:",
        "Ljava/lang/Object;",
        "T_SINK::",
        "Ljava/util/stream/Sink",
        "<TP_OUT;>;K:",
        "Ljava/util/stream/Nodes$SizedCollectorTask",
        "<TP_IN;TP_OUT;TT_SINK;TK;>;>",
        "Ljava/util/concurrent/CountedCompleter",
        "<",
        "Ljava/lang/Void;",
        ">;",
        "Ljava/util/stream/Sink",
        "<TP_OUT;>;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field protected fence:I

.field protected final helper:Ljava/util/stream/PipelineHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/PipelineHelper",
            "<TP_OUT;>;"
        }
    .end annotation
.end field

.field protected index:I

.field protected length:J

.field protected offset:J

.field protected final spliterator:Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Spliterator",
            "<TP_IN;>;"
        }
    .end annotation
.end field

.field protected final targetSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ljava/util/stream/Nodes$SizedCollectorTask;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Ljava/util/stream/Nodes$SizedCollectorTask;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>(Ljava/util/Spliterator;Ljava/util/stream/PipelineHelper;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator",
            "<TP_IN;>;",
            "Ljava/util/stream/PipelineHelper",
            "<TP_OUT;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/CountedCompleter;-><init>()V

    sget-boolean v0, Ljava/util/stream/Nodes$SizedCollectorTask;->-assertionsDisabled:Z

    if-nez v0, :cond_0

    const/16 v0, 0x4000

    invoke-interface {p1, v0}, Ljava/util/Spliterator;->hasCharacteristics(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Ljava/util/stream/Nodes$SizedCollectorTask;->spliterator:Ljava/util/Spliterator;

    iput-object p2, p0, Ljava/util/stream/Nodes$SizedCollectorTask;->helper:Ljava/util/stream/PipelineHelper;

    invoke-interface {p1}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/util/stream/AbstractTask;->suggestTargetSize(J)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/stream/Nodes$SizedCollectorTask;->targetSize:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/util/stream/Nodes$SizedCollectorTask;->offset:J

    int-to-long v0, p3

    iput-wide v0, p0, Ljava/util/stream/Nodes$SizedCollectorTask;->length:J

    return-void
.end method

.method constructor <init>(Ljava/util/stream/Nodes$SizedCollectorTask;Ljava/util/Spliterator;JJI)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;JJI)V"
        }
    .end annotation

    const-wide/16 v2, 0x0

    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    sget-boolean v0, Ljava/util/stream/Nodes$SizedCollectorTask;->-assertionsDisabled:Z

    if-nez v0, :cond_0

    const/16 v0, 0x4000

    invoke-interface {p2, v0}, Ljava/util/Spliterator;->hasCharacteristics(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iput-object p2, p0, Ljava/util/stream/Nodes$SizedCollectorTask;->spliterator:Ljava/util/Spliterator;

    iget-object v0, p1, Ljava/util/stream/Nodes$SizedCollectorTask;->helper:Ljava/util/stream/PipelineHelper;

    iput-object v0, p0, Ljava/util/stream/Nodes$SizedCollectorTask;->helper:Ljava/util/stream/PipelineHelper;

    iget-wide v0, p1, Ljava/util/stream/Nodes$SizedCollectorTask;->targetSize:J

    iput-wide v0, p0, Ljava/util/stream/Nodes$SizedCollectorTask;->targetSize:J

    iput-wide p3, p0, Ljava/util/stream/Nodes$SizedCollectorTask;->offset:J

    iput-wide p5, p0, Ljava/util/stream/Nodes$SizedCollectorTask;->length:J

    cmp-long v0, p3, v2

    if-ltz v0, :cond_1

    cmp-long v0, p5, v2

    if-gez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "offset and length interval [%d, %d + %d) is not within array size interval [0, %d)"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    add-long v0, p3, p5

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    int-to-long v2, p7

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    return-void
.end method


# virtual methods
.method public begin(J)V
    .locals 5

    iget-wide v0, p0, Ljava/util/stream/Nodes$SizedCollectorTask;->length:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "size passed to Sink.begin exceeds array length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v0, p0, Ljava/util/stream/Nodes$SizedCollectorTask;->offset:J

    long-to-int v0, v0

    iput v0, p0, Ljava/util/stream/Nodes$SizedCollectorTask;->index:I

    iget v0, p0, Ljava/util/stream/Nodes$SizedCollectorTask;->index:I

    iget-wide v2, p0, Ljava/util/stream/Nodes$SizedCollectorTask;->length:J

    long-to-int v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Ljava/util/stream/Nodes$SizedCollectorTask;->fence:I

    return-void
.end method

.method public compute()V
    .locals 14

    const/4 v13, 0x1

    move-object v0, p0

    iget-object v7, p0, Ljava/util/stream/Nodes$SizedCollectorTask;->spliterator:Ljava/util/Spliterator;

    :goto_0
    invoke-interface {v7}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v2

    iget-wide v8, v0, Ljava/util/stream/Nodes$SizedCollectorTask;->targetSize:J

    cmp-long v2, v2, v8

    if-lez v2, :cond_0

    invoke-interface {v7}, Ljava/util/Spliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v13}, Ljava/util/concurrent/CountedCompleter;->setPendingCount(I)V

    invoke-interface {v1}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v4

    iget-wide v2, v0, Ljava/util/stream/Nodes$SizedCollectorTask;->offset:J

    invoke-virtual/range {v0 .. v5}, Ljava/util/stream/Nodes$SizedCollectorTask;->makeChild(Ljava/util/Spliterator;JJ)Ljava/util/stream/Nodes$SizedCollectorTask;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    iget-wide v2, v0, Ljava/util/stream/Nodes$SizedCollectorTask;->offset:J

    add-long v8, v2, v4

    iget-wide v2, v0, Ljava/util/stream/Nodes$SizedCollectorTask;->length:J

    sub-long v10, v2, v4

    move-object v6, v0

    invoke-virtual/range {v6 .. v11}, Ljava/util/stream/Nodes$SizedCollectorTask;->makeChild(Ljava/util/Spliterator;JJ)Ljava/util/stream/Nodes$SizedCollectorTask;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-boolean v2, Ljava/util/stream/Nodes$SizedCollectorTask;->-assertionsDisabled:Z

    if-nez v2, :cond_2

    iget-wide v2, v0, Ljava/util/stream/Nodes$SizedCollectorTask;->offset:J

    iget-wide v8, v0, Ljava/util/stream/Nodes$SizedCollectorTask;->length:J

    add-long/2addr v2, v8

    const-wide/32 v8, 0x7ffffff7

    cmp-long v2, v2, v8

    if-gez v2, :cond_1

    move v2, v13

    :goto_1
    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    move-object v12, v0

    iget-object v2, v0, Ljava/util/stream/Nodes$SizedCollectorTask;->helper:Ljava/util/stream/PipelineHelper;

    invoke-virtual {v2, v12, v7}, Ljava/util/stream/PipelineHelper;->wrapAndCopyInto(Ljava/util/stream/Sink;Ljava/util/Spliterator;)Ljava/util/stream/Sink;

    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->propagateCompletion()V

    return-void
.end method

.method abstract makeChild(Ljava/util/Spliterator;JJ)Ljava/util/stream/Nodes$SizedCollectorTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator",
            "<TP_IN;>;JJ)TK;"
        }
    .end annotation
.end method
