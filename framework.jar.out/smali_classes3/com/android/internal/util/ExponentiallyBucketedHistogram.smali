.class public Lcom/android/internal/util/ExponentiallyBucketedHistogram;
.super Ljava/lang/Object;
.source "ExponentiallyBucketedHistogram.java"


# instance fields
.field private final mData:[I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "numBuckets"

    const/4 v1, 0x1

    const/16 v2, 0x1f

    invoke-static {p1, v1, v2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    move-result p1

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/android/internal/util/ExponentiallyBucketedHistogram;->mData:[I

    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 3

    const/4 v2, 0x0

    if-gtz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/util/ExponentiallyBucketedHistogram;->mData:[I

    aget v1, v0, v2

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v2

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/util/ExponentiallyBucketedHistogram;->mData:[I

    iget-object v1, p0, Lcom/android/internal/util/ExponentiallyBucketedHistogram;->mData:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x20

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    goto :goto_0
.end method

.method public log(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/internal/util/ExponentiallyBucketedHistogram;->mData:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    if-eqz v1, :cond_0

    const-string/jumbo v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v2, p0, Lcom/android/internal/util/ExponentiallyBucketedHistogram;->mData:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    const-string/jumbo v2, "<"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shl-int v2, v3, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_1
    const-string/jumbo v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/util/ExponentiallyBucketedHistogram;->mData:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v2, ">="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v1, -0x1

    shl-int v2, v3, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/util/ExponentiallyBucketedHistogram;->mData:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method
