.class abstract Ljava/util/stream/AbstractSpinedBuffer;
.super Ljava/lang/Object;
.source "AbstractSpinedBuffer.java"


# static fields
.field public static final MAX_CHUNK_POWER:I = 0x1e

.field public static final MIN_CHUNK_POWER:I = 0x4

.field public static final MIN_CHUNK_SIZE:I = 0x10

.field public static final MIN_SPINE_SIZE:I = 0x8


# instance fields
.field protected elementIndex:I

.field protected final initialChunkPower:I

.field protected priorElementCount:[J

.field protected spineIndex:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Ljava/util/stream/AbstractSpinedBuffer;->initialChunkPower:I

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal Capacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x20

    const/4 v1, 0x4

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Ljava/util/stream/AbstractSpinedBuffer;->initialChunkPower:I

    return-void
.end method


# virtual methods
.method protected chunkSize(I)I
    .locals 4

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    if-ne p1, v3, :cond_1

    :cond_0
    iget v0, p0, Ljava/util/stream/AbstractSpinedBuffer;->initialChunkPower:I

    :goto_0
    shl-int v1, v3, v0

    return v1

    :cond_1
    iget v1, p0, Ljava/util/stream/AbstractSpinedBuffer;->initialChunkPower:I

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x1e

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method public abstract clear()V
.end method

.method public count()J
    .locals 4

    iget v0, p0, Ljava/util/stream/AbstractSpinedBuffer;->spineIndex:I

    if-nez v0, :cond_0

    iget v0, p0, Ljava/util/stream/AbstractSpinedBuffer;->elementIndex:I

    int-to-long v0, v0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Ljava/util/stream/AbstractSpinedBuffer;->priorElementCount:[J

    iget v1, p0, Ljava/util/stream/AbstractSpinedBuffer;->spineIndex:I

    aget-wide v0, v0, v1

    iget v2, p0, Ljava/util/stream/AbstractSpinedBuffer;->elementIndex:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Ljava/util/stream/AbstractSpinedBuffer;->spineIndex:I

    if-nez v1, :cond_0

    iget v1, p0, Ljava/util/stream/AbstractSpinedBuffer;->elementIndex:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
