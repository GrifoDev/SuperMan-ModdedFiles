.class public Lcom/android/internal/util/RingBufferIndices;
.super Ljava/lang/Object;
.source "RingBufferIndices.java"


# instance fields
.field private final mCapacity:I

.field private mSize:I

.field private mStart:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/util/RingBufferIndices;->mCapacity:I

    return-void
.end method


# virtual methods
.method public add()I
    .locals 3

    iget v1, p0, Lcom/android/internal/util/RingBufferIndices;->mSize:I

    iget v2, p0, Lcom/android/internal/util/RingBufferIndices;->mCapacity:I

    if-ge v1, v2, :cond_0

    iget v0, p0, Lcom/android/internal/util/RingBufferIndices;->mSize:I

    iget v1, p0, Lcom/android/internal/util/RingBufferIndices;->mSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/util/RingBufferIndices;->mSize:I

    return v0

    :cond_0
    iget v0, p0, Lcom/android/internal/util/RingBufferIndices;->mStart:I

    iget v1, p0, Lcom/android/internal/util/RingBufferIndices;->mStart:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/util/RingBufferIndices;->mStart:I

    iget v1, p0, Lcom/android/internal/util/RingBufferIndices;->mStart:I

    iget v2, p0, Lcom/android/internal/util/RingBufferIndices;->mCapacity:I

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/util/RingBufferIndices;->mStart:I

    :cond_1
    return v0
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/util/RingBufferIndices;->mStart:I

    iput v0, p0, Lcom/android/internal/util/RingBufferIndices;->mSize:I

    return-void
.end method

.method public indexOf(I)I
    .locals 2

    iget v1, p0, Lcom/android/internal/util/RingBufferIndices;->mStart:I

    add-int v0, v1, p1

    iget v1, p0, Lcom/android/internal/util/RingBufferIndices;->mCapacity:I

    if-lt v0, v1, :cond_0

    iget v1, p0, Lcom/android/internal/util/RingBufferIndices;->mCapacity:I

    sub-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/android/internal/util/RingBufferIndices;->mSize:I

    return v0
.end method
