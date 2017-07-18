.class final Ljava/util/stream/Nodes;
.super Ljava/lang/Object;
.source "Nodes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/Nodes$AbstractConcNode;,
        Ljava/util/stream/Nodes$ArrayNode;,
        Ljava/util/stream/Nodes$CollectionNode;,
        Ljava/util/stream/Nodes$CollectorTask;,
        Ljava/util/stream/Nodes$ConcNode;,
        Ljava/util/stream/Nodes$DoubleArrayNode;,
        Ljava/util/stream/Nodes$DoubleFixedNodeBuilder;,
        Ljava/util/stream/Nodes$DoubleSpinedNodeBuilder;,
        Ljava/util/stream/Nodes$EmptyNode;,
        Ljava/util/stream/Nodes$FixedNodeBuilder;,
        Ljava/util/stream/Nodes$IntArrayNode;,
        Ljava/util/stream/Nodes$IntFixedNodeBuilder;,
        Ljava/util/stream/Nodes$IntSpinedNodeBuilder;,
        Ljava/util/stream/Nodes$InternalNodeSpliterator;,
        Ljava/util/stream/Nodes$LongArrayNode;,
        Ljava/util/stream/Nodes$LongFixedNodeBuilder;,
        Ljava/util/stream/Nodes$LongSpinedNodeBuilder;,
        Ljava/util/stream/Nodes$SizedCollectorTask;,
        Ljava/util/stream/Nodes$SpinedNodeBuilder;,
        Ljava/util/stream/Nodes$ToArrayTask;
    }
.end annotation


