.class final Ljava/util/ResourceBundle$CacheKey;
.super Ljava/lang/Object;
.source "ResourceBundle.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ResourceBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CacheKey"
.end annotation


# instance fields
.field private cause:Ljava/lang/Throwable;

.field private volatile expirationTime:J

.field private format:Ljava/lang/String;

.field private hashCodeCache:I

.field private volatile loadTime:J

.field private loaderRef:Ljava/util/ResourceBundle$LoaderReference;

.field private locale:Ljava/util/Locale;

.field private name:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Ljava/util/ResourceBundle$CacheKey;)J
    .locals 2

    iget-wide v0, p0, Ljava/util/ResourceBundle$CacheKey;->expirationTime:J

    return-wide v0
.end method

.method static synthetic -get1(Ljava/util/ResourceBundle$CacheKey;)J
    .locals 2

    iget-wide v0, p0, Ljava/util/ResourceBundle$CacheKey;->loadTime:J

    return-wide v0
.end method

.method static synthetic -set0(Ljava/util/ResourceBundle$CacheKey;J)J
    .locals 1

    iput-wide p1, p0, Ljava/util/ResourceBundle$CacheKey;->expirationTime:J

    return-wide p1
.end method

.method static synthetic -set1(Ljava/util/ResourceBundle$CacheKey;J)J
    .locals 1

    iput-wide p1, p0, Ljava/util/ResourceBundle$CacheKey;->loadTime:J

    return-wide p1
.end method

.method static synthetic -wrap0(Ljava/util/ResourceBundle$CacheKey;)Ljava/lang/Throwable;
    .locals 1

    invoke-direct {p0}, Ljava/util/ResourceBundle$CacheKey;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Ljava/util/ResourceBundle$CacheKey;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    invoke-direct {p0, p1}, Ljava/util/ResourceBundle$CacheKey;->setCause(Ljava/lang/Throwable;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)V
    .locals 2
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    const/4 v0, 0x0

    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 517
    iput-object p1, p0, Ljava/util/ResourceBundle$CacheKey;->name:Ljava/lang/String;

    .line 518
    iput-object p2, p0, Ljava/util/ResourceBundle$CacheKey;->locale:Ljava/util/Locale;

    .line 519
    if-nez p3, :cond_0

    .line 520
    iput-object v0, p0, Ljava/util/ResourceBundle$CacheKey;->loaderRef:Ljava/util/ResourceBundle$LoaderReference;

    .line 524
    :goto_0
    invoke-direct {p0}, Ljava/util/ResourceBundle$CacheKey;->calculateHashCode()V

    .line 516
    return-void

    .line 522
    :cond_0
    new-instance v0, Ljava/util/ResourceBundle$LoaderReference;

    invoke-static {}, Ljava/util/ResourceBundle;->-get0()Ljava/lang/ref/ReferenceQueue;

    move-result-object v1

    invoke-direct {v0, p3, v1, p0}, Ljava/util/ResourceBundle$LoaderReference;-><init>(Ljava/lang/ClassLoader;Ljava/lang/ref/ReferenceQueue;Ljava/util/ResourceBundle$CacheKey;)V

    iput-object v0, p0, Ljava/util/ResourceBundle$CacheKey;->loaderRef:Ljava/util/ResourceBundle$LoaderReference;

    goto :goto_0
.end method

.method private calculateHashCode()V
    .locals 3

    .prologue
    .line 595
    iget-object v1, p0, Ljava/util/ResourceBundle$CacheKey;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    shl-int/lit8 v1, v1, 0x3

    iput v1, p0, Ljava/util/ResourceBundle$CacheKey;->hashCodeCache:I

    .line 596
    iget v1, p0, Ljava/util/ResourceBundle$CacheKey;->hashCodeCache:I

    iget-object v2, p0, Ljava/util/ResourceBundle$CacheKey;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    iput v1, p0, Ljava/util/ResourceBundle$CacheKey;->hashCodeCache:I

    .line 597
    invoke-virtual {p0}, Ljava/util/ResourceBundle$CacheKey;->getLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 598
    .local v0, "loader":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_0

    .line 599
    iget v1, p0, Ljava/util/ResourceBundle$CacheKey;->hashCodeCache:I

    invoke-virtual {v0}, Ljava/lang/ClassLoader;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    iput v1, p0, Ljava/util/ResourceBundle$CacheKey;->hashCodeCache:I

    .line 594
    :cond_0
    return-void
