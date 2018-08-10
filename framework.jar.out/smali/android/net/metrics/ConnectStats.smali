.class public Landroid/net/metrics/ConnectStats;
.super Ljava/lang/Object;
.source "ConnectStats.java"


# static fields
.field private static final EALREADY:I

.field private static final EINPROGRESS:I


# instance fields
.field public connectBlockingCount:I

.field public connectCount:I

.field public final errnos:Landroid/util/SparseIntArray;

.field public ipv6ConnectCount:I

.field public final latencies:Landroid/util/IntArray;

.field public final mLatencyTb:Lcom/android/internal/util/TokenBucket;

.field public final mMaxLatencyRecords:I

.field public final netId:I

.field public final transports:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Landroid/system/OsConstants;->EALREADY:I

    sput v0, Landroid/net/metrics/ConnectStats;->EALREADY:I

    sget v0, Landroid/system/OsConstants;->EINPROGRESS:I

    sput v0, Landroid/net/metrics/ConnectStats;->EINPROGRESS:I

    return-void
.end method

.method public constructor <init>(IJLcom/android/internal/util/TokenBucket;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/net/metrics/ConnectStats;->errnos:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Landroid/net/metrics/ConnectStats;->latencies:Landroid/util/IntArray;

    iput v1, p0, Landroid/net/metrics/ConnectStats;->connectCount:I

    iput v1, p0, Landroid/net/metrics/ConnectStats;->connectBlockingCount:I

    iput v1, p0, Landroid/net/metrics/ConnectStats;->ipv6ConnectCount:I

    iput p1, p0, Landroid/net/metrics/ConnectStats;->netId:I

    iput-wide p2, p0, Landroid/net/metrics/ConnectStats;->transports:J

    iput-object p4, p0, Landroid/net/metrics/ConnectStats;->mLatencyTb:Lcom/android/internal/util/TokenBucket;

    iput p5, p0, Landroid/net/metrics/ConnectStats;->mMaxLatencyRecords:I

    return-void
.end method

.method private countConnect(ILjava/lang/String;)V
    .locals 1

    iget v0, p0, Landroid/net/metrics/ConnectStats;->connectCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/metrics/ConnectStats;->connectCount:I

    invoke-static {p1}, Landroid/net/metrics/ConnectStats;->isNonBlocking(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroid/net/metrics/ConnectStats;->connectBlockingCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/metrics/ConnectStats;->connectBlockingCount:I

    :cond_0
    invoke-static {p2}, Landroid/net/metrics/ConnectStats;->isIPv6(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/net/metrics/ConnectStats;->ipv6ConnectCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/metrics/ConnectStats;->ipv6ConnectCount:I

    :cond_1
    return-void
.end method

.method private countError(I)V
    .locals 3

    iget-object v1, p0, Landroid/net/metrics/ConnectStats;->errnos:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    iget-object v1, p0, Landroid/net/metrics/ConnectStats;->errnos:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method private countLatency(II)V
    .locals 2

    invoke-static {p1}, Landroid/net/metrics/ConnectStats;->isNonBlocking(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/net/metrics/ConnectStats;->mLatencyTb:Lcom/android/internal/util/TokenBucket;

    invoke-virtual {v0}, Lcom/android/internal/util/TokenBucket;->get()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Landroid/net/metrics/ConnectStats;->latencies:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    iget v1, p0, Landroid/net/metrics/ConnectStats;->mMaxLatencyRecords:I

    if-lt v0, v1, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Landroid/net/metrics/ConnectStats;->latencies:Landroid/util/IntArray;

    invoke-virtual {v0, p2}, Landroid/util/IntArray;->add(I)V

    return-void
.end method

.method private static isIPv6(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private static isNonBlocking(I)Z
    .locals 2

    const/4 v0, 0x1

    sget v1, Landroid/net/metrics/ConnectStats;->EINPROGRESS:I

    if-eq p0, v1, :cond_0

    sget v1, Landroid/net/metrics/ConnectStats;->EALREADY:I

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSuccess(I)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {p0}, Landroid/net/metrics/ConnectStats;->isNonBlocking(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addEvent(IILjava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/net/metrics/ConnectStats;->isSuccess(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p3}, Landroid/net/metrics/ConnectStats;->countConnect(ILjava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/net/metrics/ConnectStats;->countLatency(II)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Landroid/net/metrics/ConnectStats;->countError(I)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    const/4 v11, 0x1

    const/4 v6, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "ConnectStats("

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Landroid/net/metrics/ConnectStats;->netId:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v8, p0, Landroid/net/metrics/ConnectStats;->transports:J

    invoke-static {v8, v9}, Lcom/android/internal/util/BitUtils;->unpackBits(J)[I

    move-result-object v7

    array-length v8, v7

    move v5, v6

    :goto_0
    if-ge v5, v8, :cond_0

    aget v4, v7, v5

    invoke-static {v4}, Landroid/net/NetworkCapabilities;->transportNameOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v5, "%d success, "

    new-array v7, v11, [Ljava/lang/Object;

    iget v8, p0, Landroid/net/metrics/ConnectStats;->connectCount:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "%d blocking, "

    new-array v7, v11, [Ljava/lang/Object;

    iget v8, p0, Landroid/net/metrics/ConnectStats;->connectBlockingCount:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "%d IPv6 dst"

    new-array v7, v11, [Ljava/lang/Object;

    iget v8, p0, Landroid/net/metrics/ConnectStats;->ipv6ConnectCount:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    :goto_1
    iget-object v5, p0, Landroid/net/metrics/ConnectStats;->errnos:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    iget-object v5, p0, Landroid/net/metrics/ConnectStats;->errnos:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    invoke-static {v5}, Landroid/system/OsConstants;->errnoName(I)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Landroid/net/metrics/ConnectStats;->errnos:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    const-string/jumbo v5, ", %s: %d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const-string/jumbo v5, ")"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