# static fields
.field private static final synthetic -java-util-stream-StreamShapeSwitchesValues:[I = null

.field static final BAD_SIZE:Ljava/lang/String; = "Stream size exceeds max array size"

.field private static final EMPTY_DOUBLE_ARRAY:[D

.field private static final EMPTY_DOUBLE_NODE:Ljava/util/stream/Node$OfDouble;

.field private static final EMPTY_INT_ARRAY:[I

.field private static final EMPTY_INT_NODE:Ljava/util/stream/Node$OfInt;

.field private static final EMPTY_LONG_ARRAY:[J

.field private static final EMPTY_LONG_NODE:Ljava/util/stream/Node$OfLong;

.field private static final EMPTY_NODE:Ljava/util/stream/Node;

.field static final MAX_ARRAY_SIZE:J = 0x7ffffff7L


# direct methods
.method static synthetic -get0()[D
    .locals 1

    sget-object v0, Ljava/util/stream/Nodes;->EMPTY_DOUBLE_ARRAY:[D

    return-object v0
.end method

.method static synthetic -get1()[I
    .locals 1

    sget-object v0, Ljava/util/stream/Nodes;->EMPTY_INT_ARRAY:[I

    return-object v0
.end method

.method static synthetic -get2()[J
    .locals 1

    sget-object v0, Ljava/util/stream/Nodes;->EMPTY_LONG_ARRAY:[J

    return-object v0
.end method

.method private static synthetic -getjava-util-stream-StreamShapeSwitchesValues()[I
    .locals 3

    sget-object v0, Ljava/util/stream/Nodes;->-java-util-stream-StreamShapeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Ljava/util/stream/Nodes;->-java-util-stream-StreamShapeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/stream/StreamShape;->values()[Ljava/util/stream/StreamShape;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Ljava/util/stream/StreamShape;->DOUBLE_VALUE:Ljava/util/stream/StreamShape;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Ljava/util/stream/StreamShape;->INT_VALUE:Ljava/util/stream/StreamShape;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Ljava/util/stream/StreamShape;->LONG_VALUE:Ljava/util/stream/StreamShape;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Ljava/util/stream/StreamShape;->REFERENCE:Ljava/util/stream/StreamShape;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Ljava/util/stream/Nodes;->-java-util-stream-StreamShapeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/util/stream/Nodes$EmptyNode$OfRef;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/stream/Nodes$EmptyNode$OfRef;-><init>(Ljava/util/stream/Nodes$EmptyNode$OfRef;)V

    sput-object v0, Ljava/util/stream/Nodes;->EMPTY_NODE:Ljava/util/stream/Node;

    new-instance v0, Ljava/util/stream/Nodes$EmptyNode$OfInt;

    invoke-direct {v0}, Ljava/util/stream/Nodes$EmptyNode$OfInt;-><init>()V

    sput-object v0, Ljava/util/stream/Nodes;->EMPTY_INT_NODE:Ljava/util/stream/Node$OfInt;

    new-instance v0, Ljava/util/stream/Nodes$EmptyNode$OfLong;

    invoke-direct {v0}, Ljava/util/stream/Nodes$EmptyNode$OfLong;-><init>()V

    sput-object v0, Ljava/util/stream/Nodes;->EMPTY_LONG_NODE:Ljava/util/stream/Node$OfLong;

    new-instance v0, Ljava/util/stream/Nodes$EmptyNode$OfDouble;

    invoke-direct {v0}, Ljava/util/stream/Nodes$EmptyNode$OfDouble;-><init>()V

    sput-object v0, Ljava/util/stream/Nodes;->EMPTY_DOUBLE_NODE:Ljava/util/stream/Node$OfDouble;

    new-array v0, v2, [I

    sput-object v0, Ljava/util/stream/Nodes;->EMPTY_INT_ARRAY:[I

    new-array v0, v2, [J

    sput-object v0, Ljava/util/stream/Nodes;->EMPTY_LONG_ARRAY:[J

    new-array v0, v2, [D

    sput-object v0, Ljava/util/stream/Nodes;->EMPTY_DOUBLE_ARRAY:[D

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Error;

    const-string/jumbo v1, "no instances"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static builder()Ljava/util/stream/Node$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/stream/Node$Builder",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/stream/Nodes$SpinedNodeBuilder;

    invoke-direct {v0}, Ljava/util/stream/Nodes$SpinedNodeBuilder;-><init>()V

    return-object v0
.end method

.method static builder(JLjava/util/function/IntFunction;)Ljava/util/stream/Node$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/function/IntFunction",
            "<[TT;>;)",
            "Ljava/util/stream/Node$Builder",
            "<TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const-wide/32 v0, 0x7ffffff7

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/util/stream/Nodes$FixedNodeBuilder;

    invoke-direct {v0, p0, p1, p2}, Ljava/util/stream/Nodes$FixedNodeBuilder;-><init>(JLjava/util/function/IntFunction;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/stream/Nodes;->builder()Ljava/util/stream/Node$Builder;

    move-result-object v0

    goto :goto_0
.end method

.method public static collect(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;ZLjava/util/function/IntFunction;)Ljava/util/stream/Node;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            "P_OUT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper",
            "<TP_OUT;>;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;Z",
            "Ljava/util/function/IntFunction",
            "<[TP_OUT;>;)",
            "Ljava/util/stream/Node",
            "<TP_OUT;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/util/stream/PipelineHelper;->exactOutputSizeIfKnown(Ljava/util/Spliterator;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_1

    const/16 v4, 0x4000

    invoke-interface {p1, v4}, Ljava/util/Spliterator;->hasCharacteristics(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const-wide/32 v4, 0x7ffffff7

    cmp-long v4, v2, v4

    if-ltz v4, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Stream size exceeds max array size"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    long-to-int v4, v2

    invoke-interface {p3, v4}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    new-instance v4, Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;

    invoke-direct {v4, p1, p0, v0}, Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;-><init>(Ljava/util/Spliterator;Ljava/util/stream/PipelineHelper;[Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/util/concurrent/ForkJoinTask;->invoke()Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/stream/Nodes;->node([Ljava/lang/Object;)Ljava/util/stream/Node;

    move-result-object v4

    return-object v4

    :cond_1
    new-instance v4, Ljava/util/stream/Nodes$CollectorTask$OfRef;

    invoke-direct {v4, p0, p3, p1}, Ljava/util/stream/Nodes$CollectorTask$OfRef;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/function/IntFunction;Ljava/util/Spliterator;)V

    invoke-virtual {v4}, Ljava/util/concurrent/ForkJoinTask;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/stream/Node;

    if-eqz p2, :cond_2

    invoke-static {v1, p3}, Ljava/util/stream/Nodes;->flatten(Ljava/util/stream/Node;Ljava/util/function/IntFunction;)Ljava/util/stream/Node;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method public static collectDouble(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Z)Ljava/util/stream/Node$OfDouble;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper",
            "<",
            "Ljava/lang/Double;",
            ">;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;Z)",
            "Ljava/util/stream/Node$OfDouble;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/util/stream/PipelineHelper;->exactOutputSizeIfKnown(Ljava/util/Spliterator;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_1

    const/16 v4, 0x4000

    invoke-interface {p1, v4}, Ljava/util/Spliterator;->hasCharacteristics(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const-wide/32 v4, 0x7ffffff7

    cmp-long v4, v2, v4

    if-ltz v4, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Stream size exceeds max array size"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    long-to-int v4, v2

    new-array v0, v4, [D

    new-instance v4, Ljava/util/stream/Nodes$SizedCollectorTask$OfDouble;

    invoke-direct {v4, p1, p0, v0}, Ljava/util/stream/Nodes$SizedCollectorTask$OfDouble;-><init>(Ljava/util/Spliterator;Ljava/util/stream/PipelineHelper;[D)V

    invoke-virtual {v4}, Ljava/util/concurrent/ForkJoinTask;->invoke()Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/stream/Nodes;->node([D)Ljava/util/stream/Node$OfDouble;

    move-result-object v4

    return-object v4

    :cond_1
    new-instance v4, Ljava/util/stream/Nodes$CollectorTask$OfDouble;

    invoke-direct {v4, p0, p1}, Ljava/util/stream/Nodes$CollectorTask$OfDouble;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)V

    invoke-virtual {v4}, Ljava/util/concurrent/ForkJoinTask;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/stream/Node$OfDouble;

    if-eqz p2, :cond_2

    invoke-static {v1}, Ljava/util/stream/Nodes;->flattenDouble(Ljava/util/stream/Node$OfDouble;)Ljava/util/stream/Node$OfDouble;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method public static collectInt(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Z)Ljava/util/stream/Node$OfInt;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;Z)",
            "Ljava/util/stream/Node$OfInt;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/util/stream/PipelineHelper;->exactOutputSizeIfKnown(Ljava/util/Spliterator;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_1

    const/16 v4, 0x4000

    invoke-interface {p1, v4}, Ljava/util/Spliterator;->hasCharacteristics(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const-wide/32 v4, 0x7ffffff7

    cmp-long v4, v2, v4

    if-ltz v4, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Stream size exceeds max array size"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    long-to-int v4, v2

    new-array v0, v4, [I

    new-instance v4, Ljava/util/stream/Nodes$SizedCollectorTask$OfInt;

    invoke-direct {v4, p1, p0, v0}, Ljava/util/stream/Nodes$SizedCollectorTask$OfInt;-><init>(Ljava/util/Spliterator;Ljava/util/stream/PipelineHelper;[I)V

    invoke-virtual {v4}, Ljava/util/concurrent/ForkJoinTask;->invoke()Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/stream/Nodes;->node([I)Ljava/util/stream/Node$OfInt;

    move-result-object v4

    return-object v4

    :cond_1
    new-instance v4, Ljava/util/stream/Nodes$CollectorTask$OfInt;

    invoke-direct {v4, p0, p1}, Ljava/util/stream/Nodes$CollectorTask$OfInt;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)V

    invoke-virtual {v4}, Ljava/util/concurrent/ForkJoinTask;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/stream/Node$OfInt;

    if-eqz p2, :cond_2

    invoke-static {v1}, Ljava/util/stream/Nodes;->flattenInt(Ljava/util/stream/Node$OfInt;)Ljava/util/stream/Node$OfInt;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method public static collectLong(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Z)Ljava/util/stream/Node$OfLong;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;Z)",
            "Ljava/util/stream/Node$OfLong;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/util/stream/PipelineHelper;->exactOutputSizeIfKnown(Ljava/util/Spliterator;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_1

    const/16 v4, 0x4000

    invoke-interface {p1, v4}, Ljava/util/Spliterator;->hasCharacteristics(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const-wide/32 v4, 0x7ffffff7

    cmp-long v4, v2, v4

    if-ltz v4, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Stream size exceeds max array size"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    long-to-int v4, v2

    new-array v0, v4, [J

    new-instance v4, Ljava/util/stream/Nodes$SizedCollectorTask$OfLong;

    invoke-direct {v4, p1, p0, v0}, Ljava/util/stream/Nodes$SizedCollectorTask$OfLong;-><init>(Ljava/util/Spliterator;Ljava/util/stream/PipelineHelper;[J)V

    invoke-virtual {v4}, Ljava/util/concurrent/ForkJoinTask;->invoke()Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/stream/Nodes;->node([J)Ljava/util/stream/Node$OfLong;

    move-result-object v4

    return-object v4

    :cond_1
    new-instance v4, Ljava/util/stream/Nodes$CollectorTask$OfLong;

    invoke-direct {v4, p0, p1}, Ljava/util/stream/Nodes$CollectorTask$OfLong;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)V

    invoke-virtual {v4}, Ljava/util/concurrent/ForkJoinTask;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/stream/Node$OfLong;

    if-eqz p2, :cond_2

    invoke-static {v1}, Ljava/util/stream/Nodes;->flattenLong(Ljava/util/stream/Node$OfLong;)Ljava/util/stream/Node$OfLong;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method static conc(Ljava/util/stream/StreamShape;Ljava/util/stream/Node;Ljava/util/stream/Node;)Ljava/util/stream/Node;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/StreamShape;",
            "Ljava/util/stream/Node",
            "<TT;>;",
            "Ljava/util/stream/Node",
            "<TT;>;)",
            "Ljava/util/stream/Node",
            "<TT;>;"
        }
    .end annotation

    invoke-static {}, Ljava/util/stream/Nodes;->-getjava-util-stream-StreamShapeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown shape "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Ljava/util/stream/Nodes$ConcNode;

    invoke-direct {v0, p1, p2}, Ljava/util/stream/Nodes$ConcNode;-><init>(Ljava/util/stream/Node;Ljava/util/stream/Node;)V

    return-object v0

    :pswitch_1
    new-instance v0, Ljava/util/stream/Nodes$ConcNode$OfInt;

    check-cast p1, Ljava/util/stream/Node$OfInt;

    check-cast p2, Ljava/util/stream/Node$OfInt;

    invoke-direct {v0, p1, p2}, Ljava/util/stream/Nodes$ConcNode$OfInt;-><init>(Ljava/util/stream/Node$OfInt;Ljava/util/stream/Node$OfInt;)V

    return-object v0

    :pswitch_2
    new-instance v0, Ljava/util/stream/Nodes$ConcNode$OfLong;

    check-cast p1, Ljava/util/stream/Node$OfLong;

    check-cast p2, Ljava/util/stream/Node$OfLong;

    invoke-direct {v0, p1, p2}, Ljava/util/stream/Nodes$ConcNode$OfLong;-><init>(Ljava/util/stream/Node$OfLong;Ljava/util/stream/Node$OfLong;)V

    return-object v0

    :pswitch_3
    new-instance v0, Ljava/util/stream/Nodes$ConcNode$OfDouble;

    check-cast p1, Ljava/util/stream/Node$OfDouble;

    check-cast p2, Ljava/util/stream/Node$OfDouble;

    invoke-direct {v0, p1, p2}, Ljava/util/stream/Nodes$ConcNode$OfDouble;-><init>(Ljava/util/stream/Node$OfDouble;Ljava/util/stream/Node$OfDouble;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method static doubleBuilder()Ljava/util/stream/Node$Builder$OfDouble;
    .locals 1

    new-instance v0, Ljava/util/stream/Nodes$DoubleSpinedNodeBuilder;

    invoke-direct {v0}, Ljava/util/stream/Nodes$DoubleSpinedNodeBuilder;-><init>()V

    return-object v0
.end method

.method static doubleBuilder(J)Ljava/util/stream/Node$Builder$OfDouble;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const-wide/32 v0, 0x7ffffff7

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/util/stream/Nodes$DoubleFixedNodeBuilder;

    invoke-direct {v0, p0, p1}, Ljava/util/stream/Nodes$DoubleFixedNodeBuilder;-><init>(J)V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/stream/Nodes;->doubleBuilder()Ljava/util/stream/Node$Builder$OfDouble;

    move-result-object v0

    goto :goto_0
.end method

.method static emptyNode(Ljava/util/stream/StreamShape;)Ljava/util/stream/Node;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/StreamShape;",
            ")",
            "Ljava/util/stream/Node",
            "<TT;>;"
        }
    .end annotation

    invoke-static {}, Ljava/util/stream/Nodes;->-getjava-util-stream-StreamShapeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown shape "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object v0, Ljava/util/stream/Nodes;->EMPTY_NODE:Ljava/util/stream/Node;

    return-object v0

    :pswitch_1
    sget-object v0, Ljava/util/stream/Nodes;->EMPTY_INT_NODE:Ljava/util/stream/Node$OfInt;

    return-object v0

    :pswitch_2
    sget-object v0, Ljava/util/stream/Nodes;->EMPTY_LONG_NODE:Ljava/util/stream/Node$OfLong;

    return-object v0

    :pswitch_3
    sget-object v0, Ljava/util/stream/Nodes;->EMPTY_DOUBLE_NODE:Ljava/util/stream/Node$OfDouble;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static flatten(Ljava/util/stream/Node;Ljava/util/function/IntFunction;)Ljava/util/stream/Node;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/Node",
            "<TT;>;",
            "Ljava/util/function/IntFunction",
            "<[TT;>;)",
            "Ljava/util/stream/Node",
            "<TT;>;"
        }
    .end annotation

    const/4 v6, 0x0

    invoke-interface {p0}, Ljava/util/stream/Node;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {p0}, Ljava/util/stream/Node;->count()J

    move-result-wide v2

    const-wide/32 v4, 0x7ffffff7

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Stream size exceeds max array size"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    long-to-int v1, v2

    invoke-interface {p1, v1}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    new-instance v1, Ljava/util/stream/Nodes$ToArrayTask$OfRef;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v0, v6, v4}, Ljava/util/stream/Nodes$ToArrayTask$OfRef;-><init>(Ljava/util/stream/Node;[Ljava/lang/Object;ILjava/util/stream/Nodes$ToArrayTask$OfRef;)V

    invoke-virtual {v1}, Ljava/util/concurrent/ForkJoinTask;->invoke()Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/stream/Nodes;->node([Ljava/lang/Object;)Ljava/util/stream/Node;

    move-result-object v1

    return-object v1

    :cond_1
    return-object p0
.end method

.method public static flattenDouble(Ljava/util/stream/Node$OfDouble;)Ljava/util/stream/Node$OfDouble;
    .locals 7

    const/4 v6, 0x0

    invoke-interface {p0}, Ljava/util/stream/Node$OfDouble;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {p0}, Ljava/util/stream/Node$OfDouble;->count()J

    move-result-wide v2

    const-wide/32 v4, 0x7ffffff7

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Stream size exceeds max array size"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    long-to-int v1, v2

    new-array v0, v1, [D

    new-instance v1, Ljava/util/stream/Nodes$ToArrayTask$OfDouble;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v0, v6, v4}, Ljava/util/stream/Nodes$ToArrayTask$OfDouble;-><init>(Ljava/util/stream/Node$OfDouble;[DILjava/util/stream/Nodes$ToArrayTask$OfDouble;)V

    invoke-virtual {v1}, Ljava/util/concurrent/ForkJoinTask;->invoke()Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/stream/Nodes;->node([D)Ljava/util/stream/Node$OfDouble;

    move-result-object v1

    return-object v1

    :cond_1
    return-object p0
.end method

.method public static flattenInt(Ljava/util/stream/Node$OfInt;)Ljava/util/stream/Node$OfInt;
    .locals 7

    const/4 v6, 0x0

    invoke-interface {p0}, Ljava/util/stream/Node$OfInt;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {p0}, Ljava/util/stream/Node$OfInt;->count()J

    move-result-wide v2

    const-wide/32 v4, 0x7ffffff7

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Stream size exceeds max array size"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    long-to-int v1, v2

    new-array v0, v1, [I

    new-instance v1, Ljava/util/stream/Nodes$ToArrayTask$OfInt;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v0, v6, v4}, Ljava/util/stream/Nodes$ToArrayTask$OfInt;-><init>(Ljava/util/stream/Node$OfInt;[IILjava/util/stream/Nodes$ToArrayTask$OfInt;)V

    invoke-virtual {v1}, Ljava/util/concurrent/ForkJoinTask;->invoke()Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/stream/Nodes;->node([I)Ljava/util/stream/Node$OfInt;

    move-result-object v1

    return-object v1

    :cond_1
    return-object p0
.end method

.method public static flattenLong(Ljava/util/stream/Node$OfLong;)Ljava/util/stream/Node$OfLong;
    .locals 7

    const/4 v6, 0x0

    invoke-interface {p0}, Ljava/util/stream/Node$OfLong;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {p0}, Ljava/util/stream/Node$OfLong;->count()J

    move-result-wide v2

    const-wide/32 v4, 0x7ffffff7

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Stream size exceeds max array size"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    long-to-int v1, v2

    new-array v0, v1, [J

    new-instance v1, Ljava/util/stream/Nodes$ToArrayTask$OfLong;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v0, v6, v4}, Ljava/util/stream/Nodes$ToArrayTask$OfLong;-><init>(Ljava/util/stream/Node$OfLong;[JILjava/util/stream/Nodes$ToArrayTask$OfLong;)V

    invoke-virtual {v1}, Ljava/util/concurrent/ForkJoinTask;->invoke()Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/stream/Nodes;->node([J)Ljava/util/stream/Node$OfLong;

    move-result-object v1

    return-object v1

    :cond_1
    return-object p0
.end method

.method static intBuilder()Ljava/util/stream/Node$Builder$OfInt;
    .locals 1

    new-instance v0, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;

    invoke-direct {v0}, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;-><init>()V

    return-object v0
.end method

.method static intBuilder(J)Ljava/util/stream/Node$Builder$OfInt;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const-wide/32 v0, 0x7ffffff7

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/util/stream/Nodes$IntFixedNodeBuilder;

    invoke-direct {v0, p0, p1}, Ljava/util/stream/Nodes$IntFixedNodeBuilder;-><init>(J)V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/stream/Nodes;->intBuilder()Ljava/util/stream/Node$Builder$OfInt;

    move-result-object v0

    goto :goto_0
.end method

.method static longBuilder()Ljava/util/stream/Node$Builder$OfLong;
    .locals 1

    new-instance v0, Ljava/util/stream/Nodes$LongSpinedNodeBuilder;

    invoke-direct {v0}, Ljava/util/stream/Nodes$LongSpinedNodeBuilder;-><init>()V

    return-object v0
.end method

.method static longBuilder(J)Ljava/util/stream/Node$Builder$OfLong;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const-wide/32 v0, 0x7ffffff7

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/util/stream/Nodes$LongFixedNodeBuilder;

    invoke-direct {v0, p0, p1}, Ljava/util/stream/Nodes$LongFixedNodeBuilder;-><init>(J)V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/stream/Nodes;->longBuilder()Ljava/util/stream/Node$Builder$OfLong;

    move-result-object v0

    goto :goto_0
.end method

.method static node([D)Ljava/util/stream/Node$OfDouble;
    .locals 1

    new-instance v0, Ljava/util/stream/Nodes$DoubleArrayNode;

    invoke-direct {v0, p0}, Ljava/util/stream/Nodes$DoubleArrayNode;-><init>([D)V

    return-object v0
.end method

.method static node([I)Ljava/util/stream/Node$OfInt;
    .locals 1

    new-instance v0, Ljava/util/stream/Nodes$IntArrayNode;

    invoke-direct {v0, p0}, Ljava/util/stream/Nodes$IntArrayNode;-><init>([I)V

    return-object v0
.end method

.method static node([J)Ljava/util/stream/Node$OfLong;
    .locals 1

    new-instance v0, Ljava/util/stream/Nodes$LongArrayNode;

    invoke-direct {v0, p0}, Ljava/util/stream/Nodes$LongArrayNode;-><init>([J)V

    return-object v0
.end method

.method static node(Ljava/util/Collection;)Ljava/util/stream/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;)",
            "Ljava/util/stream/Node",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/stream/Nodes$CollectionNode;

    invoke-direct {v0, p0}, Ljava/util/stream/Nodes$CollectionNode;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method static node([Ljava/lang/Object;)Ljava/util/stream/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/stream/Node",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/stream/Nodes$ArrayNode;

    invoke-direct {v0, p0}, Ljava/util/stream/Nodes$ArrayNode;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method
