.class final Lsun/security/ssl/CipherSuiteList;
.super Ljava/lang/Object;
.source "CipherSuiteList.java"


# static fields
.field private static final synthetic -sun-security-ssl-CipherSuite$KeyExchangeSwitchesValues:[I


# instance fields
.field private final cipherSuites:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lsun/security/ssl/CipherSuite;",
            ">;"
        }
    .end annotation
.end field

.field private volatile containsEC:Ljava/lang/Boolean;

.field private suiteNames:[Ljava/lang/String;


# direct methods
.method private static synthetic -getsun-security-ssl-CipherSuite$KeyExchangeSwitchesValues()[I
    .locals 3

    sget-object v0, Lsun/security/ssl/CipherSuiteList;->-sun-security-ssl-CipherSuite$KeyExchangeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lsun/security/ssl/CipherSuiteList;->-sun-security-ssl-CipherSuite$KeyExchangeSwitchesValues:[I

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

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_f

    :goto_0
    :try_start_1
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DHE_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_e

    :goto_1
    :try_start_2
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_d

    :goto_2
    :try_start_3
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DH_DSS:Lsun/security/ssl/CipherSuite$KeyExchange;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_c

    :goto_3
    :try_start_4
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DH_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_b

    :goto_4
    :try_start_5
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDHE_ECDSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_a

    :goto_5
    :try_start_6
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDHE_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_9

    :goto_6
    :try_start_7
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_8

    :goto_7
    :try_start_8
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_ECDSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_7

    :goto_8
    :try_start_9
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

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
    sput-object v0, Lsun/security/ssl/CipherSuiteList;->-sun-security-ssl-CipherSuite$KeyExchangeSwitchesValues:[I

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

.method constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lsun/security/ssl/CipherSuite;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "cipherSuites":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/CipherSuite;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lsun/security/ssl/CipherSuiteList;->cipherSuites:Ljava/util/Collection;

    .line 52
    return-void
.end method

.method constructor <init>(Lsun/security/ssl/CipherSuite;)V
    .locals 2
    .param p1, "suite"    # Lsun/security/ssl/CipherSuite;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lsun/security/ssl/CipherSuiteList;->cipherSuites:Ljava/util/Collection;

    .line 61
    iget-object v0, p0, Lsun/security/ssl/CipherSuiteList;->cipherSuites:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 59
    return-void
.end method

.method constructor <init>(Lsun/security/ssl/HandshakeInStream;)V
    .locals 5
    .param p1, "in"    # Lsun/security/ssl/HandshakeInStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getBytes16()[B

    move-result-object v0

    .line 107
    .local v0, "bytes":[B
    array-length v2, v0

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 108
    new-instance v2, Ljavax/net/ssl/SSLException;

    const-string/jumbo v3, "Invalid ClientHello message"

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 110
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v0

    shr-int/lit8 v3, v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lsun/security/ssl/CipherSuiteList;->cipherSuites:Ljava/util/Collection;

    .line 111
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 112
    iget-object v2, p0, Lsun/security/ssl/CipherSuiteList;->cipherSuites:Ljava/util/Collection;

    aget-byte v3, v0, v1

    add-int/lit8 v4, v1, 0x1

    aget-byte v4, v0, v4

    invoke-static {v3, v4}, Lsun/security/ssl/CipherSuite;->valueOf(II)Lsun/security/ssl/CipherSuite;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 111
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 105
    :cond_1
    return-void
.end method

.method constructor <init>([Ljava/lang/String;)V
    .locals 7
    .param p1, "names"    # [Ljava/lang/String;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    if-nez p1, :cond_0

    .line 74
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "CipherSuites may not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 76
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lsun/security/ssl/CipherSuiteList;->cipherSuites:Ljava/util/Collection;

    .line 79
    const/4 v1, 0x0

    .line 80
    .local v1, "refreshed":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_3

    .line 81
    aget-object v3, p1, v0

    .line 82
    .local v3, "suiteName":Ljava/lang/String;
    invoke-static {v3}, Lsun/security/ssl/CipherSuite;->valueOf(Ljava/lang/String;)Lsun/security/ssl/CipherSuite;

    move-result-object v2

    .line 83
    .local v2, "suite":Lsun/security/ssl/CipherSuite;
    invoke-virtual {v2}, Lsun/security/ssl/CipherSuite;->isAvailable()Z

    move-result v4

    if-nez v4, :cond_2

    .line 84
    if-nez v1, :cond_1

    .line 87
    invoke-static {}, Lsun/security/ssl/CipherSuiteList;->clearAvailableCache()V

    .line 88
    const/4 v1, 0x1

    .line 91
    :cond_1
    invoke-virtual {v2}, Lsun/security/ssl/CipherSuite;->isAvailable()Z

    move-result v4

    if-nez v4, :cond_2

    .line 92
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Cannot support "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 93
    const-string/jumbo v6, " with currently installed providers"

    .line 92
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 96
    :cond_2
    iget-object v4, p0, Lsun/security/ssl/CipherSuiteList;->cipherSuites:Ljava/util/Collection;

    invoke-interface {v4, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    .end local v2    # "suite":Lsun/security/ssl/CipherSuite;
    .end local v3    # "suiteName":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method static declared-synchronized clearAvailableCache()V
    .locals 2

    .prologue
    const-class v1, Lsun/security/ssl/CipherSuiteList;

    monitor-enter v1

    .line 205
    :try_start_0
    invoke-static {}, Lsun/security/ssl/CipherSuite$BulkCipher;->clearAvailableCache()V

    .line 206
    invoke-static {}, Lsun/security/ssl/JsseJce;->clearEcAvailable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 203
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method collection()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lsun/security/ssl/CipherSuite;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lsun/security/ssl/CipherSuiteList;->cipherSuites:Ljava/util/Collection;

    return-object v0
.end method

.method contains(Lsun/security/ssl/CipherSuite;)Z
    .locals 1
    .param p1, "suite"    # Lsun/security/ssl/CipherSuite;

    .prologue
    .line 120
    iget-object v0, p0, Lsun/security/ssl/CipherSuiteList;->cipherSuites:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method containsEC()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 125
    iget-object v2, p0, Lsun/security/ssl/CipherSuiteList;->containsEC:Ljava/lang/Boolean;

    if-nez v2, :cond_1

    .line 126
    iget-object v2, p0, Lsun/security/ssl/CipherSuiteList;->cipherSuites:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "c$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/ssl/CipherSuite;

    .line 127
    .local v0, "c":Lsun/security/ssl/CipherSuite;
    invoke-static {}, Lsun/security/ssl/CipherSuiteList;->-getsun-security-ssl-CipherSuite$KeyExchangeSwitchesValues()[I

    move-result-object v2

    iget-object v3, v0, Lsun/security/ssl/CipherSuite;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 133
    :pswitch_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lsun/security/ssl/CipherSuiteList;->containsEC:Ljava/lang/Boolean;

    .line 134
    return v4

    .line 139
    .end local v0    # "c":Lsun/security/ssl/CipherSuite;
    :cond_0
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lsun/security/ssl/CipherSuiteList;->containsEC:Ljava/lang/Boolean;

    .line 141
    .end local v1    # "c$iterator":Ljava/util/Iterator;
    :cond_1
    iget-object v2, p0, Lsun/security/ssl/CipherSuiteList;->containsEC:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    .line 127
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lsun/security/ssl/CipherSuite;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lsun/security/ssl/CipherSuiteList;->cipherSuites:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method send(Lsun/security/ssl/HandshakeOutStream;)V
    .locals 6
    .param p1, "s"    # Lsun/security/ssl/HandshakeOutStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    iget-object v4, p0, Lsun/security/ssl/CipherSuiteList;->cipherSuites:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    new-array v3, v4, [B

    .line 189
    .local v3, "suiteBytes":[B
    const/4 v2, 0x0

    .line 190
    .local v2, "i":I
    iget-object v4, p0, Lsun/security/ssl/CipherSuiteList;->cipherSuites:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "c$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/ssl/CipherSuite;

    .line 191
    .local v0, "c":Lsun/security/ssl/CipherSuite;
    iget v4, v0, Lsun/security/ssl/CipherSuite;->id:I

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    .line 192
    add-int/lit8 v4, v2, 0x1

    iget v5, v0, Lsun/security/ssl/CipherSuite;->id:I

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 193
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 195
    .end local v0    # "c":Lsun/security/ssl/CipherSuite;
    :cond_0
    invoke-virtual {p1, v3}, Lsun/security/ssl/HandshakeOutStream;->putBytes16([B)V

    .line 187
    return-void
.end method

.method size()I
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lsun/security/ssl/CipherSuiteList;->cipherSuites:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lsun/security/ssl/CipherSuiteList;->cipherSuites:Ljava/util/Collection;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized toStringArray()[Ljava/lang/String;
    .locals 6

    .prologue
    monitor-enter p0

    .line 170
    :try_start_0
    iget-object v4, p0, Lsun/security/ssl/CipherSuiteList;->suiteNames:[Ljava/lang/String;

    if-nez v4, :cond_0

    .line 171
    iget-object v4, p0, Lsun/security/ssl/CipherSuiteList;->cipherSuites:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lsun/security/ssl/CipherSuiteList;->suiteNames:[Ljava/lang/String;

    .line 172
    const/4 v2, 0x0

    .line 173
    .local v2, "i":I
    iget-object v4, p0, Lsun/security/ssl/CipherSuiteList;->cipherSuites:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "c$iterator":Ljava/util/Iterator;
    move v3, v2

    .end local v2    # "i":I
    .local v3, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/ssl/CipherSuite;

    .line 174
    .local v0, "c":Lsun/security/ssl/CipherSuite;
    iget-object v4, p0, Lsun/security/ssl/CipherSuiteList;->suiteNames:[Ljava/lang/String;

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    iget-object v5, v0, Lsun/security/ssl/CipherSuite;->name:Ljava/lang/String;

    aput-object v5, v4, v3

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 177
    .end local v0    # "c":Lsun/security/ssl/CipherSuite;
    .end local v1    # "c$iterator":Ljava/util/Iterator;
    .end local v3    # "i":I
    :cond_0
    iget-object v4, p0, Lsun/security/ssl/CipherSuiteList;->suiteNames:[Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v4

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method
