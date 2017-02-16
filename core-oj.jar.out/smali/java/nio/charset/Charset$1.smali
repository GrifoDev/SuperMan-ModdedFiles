.class final Ljava/nio/charset/Charset$1;
.super Ljava/lang/Object;
.source "Charset.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/nio/charset/Charset;->providers()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field i:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/nio/charset/spi/CharsetProvider;",
            ">;"
        }
    .end annotation
.end field

.field next:Ljava/lang/Object;

.field sl:Ljava/util/ServiceLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ServiceLoader",
            "<",
            "Ljava/nio/charset/spi/CharsetProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    const-class v0, Ljava/nio/charset/spi/CharsetProvider;

    invoke-static {v0}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    move-result-object v0

    .line 368
    iput-object v0, p0, Ljava/nio/charset/Charset$1;->sl:Ljava/util/ServiceLoader;

    .line 370
    iget-object v0, p0, Ljava/nio/charset/Charset$1;->sl:Ljava/util/ServiceLoader;

    invoke-virtual {v0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Ljava/nio/charset/Charset$1;->i:Ljava/util/Iterator;

    .line 372
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/nio/charset/Charset$1;->next:Ljava/lang/Object;

    .line 366
    return-void
.end method

.method private getNext()Z
    .locals 2

    .prologue
    .line 375
    :cond_0
    :goto_0
    iget-object v1, p0, Ljava/nio/charset/Charset$1;->next:Ljava/lang/Object;

    if-nez v1, :cond_2

    .line 377
    :try_start_0
    iget-object v1, p0, Ljava/nio/charset/Charset$1;->i:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 378
    const/4 v1, 0x0

    return v1

    .line 379
    :cond_1
    iget-object v1, p0, Ljava/nio/charset/Charset$1;->i:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Ljava/nio/charset/Charset$1;->next:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/ServiceConfigurationError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 380
    :catch_0
    move-exception v0

    .line 381
    .local v0, "sce":Ljava/util/ServiceConfigurationError;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/SecurityException;

    if-nez v1, :cond_0

    .line 385
    throw v0

    .line 388
    .end local v0    # "sce":Ljava/util/ServiceConfigurationError;
    :cond_2
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 392
    invoke-direct {p0}, Ljava/nio/charset/Charset$1;->getNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 396
    invoke-direct {p0}, Ljava/nio/charset/Charset$1;->getNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 397
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 398
    :cond_0
    iget-object v0, p0, Ljava/nio/charset/Charset$1;->next:Ljava/lang/Object;

    .line 399
    .local v0, "n":Ljava/lang/Object;
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/nio/charset/Charset$1;->next:Ljava/lang/Object;

    .line 400
    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 404
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
