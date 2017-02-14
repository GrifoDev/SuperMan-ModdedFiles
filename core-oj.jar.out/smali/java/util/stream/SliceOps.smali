.class final Ljava/util/stream/SliceOps;
.super Ljava/lang/Object;
.source "SliceOps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/SliceOps$-java_util_function_IntFunction_castingArray__LambdaImpl0;,
        Ljava/util/stream/SliceOps$SliceTask;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final synthetic -java-util-stream-StreamShapeSwitchesValues:[I


# direct methods
.method private static synthetic -getjava-util-stream-StreamShapeSwitchesValues()[I
    .locals 3

    sget-object v0, Ljava/util/stream/SliceOps;->-java-util-stream-StreamShapeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Ljava/util/stream/SliceOps;->-java-util-stream-StreamShapeSwitchesValues:[I

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
    sput-object v0, Ljava/util/stream/SliceOps;->-java-util-stream-StreamShapeSwitchesValues:[I

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

.method static synthetic -java_util_stream_SliceOps_lambda$1(I)[Ljava/lang/Object;
    .locals 1

    new-array v0, p0, [Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -wrap0(Ljava/util/stream/StreamShape;Ljava/util/Spliterator;JJ)Ljava/util/Spliterator;
    .locals 2

    invoke-static/range {p0 .. p5}, Ljava/util/stream/SliceOps;->sliceSpliterator(Ljava/util/stream/StreamShape;Ljava/util/Spliterator;JJ)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1()Ljava/util/function/IntFunction;
    .locals 1

    invoke-static {}, Ljava/util/stream/SliceOps;->castingArray()Ljava/util/function/IntFunction;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(JJJ)J
    .locals 2

    invoke-static/range {p0 .. p5}, Ljava/util/stream/SliceOps;->calcSize(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap3(JJ)J
    .locals 2

    invoke-static {p0, p1, p2, p3}, Ljava/util/stream/SliceOps;->calcSliceFence(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ljava/util/stream/SliceOps;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Ljava/util/stream/SliceOps;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calcSize(JJJ)J
    .locals 4

    const-wide/16 v0, -0x1

    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-ltz v2, :cond_0

    sub-long v2, p0, p2

    invoke-static {v2, v3, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method private static calcSliceFence(JJ)J
    .locals 8

    const-wide v2, 0x7fffffffffffffffL

    const-wide/16 v6, 0x0

    cmp-long v4, p2, v6

    if-ltz v4, :cond_0

    add-long v0, p0, p2

    :goto_0
    cmp-long v4, v0, v6

    if-ltz v4, :cond_1

    :goto_1
    return-wide v0

    :cond_0
    move-wide v0, v2

    goto :goto_0

    :cond_1
    move-wide v0, v2

    goto :goto_1
.end method

.method private static castingArray()Ljava/util/function/IntFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/function/IntFunction",
            "<[TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/stream/SliceOps$-java_util_function_IntFunction_castingArray__LambdaImpl0;

    invoke-direct {v0}, Ljava/util/stream/SliceOps$-java_util_function_IntFunction_castingArray__LambdaImpl0;-><init>()V

    return-object v0
.end method

.method private static flags(J)I
    .locals 4

    sget v1, Ljava/util/stream/StreamOpFlag;->NOT_SIZED:I

    const-wide/16 v2, -0x1

    cmp-long v0, p0, v2

    if-eqz v0, :cond_0

    sget v0, Ljava/util/stream/StreamOpFlag;->IS_SHORT_CIRCUIT:I

    :goto_0
    or-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static makeDouble(Ljava/util/stream/AbstractPipeline;JJ)Ljava/util/stream/DoubleStream;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/AbstractPipeline",
            "<*",
            "Ljava/lang/Double;",
            "*>;JJ)",
            "Ljava/util/stream/DoubleStream;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Skip must be non-negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/util/stream/SliceOps$4;

    sget-object v2, Ljava/util/stream/StreamShape;->DOUBLE_VALUE:Ljava/util/stream/StreamShape;

    invoke-static {p3, p4}, Ljava/util/stream/SliceOps;->flags(J)I

    move-result v3

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Ljava/util/stream/SliceOps$4;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;IJJ)V

    return-object v0
.end method

.method public static makeInt(Ljava/util/stream/AbstractPipeline;JJ)Ljava/util/stream/IntStream;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/AbstractPipeline",
            "<*",
            "Ljava/lang/Integer;",
            "*>;JJ)",
            "Ljava/util/stream/IntStream;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Skip must be non-negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/util/stream/SliceOps$2;

    sget-object v2, Ljava/util/stream/StreamShape;->INT_VALUE:Ljava/util/stream/StreamShape;

    invoke-static {p3, p4}, Ljava/util/stream/SliceOps;->flags(J)I

    move-result v3

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Ljava/util/stream/SliceOps$2;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;IJJ)V

    return-object v0
.end method

.method public static makeLong(Ljava/util/stream/AbstractPipeline;JJ)Ljava/util/stream/LongStream;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/AbstractPipeline",
            "<*",
            "Ljava/lang/Long;",
            "*>;JJ)",
            "Ljava/util/stream/LongStream;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Skip must be non-negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/util/stream/SliceOps$3;

    sget-object v2, Ljava/util/stream/StreamShape;->LONG_VALUE:Ljava/util/stream/StreamShape;

    invoke-static {p3, p4}, Ljava/util/stream/SliceOps;->flags(J)I

    move-result v3

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Ljava/util/stream/SliceOps$3;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;IJJ)V

    return-object v0
.end method

.method public static makeRef(Ljava/util/stream/AbstractPipeline;JJ)Ljava/util/stream/Stream;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/AbstractPipeline",
            "<*TT;*>;JJ)",
            "Ljava/util/stream/Stream",
            "<TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Skip must be non-negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/util/stream/SliceOps$1;

    sget-object v2, Ljava/util/stream/StreamShape;->REFERENCE:Ljava/util/stream/StreamShape;

    invoke-static {p3, p4}, Ljava/util/stream/SliceOps;->flags(J)I

    move-result v3

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Ljava/util/stream/SliceOps$1;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;IJJ)V

    return-object v0
.end method

.method private static sliceSpliterator(Ljava/util/stream/StreamShape;Ljava/util/Spliterator;JJ)Ljava/util/Spliterator;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/StreamShape;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;JJ)",
            "Ljava/util/Spliterator",
            "<TP_IN;>;"
        }
    .end annotation

    sget-boolean v0, Ljava/util/stream/SliceOps;->-assertionsDisabled:Z

    if-nez v0, :cond_0

    const/16 v0, 0x4000

    invoke-interface {p1, v0}, Ljava/util/Spliterator;->hasCharacteristics(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    invoke-static {p2, p3, p4, p5}, Ljava/util/stream/SliceOps;->calcSliceFence(JJ)J

    move-result-wide v4

    invoke-static {}, Ljava/util/stream/SliceOps;->-getjava-util-stream-StreamShapeSwitchesValues()[I

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
    new-instance v0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;-><init>(Ljava/util/Spliterator;JJ)V

    return-object v0

    :pswitch_1
    new-instance v0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfInt;

    move-object v1, p1

    check-cast v1, Ljava/util/Spliterator$OfInt;

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfInt;-><init>(Ljava/util/Spliterator$OfInt;JJ)V

    return-object v0

    :pswitch_2
    new-instance v0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfLong;

    move-object v1, p1

    check-cast v1, Ljava/util/Spliterator$OfLong;

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfLong;-><init>(Ljava/util/Spliterator$OfLong;JJ)V

    return-object v0

    :pswitch_3
    new-instance v0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfDouble;

    move-object v1, p1

    check-cast v1, Ljava/util/Spliterator$OfDouble;

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfDouble;-><init>(Ljava/util/Spliterator$OfDouble;JJ)V

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
