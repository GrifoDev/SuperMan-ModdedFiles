.class public Lcom/android/internal/app/procstats/SparseMappingTable;
.super Ljava/lang/Object;
.source "SparseMappingTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/procstats/SparseMappingTable$Table;
    }
.end annotation


# static fields
.field private static final ARRAY_MASK:I = 0xff

.field private static final ARRAY_SHIFT:I = 0x8

.field public static final ARRAY_SIZE:I = 0x1000

.field private static final ID_MASK:I = 0xff

.field private static final ID_SHIFT:I = 0x0

.field private static final INDEX_MASK:I = 0xffff

.field private static final INDEX_SHIFT:I = 0x10

.field public static final INVALID_KEY:I = -0x1

.field private static final TAG:Ljava/lang/String; = "SparseMappingTable"


# instance fields
.field private final mLongs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[J>;"
        }
    .end annotation
.end field

.field private mNextIndex:I

.field private mSequence:I


# direct methods
.method static synthetic -get0(Lcom/android/internal/app/procstats/SparseMappingTable;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mLongs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/app/procstats/SparseMappingTable;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mNextIndex:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/internal/app/procstats/SparseMappingTable;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mSequence:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/internal/app/procstats/SparseMappingTable;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mNextIndex:I

    return p1
.end method

.method static synthetic -wrap0(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/internal/app/procstats/SparseMappingTable;->logOrThrow(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/internal/app/procstats/SparseMappingTable;->logOrThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mLongs:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mLongs:Ljava/util/ArrayList;

    const/16 v1, 0x1000

    new-array v1, v1, [J

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static getArrayFromKey(I)I
    .locals 1

    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static getIdFromKey(I)B
    .locals 1

    shr-int/lit8 v0, p0, 0x0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    return v0
.end method

.method public static getIndexFromKey(I)I
    .locals 2

    shr-int/lit8 v0, p0, 0x10

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method private static logOrThrow(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Stack trace"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/android/internal/app/procstats/SparseMappingTable;->logOrThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static logOrThrow(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const-string/jumbo v0, "SparseMappingTable"

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    return-void
.end method

.method private static readCompactedLongArray(Landroid/os/Parcel;[JI)V
    .locals 8

    array-length v0, p1

    if-le p2, v0, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "bad array lengths: got "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " array is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/app/procstats/SparseMappingTable;->logOrThrow(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_2

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ltz v3, :cond_1

    int-to-long v4, v3

    aput-wide v4, p1, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    not-int v4, v3

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    int-to-long v6, v1

    or-long/2addr v4, v6

    aput-wide v4, p1, v2

    goto :goto_1

    :cond_2
    :goto_2
    if-ge v2, v0, :cond_3

    const-wide/16 v4, 0x0

    aput-wide v4, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private static writeCompactedLongArray(Landroid/os/Parcel;[JI)V
    .locals 10

    const-wide/32 v8, 0x7fffffff

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    aget-wide v4, p1, v1

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    const-string/jumbo v3, "SparseMappingTable"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Time val negative: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x0

    :cond_0
    cmp-long v3, v4, v8

    if-gtz v3, :cond_1

    long-to-int v3, v4

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 v3, 0x20

    shr-long v6, v4, v3

    and-long/2addr v6, v8

    long-to-int v3, v6

    not-int v2, v3

    const-wide v6, 0xffffffffL

    and-long/2addr v6, v4

    long-to-int v0, v6

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public dumpInternalState(Z)Ljava/lang/String;
    .locals 10

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SparseMappingTable{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "mSequence="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mSequence:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, " mNextIndex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mNextIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, " mLongs.size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mLongs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v5, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mLongs:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    const/4 v3, 0x0

    :goto_1
    array-length v5, v1

    if-ge v3, v5, :cond_0

    add-int/lit8 v5, v0, -0x1

    if-ne v2, v5, :cond_1

    iget v5, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mNextIndex:I

    if-ne v3, v5, :cond_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v5, " %4d %d 0x%016x %-19d\n"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    aget-wide v8, v1, v3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v6, v8

    aget-wide v8, v1, v3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x3

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const-string/jumbo v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 8

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mSequence:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mNextIndex:I

    iget-object v4, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mLongs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    new-array v1, v3, [J

    invoke-static {p1, v1, v3}, Lcom/android/internal/app/procstats/SparseMappingTable;->readCompactedLongArray(Landroid/os/Parcel;[JI)V

    iget-object v4, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mLongs:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-lez v0, :cond_1

    iget-object v4, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mLongs:Ljava/util/ArrayList;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    array-length v4, v4

    iget v5, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mNextIndex:I

    if-eq v4, v5, :cond_1

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "73252178"

    aput-object v5, v4, v6

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-string/jumbo v5, ""

    const/4 v6, 0x2

    aput-object v5, v4, v6

    const v5, 0x534e4554

    invoke-static {v5, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Expected array of length "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mNextIndex:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " but was "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mLongs:Ljava/util/ArrayList;

    add-int/lit8 v7, v0, -0x1

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    array-length v4, v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    return-void
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mLongs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mLongs:Ljava/util/ArrayList;

    const/16 v1, 0x1000

    new-array v1, v1, [J

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mNextIndex:I

    iget v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mSequence:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mSequence:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .locals 6

    iget v4, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mSequence:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mNextIndex:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v4, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mLongs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v4, v0, -0x1

    if-ge v2, v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mLongs:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    array-length v4, v1

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    array-length v4, v1

    invoke-static {p1, v1, v4}, Lcom/android/internal/app/procstats/SparseMappingTable;->writeCompactedLongArray(Landroid/os/Parcel;[JI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mLongs:Ljava/util/ArrayList;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    iget v4, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mNextIndex:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mNextIndex:I

    invoke-static {p1, v3, v4}, Lcom/android/internal/app/procstats/SparseMappingTable;->writeCompactedLongArray(Landroid/os/Parcel;[JI)V

    return-void
.end method
