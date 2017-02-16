.class final Ljava/util/stream/Streams;
.super Ljava/lang/Object;
.source "Streams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/Streams$AbstractStreamBuilderImpl;,
        Ljava/util/stream/Streams$ConcatSpliterator;,
        Ljava/util/stream/Streams$DoubleStreamBuilderImpl;,
        Ljava/util/stream/Streams$IntStreamBuilderImpl;,
        Ljava/util/stream/Streams$LongStreamBuilderImpl;,
        Ljava/util/stream/Streams$RangeIntSpliterator;,
        Ljava/util/stream/Streams$RangeLongSpliterator;,
        Ljava/util/stream/Streams$StreamBuilderImpl;
    }
.end annotation


# static fields
.field static final NONE:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljava/util/stream/Streams;->NONE:Ljava/lang/Object;

    .line 44
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/lang/Error;

    const-string/jumbo v1, "no instances"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static composeWithExceptions(Ljava/lang/Runnable;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "a"    # Ljava/lang/Runnable;
    .param p1, "b"    # Ljava/lang/Runnable;

    .prologue
    .line 846
    new-instance v0, Ljava/util/stream/Streams$1;

    invoke-direct {v0, p0, p1}, Ljava/util/stream/Streams$1;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method static composedClose(Ljava/util/stream/BaseStream;Ljava/util/stream/BaseStream;)Ljava/lang/Runnable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/BaseStream",
            "<**>;",
            "Ljava/util/stream/BaseStream",
            "<**>;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .prologue
    .line 875
    .local p0, "a":Ljava/util/stream/BaseStream;, "Ljava/util/stream/BaseStream<**>;"
    .local p1, "b":Ljava/util/stream/BaseStream;, "Ljava/util/stream/BaseStream<**>;"
    new-instance v0, Ljava/util/stream/Streams$2;

    invoke-direct {v0, p0, p1}, Ljava/util/stream/Streams$2;-><init>(Ljava/util/stream/BaseStream;Ljava/util/stream/BaseStream;)V

    return-object v0
.end method
