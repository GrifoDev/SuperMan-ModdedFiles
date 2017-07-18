.class Ljava/lang/ThreadLocal$ThreadLocalMap;
.super Ljava/lang/Object;
.source "ThreadLocal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/ThreadLocal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ThreadLocalMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    }
.end annotation


# static fields
.field private static final INITIAL_CAPACITY:I = 0x10


# instance fields
.field private size:I

.field private table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

.field private threshold:I


# direct methods
.method static synthetic -wrap0(Ljava/lang/ThreadLocal$ThreadLocalMap;Ljava/lang/ThreadLocal;)Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    .locals 1

    invoke-direct {p0, p1}, Ljava/lang/ThreadLocal$ThreadLocalMap;->getEntry(Ljava/lang/ThreadLocal;)Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Ljava/lang/ThreadLocal$ThreadLocalMap;Ljava/lang/ThreadLocal;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/ThreadLocal$ThreadLocalMap;->remove(Ljava/lang/ThreadLocal;)V

    return-void
.end method

.method static synthetic -wrap2(Ljava/lang/ThreadLocal$ThreadLocalMap;Ljava/lang/ThreadLocal;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/ThreadLocal$ThreadLocalMap;->set(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/ThreadLocal$ThreadLocalMap;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v8, 0x0

    iput v8, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->size:I

    iget-object v6, p1, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    array-length v5, v6

    invoke-direct {p0, v5}, Ljava/lang/ThreadLocal$ThreadLocalMap;->setThreshold(I)V

    new-array v8, v5, [Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    iput-object v8, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v1, v6, v3

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ThreadLocal;

    if-eqz v4, :cond_1

    iget-object v8, v1, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {v4, v8}, Ljava/lang/ThreadLocal;->childValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    new-instance v0, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    invoke-direct {v0, v4, v7}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;-><init>(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V

    invoke-static {v4}, Ljava/lang/ThreadLocal;->-get0(Ljava/lang/ThreadLocal;)I

    move-result v8

    add-int/lit8 v9, v5, -0x1

    and-int v2, v8, v9

    :goto_1
    iget-object v8, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    aget-object v8, v8, v2

    if-eqz v8, :cond_0

    invoke-static {v2, v5}, Ljava/lang/ThreadLocal$ThreadLocalMap;->nextIndex(II)I

    move-result v2

    goto :goto_1

    :cond_0
    iget-object v8, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    aput-object v0, v8, v2

    iget v8, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->size:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->size:I

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/ThreadLocal$ThreadLocalMap;Ljava/lang/ThreadLocal$ThreadLocalMap;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/ThreadLocal$ThreadLocalMap;-><init>(Ljava/lang/ThreadLocal$ThreadLocalMap;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V
    .locals 4

    const/16 v3, 0x10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->size:I

    new-array v1, v3, [Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    iput-object v1, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    invoke-static {p1}, Ljava/lang/ThreadLocal;->-get0(Ljava/lang/ThreadLocal;)I

    move-result v1

    and-int/lit8 v0, v1, 0xf

    iget-object v1, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    new-instance v2, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    invoke-direct {v2, p1, p2}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;-><init>(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V

    aput-object v2, v1, v0

    const/4 v1, 0x1

    iput v1, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->size:I

    invoke-direct {p0, v3}, Ljava/lang/ThreadLocal$ThreadLocalMap;->setThreshold(I)V

    return-void
.end method

.method private cleanSomeSlots(II)Z
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    array-length v1, v3

    :cond_0
    invoke-static {p1, v1}, Ljava/lang/ThreadLocal$ThreadLocalMap;->nextIndex(II)I

    move-result p1

    aget-object v0, v3, p1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    move p2, v1

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Ljava/lang/ThreadLocal$ThreadLocalMap;->expungeStaleEntry(I)I

    move-result p1

    :cond_1
    ushr-int/lit8 p2, p2, 0x1

    if-nez p2, :cond_0

    return v2
.end method

.method private expungeStaleEntries()V
    .locals 5

    iget-object v3, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    array-length v2, v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, v3, v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-direct {p0, v1}, Ljava/lang/ThreadLocal$ThreadLocalMap;->expungeStaleEntry(I)I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private expungeStaleEntry(I)I
    .locals 9

    const/4 v8, 0x0

    iget-object v5, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    array-length v4, v5

    aget-object v6, v5, p1

    iput-object v8, v6, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->value:Ljava/lang/Object;

    aput-object v8, v5, p1

    iget v6, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->size:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->size:I

    invoke-static {p1, v4}, Ljava/lang/ThreadLocal$ThreadLocalMap;->nextIndex(II)I

    move-result v2

    :goto_0
    aget-object v0, v5, v2

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ThreadLocal;

    if-nez v3, :cond_1

    iput-object v8, v0, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->value:Ljava/lang/Object;

    aput-object v8, v5, v2

    iget v6, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->size:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->size:I

    :cond_0
    :goto_1
    invoke-static {v2, v4}, Ljava/lang/ThreadLocal$ThreadLocalMap;->nextIndex(II)I

    move-result v2

    goto :goto_0

    :cond_1
    invoke-static {v3}, Ljava/lang/ThreadLocal;->-get0(Ljava/lang/ThreadLocal;)I

    move-result v6

    add-int/lit8 v7, v4, -0x1

    and-int v1, v6, v7

    if-eq v1, v2, :cond_0

    aput-object v8, v5, v2

    :goto_2
    aget-object v6, v5, v1

    if-eqz v6, :cond_2

    invoke-static {v1, v4}, Ljava/lang/ThreadLocal$ThreadLocalMap;->nextIndex(II)I

    move-result v1

    goto :goto_2

    :cond_2
    aput-object v0, v5, v1

    goto :goto_1

    :cond_3
    return v2
.end method

.method private getEntry(Ljava/lang/ThreadLocal;)Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    .locals 4

    invoke-static {p1}, Ljava/lang/ThreadLocal;->-get0(Ljava/lang/ThreadLocal;)I

    move-result v2

    iget-object v3, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    and-int v1, v2, v3

    iget-object v2, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    aget-object v0, v2, v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0, p1, v1, v0}, Ljava/lang/ThreadLocal$ThreadLocalMap;->getEntryAfterMiss(Ljava/lang/ThreadLocal;ILjava/lang/ThreadLocal$ThreadLocalMap$Entry;)Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    move-result-object v2

    return-object v2
.end method

.method private getEntryAfterMiss(Ljava/lang/ThreadLocal;ILjava/lang/ThreadLocal$ThreadLocalMap$Entry;)Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    array-length v1, v2

    :goto_0
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ThreadLocal;

    if-ne v0, p1, :cond_0

    return-object p3

    :cond_0
    if-nez v0, :cond_1

    invoke-direct {p0, p2}, Ljava/lang/ThreadLocal$ThreadLocalMap;->expungeStaleEntry(I)I

    :goto_1
    aget-object p3, v2, p2

    goto :goto_0

    :cond_1
    invoke-static {p2, v1}, Ljava/lang/ThreadLocal$ThreadLocalMap;->nextIndex(II)I

    move-result p2

    goto :goto_1

    :cond_2
    return-object v3
.end method

.method private static nextIndex(II)I
    .locals 1

    add-int/lit8 v0, p0, 0x1

    if-ge v0, p1, :cond_0

    add-int/lit8 v0, p0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static prevIndex(II)I
    .locals 1

    add-int/lit8 v0, p0, -0x1

    if-ltz v0, :cond_0

    add-int/lit8 v0, p0, -0x1

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    goto :goto_0
.end method

.method private rehash()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/ThreadLocal$ThreadLocalMap;->expungeStaleEntries()V

    iget v0, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->size:I

    iget v1, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->threshold:I

    iget v2, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->threshold:I

    div-int/lit8 v2, v2, 0x4

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Ljava/lang/ThreadLocal$ThreadLocalMap;->resize()V

    :cond_0
    return-void
.end method

.method private remove(Ljava/lang/ThreadLocal;)V
    .locals 6

    iget-object v3, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    array-length v2, v3

    invoke-static {p1}, Ljava/lang/ThreadLocal;->-get0(Ljava/lang/ThreadLocal;)I

    move-result v4

    add-int/lit8 v5, v2, -0x1

    and-int v1, v4, v5

    aget-object v0, v3, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->get()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->clear()V

    invoke-direct {p0, v1}, Ljava/lang/ThreadLocal$ThreadLocalMap;->expungeStaleEntry(I)I

    return-void

    :cond_0
    invoke-static {v1, v2}, Ljava/lang/ThreadLocal$ThreadLocalMap;->nextIndex(II)I

    move-result v1

    aget-object v0, v3, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private replaceStaleEntry(Ljava/lang/ThreadLocal;Ljava/lang/Object;I)V
    .locals 8

    const/4 v7, 0x0

    iget-object v5, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    array-length v3, v5

    move v4, p3

    invoke-static {p3, v3}, Ljava/lang/ThreadLocal$ThreadLocalMap;->prevIndex(II)I

    move-result v1

    :goto_0
    aget-object v0, v5, v1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->get()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_0

    move v4, v1

    :cond_0
    invoke-static {v1, v3}, Ljava/lang/ThreadLocal$ThreadLocalMap;->prevIndex(II)I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-static {p3, v3}, Ljava/lang/ThreadLocal$ThreadLocalMap;->nextIndex(II)I

    move-result v1

    :goto_1
    aget-object v0, v5, v1

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ThreadLocal;

    if-ne v2, p1, :cond_3

    iput-object p2, v0, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->value:Ljava/lang/Object;

    aget-object v6, v5, p3

    aput-object v6, v5, v1

    aput-object v0, v5, p3

    if-ne v4, p3, :cond_2

    move v4, v1

    :cond_2
    invoke-direct {p0, v4}, Ljava/lang/ThreadLocal$ThreadLocalMap;->expungeStaleEntry(I)I

    move-result v6

    invoke-direct {p0, v6, v3}, Ljava/lang/ThreadLocal$ThreadLocalMap;->cleanSomeSlots(II)Z

    return-void

    :cond_3
    if-nez v2, :cond_4

    if-ne v4, p3, :cond_4

    move v4, v1

    :cond_4
    invoke-static {v1, v3}, Ljava/lang/ThreadLocal$ThreadLocalMap;->nextIndex(II)I

    move-result v1

    goto :goto_1

    :cond_5
    aget-object v6, v5, p3

    iput-object v7, v6, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->value:Ljava/lang/Object;

    new-instance v6, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    invoke-direct {v6, p1, p2}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;-><init>(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V

    aput-object v6, v5, p3

    if-eq v4, p3, :cond_6

    invoke-direct {p0, v4}, Ljava/lang/ThreadLocal$ThreadLocalMap;->expungeStaleEntry(I)I

    move-result v6

    invoke-direct {p0, v6, v3}, Ljava/lang/ThreadLocal$ThreadLocalMap;->cleanSomeSlots(II)Z

    :cond_6
    return-void
.end method

.method private resize()V
    .locals 12

    const/4 v11, 0x0

    iget-object v8, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    array-length v7, v8

    mul-int/lit8 v5, v7, 0x2

    new-array v6, v5, [Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v7, :cond_3

    aget-object v1, v8, v3

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ThreadLocal;

    if-nez v4, :cond_1

    iput-object v11, v1, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->value:Ljava/lang/Object;

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v4}, Ljava/lang/ThreadLocal;->-get0(Ljava/lang/ThreadLocal;)I

    move-result v9

    add-int/lit8 v10, v5, -0x1

    and-int v2, v9, v10

    :goto_2
    aget-object v9, v6, v2

    if-eqz v9, :cond_2

    invoke-static {v2, v5}, Ljava/lang/ThreadLocal$ThreadLocalMap;->nextIndex(II)I

    move-result v2

    goto :goto_2

    :cond_2
    aput-object v1, v6, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-direct {p0, v5}, Ljava/lang/ThreadLocal$ThreadLocalMap;->setThreshold(I)V

    iput v0, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->size:I

    iput-object v6, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    return-void
.end method

.method private set(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V
    .locals 8

    iget-object v5, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    array-length v3, v5

    invoke-static {p1}, Ljava/lang/ThreadLocal;->-get0(Ljava/lang/ThreadLocal;)I

    move-result v6

    add-int/lit8 v7, v3, -0x1

    and-int v1, v6, v7

    aget-object v0, v5, v1

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ThreadLocal;

    if-ne v2, p1, :cond_0

    iput-object p2, v0, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->value:Ljava/lang/Object;

    return-void

    :cond_0
    if-nez v2, :cond_1

    invoke-direct {p0, p1, p2, v1}, Ljava/lang/ThreadLocal$ThreadLocalMap;->replaceStaleEntry(Ljava/lang/ThreadLocal;Ljava/lang/Object;I)V

    return-void

    :cond_1
    invoke-static {v1, v3}, Ljava/lang/ThreadLocal$ThreadLocalMap;->nextIndex(II)I

    move-result v1

    aget-object v0, v5, v1

    goto :goto_0

    :cond_2
    new-instance v6, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    invoke-direct {v6, p1, p2}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;-><init>(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V

    aput-object v6, v5, v1

    iget v6, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->size:I

    add-int/lit8 v4, v6, 0x1

    iput v4, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->size:I

    invoke-direct {p0, v1, v4}, Ljava/lang/ThreadLocal$ThreadLocalMap;->cleanSomeSlots(II)Z

    move-result v6

    if-nez v6, :cond_3

    iget v6, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->threshold:I

    if-lt v4, v6, :cond_3

    invoke-direct {p0}, Ljava/lang/ThreadLocal$ThreadLocalMap;->rehash()V

    :cond_3
    return-void
.end method

.method private setThreshold(I)V
    .locals 1

    mul-int/lit8 v0, p1, 0x2

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->threshold:I

    return-void
.end method
