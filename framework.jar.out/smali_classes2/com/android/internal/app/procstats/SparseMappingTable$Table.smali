.class public Lcom/android/internal/app/procstats/SparseMappingTable$Table;
.super Ljava/lang/Object;
.source "SparseMappingTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/procstats/SparseMappingTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Table"
.end annotation


# instance fields
.field private mParent:Lcom/android/internal/app/procstats/SparseMappingTable;

.field private mSequence:I

.field private mSize:I

.field private mTable:[I


# direct methods
.method public constructor <init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSequence:I

    iput-object p1, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mParent:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-static {p1}, Lcom/android/internal/app/procstats/SparseMappingTable;->-get2(Lcom/android/internal/app/procstats/SparseMappingTable;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSequence:I

    return-void
.end method

.method private assertConsistency()V
    .locals 0

    return-void
.end method

.method private binarySearch(B)I
    .locals 5

    const/4 v1, 0x0

    iget v4, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSize:I

    add-int/lit8 v0, v4, -0x1

    :goto_0
    if-gt v1, v0, :cond_2

    add-int v4, v1, v0

    ushr-int/lit8 v2, v4, 0x1

    iget-object v4, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mTable:[I

    aget v4, v4, v2

    shr-int/lit8 v4, v4, 0x0

    and-int/lit16 v4, v4, 0xff

    int-to-byte v3, v4

    if-ge v3, p1, :cond_0

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_0
    if-le v3, p1, :cond_1

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    not-int v4, v1

    return v4
.end method

.method private validateKeys(Z)Z
    .locals 10

    iget-object v7, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mParent:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-static {v7}, Lcom/android/internal/app/procstats/SparseMappingTable;->-get0(Lcom/android/internal/app/procstats/SparseMappingTable;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSize:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v7, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mTable:[I

    aget v4, v7, v2

    invoke-static {v4}, Lcom/android/internal/app/procstats/SparseMappingTable;->getArrayFromKey(I)I

    move-result v1

    invoke-static {v4}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    move-result v3

    if-ge v1, v6, :cond_0

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [J

    array-length v7, v7

    if-lt v3, v7, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    const-string/jumbo v7, "SparseMappingTable"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Invalid stats at index "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " -- "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->dumpInternalState()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v7, 0x0

    return v7

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v7, 0x1

    return v7
.end method


# virtual methods
.method public copyFrom(Lcom/android/internal/app/procstats/SparseMappingTable$Table;I)V
    .locals 9

    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mTable:[I

    const/4 v7, 0x0

    iput v7, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSize:I

    invoke-virtual {p1}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getKeyCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getKeyAt(I)I

    move-result v5

    iget-object v7, p1, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mParent:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-static {v7}, Lcom/android/internal/app/procstats/SparseMappingTable;->-get0(Lcom/android/internal/app/procstats/SparseMappingTable;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-static {v5}, Lcom/android/internal/app/procstats/SparseMappingTable;->getArrayFromKey(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [J

    invoke-static {v5}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v2

    invoke-virtual {p0, v2, p2}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getOrAddKey(BI)I

    move-result v3

    iget-object v7, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mParent:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-static {v7}, Lcom/android/internal/app/procstats/SparseMappingTable;->-get0(Lcom/android/internal/app/procstats/SparseMappingTable;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-static {v3}, Lcom/android/internal/app/procstats/SparseMappingTable;->getArrayFromKey(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    invoke-static {v5}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    move-result v7

    invoke-static {v3}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    move-result v8

    invoke-static {v6, v7, v4, v8, p2}, Ljava/lang/System;->arraycopy([JI[JII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dumpInternalState()Ljava/lang/String;
    .locals 6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SparseMappingTable.Table{mSequence="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSequence:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, " mParent.mSequence="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mParent:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-static {v4}, Lcom/android/internal/app/procstats/SparseMappingTable;->-get2(Lcom/android/internal/app/procstats/SparseMappingTable;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, " mParent.mLongs.size()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mParent:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-static {v4}, Lcom/android/internal/app/procstats/SparseMappingTable;->-get0(Lcom/android/internal/app/procstats/SparseMappingTable;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, " mSize="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, " mTable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mTable:[I

    if-nez v4, :cond_0

    const-string/jumbo v4, "null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string/jumbo v4, " clazz="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x7d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_0
    iget-object v4, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mTable:[I

    array-length v0, v4

    const/16 v4, 0x5b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    iget-object v4, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mTable:[I

    aget v2, v4, v1

    const-string/jumbo v4, "0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v4, v2, 0x0

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "/0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v4, v2, 0x8

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "/0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v4, v2, 0x10

    const v5, 0xffff

    and-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v0, -0x1

    if-eq v1, v4, :cond_1

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public getArrayForKey(I)[J
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->assertConsistency()V

    iget-object v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mParent:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-static {v0}, Lcom/android/internal/app/procstats/SparseMappingTable;->-get0(Lcom/android/internal/app/procstats/SparseMappingTable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/app/procstats/SparseMappingTable;->getArrayFromKey(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    return-object v0
.end method

.method public getKey(B)I
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->assertConsistency()V

    invoke-direct {p0, p1}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->binarySearch(B)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mTable:[I

    aget v1, v1, v0

    return v1

    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public getKeyAt(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mTable:[I

    aget v0, v0, p1

    return v0
.end method

.method public getKeyCount()I
    .locals 1

    iget v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSize:I

    return v0
.end method

.method public getOrAddKey(BI)I
    .locals 8

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->assertConsistency()V

    invoke-direct {p0, p1}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->binarySearch(B)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v5, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mTable:[I

    aget v5, v5, v1

    return v5

    :cond_0
    iget-object v5, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mParent:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-static {v5}, Lcom/android/internal/app/procstats/SparseMappingTable;->-get0(Lcom/android/internal/app/procstats/SparseMappingTable;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    iget-object v5, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mParent:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-static {v5}, Lcom/android/internal/app/procstats/SparseMappingTable;->-get1(Lcom/android/internal/app/procstats/SparseMappingTable;)I

    move-result v5

    add-int/2addr v5, p2

    array-length v6, v0

    if-le v5, v6, :cond_1

    const/16 v5, 0x1000

    new-array v0, v5, [J

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mParent:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-static {v5, v7}, Lcom/android/internal/app/procstats/SparseMappingTable;->-set0(Lcom/android/internal/app/procstats/SparseMappingTable;I)I

    :cond_1
    shl-int/lit8 v5, v4, 0x8

    iget-object v6, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mParent:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-static {v6}, Lcom/android/internal/app/procstats/SparseMappingTable;->-get1(Lcom/android/internal/app/procstats/SparseMappingTable;)I

    move-result v6

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    shl-int/lit8 v6, p1, 0x0

    or-int v2, v5, v6

    iget-object v5, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mParent:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-static {v5}, Lcom/android/internal/app/procstats/SparseMappingTable;->-get1(Lcom/android/internal/app/procstats/SparseMappingTable;)I

    move-result v6

    add-int/2addr v6, p2

    invoke-static {v5, v6}, Lcom/android/internal/app/procstats/SparseMappingTable;->-set0(Lcom/android/internal/app/procstats/SparseMappingTable;I)I

    iget-object v5, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mTable:[I

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mTable:[I

    :goto_0
    iget v6, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSize:I

    not-int v7, v1

    invoke-static {v5, v6, v7, v2}, Lcom/android/internal/util/GrowingArrayUtils;->insert([IIII)[I

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mTable:[I

    iget v5, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSize:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSize:I

    return v2

    :cond_2
    sget-object v5, Llibcore/util/EmptyArray;->INT:[I

    goto :goto_0
.end method

.method public getValue(I)J
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getValue(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public getValue(II)J
    .locals 4

    invoke-direct {p0}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->assertConsistency()V

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mParent:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->-get0(Lcom/android/internal/app/procstats/SparseMappingTable;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {p1}, Lcom/android/internal/app/procstats/SparseMappingTable;->getArrayFromKey(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    invoke-static {p1}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    move-result v2

    add-int/2addr v2, p2

    aget-wide v2, v0, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v2

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "key=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " -- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->dumpInternalState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/internal/app/procstats/SparseMappingTable;->-wrap1(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method public getValueForId(B)J
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getValueForId(BI)J
    .locals 8

    const-wide/16 v6, 0x0

    invoke-direct {p0}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->assertConsistency()V

    invoke-direct {p0, p1}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->binarySearch(B)I

    move-result v2

    if-ltz v2, :cond_0

    iget-object v4, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mTable:[I

    aget v3, v4, v2

    :try_start_0
    iget-object v4, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mParent:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-static {v4}, Lcom/android/internal/app/procstats/SparseMappingTable;->-get0(Lcom/android/internal/app/procstats/SparseMappingTable;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v3}, Lcom/android/internal/app/procstats/SparseMappingTable;->getArrayFromKey(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    invoke-static {v3}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    move-result v4

    add-int/2addr v4, p2

    aget-wide v4, v0, v4
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v4

    :catch_0
    move-exception v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "id=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " idx="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " key=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " -- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->dumpInternalState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/android/internal/app/procstats/SparseMappingTable;->-wrap1(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-wide v6

    :cond_0
    return-wide v6
.end method

.method public readFromParcel(Landroid/os/Parcel;)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSequence:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSize:I

    iget v1, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSize:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSize:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mTable:[I

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mTable:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object v5, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mTable:[I

    :cond_1
    invoke-direct {p0, v4}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->validateKeys(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    return v4

    :cond_2
    iput v3, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSize:I

    iput-object v5, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mTable:[I

    return v3
.end method

.method public resetTable()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mTable:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSize:I

    iget-object v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mParent:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-static {v0}, Lcom/android/internal/app/procstats/SparseMappingTable;->-get2(Lcom/android/internal/app/procstats/SparseMappingTable;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSequence:I

    return-void
.end method

.method public setValue(IIJ)V
    .locals 5

    invoke-direct {p0}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->assertConsistency()V

    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-gez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "can\'t store negative values key=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " -- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->dumpInternalState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->-wrap0(Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mParent:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->-get0(Lcom/android/internal/app/procstats/SparseMappingTable;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {p1}, Lcom/android/internal/app/procstats/SparseMappingTable;->getArrayFromKey(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    invoke-static {p1}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    move-result v2

    add-int/2addr v2, p2

    aput-wide p3, v0, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "key=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " -- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->dumpInternalState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/internal/app/procstats/SparseMappingTable;->-wrap1(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public setValue(IJ)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->setValue(IIJ)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .locals 2

    iget v1, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSequence:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSize:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSize:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mTable:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