.end method

.method private getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 640
    iget-object v0, p0, Ljava/util/ResourceBundle$CacheKey;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method private setCause(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 628
    iget-object v0, p0, Ljava/util/ResourceBundle$CacheKey;->cause:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    .line 629
    iput-object p1, p0, Ljava/util/ResourceBundle$CacheKey;->cause:Ljava/lang/Throwable;

    .line 627
    :cond_0
    :goto_0
    return-void

    .line 633
    :cond_1
    iget-object v0, p0, Ljava/util/ResourceBundle$CacheKey;->cause:Ljava/lang/Throwable;

    instance-of v0, v0, Ljava/lang/ClassNotFoundException;

    if-eqz v0, :cond_0

    .line 634
    iput-object p1, p0, Ljava/util/ResourceBundle$CacheKey;->cause:Ljava/lang/Throwable;

    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 605
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ResourceBundle$CacheKey;

    .line 606
    .local v0, "clone":Ljava/util/ResourceBundle$CacheKey;
    iget-object v2, p0, Ljava/util/ResourceBundle$CacheKey;->loaderRef:Ljava/util/ResourceBundle$LoaderReference;

    if-eqz v2, :cond_0

    .line 607
    new-instance v3, Ljava/util/ResourceBundle$LoaderReference;

    iget-object v2, p0, Ljava/util/ResourceBundle$CacheKey;->loaderRef:Ljava/util/ResourceBundle$LoaderReference;

    invoke-virtual {v2}, Ljava/util/ResourceBundle$LoaderReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ClassLoader;

    .line 608
    invoke-static {}, Ljava/util/ResourceBundle;->-get0()Ljava/lang/ref/ReferenceQueue;

    move-result-object v4

    .line 607
    invoke-direct {v3, v2, v4, v0}, Ljava/util/ResourceBundle$LoaderReference;-><init>(Ljava/lang/ClassLoader;Ljava/lang/ref/ReferenceQueue;Ljava/util/ResourceBundle$CacheKey;)V

    iput-object v3, v0, Ljava/util/ResourceBundle$CacheKey;->loaderRef:Ljava/util/ResourceBundle$LoaderReference;

    .line 611
    :cond_0
    const/4 v2, 0x0

    iput-object v2, v0, Ljava/util/ResourceBundle$CacheKey;->cause:Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 612
    return-object v0

    .line 613
    .end local v0    # "clone":Ljava/util/ResourceBundle$CacheKey;
    :catch_0
    move-exception v1

    .line 615
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2}, Ljava/lang/InternalError;-><init>()V

    throw v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 556
    if-ne p0, p1, :cond_0

    .line 557
    return v5

    .line 560
    :cond_0
    :try_start_0
    move-object v0, p1

    check-cast v0, Ljava/util/ResourceBundle$CacheKey;

    move-object v4, v0

    .line 562
    .local v4, "otherEntry":Ljava/util/ResourceBundle$CacheKey;
    iget v7, p0, Ljava/util/ResourceBundle$CacheKey;->hashCodeCache:I

    iget v8, v4, Ljava/util/ResourceBundle$CacheKey;->hashCodeCache:I

    if-eq v7, v8, :cond_1

    .line 563
    return v6

    .line 566
    :cond_1
    iget-object v7, p0, Ljava/util/ResourceBundle$CacheKey;->name:Ljava/lang/String;

    iget-object v8, v4, Ljava/util/ResourceBundle$CacheKey;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 567
    return v6

    .line 570
    :cond_2
    iget-object v7, p0, Ljava/util/ResourceBundle$CacheKey;->locale:Ljava/util/Locale;

    iget-object v8, v4, Ljava/util/ResourceBundle$CacheKey;->locale:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 571
    return v6

    .line 574
    :cond_3
    iget-object v7, p0, Ljava/util/ResourceBundle$CacheKey;->loaderRef:Ljava/util/ResourceBundle$LoaderReference;

    if-nez v7, :cond_5

    .line 575
    iget-object v7, v4, Ljava/util/ResourceBundle$CacheKey;->loaderRef:Ljava/util/ResourceBundle$LoaderReference;

    if-nez v7, :cond_4

    :goto_0
    return v5

    :cond_4
    move v5, v6

    goto :goto_0

    .line 577
    :cond_5
    iget-object v7, p0, Ljava/util/ResourceBundle$CacheKey;->loaderRef:Ljava/util/ResourceBundle$LoaderReference;

    invoke-virtual {v7}, Ljava/util/ResourceBundle$LoaderReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ClassLoader;

    .line 578
    .local v3, "loader":Ljava/lang/ClassLoader;
    iget-object v7, v4, Ljava/util/ResourceBundle$CacheKey;->loaderRef:Ljava/util/ResourceBundle$LoaderReference;

    if-eqz v7, :cond_7

    .line 582
    if-eqz v3, :cond_7

    .line 583
    iget-object v7, v4, Ljava/util/ResourceBundle$CacheKey;->loaderRef:Ljava/util/ResourceBundle$LoaderReference;

    invoke-virtual {v7}, Ljava/util/ResourceBundle$LoaderReference;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    if-ne v3, v7, :cond_6

    .line 578
    :goto_1
    return v5

    :cond_6
    move v5, v6

    .line 583
    goto :goto_1

    :cond_7
    move v5, v6

    .line 578
    goto :goto_1

    .line 584
    .end local v3    # "loader":Ljava/lang/ClassLoader;
    .end local v4    # "otherEntry":Ljava/util/ResourceBundle$CacheKey;
    :catch_0
    move-exception v2

    .line 587
    :goto_2
    return v6

    .line 585
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/ClassCastException;
    goto :goto_2
