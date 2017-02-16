.class final Lsun/security/ssl/SignatureAndHashAlgorithm;
.super Ljava/lang/Object;
.source "SignatureAndHashAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;,
        Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;
    }
.end annotation


# static fields
.field private static final SIGNATURE_PRIMITIVE_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/security/CryptoPrimitive;",
            ">;"
        }
    .end annotation
.end field

.field static final SUPPORTED_ALG_PRIORITY_MAX_NUM:I = 0xf0

.field private static final priorityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lsun/security/ssl/SignatureAndHashAlgorithm;",
            ">;"
        }
    .end annotation
.end field

.field private static final supportedMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lsun/security/ssl/SignatureAndHashAlgorithm;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private algorithm:Ljava/lang/String;

.field private hash:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

.field private id:I

.field private priority:I

.field private signature:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 71
    sget-object v1, Ljava/security/CryptoPrimitive;->SIGNATURE:Ljava/security/CryptoPrimitive;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    .line 70
    sput-object v1, Lsun/security/ssl/SignatureAndHashAlgorithm;->SIGNATURE_PRIMITIVE_SET:Ljava/util/Set;

    .line 409
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 408
    invoke-static {v1}, Ljava/util/Collections;->synchronizedSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v1

    sput-object v1, Lsun/security/ssl/SignatureAndHashAlgorithm;->supportedMap:Ljava/util/Map;

    .line 411
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 410
    invoke-static {v1}, Ljava/util/Collections;->synchronizedSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v1

    sput-object v1, Lsun/security/ssl/SignatureAndHashAlgorithm;->priorityMap:Ljava/util/Map;

    .line 413
    sget-object v2, Lsun/security/ssl/SignatureAndHashAlgorithm;->supportedMap:Ljava/util/Map;

    monitor-enter v2

    .line 415
    :try_start_0
    sget-object v1, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->MD5:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    sget-object v3, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->RSA:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    .line 416
    const-string/jumbo v4, "MD5withRSA"

    const/16 v0, 0xef

    .line 415
    .local v0, "p":I
    invoke-static {v1, v3, v4, v0}, Lsun/security/ssl/SignatureAndHashAlgorithm;->supports(Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;Ljava/lang/String;I)V

    .line 417
    sget-object v1, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->SHA1:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    sget-object v3, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->DSA:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    .line 418
    const-string/jumbo v4, "SHA1withDSA"

    add-int/lit8 v0, v0, -0x1

    .line 417
    invoke-static {v1, v3, v4, v0}, Lsun/security/ssl/SignatureAndHashAlgorithm;->supports(Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;Ljava/lang/String;I)V

    .line 419
    sget-object v1, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->SHA1:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    sget-object v3, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->RSA:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    .line 420
    const-string/jumbo v4, "SHA1withRSA"

    add-int/lit8 v0, v0, -0x1

    .line 419
    invoke-static {v1, v3, v4, v0}, Lsun/security/ssl/SignatureAndHashAlgorithm;->supports(Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;Ljava/lang/String;I)V

    .line 421
    sget-object v1, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->SHA1:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    sget-object v3, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->ECDSA:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    .line 422
    const-string/jumbo v4, "SHA1withECDSA"

    add-int/lit8 v0, v0, -0x1

    .line 421
    invoke-static {v1, v3, v4, v0}, Lsun/security/ssl/SignatureAndHashAlgorithm;->supports(Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;Ljava/lang/String;I)V

    .line 423
    sget-object v1, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->SHA224:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    sget-object v3, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->RSA:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    .line 424
    const-string/jumbo v4, "SHA224withRSA"

    add-int/lit8 v0, v0, -0x1

    .line 423
    invoke-static {v1, v3, v4, v0}, Lsun/security/ssl/SignatureAndHashAlgorithm;->supports(Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;Ljava/lang/String;I)V

    .line 425
    sget-object v1, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->SHA224:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    sget-object v3, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->ECDSA:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    .line 426
    const-string/jumbo v4, "SHA224withECDSA"

    add-int/lit8 v0, v0, -0x1

    .line 425
    invoke-static {v1, v3, v4, v0}, Lsun/security/ssl/SignatureAndHashAlgorithm;->supports(Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;Ljava/lang/String;I)V

    .line 427
    sget-object v1, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->SHA256:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    sget-object v3, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->RSA:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    .line 428
    const-string/jumbo v4, "SHA256withRSA"

    add-int/lit8 v0, v0, -0x1

    .line 427
    invoke-static {v1, v3, v4, v0}, Lsun/security/ssl/SignatureAndHashAlgorithm;->supports(Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;Ljava/lang/String;I)V

    .line 429
    sget-object v1, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->SHA256:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    sget-object v3, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->ECDSA:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    .line 430
    const-string/jumbo v4, "SHA256withECDSA"

    add-int/lit8 v0, v0, -0x1

    .line 429
    invoke-static {v1, v3, v4, v0}, Lsun/security/ssl/SignatureAndHashAlgorithm;->supports(Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;Ljava/lang/String;I)V

    .line 431
    sget-object v1, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->SHA384:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    sget-object v3, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->RSA:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    .line 432
    const-string/jumbo v4, "SHA384withRSA"

    add-int/lit8 v0, v0, -0x1

    .line 431
    invoke-static {v1, v3, v4, v0}, Lsun/security/ssl/SignatureAndHashAlgorithm;->supports(Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;Ljava/lang/String;I)V

    .line 433
    sget-object v1, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->SHA384:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    sget-object v3, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->ECDSA:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    .line 434
    const-string/jumbo v4, "SHA384withECDSA"

    add-int/lit8 v0, v0, -0x1

    .line 433
    invoke-static {v1, v3, v4, v0}, Lsun/security/ssl/SignatureAndHashAlgorithm;->supports(Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;Ljava/lang/String;I)V

    .line 435
    sget-object v1, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->SHA512:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    sget-object v3, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->RSA:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    .line 436
    const-string/jumbo v4, "SHA512withRSA"

    add-int/lit8 v0, v0, -0x1

    .line 435
    invoke-static {v1, v3, v4, v0}, Lsun/security/ssl/SignatureAndHashAlgorithm;->supports(Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;Ljava/lang/String;I)V

    .line 437
    sget-object v1, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->SHA512:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    sget-object v3, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->ECDSA:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    .line 438
    const-string/jumbo v4, "SHA512withECDSA"

    add-int/lit8 v0, v0, -0x1

    .line 437
    invoke-static {v1, v3, v4, v0}, Lsun/security/ssl/SignatureAndHashAlgorithm;->supports(Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 64
    return-void

    .line 413
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "sequence"    # I

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    shr-int/lit8 v0, p2, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->valueOf(I)Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/SignatureAndHashAlgorithm;->hash:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    .line 108
    and-int/lit16 v0, p2, 0xff

    invoke-static {v0}, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->valueOf(I)Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/SignatureAndHashAlgorithm;->signature:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    .line 109
    iput-object p1, p0, Lsun/security/ssl/SignatureAndHashAlgorithm;->algorithm:Ljava/lang/String;

    .line 110
    iput p2, p0, Lsun/security/ssl/SignatureAndHashAlgorithm;->id:I

    .line 113
    add-int/lit16 v0, p3, 0xf0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lsun/security/ssl/SignatureAndHashAlgorithm;->priority:I

    .line 106
    return-void
.end method

.method private constructor <init>(Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;Ljava/lang/String;I)V
    .locals 2
    .param p1, "hash"    # Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;
    .param p2, "signature"    # Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;
    .param p3, "algorithm"    # Ljava/lang/String;
    .param p4, "priority"    # I

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lsun/security/ssl/SignatureAndHashAlgorithm;->hash:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    .line 99
    iput-object p2, p0, Lsun/security/ssl/SignatureAndHashAlgorithm;->signature:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    .line 100
    iput-object p3, p0, Lsun/security/ssl/SignatureAndHashAlgorithm;->algorithm:Ljava/lang/String;

    .line 101
    iget v0, p1, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->value:I

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget v1, p2, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->value:I

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    iput v0, p0, Lsun/security/ssl/SignatureAndHashAlgorithm;->id:I

    .line 102
    iput p4, p0, Lsun/security/ssl/SignatureAndHashAlgorithm;->priority:I

    .line 97
    return-void
.end method

.method static getAlgorithmNames(Ljava/util/Collection;)[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lsun/security/ssl/SignatureAndHashAlgorithm;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 188
    .local p0, "algorithms":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/SignatureAndHashAlgorithm;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .local v0, "algorithmNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    .line 190
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "sigAlg$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/security/ssl/SignatureAndHashAlgorithm;

    .line 191
    .local v2, "sigAlg":Lsun/security/ssl/SignatureAndHashAlgorithm;
    iget-object v4, v2, Lsun/security/ssl/SignatureAndHashAlgorithm;->algorithm:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 195
    .end local v2    # "sigAlg":Lsun/security/ssl/SignatureAndHashAlgorithm;
    .end local v3    # "sigAlg$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v1, v4, [Ljava/lang/String;

    .line 196
    .local v1, "array":[Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    return-object v4
.end method

.method static getHashAlgorithmName(Lsun/security/ssl/SignatureAndHashAlgorithm;)Ljava/lang/String;
    .locals 1
    .param p0, "algorithm"    # Lsun/security/ssl/SignatureAndHashAlgorithm;

    .prologue
    .line 214
    iget-object v0, p0, Lsun/security/ssl/SignatureAndHashAlgorithm;->hash:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    iget-object v0, v0, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->standardName:Ljava/lang/String;

    return-object v0
.end method

.method static getHashAlgorithmNames(Ljava/util/Collection;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lsun/security/ssl/SignatureAndHashAlgorithm;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    .local p0, "algorithms":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/SignatureAndHashAlgorithm;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 202
    .local v0, "algorithmNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p0, :cond_1

    .line 203
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "sigAlg$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/ssl/SignatureAndHashAlgorithm;

    .line 204
    .local v1, "sigAlg":Lsun/security/ssl/SignatureAndHashAlgorithm;
    iget-object v3, v1, Lsun/security/ssl/SignatureAndHashAlgorithm;->hash:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    iget v3, v3, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->value:I

    if-lez v3, :cond_0

    .line 205
    iget-object v3, v1, Lsun/security/ssl/SignatureAndHashAlgorithm;->hash:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    iget-object v3, v3, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->standardName:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 210
    .end local v1    # "sigAlg":Lsun/security/ssl/SignatureAndHashAlgorithm;
    .end local v2    # "sigAlg$iterator":Ljava/util/Iterator;
    :cond_1
    return-object v0
.end method

.method static getPreferableAlgorithm(Ljava/util/Collection;Ljava/lang/String;)Lsun/security/ssl/SignatureAndHashAlgorithm;
    .locals 1
    .param p1, "expected"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lsun/security/ssl/SignatureAndHashAlgorithm;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lsun/security/ssl/SignatureAndHashAlgorithm;"
        }
    .end annotation

    .prologue
    .line 238
    .local p0, "algorithms":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/SignatureAndHashAlgorithm;>;"
    const/4 v0, 0x0

    .line 237
    invoke-static {p0, p1, v0}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getPreferableAlgorithm(Ljava/util/Collection;Ljava/lang/String;Ljava/security/PrivateKey;)Lsun/security/ssl/SignatureAndHashAlgorithm;

    move-result-object v0

    return-object v0
.end method

.method static getPreferableAlgorithm(Ljava/util/Collection;Ljava/lang/String;Ljava/security/PrivateKey;)Lsun/security/ssl/SignatureAndHashAlgorithm;
    .locals 12
    .param p1, "expected"    # Ljava/lang/String;
    .param p2, "signingKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lsun/security/ssl/SignatureAndHashAlgorithm;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/security/PrivateKey;",
            ")",
            "Lsun/security/ssl/SignatureAndHashAlgorithm;"
        }
    .end annotation

    .prologue
    .local p0, "algorithms":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/SignatureAndHashAlgorithm;>;"
    const/16 v11, 0x300

    const/16 v10, 0x200

    const/4 v9, 0x0

    .line 245
    if-nez p1, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 255
    :cond_0
    if-nez p1, :cond_4

    .line 256
    return-object v9

    .line 246
    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "sigAlg$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsun/security/ssl/SignatureAndHashAlgorithm;

    .line 247
    .local v4, "sigAlg":Lsun/security/ssl/SignatureAndHashAlgorithm;
    iget v7, v4, Lsun/security/ssl/SignatureAndHashAlgorithm;->priority:I

    const/16 v8, 0xf0

    if-gt v7, v8, :cond_2

    .line 248
    return-object v4

    .line 252
    .end local v4    # "sigAlg":Lsun/security/ssl/SignatureAndHashAlgorithm;
    :cond_3
    return-object v9

    .line 262
    .end local v5    # "sigAlg$iterator":Ljava/util/Iterator;
    :cond_4
    const v3, 0x7fffffff

    .line 263
    .local v3, "maxDigestLength":I
    if-eqz p2, :cond_5

    .line 264
    const-string/jumbo v7, "rsa"

    invoke-interface {p2}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    .line 263
    if-eqz v7, :cond_5

    .line 265
    const-string/jumbo v7, "rsa"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    .line 263
    if-eqz v7, :cond_5

    .line 282
    invoke-static {p2}, Lsun/security/util/KeyUtil;->getKeySize(Ljava/security/Key;)I

    move-result v2

    .line 283
    .local v2, "keySize":I
    if-lt v2, v11, :cond_7

    .line 284
    sget-object v7, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->SHA512:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    iget v3, v7, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->length:I

    .line 293
    .end local v2    # "keySize":I
    :cond_5
    :goto_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "algorithm$iterator":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/ssl/SignatureAndHashAlgorithm;

    .line 294
    .local v0, "algorithm":Lsun/security/ssl/SignatureAndHashAlgorithm;
    iget v7, v0, Lsun/security/ssl/SignatureAndHashAlgorithm;->id:I

    and-int/lit16 v6, v7, 0xff

    .line 295
    .local v6, "signValue":I
    const-string/jumbo v7, "rsa"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 296
    sget-object v7, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->RSA:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    iget v7, v7, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->value:I

    if-ne v6, v7, :cond_9

    .line 297
    iget-object v7, v0, Lsun/security/ssl/SignatureAndHashAlgorithm;->hash:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    iget v7, v7, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->length:I

    if-gt v7, v3, :cond_6

    .line 298
    return-object v0

    .line 285
    .end local v0    # "algorithm":Lsun/security/ssl/SignatureAndHashAlgorithm;
    .end local v1    # "algorithm$iterator":Ljava/util/Iterator;
    .end local v6    # "signValue":I
    .restart local v2    # "keySize":I
    :cond_7
    if-lt v2, v10, :cond_8

    if-ge v2, v11, :cond_8

    .line 286
    sget-object v7, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->SHA256:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    iget v3, v7, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->length:I

    goto :goto_0

    .line 287
    :cond_8
    if-lez v2, :cond_5

    if-ge v2, v10, :cond_5

    .line 288
    sget-object v7, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->SHA1:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    iget v3, v7, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->length:I

    goto :goto_0

    .line 301
    .end local v2    # "keySize":I
    .restart local v0    # "algorithm":Lsun/security/ssl/SignatureAndHashAlgorithm;
    .restart local v1    # "algorithm$iterator":Ljava/util/Iterator;
    .restart local v6    # "signValue":I
    :cond_9
    const-string/jumbo v7, "dsa"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 302
    sget-object v7, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->DSA:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    iget v7, v7, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->value:I

    if-ne v6, v7, :cond_b

    .line 307
    :cond_a
    :goto_1
    return-object v0

    .line 303
    :cond_b
    const-string/jumbo v7, "ecdsa"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 304
    sget-object v7, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->ECDSA:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    iget v7, v7, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->value:I

    if-eq v6, v7, :cond_a

    .line 305
    :cond_c
    const-string/jumbo v7, "ec"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 306
    sget-object v7, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->ECDSA:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    iget v7, v7, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->value:I

    if-ne v6, v7, :cond_6

    goto :goto_1

    .line 311
    .end local v0    # "algorithm":Lsun/security/ssl/SignatureAndHashAlgorithm;
    .end local v6    # "signValue":I
    :cond_d
    return-object v9
.end method

.method static getSupportedAlgorithms(Ljava/security/AlgorithmConstraints;)Ljava/util/Collection;
    .locals 7
    .param p0, "constraints"    # Ljava/security/AlgorithmConstraints;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/AlgorithmConstraints;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lsun/security/ssl/SignatureAndHashAlgorithm;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .local v2, "supported":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/SignatureAndHashAlgorithm;>;"
    sget-object v4, Lsun/security/ssl/SignatureAndHashAlgorithm;->priorityMap:Ljava/util/Map;

    monitor-enter v4

    .line 161
    :try_start_0
    sget-object v3, Lsun/security/ssl/SignatureAndHashAlgorithm;->priorityMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "sigAlg$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/ssl/SignatureAndHashAlgorithm;

    .line 162
    .local v0, "sigAlg":Lsun/security/ssl/SignatureAndHashAlgorithm;
    iget v3, v0, Lsun/security/ssl/SignatureAndHashAlgorithm;->priority:I

    const/16 v5, 0xf0

    if-gt v3, v5, :cond_0

    .line 163
    sget-object v3, Lsun/security/ssl/SignatureAndHashAlgorithm;->SIGNATURE_PRIMITIVE_SET:Ljava/util/Set;

    .line 164
    iget-object v5, v0, Lsun/security/ssl/SignatureAndHashAlgorithm;->algorithm:Ljava/lang/String;

    const/4 v6, 0x0

    .line 163
    invoke-interface {p0, v3, v5, v6}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    move-result v3

    .line 162
    if-eqz v3, :cond_0

    .line 165
    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 160
    .end local v0    # "sigAlg":Lsun/security/ssl/SignatureAndHashAlgorithm;
    .end local v1    # "sigAlg$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v1    # "sigAlg$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v4

    .line 170
    return-object v2
.end method

.method static getSupportedAlgorithms(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lsun/security/ssl/SignatureAndHashAlgorithm;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Lsun/security/ssl/SignatureAndHashAlgorithm;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    .local p0, "algorithms":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/SignatureAndHashAlgorithm;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v2, "supported":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/SignatureAndHashAlgorithm;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "sigAlg$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/ssl/SignatureAndHashAlgorithm;

    .line 178
    .local v0, "sigAlg":Lsun/security/ssl/SignatureAndHashAlgorithm;
    iget v3, v0, Lsun/security/ssl/SignatureAndHashAlgorithm;->priority:I

    const/16 v4, 0xf0

    if-gt v3, v4, :cond_0

    .line 179
    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 183
    .end local v0    # "sigAlg":Lsun/security/ssl/SignatureAndHashAlgorithm;
    :cond_1
    return-object v2
.end method

.method static sizeInRecord()I
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x2

    return v0
.end method

.method private static supports(Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;Ljava/lang/String;I)V
    .locals 4
    .param p0, "hash"    # Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;
    .param p1, "signature"    # Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "priority"    # I

    .prologue
    .line 221
    new-instance v0, Lsun/security/ssl/SignatureAndHashAlgorithm;

    invoke-direct {v0, p0, p1, p2, p3}, Lsun/security/ssl/SignatureAndHashAlgorithm;-><init>(Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;Ljava/lang/String;I)V

    .line 222
    .local v0, "pair":Lsun/security/ssl/SignatureAndHashAlgorithm;
    sget-object v1, Lsun/security/ssl/SignatureAndHashAlgorithm;->supportedMap:Ljava/util/Map;

    iget v2, v0, Lsun/security/ssl/SignatureAndHashAlgorithm;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 223
    new-instance v1, Ljava/lang/RuntimeException;

    .line 224
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Duplicate SignatureAndHashAlgorithm definition, id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 225
    iget v3, v0, Lsun/security/ssl/SignatureAndHashAlgorithm;->id:I

    .line 224
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 223
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 227
    :cond_0
    sget-object v1, Lsun/security/ssl/SignatureAndHashAlgorithm;->priorityMap:Ljava/util/Map;

    iget v2, v0, Lsun/security/ssl/SignatureAndHashAlgorithm;->priority:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 228
    new-instance v1, Ljava/lang/RuntimeException;

    .line 229
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Duplicate SignatureAndHashAlgorithm definition, priority: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 230
    iget v3, v0, Lsun/security/ssl/SignatureAndHashAlgorithm;->priority:I

    .line 229
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 228
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 218
    :cond_1
    return-void
.end method

.method static valueOf(III)Lsun/security/ssl/SignatureAndHashAlgorithm;
    .locals 5
    .param p0, "hash"    # I
    .param p1, "signature"    # I
    .param p2, "sequence"    # I

    .prologue
    const/16 v4, 0x10

    .line 121
    and-int/lit16 p0, p0, 0xff

    .line 122
    and-int/lit16 p1, p1, 0xff

    .line 124
    shl-int/lit8 v2, p0, 0x8

    or-int v0, v2, p1

    .line 125
    .local v0, "id":I
    sget-object v2, Lsun/security/ssl/SignatureAndHashAlgorithm;->supportedMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/ssl/SignatureAndHashAlgorithm;

    .line 126
    .local v1, "signAlg":Lsun/security/ssl/SignatureAndHashAlgorithm;
    if-nez v1, :cond_0

    .line 128
    new-instance v1, Lsun/security/ssl/SignatureAndHashAlgorithm;

    .line 129
    .end local v1    # "signAlg":Lsun/security/ssl/SignatureAndHashAlgorithm;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown (hash:0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 130
    const-string/jumbo v3, ", signature:0x"

    .line 129
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 130
    invoke-static {p1, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    .line 129
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 130
    const-string/jumbo v3, ")"

    .line 129
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 128
    invoke-direct {v1, v2, v0, p2}, Lsun/security/ssl/SignatureAndHashAlgorithm;-><init>(Ljava/lang/String;II)V

    .line 134
    .restart local v1    # "signAlg":Lsun/security/ssl/SignatureAndHashAlgorithm;
    :cond_0
    return-object v1
.end method


# virtual methods
.method getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lsun/security/ssl/SignatureAndHashAlgorithm;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method getHashValue()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lsun/security/ssl/SignatureAndHashAlgorithm;->id:I

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method getSignatureValue()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lsun/security/ssl/SignatureAndHashAlgorithm;->id:I

    and-int/lit16 v0, v0, 0xff

    return v0
.end method
