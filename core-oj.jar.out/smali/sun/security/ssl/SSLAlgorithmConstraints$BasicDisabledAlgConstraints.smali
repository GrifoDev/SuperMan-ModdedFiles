.class Lsun/security/ssl/SSLAlgorithmConstraints$BasicDisabledAlgConstraints;
.super Lsun/security/util/DisabledAlgorithmConstraints;
.source "SSLAlgorithmConstraints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/ssl/SSLAlgorithmConstraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BasicDisabledAlgConstraints"
.end annotation


# static fields
.field private static final synthetic -sun-security-ssl-CipherSuite$KeyExchangeSwitchesValues:[I


# direct methods
.method private static synthetic -getsun-security-ssl-CipherSuite$KeyExchangeSwitchesValues()[I
    .locals 3

    sget-object v0, Lsun/security/ssl/SSLAlgorithmConstraints$BasicDisabledAlgConstraints;->-sun-security-ssl-CipherSuite$KeyExchangeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lsun/security/ssl/SSLAlgorithmConstraints$BasicDisabledAlgConstraints;->-sun-security-ssl-CipherSuite$KeyExchangeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lsun/security/ssl/CipherSuite$KeyExchange;->values()[Lsun/security/ssl/CipherSuite$KeyExchange;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DHE_DSS:Lsun/security/ssl/CipherSuite$KeyExchange;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_f

    :goto_0
    :try_start_1
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DHE_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_e

    :goto_1
    :try_start_2
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_d

    :goto_2
    :try_start_3
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DH_DSS:Lsun/security/ssl/CipherSuite$KeyExchange;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_c

    :goto_3
    :try_start_4
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DH_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_b

    :goto_4
    :try_start_5
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDHE_ECDSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_a

    :goto_5
    :try_start_6
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDHE_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_9

    :goto_6
    :try_start_7
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_8

    :goto_7
    :try_start_8
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_ECDSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_7

    :goto_8
    :try_start_9
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_6

    :goto_9
    :try_start_a
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5:Lsun/security/ssl/CipherSuite$KeyExchange;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_5

    :goto_a
    :try_start_b
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5_EXPORT:Lsun/security/ssl/CipherSuite$KeyExchange;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_4

    :goto_b
    :try_start_c
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_NULL:Lsun/security/ssl/CipherSuite$KeyExchange;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_3

    :goto_c
    :try_start_d
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_2

    :goto_d
    :try_start_e
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_RSA_EXPORT:Lsun/security/ssl/CipherSuite$KeyExchange;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_1

    :goto_e
    :try_start_f
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_SCSV:Lsun/security/ssl/CipherSuite$KeyExchange;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_0

    :goto_f
    sput-object v0, Lsun/security/ssl/SSLAlgorithmConstraints$BasicDisabledAlgConstraints;->-sun-security-ssl-CipherSuite$KeyExchangeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_f

    :catch_1
    move-exception v1

    goto :goto_e

    :catch_2
    move-exception v1

    goto :goto_d

    :catch_3
    move-exception v1

    goto :goto_c

    :catch_4
    move-exception v1

    goto :goto_b

    :catch_5
    move-exception v1

    goto :goto_a

    :catch_6
    move-exception v1

    goto :goto_9

    :catch_7
    move-exception v1

    goto :goto_8

    :catch_8
    move-exception v1

    goto :goto_7

    :catch_9
    move-exception v1

    goto :goto_6

    :catch_a
    move-exception v1

    goto :goto_5

    :catch_b
    move-exception v1

    goto/16 :goto_4

    :catch_c
    move-exception v1

    goto/16 :goto_3

    :catch_d
    move-exception v1

    goto/16 :goto_2

    :catch_e
    move-exception v1

    goto/16 :goto_1

    :catch_f
    move-exception v1

    goto/16 :goto_0
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 259
    invoke-direct {p0, p1}, Lsun/security/util/DisabledAlgorithmConstraints;-><init>(Ljava/lang/String;)V

    .line 258
    return-void
.end method


# virtual methods
.method protected decomposes(Lsun/security/ssl/CipherSuite$BulkCipher;)Ljava/util/Set;
    .locals 2
    .param p1, "bulkCipher"    # Lsun/security/ssl/CipherSuite$BulkCipher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/ssl/CipherSuite$BulkCipher;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 359
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 361
    .local v0, "components":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p1, Lsun/security/ssl/CipherSuite$BulkCipher;->transformation:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 362
    iget-object v1, p1, Lsun/security/ssl/CipherSuite$BulkCipher;->transformation:Ljava/lang/String;

    invoke-super {p0, v1}, Lsun/security/util/DisabledAlgorithmConstraints;->decomposes(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 365
    :cond_0
    return-object v0
.end method

.method protected decomposes(Lsun/security/ssl/CipherSuite$KeyExchange;Z)Ljava/util/Set;
    .locals 3
    .param p1, "keyExchange"    # Lsun/security/ssl/CipherSuite$KeyExchange;
    .param p2, "forCertPathOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/ssl/CipherSuite$KeyExchange;",
            "Z)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 264
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 265
    .local v0, "components":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Lsun/security/ssl/SSLAlgorithmConstraints$BasicDisabledAlgConstraints;->-getsun-security-ssl-CipherSuite$KeyExchangeSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 355
    :cond_0
    :goto_0
    return-object v0

    .line 267
    :pswitch_0
    if-nez p2, :cond_0

    .line 268
    const-string/jumbo v1, "NULL"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 272
    :pswitch_1
    const-string/jumbo v1, "RSA"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 275
    :pswitch_2
    const-string/jumbo v1, "RSA"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 276
    const-string/jumbo v1, "RSA_EXPORT"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 279
    :pswitch_3
    const-string/jumbo v1, "RSA"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 280
    const-string/jumbo v1, "DH"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 281
    const-string/jumbo v1, "DiffieHellman"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 282
    const-string/jumbo v1, "DH_RSA"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 285
    :pswitch_4
    const-string/jumbo v1, "DSA"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 286
    const-string/jumbo v1, "DSS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 287
    const-string/jumbo v1, "DH"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 288
    const-string/jumbo v1, "DiffieHellman"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 289
    const-string/jumbo v1, "DH_DSS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 292
    :pswitch_5
    const-string/jumbo v1, "DSA"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 293
    const-string/jumbo v1, "DSS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 294
    const-string/jumbo v1, "DH"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 295
    const-string/jumbo v1, "DHE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 296
    const-string/jumbo v1, "DiffieHellman"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 297
    const-string/jumbo v1, "DHE_DSS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 300
    :pswitch_6
    const-string/jumbo v1, "RSA"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 301
    const-string/jumbo v1, "DH"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 302
    const-string/jumbo v1, "DHE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 303
    const-string/jumbo v1, "DiffieHellman"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 304
    const-string/jumbo v1, "DHE_RSA"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 307
    :pswitch_7
    if-nez p2, :cond_0

    .line 308
    const-string/jumbo v1, "ANON"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 309
    const-string/jumbo v1, "DH"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 310
    const-string/jumbo v1, "DiffieHellman"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 311
    const-string/jumbo v1, "DH_ANON"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 315
    :pswitch_8
    const-string/jumbo v1, "ECDH"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 316
    const-string/jumbo v1, "ECDSA"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 317
    const-string/jumbo v1, "ECDH_ECDSA"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 320
    :pswitch_9
    const-string/jumbo v1, "ECDH"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 321
    const-string/jumbo v1, "RSA"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 322
    const-string/jumbo v1, "ECDH_RSA"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 325
    :pswitch_a
    const-string/jumbo v1, "ECDHE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 326
    const-string/jumbo v1, "ECDSA"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 327
    const-string/jumbo v1, "ECDHE_ECDSA"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 330
    :pswitch_b
    const-string/jumbo v1, "ECDHE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 331
    const-string/jumbo v1, "RSA"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 332
    const-string/jumbo v1, "ECDHE_RSA"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 335
    :pswitch_c
    if-nez p2, :cond_0

    .line 336
    const-string/jumbo v1, "ECDH"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 337
    const-string/jumbo v1, "ANON"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 338
    const-string/jumbo v1, "ECDH_ANON"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 342
    :pswitch_d
    if-nez p2, :cond_0

    .line 343
    const-string/jumbo v1, "KRB5"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 347
    :pswitch_e
    if-nez p2, :cond_0

    .line 348
    const-string/jumbo v1, "KRB5_EXPORT"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 265
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_3
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_8
        :pswitch_9
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected decomposes(Lsun/security/ssl/CipherSuite$MacAlg;)Ljava/util/Set;
    .locals 2
    .param p1, "macAlg"    # Lsun/security/ssl/CipherSuite$MacAlg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/ssl/CipherSuite$MacAlg;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 369
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 371
    .local v0, "components":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v1, Lsun/security/ssl/CipherSuite;->M_MD5:Lsun/security/ssl/CipherSuite$MacAlg;

    if-ne p1, v1, :cond_1

    .line 372
    const-string/jumbo v1, "MD5"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 373
    const-string/jumbo v1, "HmacMD5"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 388
    :cond_0
    :goto_0
    return-object v0

    .line 374
    :cond_1
    sget-object v1, Lsun/security/ssl/CipherSuite;->M_SHA:Lsun/security/ssl/CipherSuite$MacAlg;

    if-ne p1, v1, :cond_2

    .line 375
    const-string/jumbo v1, "SHA1"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 376
    const-string/jumbo v1, "SHA-1"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 377
    const-string/jumbo v1, "HmacSHA1"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 378
    :cond_2
    sget-object v1, Lsun/security/ssl/CipherSuite;->M_SHA256:Lsun/security/ssl/CipherSuite$MacAlg;

    if-ne p1, v1, :cond_3

    .line 379
    const-string/jumbo v1, "SHA256"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 380
    const-string/jumbo v1, "SHA-256"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 381
    const-string/jumbo v1, "HmacSHA256"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 382
    :cond_3
    sget-object v1, Lsun/security/ssl/CipherSuite;->M_SHA384:Lsun/security/ssl/CipherSuite$MacAlg;

    if-ne p1, v1, :cond_0

    .line 383
    const-string/jumbo v1, "SHA384"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 384
    const-string/jumbo v1, "SHA-384"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 385
    const-string/jumbo v1, "HmacSHA384"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
