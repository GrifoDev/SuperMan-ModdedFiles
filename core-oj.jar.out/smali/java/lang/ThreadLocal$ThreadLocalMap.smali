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
    .param p1, "key"    # Ljava/lang/ThreadLocal;

    .prologue
    invoke-direct {p0, p1}, Ljava/lang/ThreadLocal$ThreadLocalMap;->getEntry(Ljava/lang/ThreadLocal;)Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Ljava/lang/ThreadLocal$ThreadLocalMap;Ljava/lang/ThreadLocal;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/ThreadLocal;

    .prologue
    invoke-direct {p0, p1}, Ljava/lang/ThreadLocal$ThreadLocalMap;->remove(Ljava/lang/ThreadLocal;)V

    return-void
.end method

.method static synthetic -wrap2(Ljava/lang/ThreadLocal$ThreadLocalMap;Ljava/lang/ThreadLocal;Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/ThreadLocal;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/ThreadLocal$ThreadLocalMap;->set(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/ThreadLocal$ThreadLocalMap;)V
    .locals 10
    .param p1, "parentMap"    # Ljava/lang/ThreadLocal$ThreadLocalMap;

    .prologue
    .line 342
    .local p0, "this":Ljava/lang/ThreadLocal$ThreadLocalMap;, "Ljava/lang/ThreadLocal<TT;>.ThreadLocalMap;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    const/4 v8, 0x0

    iput v8, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->size:I

    .line 343
    iget-object v6, p1, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    .line 344
    .local v6, "parentTable":[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    array-length v5, v6

    .line 345
    .local v5, "len":I
    invoke-direct {p0, v5}, Ljava/lang/ThreadLocal$ThreadLocalMap;->setThreshold(I)V

    .line 346
    new-array v8, v5, [Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    iput-object v8, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    .line 348
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    if-ge v3, v5, :cond_2

    .line 349
    aget-object v1, v6, v3

    .line 350
    .local v1, "e":Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    if-eqz v1, :cond_1

    .line 351
    invoke-virtual {v1}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ThreadLocal;

    .line 352
    .local v4, "key":Ljava/lang/ThreadLocal;
    if-eqz v4, :cond_1

    .line 353
    iget-object v8, v1, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {v4, v8}, Ljava/lang/ThreadLocal;->childValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 354
    .local v7, "value":Ljava/lang/Object;
    new-instance v0, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    invoke-direct {v0, v4, v7}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;-><init>(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V

    .line 355
    .local v0, "c":Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    invoke-static {v4}, Ljava/lang/ThreadLocal;->-get0(Ljava/lang/ThreadLocal;)I

    move-result v8

    add-int/lit8 v9, v5, -0x1

    and-int v2, v8, v9

    .line 356
    .local v2, "h":I
    :goto_1
    iget-object v8, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    aget-object v8, v8, v2

    if-eqz v8, :cond_0

    .line 357
    invoke-static {v2, v5}, Ljava/lang/ThreadLocal$ThreadLocalMap;->nextIndex(II)I

    move-result v2

    goto :goto_1

    .line 358
    :cond_0
    iget-object v8, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    aput-object v0, v8, v2

    .line 359
    iget v8, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->size:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->size:I

    .line 348
    .end local v0    # "c":Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    .end local v2    # "h":I
    .end local v4    # "key":Ljava/lang/ThreadLocal;
    .end local v7    # "value":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 342
    .end local v1    # "e":Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    :cond_2
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/ThreadLocal$ThreadLocalMap;Ljava/lang/ThreadLocal$ThreadLocalMap;)V
    .locals 0
    .param p1, "parentMap"    # Ljava/lang/ThreadLocal$ThreadLocalMap;

    .prologue
    .local p0, "this":Ljava/lang/ThreadLocal$ThreadLocalMap;, "Ljava/lang/ThreadLocal<TT;>.ThreadLocalMap;"
    invoke-direct {p0, p1}, Ljava/lang/ThreadLocal$ThreadLocalMap;-><init>(Ljava/lang/ThreadLocal$ThreadLocalMap;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V
    .locals 4
    .param p1, "firstKey"    # Ljava/lang/ThreadLocal;
    .param p2, "firstValue"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/lang/ThreadLocal$ThreadLocalMap;, "Ljava/lang/ThreadLocal<TT;>.ThreadLocalMap;"
    const/16 v3, 0x10

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    const/4 v1, 0x0

    iput v1, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->size:I

    .line 329
    new-array v1, v3, [Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    iput-object v1, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    .line 330
    invoke-static {p1}, Ljava/lang/ThreadLocal;->-get0(Ljava/lang/ThreadLocal;)I

    move-result v1

    and-int/lit8 v0, v1, 0xf

    .line 331
    .local v0, "i":I
    iget-object v1, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    new-instance v2, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    invoke-direct {v2, p1, p2}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;-><init>(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V

    aput-object v2, v1, v0

    .line 332
    const/4 v1, 0x1

    iput v1, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->size:I

    .line 333
    invoke-direct {p0, v3}, Ljava/lang/ThreadLocal$ThreadLocalMap;->setThreshold(I)V

    .line 328
    return-void
.end method

.method private cleanSomeSlots(II)Z
    .locals 5
    .param p1, "i"    # I
    .param p2, "n"    # I

    .prologue
    .line 612
    .local p0, "this":Ljava/lang/ThreadLocal$ThreadLocalMap;, "Ljava/lang/ThreadLocal<TT;>.ThreadLocalMap;"
    const/4 v2, 0x0

    .line 613
    .local v2, "removed":Z
    iget-object v3, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    .line 614
    .local v3, "tab":[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    array-length v1, v3

    .line 616
    .local v1, "len":I
    :cond_0
    invoke-static {p1, v1}, Ljava/lang/ThreadLocal$ThreadLocalMap;->nextIndex(II)I

    move-result p1

    .line 617
    aget-object v0, v3, p1

    .line 618
    .local v0, "e":Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    .line 619
    move p2, v1

    .line 620
    const/4 v2, 0x1

    .line 621
    invoke-direct {p0, p1}, Ljava/lang/ThreadLocal$ThreadLocalMap;->expungeStaleEntry(I)I

    move-result p1

    .line 623
    :cond_1
    ushr-int/lit8 p2, p2, 0x1

    if-nez p2, :cond_0

    .line 624
    return v2
.end method

.method private expungeStaleEntries()V
    .locals 5

    .prologue
    .line 675
    .local p0, "this":Ljava/lang/ThreadLocal$ThreadLocalMap;, "Ljava/lang/ThreadLocal<TT;>.ThreadLocalMap;"
    iget-object v3, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    .line 676
    .local v3, "tab":[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    array-length v2, v3

    .line 677
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 678
    aget-object v0, v3, v1

    .line 679
    .local v0, "e":Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 680
    invoke-direct {p0, v1}, Ljava/lang/ThreadLocal$ThreadLocalMap;->expungeStaleEntry(I)I

    .line 677
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 674
    .end local v0    # "e":Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    :cond_1
    return-void
.end method

.method private expungeStaleEntry(I)I
    .locals 9
    .param p1, "staleSlot"    # I

    .prologue
    .local p0, "this":Ljava/lang/ThreadLocal$ThreadLocalMap;, "Ljava/lang/ThreadLocal<TT;>.ThreadLocalMap;"
    const/4 v8, 0x0

    .line 552
    iget-object v5, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    .line 553
    .local v5, "tab":[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    array-length v4, v5

    .line 556
    .local v4, "len":I
    aget-object v6, v5, p1

    iput-object v8, v6, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->value:Ljava/lang/Object;

    .line 557
    aput-object v8, v5, p1

    .line 558
    iget v6, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->size:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->size:I

    .line 563
    invoke-static {p1, v4}, Ljava/lang/ThreadLocal$ThreadLocalMap;->nextIndex(II)I

    move-result v2

    .line 564
    .local v2, "i":I
    :goto_0
    aget-object v0, v5, v2

    .line 563
    .local v0, "e":Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    if-eqz v0, :cond_3

    .line 566
    invoke-virtual {v0}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ThreadLocal;

    .line 567
    .local v3, "k":Ljava/lang/ThreadLocal;
    if-nez v3, :cond_1

    .line 568
    iput-object v8, v0, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->value:Ljava/lang/Object;

    .line 569
    aput-object v8, v5, v2

    .line 570
    iget v6, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->size:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->size:I

    .line 565
    :cond_0
    :goto_1
    invoke-static {v2, v4}, Ljava/lang/ThreadLocal$ThreadLocalMap;->nextIndex(II)I

    move-result v2

    goto :goto_0

    .line 572
    :cond_1
    invoke-static {v3}, Ljava/lang/ThreadLocal;->-get0(Ljava/lang/ThreadLocal;)I

    move-result v6

    add-int/lit8 v7, v4, -0x1

    and-int v1, v6, v7

    .line 573
    .local v1, "h":I
    if-eq v1, v2, :cond_0

    .line 574
    aput-object v8, v5, v2

    .line 578
    :goto_2
    aget-object v6, v5, v1

    if-eqz v6, :cond_2

    .line 579
    invoke-static {v1, v4}, Ljava/lang/ThreadLocal$ThreadLocalMap;->nextIndex(II)I

    move-result v1

    goto :goto_2

    .line 580
    :cond_2
    aput-object v0, v5, v1

    goto :goto_1

    .line 584
    .end local v1    # "h":I
    .end local v3    # "k":Ljava/lang/ThreadLocal;
    :cond_3
    return v2
.end method

.method private getEntry(Ljava/lang/ThreadLocal;)Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    .locals 4
    .param p1, "key"    # Ljava/lang/ThreadLocal;

    .prologue
    .line 376
    .local p0, "this":Ljava/lang/ThreadLocal$ThreadLocalMap;, "Ljava/lang/ThreadLocal<TT;>.ThreadLocalMap;"
    invoke-static {p1}, Ljava/lang/ThreadLocal;->-get0(Ljava/lang/ThreadLocal;)I

    move-result v2

    iget-object v3, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    and-int v1, v2, v3

    .line 377
    .local v1, "i":I
    iget-object v2, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    aget-object v0, v2, v1

    .line 378
    .local v0, "e":Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 379
    return-object v0

    .line 381
    :cond_0
    invoke-direct {p0, p1, v1, v0}, Ljava/lang/ThreadLocal$ThreadLocalMap;->getEntryAfterMiss(Ljava/lang/ThreadLocal;ILjava/lang/ThreadLocal$ThreadLocalMap$Entry;)Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    move-result-object v2

    return-object v2
.end method

.method private getEntryAfterMiss(Ljava/lang/ThreadLocal;ILjava/lang/ThreadLocal$ThreadLocalMap$Entry;)Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    .locals 4
    .param p1, "key"    # Ljava/lang/ThreadLocal;
    .param p2, "i"    # I
    .param p3, "e"    # Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    .prologue
    .local p0, "this":Ljava/lang/ThreadLocal$ThreadLocalMap;, "Ljava/lang/ThreadLocal<TT;>.ThreadLocalMap;"
    const/4 v3, 0x0

    .line 394
    iget-object v2, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    .line 395
    .local v2, "tab":[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    array-length v1, v2

    .line 397
    .local v1, "len":I
    :goto_0
    if-eqz p3, :cond_2

    .line 398
    invoke-virtual {p3}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ThreadLocal;

    .line 399
    .local v0, "k":Ljava/lang/ThreadLocal;
    if-ne v0, p1, :cond_0

    .line 400
    return-object p3

    .line 401
    :cond_0
    if-nez v0, :cond_1

    .line 402
    invoke-direct {p0, p2}, Ljava/lang/ThreadLocal$ThreadLocalMap;->expungeStaleEntry(I)I

    .line 405
    :goto_1
    aget-object p3, v2, p2

    goto :goto_0

    .line 404
    :cond_1
    invoke-static {p2, v1}, Ljava/lang/ThreadLocal$ThreadLocalMap;->nextIndex(II)I

    move-result p2

    goto :goto_1

    .line 407
    .end local v0    # "k":Ljava/lang/ThreadLocal;
    :cond_2
    return-object v3
.end method

.method private static nextIndex(II)I
    .locals 1
    .param p0, "i"    # I
    .param p1, "len"    # I

    .prologue
    .line 313
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
    .param p0, "i"    # I
    .param p1, "len"    # I

    .prologue
    .line 320
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

    .prologue
    .line 633
    .local p0, "this":Ljava/lang/ThreadLocal$ThreadLocalMap;, "Ljava/lang/ThreadLocal<TT;>.ThreadLocalMap;"
    invoke-direct {p0}, Ljava/lang/ThreadLocal$ThreadLocalMap;->expungeStaleEntries()V

    .line 636
    iget v0, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->size:I

    iget v1, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->threshold:I

    iget v2, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->threshold:I

    div-int/lit8 v2, v2, 0x4

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    .line 637
    invoke-direct {p0}, Ljava/lang/ThreadLocal$ThreadLocalMap;->resize()V

    .line 632
    :cond_0
    return-void
.end method

.method private remove(Ljava/lang/ThreadLocal;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/ThreadLocal;

    .prologue
    .line 453
    .local p0, "this":Ljava/lang/ThreadLocal$ThreadLocalMap;, "Ljava/lang/ThreadLocal<TT;>.ThreadLocalMap;"
    iget-object v3, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    .line 454
    .local v3, "tab":[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    array-length v2, v3

    .line 455
    .local v2, "len":I
    invoke-static {p1}, Ljava/lang/ThreadLocal;->-get0(Ljava/lang/ThreadLocal;)I

    move-result v4

    add-int/lit8 v5, v2, -0x1

    and-int v1, v4, v5

    .line 456
    .local v1, "i":I
    aget-object v0, v3, v1

    .local v0, "e":Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    :goto_0
    if-eqz v0, :cond_1

    .line 459
    invoke-virtual {v0}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->get()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_0

    .line 460
    invoke-virtual {v0}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->clear()V

    .line 461
    invoke-direct {p0, v1}, Ljava/lang/ThreadLocal$ThreadLocalMap;->expungeStaleEntry(I)I

    .line 462
    return-void

    .line 458
    :cond_0
    invoke-static {v1, v2}, Ljava/lang/ThreadLocal$ThreadLocalMap;->nextIndex(II)I

    move-result v1

    aget-object v0, v3, v1

    goto :goto_0

    .line 452
    :cond_1
    return-void
.end method

.method private replaceStaleEntry(Ljava/lang/ThreadLocal;Ljava/lang/Object;I)V
    .locals 8
    .param p1, "key"    # Ljava/lang/ThreadLocal;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "staleSlot"    # I

    .prologue
    .local p0, "this":Ljava/lang/ThreadLocal$ThreadLocalMap;, "Ljava/lang/ThreadLocal<TT;>.ThreadLocalMap;"
    const/4 v7, 0x0

    .line 484
    iget-object v5, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    .line 485
    .local v5, "tab":[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    array-length v3, v5

    .line 492
    .local v3, "len":I
    move v4, p3

    .line 493
    .local v4, "slotToExpunge":I
    invoke-static {p3, v3}, Ljava/lang/ThreadLocal$ThreadLocalMap;->prevIndex(II)I

    move-result v1

    .line 494
    .local v1, "i":I
    :goto_0
    aget-object v0, v5, v1

    .line 493
    .local v0, "e":Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    if-eqz v0, :cond_1

    .line 496
    invoke-virtual {v0}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->get()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_0

    .line 497
    move v4, v1

    .line 495
    :cond_0
    invoke-static {v1, v3}, Ljava/lang/ThreadLocal$ThreadLocalMap;->prevIndex(II)I

    move-result v1

    goto :goto_0

    .line 501
    :cond_1
    invoke-static {p3, v3}, Ljava/lang/ThreadLocal$ThreadLocalMap;->nextIndex(II)I

    move-result v1

    .line 502
    :goto_1
    aget-object v0, v5, v1

    .line 501
    if-eqz v0, :cond_5

    .line 504
    invoke-virtual {v0}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ThreadLocal;

    .line 511
    .local v2, "k":Ljava/lang/ThreadLocal;
    if-ne v2, p1, :cond_3

    .line 512
    iput-object p2, v0, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->value:Ljava/lang/Object;

    .line 514
    aget-object v6, v5, p3

    aput-object v6, v5, v1

    .line 515
    aput-object v0, v5, p3

    .line 518
    if-ne v4, p3, :cond_2

    .line 519
    move v4, v1

    .line 520
    :cond_2
    invoke-direct {p0, v4}, Ljava/lang/ThreadLocal$ThreadLocalMap;->expungeStaleEntry(I)I

    move-result v6

    invoke-direct {p0, v6, v3}, Ljava/lang/ThreadLocal$ThreadLocalMap;->cleanSomeSlots(II)Z

    .line 521
    return-void

    .line 527
    :cond_3
    if-nez v2, :cond_4

    if-ne v4, p3, :cond_4

    .line 528
    move v4, v1

    .line 503
    :cond_4
    invoke-static {v1, v3}, Ljava/lang/ThreadLocal$ThreadLocalMap;->nextIndex(II)I

    move-result v1

    goto :goto_1

    .line 532
    .end local v2    # "k":Ljava/lang/ThreadLocal;
    :cond_5
    aget-object v6, v5, p3

    iput-object v7, v6, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->value:Ljava/lang/Object;

    .line 533
    new-instance v6, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    invoke-direct {v6, p1, p2}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;-><init>(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V

    aput-object v6, v5, p3

    .line 536
    if-eq v4, p3, :cond_6

    .line 537
    invoke-direct {p0, v4}, Ljava/lang/ThreadLocal$ThreadLocalMap;->expungeStaleEntry(I)I

    move-result v6

    invoke-direct {p0, v6, v3}, Ljava/lang/ThreadLocal$ThreadLocalMap;->cleanSomeSlots(II)Z

    .line 483
    :cond_6
    return-void
.end method

.method private resize()V
    .locals 12

    .prologue
    .local p0, "this":Ljava/lang/ThreadLocal$ThreadLocalMap;, "Ljava/lang/ThreadLocal<TT;>.ThreadLocalMap;"
    const/4 v11, 0x0

    .line 644
    iget-object v8, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    .line 645
    .local v8, "oldTab":[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    array-length v7, v8

    .line 646
    .local v7, "oldLen":I
    mul-int/lit8 v5, v7, 0x2

    .line 647
    .local v5, "newLen":I
    new-array v6, v5, [Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    .line 648
    .local v6, "newTab":[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    const/4 v0, 0x0

    .line 650
    .local v0, "count":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    if-ge v3, v7, :cond_3

    .line 651
    aget-object v1, v8, v3

    .line 652
    .local v1, "e":Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    if-eqz v1, :cond_0

    .line 653
    invoke-virtual {v1}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ThreadLocal;

    .line 654
    .local v4, "k":Ljava/lang/ThreadLocal;
    if-nez v4, :cond_1

    .line 655
    iput-object v11, v1, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->value:Ljava/lang/Object;

    .line 650
    .end local v4    # "k":Ljava/lang/ThreadLocal;
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 657
    .restart local v4    # "k":Ljava/lang/ThreadLocal;
    :cond_1
    invoke-static {v4}, Ljava/lang/ThreadLocal;->-get0(Ljava/lang/ThreadLocal;)I

    move-result v9

    add-int/lit8 v10, v5, -0x1

    and-int v2, v9, v10

    .line 658
    .local v2, "h":I
    :goto_2
    aget-object v9, v6, v2

    if-eqz v9, :cond_2

    .line 659
    invoke-static {v2, v5}, Ljava/lang/ThreadLocal$ThreadLocalMap;->nextIndex(II)I

    move-result v2

    goto :goto_2

    .line 660
    :cond_2
    aput-object v1, v6, v2

    .line 661
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 666
    .end local v1    # "e":Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    .end local v2    # "h":I
    .end local v4    # "k":Ljava/lang/ThreadLocal;
    :cond_3
    invoke-direct {p0, v5}, Ljava/lang/ThreadLocal$ThreadLocalMap;->setThreshold(I)V

    .line 667
    iput v0, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->size:I

    .line 668
    iput-object v6, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    .line 643
    return-void
.end method

.method private set(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V
    .locals 8
    .param p1, "key"    # Ljava/lang/ThreadLocal;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 423
    .local p0, "this":Ljava/lang/ThreadLocal$ThreadLocalMap;, "Ljava/lang/ThreadLocal<TT;>.ThreadLocalMap;"
    iget-object v5, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    .line 424
    .local v5, "tab":[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    array-length v3, v5

    .line 425
    .local v3, "len":I
    invoke-static {p1}, Ljava/lang/ThreadLocal;->-get0(Ljava/lang/ThreadLocal;)I

    move-result v6

    add-int/lit8 v7, v3, -0x1

    and-int v1, v6, v7

    .line 427
    .local v1, "i":I
    aget-object v0, v5, v1

    .local v0, "e":Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    :goto_0
    if-eqz v0, :cond_2

    .line 430
    invoke-virtual {v0}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ThreadLocal;

    .line 432
    .local v2, "k":Ljava/lang/ThreadLocal;
    if-ne v2, p1, :cond_0

    .line 433
    iput-object p2, v0, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->value:Ljava/lang/Object;

    .line 434
    return-void

    .line 437
    :cond_0
    if-nez v2, :cond_1

    .line 438
    invoke-direct {p0, p1, p2, v1}, Ljava/lang/ThreadLocal$ThreadLocalMap;->replaceStaleEntry(Ljava/lang/ThreadLocal;Ljava/lang/Object;I)V

    .line 439
    return-void

    .line 429
    :cond_1
    invoke-static {v1, v3}, Ljava/lang/ThreadLocal$ThreadLocalMap;->nextIndex(II)I

    move-result v1

    aget-object v0, v5, v1

    goto :goto_0

    .line 443
    .end local v2    # "k":Ljava/lang/ThreadLocal;
    :cond_2
    new-instance v6, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    invoke-direct {v6, p1, p2}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;-><init>(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V

    aput-object v6, v5, v1

    .line 444
    iget v6, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->size:I

    add-int/lit8 v4, v6, 0x1

    iput v4, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->size:I

    .line 445
    .local v4, "sz":I
    invoke-direct {p0, v1, v4}, Ljava/lang/ThreadLocal$ThreadLocalMap;->cleanSomeSlots(II)Z

    move-result v6

    if-nez v6, :cond_3

    iget v6, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->threshold:I

    if-lt v4, v6, :cond_3

    .line 446
    invoke-direct {p0}, Ljava/lang/ThreadLocal$ThreadLocalMap;->rehash()V

    .line 416
    :cond_3
    return-void
.end method

.method private setThreshold(I)V
    .locals 1
    .param p1, "len"    # I

    .prologue
    .line 306
    .local p0, "this":Ljava/lang/ThreadLocal$ThreadLocalMap;, "Ljava/lang/ThreadLocal<TT;>.ThreadLocalMap;"
    mul-int/lit8 v0, p1, 0x2

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->threshold:I

    .line 305
    return-void
.end method