.end method

.method getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Ljava/util/ResourceBundle$CacheKey;->format:Ljava/lang/String;

    return-object v0
.end method

.method getLoader()Ljava/lang/ClassLoader;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 552
    iget-object v1, p0, Ljava/util/ResourceBundle$CacheKey;->loaderRef:Ljava/util/ResourceBundle$LoaderReference;

    if-eqz v1, :cond_0

    iget-object v0, p0, Ljava/util/ResourceBundle$CacheKey;->loaderRef:Ljava/util/ResourceBundle$LoaderReference;

    invoke-virtual {v0}, Ljava/util/ResourceBundle$LoaderReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    :cond_0
    return-object v0
.end method

.method getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Ljava/util/ResourceBundle$CacheKey;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Ljava/util/ResourceBundle$CacheKey;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 591
    iget v0, p0, Ljava/util/ResourceBundle$CacheKey;->hashCodeCache:I

    return v0
.end method

.method setFormat(Ljava/lang/String;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 624
    iput-object p1, p0, Ljava/util/ResourceBundle$CacheKey;->format:Ljava/lang/String;

    .line 623
    return-void
.end method

.method setLocale(Ljava/util/Locale;)Ljava/util/ResourceBundle$CacheKey;
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 544
    iget-object v0, p0, Ljava/util/ResourceBundle$CacheKey;->locale:Ljava/util/Locale;

    invoke-virtual {v0, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 545
    iput-object p1, p0, Ljava/util/ResourceBundle$CacheKey;->locale:Ljava/util/Locale;

    .line 546
    invoke-direct {p0}, Ljava/util/ResourceBundle$CacheKey;->calculateHashCode()V

    .line 548
    :cond_0
    return-object p0
.end method

.method setName(Ljava/lang/String;)Ljava/util/ResourceBundle$CacheKey;
    .locals 1
    .param p1, "baseName"    # Ljava/lang/String;

    .prologue
    .line 532
    iget-object v0, p0, Ljava/util/ResourceBundle$CacheKey;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 533
    iput-object p1, p0, Ljava/util/ResourceBundle$CacheKey;->name:Ljava/lang/String;

    .line 534
    invoke-direct {p0}, Ljava/util/ResourceBundle$CacheKey;->calculateHashCode()V

    .line 536
    :cond_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 644
    iget-object v1, p0, Ljava/util/ResourceBundle$CacheKey;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 645
    .local v0, "l":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 646
    iget-object v1, p0, Ljava/util/ResourceBundle$CacheKey;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 647
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "__"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/util/ResourceBundle$CacheKey;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 652
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CacheKey["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/util/ResourceBundle$CacheKey;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", lc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", ldr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/ResourceBundle$CacheKey;->getLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 653
    const-string/jumbo v2, "(format="

    .line 652
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 653
    iget-object v2, p0, Ljava/util/ResourceBundle$CacheKey;->format:Ljava/lang/String;

    .line 652
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 653
    const-string/jumbo v2, ")]"

    .line 652
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 649
    :cond_1
    const-string/jumbo v0, "\"\""

    goto :goto_0
.end method
