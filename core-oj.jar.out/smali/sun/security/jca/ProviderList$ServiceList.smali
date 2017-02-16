.class final Lsun/security/jca/ProviderList$ServiceList;
.super Ljava/util/AbstractList;
.source "ProviderList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/jca/ProviderList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Ljava/security/Provider$Service;",
        ">;"
    }
.end annotation


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private firstService:Ljava/security/Provider$Service;

.field private final ids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lsun/security/jca/ServiceId;",
            ">;"
        }
    .end annotation
.end field

.field private providerIndex:I

.field private services:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lsun/security/jca/ProviderList;

.field private final type:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Lsun/security/jca/ProviderList$ServiceList;I)Ljava/security/Provider$Service;
    .locals 1
    .param p1, "index"    # I

    .prologue
    invoke-direct {p0, p1}, Lsun/security/jca/ProviderList$ServiceList;->tryGet(I)Ljava/security/Provider$Service;

    move-result-object v0

    return-object v0
.end method

.method constructor <init>(Lsun/security/jca/ProviderList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lsun/security/jca/ProviderList;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 398
    iput-object p1, p0, Lsun/security/jca/ProviderList$ServiceList;->this$0:Lsun/security/jca/ProviderList;

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 399
    iput-object p2, p0, Lsun/security/jca/ProviderList$ServiceList;->type:Ljava/lang/String;

    .line 400
    iput-object p3, p0, Lsun/security/jca/ProviderList$ServiceList;->algorithm:Ljava/lang/String;

    .line 401
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/jca/ProviderList$ServiceList;->ids:Ljava/util/List;

    .line 398
    return-void
.end method

.method constructor <init>(Lsun/security/jca/ProviderList;Ljava/util/List;)V
    .locals 1
    .param p1, "this$0"    # Lsun/security/jca/ProviderList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lsun/security/jca/ServiceId;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "ids":Ljava/util/List;, "Ljava/util/List<Lsun/security/jca/ServiceId;>;"
    const/4 v0, 0x0

    .line 404
    iput-object p1, p0, Lsun/security/jca/ProviderList$ServiceList;->this$0:Lsun/security/jca/ProviderList;

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 405
    iput-object v0, p0, Lsun/security/jca/ProviderList$ServiceList;->type:Ljava/lang/String;

    .line 406
    iput-object v0, p0, Lsun/security/jca/ProviderList$ServiceList;->algorithm:Ljava/lang/String;

    .line 407
    iput-object p2, p0, Lsun/security/jca/ProviderList$ServiceList;->ids:Ljava/util/List;

    .line 404
    return-void
.end method

.method private addService(Ljava/security/Provider$Service;)V
    .locals 2
    .param p1, "s"    # Ljava/security/Provider$Service;

    .prologue
    .line 411
    iget-object v0, p0, Lsun/security/jca/ProviderList$ServiceList;->firstService:Ljava/security/Provider$Service;

    if-nez v0, :cond_0

    .line 412
    iput-object p1, p0, Lsun/security/jca/ProviderList$ServiceList;->firstService:Ljava/security/Provider$Service;

    .line 410
    :goto_0
    return-void

    .line 414
    :cond_0
    iget-object v0, p0, Lsun/security/jca/ProviderList$ServiceList;->services:Ljava/util/List;

    if-nez v0, :cond_1

    .line 415
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lsun/security/jca/ProviderList$ServiceList;->services:Ljava/util/List;

    .line 416
    iget-object v0, p0, Lsun/security/jca/ProviderList$ServiceList;->services:Ljava/util/List;

    iget-object v1, p0, Lsun/security/jca/ProviderList$ServiceList;->firstService:Ljava/security/Provider$Service;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    :cond_1
    iget-object v0, p0, Lsun/security/jca/ProviderList$ServiceList;->services:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private tryGet(I)Ljava/security/Provider$Service;
    .locals 8
    .param p1, "index"    # I

    .prologue
    const/4 v7, 0x0

    .line 424
    :cond_0
    :goto_0
    if-nez p1, :cond_1

    iget-object v4, p0, Lsun/security/jca/ProviderList$ServiceList;->firstService:Ljava/security/Provider$Service;

    if-eqz v4, :cond_1

    .line 425
    iget-object v4, p0, Lsun/security/jca/ProviderList$ServiceList;->firstService:Ljava/security/Provider$Service;

    return-object v4

    .line 426
    :cond_1
    iget-object v4, p0, Lsun/security/jca/ProviderList$ServiceList;->services:Ljava/util/List;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lsun/security/jca/ProviderList$ServiceList;->services:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, p1, :cond_2

    .line 427
    iget-object v4, p0, Lsun/security/jca/ProviderList$ServiceList;->services:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/Provider$Service;

    return-object v4

    .line 429
    :cond_2
    iget v4, p0, Lsun/security/jca/ProviderList$ServiceList;->providerIndex:I

    iget-object v5, p0, Lsun/security/jca/ProviderList$ServiceList;->this$0:Lsun/security/jca/ProviderList;

    invoke-static {v5}, Lsun/security/jca/ProviderList;->-get0(Lsun/security/jca/ProviderList;)[Lsun/security/jca/ProviderConfig;

    move-result-object v5

    array-length v5, v5

    if-lt v4, v5, :cond_3

    .line 430
    return-object v7

    .line 433
    :cond_3
    iget-object v4, p0, Lsun/security/jca/ProviderList$ServiceList;->this$0:Lsun/security/jca/ProviderList;

    iget v5, p0, Lsun/security/jca/ProviderList$ServiceList;->providerIndex:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lsun/security/jca/ProviderList$ServiceList;->providerIndex:I

    invoke-virtual {v4, v5}, Lsun/security/jca/ProviderList;->getProvider(I)Ljava/security/Provider;

    move-result-object v2

    .line 434
    .local v2, "p":Ljava/security/Provider;
    iget-object v4, p0, Lsun/security/jca/ProviderList$ServiceList;->type:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 436
    iget-object v4, p0, Lsun/security/jca/ProviderList$ServiceList;->type:Ljava/lang/String;

    iget-object v5, p0, Lsun/security/jca/ProviderList$ServiceList;->algorithm:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v3

    .line 437
    .local v3, "s":Ljava/security/Provider$Service;
    if-eqz v3, :cond_0

    .line 438
    invoke-direct {p0, v3}, Lsun/security/jca/ProviderList$ServiceList;->addService(Ljava/security/Provider$Service;)V

    goto :goto_0

    .line 442
    .end local v3    # "s":Ljava/security/Provider$Service;
    :cond_4
    iget-object v4, p0, Lsun/security/jca/ProviderList$ServiceList;->ids:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "id$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/jca/ServiceId;

    .line 443
    .local v0, "id":Lsun/security/jca/ServiceId;
    iget-object v4, v0, Lsun/security/jca/ServiceId;->type:Ljava/lang/String;

    iget-object v5, v0, Lsun/security/jca/ServiceId;->algorithm:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v3

    .line 444
    .restart local v3    # "s":Ljava/security/Provider$Service;
    if-eqz v3, :cond_5

    .line 445
    invoke-direct {p0, v3}, Lsun/security/jca/ProviderList$ServiceList;->addService(Ljava/security/Provider$Service;)V

    goto :goto_1
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 452
    invoke-virtual {p0, p1}, Lsun/security/jca/ProviderList$ServiceList;->get(I)Ljava/security/Provider$Service;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Ljava/security/Provider$Service;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 453
    invoke-direct {p0, p1}, Lsun/security/jca/ProviderList$ServiceList;->tryGet(I)Ljava/security/Provider$Service;

    move-result-object v0

    .line 454
    .local v0, "s":Ljava/security/Provider$Service;
    if-nez v0, :cond_0

    .line 455
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 457
    :cond_0
    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 477
    invoke-direct {p0, v0}, Lsun/security/jca/ProviderList$ServiceList;->tryGet(I)Ljava/security/Provider$Service;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation

    .prologue
    .line 481
    new-instance v0, Lsun/security/jca/ProviderList$ServiceList$1;

    invoke-direct {v0, p0}, Lsun/security/jca/ProviderList$ServiceList$1;-><init>(Lsun/security/jca/ProviderList$ServiceList;)V

    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 462
    iget-object v1, p0, Lsun/security/jca/ProviderList$ServiceList;->services:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 463
    iget-object v1, p0, Lsun/security/jca/ProviderList$ServiceList;->services:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 467
    .local v0, "n":I
    :goto_0
    invoke-direct {p0, v0}, Lsun/security/jca/ProviderList$ServiceList;->tryGet(I)Ljava/security/Provider$Service;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 468
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 465
    .end local v0    # "n":I
    :cond_0
    iget-object v1, p0, Lsun/security/jca/ProviderList$ServiceList;->firstService:Ljava/security/Provider$Service;

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .restart local v0    # "n":I
    goto :goto_0

    .end local v0    # "n":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "n":I
    goto :goto_0

    .line 470
    :cond_2
    return v0
.end method
