.class public Landroid/util/LongSparseArray;
.super Ljava/lang/Object;
.source "LongSparseArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final DELETED:Ljava/lang/Object;


# instance fields
.field private mGarbage:Z

.field private mKeys:[J

.field private mSize:I

.field private mValues:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/util/LongSparseArray;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    if-nez p1, :cond_0

    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/util/LongSparseArray;->mKeys:[J

    sget-object v0, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    :goto_0
    iput v1, p0, Landroid/util/LongSparseArray;->mSize:I

    return-void

    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedLongArray(I)[J

    move-result-object v0

    iput-object v0, p0, Landroid/util/LongSparseArray;->mKeys:[J

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedObjectArray(I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    goto :goto_0
.end method

.method private gc()V
    .locals 8

    iget v2, p0, Landroid/util/LongSparseArray;->mSize:I

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/util/LongSparseArray;->mKeys:[J

    iget-object v5, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v4, v5, v0

    sget-object v6, Landroid/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v4, v6, :cond_1

    if-eq v0, v3, :cond_0

    aget-wide v6, v1, v0

    aput-wide v6, v1, v3

    aput-object v4, v5, v3

    const/4 v6, 0x0

    aput-object v6, v5, v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    iput v3, p0, Landroid/util/LongSparseArray;->mSize:I

    return-void
.end method


# virtual methods
.method public append(JLjava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    iget v0, p0, Landroid/util/LongSparseArray;->mSize:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/util/LongSparseArray;->mKeys:[J

    iget v1, p0, Landroid/util/LongSparseArray;->mSize:I

    add-int/lit8 v1, v1, -0x1

    aget-wide v0, v0, v1

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/util/LongSparseArray;->mSize:I

    iget-object v1, p0, Landroid/util/LongSparseArray;->mKeys:[J

    array-length v1, v1

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Landroid/util/LongSparseArray;->gc()V

    :cond_1
    iget-object v0, p0, Landroid/util/LongSparseArray;->mKeys:[J

    iget v1, p0, Landroid/util/LongSparseArray;->mSize:I

    invoke-static {v0, v1, p1, p2}, Lcom/android/internal/util/GrowingArrayUtils;->append([JIJ)[J

    move-result-object v0

    iput-object v0, p0, Landroid/util/LongSparseArray;->mKeys:[J

    iget-object v0, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    iget v1, p0, Landroid/util/LongSparseArray;->mSize:I

    invoke-static {v0, v1, p3}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    iget v0, p0, Landroid/util/LongSparseArray;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/util/LongSparseArray;->mSize:I

    return-void
.end method

.method public clear()V
    .locals 5

    const/4 v4, 0x0

    iget v1, p0, Landroid/util/LongSparseArray;->mSize:I

    iget-object v2, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    const/4 v3, 0x0

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput v4, p0, Landroid/util/LongSparseArray;->mSize:I

    iput-boolean v4, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    return-void
.end method

.method public clone()Landroid/util/LongSparseArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/LongSparseArray",
            "<TE;>;"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/util/LongSparseArray;

    move-object v1, v0

    iget-object v3, p0, Landroid/util/LongSparseArray;->mKeys:[J

    invoke-virtual {v3}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    iput-object v3, v1, Landroid/util/LongSparseArray;->mKeys:[J

    iget-object v3, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    iput-object v3, v1, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/util/LongSparseArray;->clone()Landroid/util/LongSparseArray;

    move-result-object v0

    return-object v0
.end method

.method public delete(J)V
    .locals 3

    iget-object v1, p0, Landroid/util/LongSparseArray;->mKeys:[J

    iget v2, p0, Landroid/util/LongSparseArray;->mSize:I

    invoke-static {v1, v2, p1, p2}, Landroid/util/ContainerHelpers;->binarySearch([JIJ)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    sget-object v2, Landroid/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    aput-object v2, v1, v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    :cond_0
    return-void
.end method

.method public get(J)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TE;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)TE;"
        }
    .end annotation

    iget-object v1, p0, Landroid/util/LongSparseArray;->mKeys:[J

    iget v2, p0, Landroid/util/LongSparseArray;->mSize:I

    invoke-static {v1, v2, p1, p2}, Landroid/util/ContainerHelpers;->binarySearch([JIJ)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    :cond_0
    return-object p3

    :cond_1
    iget-object v1, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public indexOfKey(J)I
    .locals 3

    iget-boolean v0, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/util/LongSparseArray;->gc()V

    :cond_0
    iget-object v0, p0, Landroid/util/LongSparseArray;->mKeys:[J

    iget v1, p0, Landroid/util/LongSparseArray;->mSize:I

    invoke-static {v0, v1, p1, p2}, Landroid/util/ContainerHelpers;->binarySearch([JIJ)I

    move-result v0

    return v0
.end method

.method public indexOfValue(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    iget-boolean v1, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/util/LongSparseArray;->gc()V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/util/LongSparseArray;->mSize:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    return v1
.end method

.method public keyAt(I)J
    .locals 2

    iget-boolean v0, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/util/LongSparseArray;->gc()V

    :cond_0
    iget-object v0, p0, Landroid/util/LongSparseArray;->mKeys:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public put(JLjava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    iget-object v1, p0, Landroid/util/LongSparseArray;->mKeys:[J

    iget v2, p0, Landroid/util/LongSparseArray;->mSize:I

    invoke-static {v1, v2, p1, p2}, Landroid/util/ContainerHelpers;->binarySearch([JIJ)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p3, v1, v0

    :goto_0
    return-void

    :cond_0
    not-int v0, v0

    iget v1, p0, Landroid/util/LongSparseArray;->mSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Landroid/util/LongSparseArray;->mKeys:[J

    aput-wide p1, v1, v0

    iget-object v1, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p3, v1, v0

    return-void

    :cond_1
    iget-boolean v1, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/util/LongSparseArray;->mSize:I

    iget-object v2, p0, Landroid/util/LongSparseArray;->mKeys:[J

    array-length v2, v2

    if-lt v1, v2, :cond_2

    invoke-direct {p0}, Landroid/util/LongSparseArray;->gc()V

    iget-object v1, p0, Landroid/util/LongSparseArray;->mKeys:[J

    iget v2, p0, Landroid/util/LongSparseArray;->mSize:I

    invoke-static {v1, v2, p1, p2}, Landroid/util/ContainerHelpers;->binarySearch([JIJ)I

    move-result v1

    not-int v0, v1

    :cond_2
    iget-object v1, p0, Landroid/util/LongSparseArray;->mKeys:[J

    iget v2, p0, Landroid/util/LongSparseArray;->mSize:I

    invoke-static {v1, v2, v0, p1, p2}, Lcom/android/internal/util/GrowingArrayUtils;->insert([JIIJ)[J

    move-result-object v1

    iput-object v1, p0, Landroid/util/LongSparseArray;->mKeys:[J

    iget-object v1, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    iget v2, p0, Landroid/util/LongSparseArray;->mSize:I

    invoke-static {v1, v2, v0, p3}, Lcom/android/internal/util/GrowingArrayUtils;->insert([Ljava/lang/Object;IILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    iget v1, p0, Landroid/util/LongSparseArray;->mSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/util/LongSparseArray;->mSize:I

    goto :goto_0
.end method

.method public remove(J)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroid/util/LongSparseArray;->delete(J)V

    return-void
.end method

.method public removeAt(I)V
    .locals 2

    iget-object v0, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    sget-object v1, Landroid/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    sget-object v1, Landroid/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    aput-object v1, v0, p1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    :cond_0
    return-void
.end method

.method public setValueAt(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    iget-boolean v0, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/util/LongSparseArray;->gc()V

    :cond_0
    iget-object v0, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v0, p1

    return-void
.end method

.method public size()I
    .locals 1

    iget-boolean v0, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/util/LongSparseArray;->gc()V

    :cond_0
    iget v0, p0, Landroid/util/LongSparseArray;->mSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Landroid/util/LongSparseArray;->size()I

    move-result v5

    if-gtz v5, :cond_0

    const-string/jumbo v5, "{}"

    return-object v5

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v5, p0, Landroid/util/LongSparseArray;->mSize:I

    mul-int/lit8 v5, v5, 0x1c

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v5, 0x7b

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    iget v5, p0, Landroid/util/LongSparseArray;->mSize:I

    if-ge v1, v5, :cond_3

    if-lez v1, :cond_1

    const-string/jumbo v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v5, 0x3d

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, p0, :cond_2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v5, "(this Map)"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const/16 v5, 0x7d

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public valueAt(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-boolean v0, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/util/LongSparseArray;->gc()V

    :cond_0
    iget-object v0, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method
