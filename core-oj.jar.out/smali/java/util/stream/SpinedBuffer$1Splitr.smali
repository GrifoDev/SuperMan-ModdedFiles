.class Ljava/util/stream/SpinedBuffer$1Splitr;
.super Ljava/lang/Object;
.source "SpinedBuffer.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/SpinedBuffer;->spliterator()Ljava/util/Spliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Splitr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator",
        "<TE;>;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field final lastSpineElementFence:I

.field final lastSpineIndex:I

.field splChunk:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field splElementIndex:I

.field splSpineIndex:I

.field final synthetic this$0:Ljava/util/stream/SpinedBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ljava/util/stream/SpinedBuffer$1Splitr;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Ljava/util/stream/SpinedBuffer$1Splitr;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>(Ljava/util/stream/SpinedBuffer;IIII)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iput-object p1, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->this$0:Ljava/util/stream/SpinedBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    iput p3, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    iput p4, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    iput p5, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->lastSpineElementFence:I

    sget-boolean v2, Ljava/util/stream/SpinedBuffer$1Splitr;->-assertionsDisabled:Z

    if-nez v2, :cond_2

    iget-object v2, p1, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    if-nez v2, :cond_0

    if-nez p2, :cond_1

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p1, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    if-nez v0, :cond_3

    iget-object v0, p1, Ljava/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    :goto_1
    iput-object v0, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splChunk:[Ljava/lang/Object;

    return-void

    :cond_3
    iget-object v0, p1, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    aget-object v0, v0, p2

    goto :goto_1
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    const/16 v0, 0x4050

    return v0
.end method

.method public estimateSize()J
    .locals 4

    iget v0, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    iget v1, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->lastSpineElementFence:I

    int-to-long v0, v0

    iget v2, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->this$0:Ljava/util/stream/SpinedBuffer;

    iget-object v0, v0, Ljava/util/stream/AbstractSpinedBuffer;->priorElementCount:[J

    iget v1, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    aget-wide v0, v0, v1

    iget v2, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->lastSpineElementFence:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-object v2, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->this$0:Ljava/util/stream/SpinedBuffer;

    iget-object v2, v2, Ljava/util/stream/AbstractSpinedBuffer;->priorElementCount:[J

    iget v3, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    aget-wide v2, v2, v3

    sub-long/2addr v0, v2

    iget v2, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v4, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    iget v5, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    if-lt v4, v5, :cond_0

    iget v4, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    iget v5, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    if-ne v4, v5, :cond_5

    iget v4, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    iget v5, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->lastSpineElementFence:I

    if-ge v4, v5, :cond_5

    :cond_0
    iget v2, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    iget v3, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    :goto_0
    iget v4, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->this$0:Ljava/util/stream/SpinedBuffer;

    iget-object v4, v4, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    aget-object v0, v4, v3

    :goto_1
    array-length v4, v0

    if-ge v2, v4, :cond_1

    aget-object v4, v0, v2

    invoke-interface {p1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget v4, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    iget v5, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    if-ne v4, v5, :cond_3

    iget-object v0, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splChunk:[Ljava/lang/Object;

    :goto_2
    iget v1, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->lastSpineElementFence:I

    :goto_3
    if-ge v2, v1, :cond_4

    aget-object v4, v0, v2

    invoke-interface {p1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    iget-object v4, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->this$0:Ljava/util/stream/SpinedBuffer;

    iget-object v4, v4, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    iget v5, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    aget-object v0, v4, v5

    goto :goto_2

    :cond_4
    iget v4, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    iput v4, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    iget v4, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->lastSpineElementFence:I

    iput v4, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    :cond_5
    return-void
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)Z"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    iget v1, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    iget v1, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    iget v1, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->lastSpineElementFence:I

    if-ge v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splChunk:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    aget-object v0, v0, v1

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget v0, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    iget-object v1, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splChunk:[Ljava/lang/Object;

    array-length v1, v1

    if-ne v0, v1, :cond_1

    iput v3, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    iget v0, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    iget-object v0, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->this$0:Ljava/util/stream/SpinedBuffer;

    iget-object v0, v0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget v0, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    iget v1, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->this$0:Ljava/util/stream/SpinedBuffer;

    iget-object v0, v0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    iget v1, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    aget-object v0, v0, v1

    iput-object v0, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splChunk:[Ljava/lang/Object;

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    return v3
.end method

.method public trySplit()Ljava/util/Spliterator;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TE;>;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v8, 0x0

    iget v1, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    iget v2, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    if-ge v1, v2, :cond_0

    new-instance v0, Ljava/util/stream/SpinedBuffer$1Splitr;

    iget-object v1, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->this$0:Ljava/util/stream/SpinedBuffer;

    iget v2, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    iget v3, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    iget-object v5, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->this$0:Ljava/util/stream/SpinedBuffer;

    iget-object v5, v5, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    iget v7, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    add-int/lit8 v7, v7, -0x1

    aget-object v5, v5, v7

    array-length v5, v5

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/SpinedBuffer$1Splitr;-><init>(Ljava/util/stream/SpinedBuffer;IIII)V

    iget v1, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    iput v1, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    iput v8, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    iget-object v1, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->this$0:Ljava/util/stream/SpinedBuffer;

    iget-object v1, v1, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    iget v2, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    aget-object v1, v1, v2

    iput-object v1, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splChunk:[Ljava/lang/Object;

    return-object v0

    :cond_0
    iget v1, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    iget v2, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    if-ne v1, v2, :cond_2

    iget v1, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->lastSpineElementFence:I

    iget v2, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    sub-int/2addr v1, v2

    div-int/lit8 v6, v1, 0x2

    if-nez v6, :cond_1

    return-object v3

    :cond_1
    iget-object v1, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splChunk:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    iget v3, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    add-int/2addr v3, v6

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->spliterator([Ljava/lang/Object;II)Ljava/util/Spliterator;

    move-result-object v0

    iget v1, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    add-int/2addr v1, v6

    iput v1, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    return-object v0

    :cond_2
    return-object v3
.end method
