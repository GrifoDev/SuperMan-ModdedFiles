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

    sget-object v1, Ljava/security/CryptoPrimitive;->SIGNATURE:Ljava/security/CryptoPrimitive;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    sput-object v1, Lsun/security/ssl/SignatureAndHashAlgorithm;->SIGNATURE_PRIMITIVE_SET:Ljava/util/Set;

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v1

    sput-object v1, Lsun/security/ssl/SignatureAndHashAlgorithm;->supportedMap:Ljava/util/Map;

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v1

    sput-object v1, Lsun/security/ssl/SignatureAndHashAlgorithm;->priorityMap:Ljava/util/Map;

    sget-object v2, Lsun/security/ssl/SignatureAndHashAlgorithm;->supportedMap:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->MD5:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    sget-object v3, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->RSA:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    const-string/jumbo v4, "MD5withRSA"

    const/16 v0, 0xef

    invoke-static {v1, v3, v4, v0}, Lsun/security/ssl/SignatureAndHashAlgorithm;->supports(Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;Ljava/lang/String;I)V

    sget-object v1, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->SHA1:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    sget-object v3, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->DSA:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    const-string/jumbo v4, "SHA1withDSA"

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v3, v4, v0}, Lsun/security/ssl/SignatureAndHashAlgorithm;->supports(Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;Ljava/lang/String;I)V

    sget-object v1, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->SHA1:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    sget-object v3, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->RSA:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    const-string/jumbo v4, "SHA1withRSA"

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v3, v4, v0}, Lsun/security/ssl/SignatureAndHashAlgorithm;->supports(Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;Ljava/lang/String;I)V

    sget-object v1, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->SHA1:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    sget-object v3, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->ECDSA:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    const-string/jumbo v4, "SHA1withECDSA"

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v3, v4, v0}, Lsun/security/ssl/SignatureAndHashAlgorithm;->supports(Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;Ljava/lang/String;I)V

    sget-object v1, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->SHA224:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    sget-object v3, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->RSA:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    const-string/jumbo v4, "SHA224withRSA"

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v3, v4, v0}, Lsun/security/ssl/SignatureAndHashAlgorithm;->supports(Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;Ljava/lang/String;I)V

    sget-object v1, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->SHA224:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    sget-object v3, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->ECDSA:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    const-string/jumbo v4, "SHA224withECDSA"

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v3, v4, v0}, Lsun/security/ssl/SignatureAndHashAlgorithm;->supports(Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;Ljava/lang/String;I)V

    sget-object v1, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->SHA256:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    sget-object v3, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->RSA:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    const-string/jumbo v4, "SHA256withRSA"

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v3, v4, v0}, Lsun/security/ssl/SignatureAndHashAlgorithm;->supports(Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;Ljava/lang/String;I)V

    sget-object v1, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->SHA256:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    sget-object v3, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->ECDSA:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    const-string/jumbo v4, "SHA256withECDSA"

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v3, v4, v0}, Lsun/security/ssl/SignatureAndHashAlgorithm;->supports(Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;Ljava/lang/String;I)V

    sget-object v1, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->SHA384:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    sget-object v3, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->RSA:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    const-string/jumbo v4, "SHA384withRSA"

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v3, v4, v0}, Lsun/security/ssl/SignatureAndHashAlgorithm;->supports(Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;Ljava/lang/String;I)V

    sget-object v1, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->SHA384:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    sget-object v3, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->ECDSA:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    const-string/jumbo v4, "SHA384withECDSA"

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v3, v4, v0}, Lsun/security/ssl/SignatureAndHashAlgorithm;->supports(Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;Ljava/lang/String;I)V

    sget-object v1, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->SHA512:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    sget-object v3, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->RSA:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    const-string/jumbo v4, "SHA512withRSA"

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v3, v4, v0}, Lsun/security/ssl/SignatureAndHashAlgorithm;->supports(Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;Ljava/lang/String;I)V

    sget-object v1, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->SHA512:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    sget-object v3, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->ECDSA:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    const-string/jumbo v4, "SHA512withECDSA"

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v3, v4, v0}, Lsun/security/ssl/SignatureAndHashAlgorithm;->supports(Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    shr-int/lit8 v0, p2, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->valueOf(I)Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/SignatureAndHashAlgorithm;->hash:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    and-int/lit16 v0, p2, 0xff

    invoke-static {v0}, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->valueOf(I)Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/SignatureAndHashAlgorithm;->signature:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    iput-object p1, p0, Lsun/security/ssl/SignatureAndHashAlgorithm;->algorithm:Ljava/lang/String;

    iput p2, p0, Lsun/security/ssl/SignatureAndHashAlgorithm;->id:I

    add-int/lit16 v0, p3, 0xf0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lsun/security/ssl/SignatureAndHashAlgorithm;->priority:I

    return-void
.end method

.method private constructor <init>(Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsun/security/ssl/SignatureAndHashAlgorithm;->hash:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    iput-object p2, p0, Lsun/security/ssl/SignatureAndHashAlgorithm;->signature:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    iput-object p3, p0, Lsun/security/ssl/SignatureAndHashAlgorithm;->algorithm:Ljava/lang/String;

    iget v0, p1, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->value:I

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget v1, p2, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->value:I

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    iput v0, p0, Lsun/security/ssl/SignatureAndHashAlgorithm;->id:I

    iput p4, p0, Lsun/security/ssl/SignatureAndHashAlgorithm;->priority:I

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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/security/ssl/SignatureAndHashAlgorithm;

    iget-object v4, v2, Lsun/security/ssl/SignatureAndHashAlgorithm;->algorithm:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v1, v4, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    return-object v4
.end method

.method static getHashAlgorithmName(Lsun/security/ssl/SignatureAndHashAlgorithm;)Ljava/lang/String;
    .locals 1

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

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/ssl/SignatureAndHashAlgorithm;

    iget-object v3, v1, Lsun/security/ssl/SignatureAndHashAlgorithm;->hash:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    iget v3, v3, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->value:I

    if-lez v3, :cond_0

    iget-object v3, v1, Lsun/security/ssl/SignatureAndHashAlgorithm;->hash:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    iget-object v3, v3, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->standardName:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method static getPreferableAlgorithm(Ljava/util/Collection;Ljava/lang/String;)Lsun/security/ssl/SignatureAndHashAlgorithm;
    .locals 1
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

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getPreferableAlgorithm(Ljava/util/Collection;Ljava/lang/String;Ljava/security/PrivateKey;)Lsun/security/ssl/SignatureAndHashAlgorithm;

    move-result-object v0

    return-object v0
.end method

.method static getPreferableAlgorithm(Ljava/util/Collection;Ljava/lang/String;Ljava/security/PrivateKey;)Lsun/security/ssl/SignatureAndHashAlgorithm;
    .locals 12
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

    const/16 v11, 0x300

    const/16 v10, 0x200

    const/4 v9, 0x0

    if-nez p1, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    if-nez p1, :cond_4

    return-object v9

    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsun/security/ssl/SignatureAndHashAlgorithm;

    iget v7, v4, Lsun/security/ssl/SignatureAndHashAlgorithm;->priority:I

    const/16 v8, 0xf0

    if-gt v7, v8, :cond_2

    return-object v4

    :cond_3
    return-object v9

    :cond_4
    const v3, 0x7fffffff

    if-eqz p2, :cond_5

    const-string/jumbo v7, "rsa"

    invoke-interface {p2}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string/jumbo v7, "rsa"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-static {p2}, Lsun/security/util/KeyUtil;->getKeySize(Ljava/security/Key;)I

    move-result v2

    if-lt v2, v11, :cond_7

    sget-object v7, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->SHA512:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    iget v3, v7, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->length:I

    :cond_5
    :goto_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/ssl/SignatureAndHashAlgorithm;

    iget v7, v0, Lsun/security/ssl/SignatureAndHashAlgorithm;->id:I

    and-int/lit16 v6, v7, 0xff

    const-string/jumbo v7, "rsa"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    sget-object v7, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->RSA:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    iget v7, v7, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->value:I

    if-ne v6, v7, :cond_9

    iget-object v7, v0, Lsun/security/ssl/SignatureAndHashAlgorithm;->hash:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    iget v7, v7, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->length:I

    if-gt v7, v3, :cond_6

    return-object v0

    :cond_7
    if-lt v2, v10, :cond_8

    if-ge v2, v11, :cond_8

    sget-object v7, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->SHA256:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    iget v3, v7, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->length:I

    goto :goto_0

    :cond_8
    if-lez v2, :cond_5

    if-ge v2, v10, :cond_5

    sget-object v7, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->SHA1:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    iget v3, v7, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->length:I

    goto :goto_0

    :cond_9
    const-string/jumbo v7, "dsa"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    sget-object v7, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->DSA:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    iget v7, v7, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->value:I

    if-ne v6, v7, :cond_b

    :cond_a
    :goto_1
    return-object v0

    :cond_b
    const-string/jumbo v7, "ecdsa"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    sget-object v7, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->ECDSA:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    iget v7, v7, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->value:I

    if-eq v6, v7, :cond_a

    :cond_c
    const-string/jumbo v7, "ec"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    sget-object v7, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->ECDSA:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    iget v7, v7, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->value:I

    if-ne v6, v7, :cond_6

    goto :goto_1

    :cond_d
    return-object v9
.end method

.method static getSupportedAlgorithms(Ljava/security/AlgorithmConstraints;)Ljava/util/Collection;
    .locals 7
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

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v4, Lsun/security/ssl/SignatureAndHashAlgorithm;->priorityMap:Ljava/util/Map;

    monitor-enter v4

    :try_start_0
    sget-object v3, Lsun/security/ssl/SignatureAndHashAlgorithm;->priorityMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/ssl/SignatureAndHashAlgorithm;

    iget v3, v0, Lsun/security/ssl/SignatureAndHashAlgorithm;->priority:I

    const/16 v5, 0xf0

    if-gt v3, v5, :cond_0

    sget-object v3, Lsun/security/ssl/SignatureAndHashAlgorithm;->SIGNATURE_PRIMITIVE_SET:Ljava/util/Set;

    iget-object v5, v0, Lsun/security/ssl/SignatureAndHashAlgorithm;->algorithm:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {p0, v3, v5, v6}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_1
    monitor-exit v4

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

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/ssl/SignatureAndHashAlgorithm;

    iget v3, v0, Lsun/security/ssl/SignatureAndHashAlgorithm;->priority:I

    const/16 v4, 0xf0

    if-gt v3, v4, :cond_0

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method static sizeInRecord()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method private static supports(Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;Ljava/lang/String;I)V
    .locals 4

    new-instance v0, Lsun/security/ssl/SignatureAndHashAlgorithm;

    invoke-direct {v0, p0, p1, p2, p3}, Lsun/security/ssl/SignatureAndHashAlgorithm;-><init>(Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;Ljava/lang/String;I)V

    sget-object v1, Lsun/security/ssl/SignatureAndHashAlgorithm;->supportedMap:Ljava/util/Map;

    iget v2, v0, Lsun/security/ssl/SignatureAndHashAlgorithm;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Duplicate SignatureAndHashAlgorithm definition, id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lsun/security/ssl/SignatureAndHashAlgorithm;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    sget-object v1, Lsun/security/ssl/SignatureAndHashAlgorithm;->priorityMap:Ljava/util/Map;

    iget v2, v0, Lsun/security/ssl/SignatureAndHashAlgorithm;->priority:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Duplicate SignatureAndHashAlgorithm definition, priority: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lsun/security/ssl/SignatureAndHashAlgorithm;->priority:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-void
.end method

.method static valueOf(III)Lsun/security/ssl/SignatureAndHashAlgorithm;
    .locals 5

    const/16 v4, 0x10

    and-int/lit16 p0, p0, 0xff

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 v2, p0, 0x8

    or-int v0, v2, p1

    sget-object v2, Lsun/security/ssl/SignatureAndHashAlgorithm;->supportedMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/ssl/SignatureAndHashAlgorithm;

    if-nez v1, :cond_0

    new-instance v1, Lsun/security/ssl/SignatureAndHashAlgorithm;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown (hash:0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", signature:0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, p2}, Lsun/security/ssl/SignatureAndHashAlgorithm;-><init>(Ljava/lang/String;II)V

    :cond_0
    return-object v1
.end method


# virtual methods
.method getAlgorithmName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/SignatureAndHashAlgorithm;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method getHashValue()I
    .locals 1

    iget v0, p0, Lsun/security/ssl/SignatureAndHashAlgorithm;->id:I

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method getSignatureValue()I
    .locals 1

    iget v0, p0, Lsun/security/ssl/SignatureAndHashAlgorithm;->id:I

    and-int/lit16 v0, v0, 0xff

    return v0
.end method
