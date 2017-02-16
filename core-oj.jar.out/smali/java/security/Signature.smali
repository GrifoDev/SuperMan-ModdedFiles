.class public abstract Ljava/security/Signature;
.super Ljava/security/SignatureSpi;
.source "Signature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/Signature$CipherAdapter;,
        Ljava/security/Signature$Delegate;
    }
.end annotation


# static fields
.field private static final RSA_CIPHER:Ljava/lang/String; = "RSA/ECB/PKCS1Padding"

.field private static final RSA_SIGNATURE:Ljava/lang/String; = "NONEwithRSA"

.field protected static final SIGN:I = 0x2

.field protected static final UNINITIALIZED:I = 0x0

.field protected static final VERIFY:I = 0x3

.field private static final debug:Lsun/security/util/Debug;

.field private static final rsaIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lsun/security/jca/ServiceId;",
            ">;"
        }
    .end annotation
.end field

.field private static final signatureInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private algorithm:Ljava/lang/String;

.field provider:Ljava/security/Provider;

.field protected state:I


# direct methods
.method static synthetic -get0(Ljava/security/Signature;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/security/Signature;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1()Lsun/security/util/Debug;
    .locals 1

    sget-object v0, Ljava/security/Signature;->debug:Lsun/security/util/Debug;

    return-object v0
.end method

.method static synthetic -get2()Ljava/util/List;
    .locals 1

    sget-object v0, Ljava/security/Signature;->rsaIds:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -wrap0(Ljava/security/Provider$Service;)Z
    .locals 1
    .param p0, "s"    # Ljava/security/Provider$Service;

    .prologue
    invoke-static {p0}, Ljava/security/Signature;->isSpi(Ljava/security/Provider$Service;)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 218
    const-string/jumbo v1, "jca"

    const-string/jumbo v2, "Signature"

    invoke-static {v1, v2}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v1

    .line 217
    sput-object v1, Ljava/security/Signature;->debug:Lsun/security/util/Debug;

    .line 274
    const/4 v1, 0x5

    new-array v1, v1, [Lsun/security/jca/ServiceId;

    .line 275
    new-instance v2, Lsun/security/jca/ServiceId;

    const-string/jumbo v3, "Signature"

    const-string/jumbo v4, "NONEwithRSA"

    invoke-direct {v2, v3, v4}, Lsun/security/jca/ServiceId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 276
    new-instance v2, Lsun/security/jca/ServiceId;

    const-string/jumbo v3, "Cipher"

    const-string/jumbo v4, "RSA/ECB/PKCS1Padding"

    invoke-direct {v2, v3, v4}, Lsun/security/jca/ServiceId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 277
    new-instance v2, Lsun/security/jca/ServiceId;

    const-string/jumbo v3, "Cipher"

    const-string/jumbo v4, "RSA/ECB"

    invoke-direct {v2, v3, v4}, Lsun/security/jca/ServiceId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 278
    new-instance v2, Lsun/security/jca/ServiceId;

    const-string/jumbo v3, "Cipher"

    const-string/jumbo v4, "RSA//PKCS1Padding"

    invoke-direct {v2, v3, v4}, Lsun/security/jca/ServiceId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 279
    new-instance v2, Lsun/security/jca/ServiceId;

    const-string/jumbo v3, "Cipher"

    const-string/jumbo v4, "RSA"

    invoke-direct {v2, v3, v4}, Lsun/security/jca/ServiceId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 273
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Ljava/security/Signature;->rsaIds:Ljava/util/List;

    .line 358
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Ljava/security/Signature;->signatureInfo:Ljava/util/Map;

    .line 359
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 361
    .local v0, "TRUE":Ljava/lang/Boolean;
    sget-object v1, Ljava/security/Signature;->signatureInfo:Ljava/util/Map;

    const-string/jumbo v2, "sun.security.provider.DSA$RawDSA"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    sget-object v1, Ljava/security/Signature;->signatureInfo:Ljava/util/Map;

    const-string/jumbo v2, "sun.security.provider.DSA$SHA1withDSA"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    sget-object v1, Ljava/security/Signature;->signatureInfo:Ljava/util/Map;

    const-string/jumbo v2, "sun.security.rsa.RSASignature$MD2withRSA"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    sget-object v1, Ljava/security/Signature;->signatureInfo:Ljava/util/Map;

    const-string/jumbo v2, "sun.security.rsa.RSASignature$MD5withRSA"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    sget-object v1, Ljava/security/Signature;->signatureInfo:Ljava/util/Map;

    const-string/jumbo v2, "sun.security.rsa.RSASignature$SHA1withRSA"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    sget-object v1, Ljava/security/Signature;->signatureInfo:Ljava/util/Map;

    const-string/jumbo v2, "sun.security.rsa.RSASignature$SHA256withRSA"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    sget-object v1, Ljava/security/Signature;->signatureInfo:Ljava/util/Map;

    const-string/jumbo v2, "sun.security.rsa.RSASignature$SHA384withRSA"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    sget-object v1, Ljava/security/Signature;->signatureInfo:Ljava/util/Map;

    const-string/jumbo v2, "sun.security.rsa.RSASignature$SHA512withRSA"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    sget-object v1, Ljava/security/Signature;->signatureInfo:Ljava/util/Map;

    const-string/jumbo v2, "com.sun.net.ssl.internal.ssl.RSASignature"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    sget-object v1, Ljava/security/Signature;->signatureInfo:Ljava/util/Map;

    const-string/jumbo v2, "sun.security.pkcs11.P11Signature"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 262
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    .line 251
    const/4 v0, 0x0

    iput v0, p0, Ljava/security/Signature;->state:I

    .line 263
    iput-object p1, p0, Ljava/security/Signature;->algorithm:Ljava/lang/String;

    .line 262
    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Ljava/security/Signature;
    .locals 9
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 313
    const-string/jumbo v6, "NONEwithRSA"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 314
    sget-object v6, Ljava/security/Signature;->rsaIds:Ljava/util/List;

    invoke-static {v6}, Lsun/security/jca/GetInstance;->getServices(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 318
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider$Service;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 319
    .local v5, "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/Provider$Service;>;"
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 320
    new-instance v6, Ljava/security/NoSuchAlgorithmException;

    .line 321
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " Signature not available"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 320
    invoke-direct {v6, v7}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 316
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider$Service;>;"
    .end local v5    # "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/Provider$Service;>;"
    :cond_0
    const-string/jumbo v6, "Signature"

    invoke-static {v6, p0}, Lsun/security/jca/GetInstance;->getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider$Service;>;"
    goto :goto_0

    .line 335
    .local v4, "s":Ljava/security/Provider$Service;
    .restart local v5    # "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/Provider$Service;>;"
    :catch_0
    move-exception v0

    .line 336
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    move-object v1, v0

    .line 339
    .local v1, "failure":Ljava/security/NoSuchAlgorithmException;
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 326
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v1    # "failure":Ljava/security/NoSuchAlgorithmException;
    .end local v4    # "s":Ljava/security/Provider$Service;
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/Provider$Service;

    .line 327
    .restart local v4    # "s":Ljava/security/Provider$Service;
    invoke-static {v4}, Ljava/security/Signature;->isSpi(Ljava/security/Provider$Service;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 328
    new-instance v6, Ljava/security/Signature$Delegate;

    invoke-direct {v6, p0}, Ljava/security/Signature$Delegate;-><init>(Ljava/lang/String;)V

    return-object v6

    .line 333
    :cond_2
    :try_start_0
    const-class v6, Ljava/security/SignatureSpi;

    invoke-static {v4, v6}, Lsun/security/jca/GetInstance;->getInstance(Ljava/security/Provider$Service;Ljava/lang/Class;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v2

    .line 334
    .local v2, "instance":Lsun/security/jca/GetInstance$Instance;
    invoke-static {v2, p0}, Ljava/security/Signature;->getInstance(Lsun/security/jca/GetInstance$Instance;Ljava/lang/String;)Ljava/security/Signature;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    return-object v6

    .line 340
    .end local v2    # "instance":Lsun/security/jca/GetInstance$Instance;
    .restart local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v1    # "failure":Ljava/security/NoSuchAlgorithmException;
    :cond_3
    throw v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;
    .locals 5
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 439
    const-string/jumbo v2, "NONEwithRSA"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 441
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 442
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "missing provider"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 444
    :cond_1
    invoke-static {p1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    .line 445
    .local v1, "p":Ljava/security/Provider;
    if-nez v1, :cond_2

    .line 446
    new-instance v2, Ljava/security/NoSuchProviderException;

    .line 447
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "no such provider: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 446
    invoke-direct {v2, v3}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 449
    :cond_2
    invoke-static {v1}, Ljava/security/Signature;->getInstanceRSA(Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object v2

    return-object v2

    .line 452
    .end local v1    # "p":Ljava/security/Provider;
    :cond_3
    const-string/jumbo v2, "Signature"

    const-class v3, Ljava/security/SignatureSpi;

    .line 451
    invoke-static {v2, v3, p0, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 453
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    invoke-static {v0, p0}, Ljava/security/Signature;->getInstance(Lsun/security/jca/GetInstance$Instance;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v2

    return-object v2
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;
    .locals 3
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 487
    const-string/jumbo v1, "NONEwithRSA"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 489
    if-nez p1, :cond_0

    .line 490
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "missing provider"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 492
    :cond_0
    invoke-static {p1}, Ljava/security/Signature;->getInstanceRSA(Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object v1

    return-object v1

    .line 495
    :cond_1
    const-string/jumbo v1, "Signature"

    const-class v2, Ljava/security/SignatureSpi;

    .line 494
    invoke-static {v1, v2, p0, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/security/Provider;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 496
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    invoke-static {v0, p0}, Ljava/security/Signature;->getInstance(Lsun/security/jca/GetInstance$Instance;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    return-object v1
.end method

.method private static getInstance(Lsun/security/jca/GetInstance$Instance;Ljava/lang/String;)Ljava/security/Signature;
    .locals 3
    .param p0, "instance"    # Lsun/security/jca/GetInstance$Instance;
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 345
    iget-object v2, p0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    instance-of v2, v2, Ljava/security/Signature;

    if-eqz v2, :cond_0

    .line 346
    iget-object v0, p0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v0, Ljava/security/Signature;

    .line 351
    .local v0, "sig":Ljava/security/Signature;
    :goto_0
    iget-object v2, p0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    iput-object v2, v0, Ljava/security/Signature;->provider:Ljava/security/Provider;

    .line 352
    return-object v0

    .line 348
    .end local v0    # "sig":Ljava/security/Signature;
    :cond_0
    iget-object v1, p0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v1, Ljava/security/SignatureSpi;

    .line 349
    .local v1, "spi":Ljava/security/SignatureSpi;
    new-instance v0, Ljava/security/Signature$Delegate;

    invoke-direct {v0, v1, p1}, Ljava/security/Signature$Delegate;-><init>(Ljava/security/SignatureSpi;Ljava/lang/String;)V

    .restart local v0    # "sig":Ljava/security/Signature;
    goto :goto_0
.end method

.method private static getInstanceRSA(Ljava/security/Provider;)Ljava/security/Signature;
    .locals 7
    .param p0, "p"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 504
    const-string/jumbo v4, "Signature"

    const-string/jumbo v5, "NONEwithRSA"

    invoke-virtual {p0, v4, v5}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v3

    .line 505
    .local v3, "s":Ljava/security/Provider$Service;
    if-eqz v3, :cond_0

    .line 506
    const-class v4, Ljava/security/SignatureSpi;

    invoke-static {v3, v4}, Lsun/security/jca/GetInstance;->getInstance(Ljava/security/Provider$Service;Ljava/lang/Class;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v2

    .line 507
    .local v2, "instance":Lsun/security/jca/GetInstance$Instance;
    const-string/jumbo v4, "NONEwithRSA"

    invoke-static {v2, v4}, Ljava/security/Signature;->getInstance(Lsun/security/jca/GetInstance$Instance;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v4

    return-object v4

    .line 511
    .end local v2    # "instance":Lsun/security/jca/GetInstance$Instance;
    :cond_0
    :try_start_0
    const-string/jumbo v4, "RSA/ECB/PKCS1Padding"

    invoke-static {v4, p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 512
    .local v0, "c":Ljavax/crypto/Cipher;
    new-instance v4, Ljava/security/Signature$Delegate;

    new-instance v5, Ljava/security/Signature$CipherAdapter;

    invoke-direct {v5, v0}, Ljava/security/Signature$CipherAdapter;-><init>(Ljavax/crypto/Cipher;)V

    const-string/jumbo v6, "NONEwithRSA"

    invoke-direct {v4, v5, v6}, Ljava/security/Signature$Delegate;-><init>(Ljava/security/SignatureSpi;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 513
    .end local v0    # "c":Ljavax/crypto/Cipher;
    :catch_0
    move-exception v1

    .line 516
    .local v1, "e":Ljava/security/GeneralSecurityException;
    new-instance v4, Ljava/security/NoSuchAlgorithmException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "no such algorithm: NONEwithRSA for provider "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 517
    invoke-virtual {p0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v6

    .line 516
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private static isSpi(Ljava/security/Provider$Service;)Z
    .locals 8
    .param p0, "s"    # Ljava/security/Provider$Service;

    .prologue
    .line 374
    invoke-virtual {p0}, Ljava/security/Provider$Service;->getType()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "Cipher"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 376
    const/4 v5, 0x1

    return v5

    .line 378
    :cond_0
    invoke-virtual {p0}, Ljava/security/Provider$Service;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 379
    .local v0, "className":Ljava/lang/String;
    sget-object v5, Ljava/security/Signature;->signatureInfo:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    .line 380
    .local v4, "result":Ljava/lang/Boolean;
    if-nez v4, :cond_2

    .line 382
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p0, v5}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 386
    .local v2, "instance":Ljava/lang/Object;
    instance-of v5, v2, Ljava/security/SignatureSpi;

    if-eqz v5, :cond_4

    .line 387
    instance-of v5, v2, Ljava/security/Signature;

    if-nez v5, :cond_3

    const/4 v3, 0x1

    .line 388
    .local v3, "r":Z
    :goto_0
    sget-object v5, Ljava/security/Signature;->debug:Lsun/security/util/Debug;

    if-eqz v5, :cond_1

    if-nez v3, :cond_1

    .line 389
    sget-object v5, Ljava/security/Signature;->debug:Lsun/security/util/Debug;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Not a SignatureSpi "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 390
    sget-object v5, Ljava/security/Signature;->debug:Lsun/security/util/Debug;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Delayed provider selection may not be available for algorithm "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 391
    invoke-virtual {p0}, Ljava/security/Provider$Service;->getAlgorithm()Ljava/lang/String;

    move-result-object v7

    .line 390
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 393
    :cond_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 394
    sget-object v5, Ljava/security/Signature;->signatureInfo:Ljava/util/Map;

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    .end local v2    # "instance":Ljava/lang/Object;
    .end local v3    # "r":Z
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    return v5

    .line 387
    .restart local v2    # "instance":Ljava/lang/Object;
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "r":Z
    goto :goto_0

    .line 386
    .end local v3    # "r":Z
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "r":Z
    goto :goto_0

    .line 395
    .end local v2    # "instance":Ljava/lang/Object;
    .end local v3    # "r":Z
    :catch_0
    move-exception v1

    .line 397
    .local v1, "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    return v5
.end method


# virtual methods
.method chooseFirstProvider()V
    .locals 0

    .prologue
    .line 531
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 988
    instance-of v0, p0, Ljava/lang/Cloneable;

    if-eqz v0, :cond_0

    .line 989
    invoke-super {p0}, Ljava/security/SignatureSpi;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 991
    :cond_0
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 858
    iget-object v0, p0, Ljava/security/Signature;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentSpi()Ljava/security/SignatureSpi;
    .locals 1

    .prologue
    .line 1001
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "param"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 976
    invoke-virtual {p0, p1}, Ljava/security/Signature;->engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getParameters()Ljava/security/AlgorithmParameters;
    .locals 1

    .prologue
    .line 946
    invoke-virtual {p0}, Ljava/security/Signature;->engineGetParameters()Ljava/security/AlgorithmParameters;

    move-result-object v0

    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 1

    .prologue
    .line 527
    invoke-virtual {p0}, Ljava/security/Signature;->chooseFirstProvider()V

    .line 528
    iget-object v0, p0, Ljava/security/Signature;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final initSign(Ljava/security/PrivateKey;)V
    .locals 1
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 607
    invoke-virtual {p0, p1}, Ljava/security/Signature;->engineInitSign(Ljava/security/PrivateKey;)V

    .line 608
    const/4 v0, 0x2

    iput v0, p0, Ljava/security/Signature;->state:I

    .line 606
    return-void
.end method

.method public final initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .locals 1
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 625
    invoke-virtual {p0, p1, p2}, Ljava/security/Signature;->engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    .line 626
    const/4 v0, 0x2

    iput v0, p0, Ljava/security/Signature;->state:I

    .line 624
    return-void
.end method

.method public final initVerify(Ljava/security/PublicKey;)V
    .locals 1
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 547
    invoke-virtual {p0, p1}, Ljava/security/Signature;->engineInitVerify(Ljava/security/PublicKey;)V

    .line 548
    const/4 v0, 0x3

    iput v0, p0, Ljava/security/Signature;->state:I

    .line 546
    return-void
.end method

.method public final initVerify(Ljava/security/cert/Certificate;)V
    .locals 6
    .param p1, "certificate"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 574
    instance-of v4, p1, Ljava/security/cert/X509Certificate;

    if-eqz v4, :cond_0

    move-object v0, p1

    .line 578
    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 579
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v1

    .line 581
    .local v1, "critSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 590
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v1    # "critSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    .line 591
    .local v3, "publicKey":Ljava/security/PublicKey;
    invoke-virtual {p0, v3}, Ljava/security/Signature;->engineInitVerify(Ljava/security/PublicKey;)V

    .line 592
    const/4 v4, 0x3

    iput v4, p0, Ljava/security/Signature;->state:I

    .line 570
    return-void

    .line 582
    .end local v3    # "publicKey":Ljava/security/PublicKey;
    .restart local v0    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v1    # "critSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    const-string/jumbo v4, "2.5.29.15"

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 581
    if-eqz v4, :cond_0

    .line 583
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v2

    .line 585
    .local v2, "keyUsageInfo":[Z
    if-eqz v2, :cond_0

    const/4 v4, 0x0

    aget-boolean v4, v2, v4

    if-nez v4, :cond_0

    .line 586
    new-instance v4, Ljava/security/InvalidKeyException;

    const-string/jumbo v5, "Wrong key usage"

    invoke-direct {v4, v5}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public final setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 912
    invoke-virtual {p0, p1, p2}, Ljava/security/Signature;->engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 911
    return-void
.end method

.method public final setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 0
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 927
    invoke-virtual {p0, p1}, Ljava/security/Signature;->engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 926
    return-void
.end method

.method public final sign([BII)I
    .locals 2
    .param p1, "outbuf"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 685
    if-nez p1, :cond_0

    .line 686
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No output buffer given"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 688
    :cond_0
    array-length v0, p1

    sub-int/2addr v0, p2

    if-ge v0, p3, :cond_1

    .line 689
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 690
    const-string/jumbo v1, "Output buffer too small for specified offset and length"

    .line 689
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 692
    :cond_1
    iget v0, p0, Ljava/security/Signature;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 693
    new-instance v0, Ljava/security/SignatureException;

    const-string/jumbo v1, "object not initialized for signing"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 696
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Ljava/security/Signature;->engineSign([BII)I

    move-result v0

    return v0
.end method

.method public final sign()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 648
    iget v0, p0, Ljava/security/Signature;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 649
    invoke-virtual {p0}, Ljava/security/Signature;->engineSign()[B

    move-result-object v0

    return-object v0

    .line 651
    :cond_0
    new-instance v0, Ljava/security/SignatureException;

    const-string/jumbo v1, "object not initialized for signing"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 869
    const-string/jumbo v0, ""

    .line 870
    .local v0, "initState":Ljava/lang/String;
    iget v1, p0, Ljava/security/Signature;->state:I

    packed-switch v1, :pswitch_data_0

    .line 881
    :goto_0
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Signature object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/security/Signature;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 872
    :pswitch_1
    const-string/jumbo v0, "<not initialized>"

    goto :goto_0

    .line 875
    :pswitch_2
    const-string/jumbo v0, "<initialized for verifying>"

    goto :goto_0

    .line 878
    :pswitch_3
    const-string/jumbo v0, "<initialized for signing>"

    goto :goto_0

    .line 870
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public final update(B)V
    .locals 2
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 776
    iget v0, p0, Ljava/security/Signature;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Ljava/security/Signature;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 777
    :cond_0
    invoke-virtual {p0, p1}, Ljava/security/Signature;->engineUpdate(B)V

    .line 775
    return-void

    .line 779
    :cond_1
    new-instance v0, Ljava/security/SignatureException;

    const-string/jumbo v1, "object not initialized for signature or verification"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final update(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 842
    iget v0, p0, Ljava/security/Signature;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Ljava/security/Signature;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 843
    new-instance v0, Ljava/security/SignatureException;

    const-string/jumbo v1, "object not initialized for signature or verification"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 846
    :cond_0
    if-nez p1, :cond_1

    .line 847
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 849
    :cond_1
    invoke-virtual {p0, p1}, Ljava/security/Signature;->engineUpdate(Ljava/nio/ByteBuffer;)V

    .line 841
    return-void
.end method

.method public final update([B)V
    .locals 2
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 794
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/security/Signature;->update([BII)V

    .line 793
    return-void
.end method

.method public final update([BII)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 812
    if-nez p1, :cond_0

    .line 813
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "data == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 816
    :cond_0
    if-ltz p2, :cond_1

    if-gez p3, :cond_2

    .line 817
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 816
    :cond_2
    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_1

    .line 820
    iget v0, p0, Ljava/security/Signature;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    iget v0, p0, Ljava/security/Signature;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 821
    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Ljava/security/Signature;->engineUpdate([BII)V

    .line 809
    return-void

    .line 823
    :cond_4
    new-instance v0, Ljava/security/SignatureException;

    const-string/jumbo v1, "object not initialized for signature or verification"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final verify([B)Z
    .locals 2
    .param p1, "signature"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 718
    iget v0, p0, Ljava/security/Signature;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 719
    invoke-virtual {p0, p1}, Ljava/security/Signature;->engineVerify([B)Z

    const/4 v0, 0x1

    return v0

    .line 721
    :cond_0
    new-instance v0, Ljava/security/SignatureException;

    const-string/jumbo v1, "object not initialized for verification"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final verify([BII)Z
    .locals 2
    .param p1, "signature"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 755
    iget v0, p0, Ljava/security/Signature;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 756
    if-eqz p1, :cond_0

    if-gez p2, :cond_1

    .line 758
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Bad arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 756
    :cond_1
    if-ltz p3, :cond_0

    .line 757
    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_0

    .line 761
    invoke-virtual {p0, p1, p2, p3}, Ljava/security/Signature;->engineVerify([BII)Z

    const/4 v0, 0x1

    return v0

    .line 763
    :cond_2
    new-instance v0, Ljava/security/SignatureException;

    const-string/jumbo v1, "object not initialized for verification"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
