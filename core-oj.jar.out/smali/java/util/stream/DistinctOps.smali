.class final Ljava/util/stream/DistinctOps;
.super Ljava/lang/Object;
.source "DistinctOps.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static makeRef(Ljava/util/stream/AbstractPipeline;)Ljava/util/stream/ReferencePipeline;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/AbstractPipeline",
            "<*TT;*>;)",
            "Ljava/util/stream/ReferencePipeline",
            "<TT;TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/stream/DistinctOps$1;

    sget-object v1, Ljava/util/stream/StreamShape;->REFERENCE:Ljava/util/stream/StreamShape;

    sget v2, Ljava/util/stream/StreamOpFlag;->IS_DISTINCT:I

    sget v3, Ljava/util/stream/StreamOpFlag;->NOT_SIZED:I

    or-int/2addr v2, v3

    invoke-direct {v0, p0, v1, v2}, Ljava/util/stream/DistinctOps$1;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;I)V

    return-object v0
.end method
