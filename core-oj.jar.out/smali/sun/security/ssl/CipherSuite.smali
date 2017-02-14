.class final Lsun/security/ssl/CipherSuite;
.super Ljava/lang/Object;
.source "CipherSuite.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/ssl/CipherSuite$BulkCipher;,
        Lsun/security/ssl/CipherSuite$KeyExchange;,
        Lsun/security/ssl/CipherSuite$MacAlg;,
        Lsun/security/ssl/CipherSuite$PRF;
    }
.end annotation


# static fields
.field private static final ALLOW_ECC:Z

.field static final B_3DES:Lsun/security/ssl/CipherSuite$BulkCipher;

.field static final B_AES_128:Lsun/security/ssl/CipherSuite$BulkCipher;

.field static final B_AES_256:Lsun/security/ssl/CipherSuite$BulkCipher;

.field static final B_DES:Lsun/security/ssl/CipherSuite$BulkCipher;

.field static final B_DES_40:Lsun/security/ssl/CipherSuite$BulkCipher;

.field static final B_IDEA:Lsun/security/ssl/CipherSuite$BulkCipher;

.field static final B_NULL:Lsun/security/ssl/CipherSuite$BulkCipher;

.field static final B_RC2_40:Lsun/security/ssl/CipherSuite$BulkCipher;

.field static final B_RC4_128:Lsun/security/ssl/CipherSuite$BulkCipher;

.field static final B_RC4_40:Lsun/security/ssl/CipherSuite$BulkCipher;

.field static final C_NULL:Lsun/security/ssl/CipherSuite;

.field static final C_SCSV:Lsun/security/ssl/CipherSuite;

.field static final DEFAULT_SUITES_PRIORITY:I = 0x12c

.field static final DYNAMIC_AVAILABILITY:Z = true

.field static final M_MD5:Lsun/security/ssl/CipherSuite$MacAlg;

.field static final M_NULL:Lsun/security/ssl/CipherSuite$MacAlg;

.field static final M_SHA:Lsun/security/ssl/CipherSuite$MacAlg;

.field static final M_SHA256:Lsun/security/ssl/CipherSuite$MacAlg;

.field static final M_SHA384:Lsun/security/ssl/CipherSuite$MacAlg;

.field static final SUPPORTED_SUITES_PRIORITY:I = 0x1

.field private static final idMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lsun/security/ssl/CipherSuite;",
            ">;"
        }
    .end annotation
.end field

.field private static final nameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lsun/security/ssl/CipherSuite;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final allowed:Z

.field final cipher:Lsun/security/ssl/CipherSuite$BulkCipher;

.field final exportable:Z

.field final id:I

.field final keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

.field final macAlg:Lsun/security/ssl/CipherSuite$MacAlg;

.field final name:Ljava/lang/String;

.field final obsoleted:I

.field final prfAlg:Lsun/security/ssl/CipherSuite$PRF;

.field final priority:I

.field final supported:I


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lsun/security/ssl/CipherSuite;->ALLOW_ECC:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 19

    const-string/jumbo v1, "com.sun.net.ssl.enableECC"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lsun/security/ssl/Debug;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lsun/security/ssl/CipherSuite;->ALLOW_ECC:Z

    new-instance v1, Lsun/security/ssl/CipherSuite$BulkCipher;

    const-string/jumbo v2, "NULL"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v1 .. v6}, Lsun/security/ssl/CipherSuite$BulkCipher;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v1, Lsun/security/ssl/CipherSuite;->B_NULL:Lsun/security/ssl/CipherSuite$BulkCipher;

    new-instance v1, Lsun/security/ssl/CipherSuite$BulkCipher;

    const-string/jumbo v2, "RC4"

    const/4 v3, 0x5

    const/16 v4, 0x10

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v1 .. v6}, Lsun/security/ssl/CipherSuite$BulkCipher;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v1, Lsun/security/ssl/CipherSuite;->B_RC4_40:Lsun/security/ssl/CipherSuite$BulkCipher;

    new-instance v1, Lsun/security/ssl/CipherSuite$BulkCipher;

    const-string/jumbo v2, "RC2"

    const/4 v3, 0x5

    const/16 v4, 0x10

    const/16 v5, 0x8

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lsun/security/ssl/CipherSuite$BulkCipher;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v1, Lsun/security/ssl/CipherSuite;->B_RC2_40:Lsun/security/ssl/CipherSuite$BulkCipher;

    new-instance v1, Lsun/security/ssl/CipherSuite$BulkCipher;

    const-string/jumbo v2, "DES/CBC/NoPadding"

    const/4 v3, 0x5

    const/16 v4, 0x8

    const/16 v5, 0x8

    const/4 v6, 0x1

    invoke-direct/range {v1 .. v6}, Lsun/security/ssl/CipherSuite$BulkCipher;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v1, Lsun/security/ssl/CipherSuite;->B_DES_40:Lsun/security/ssl/CipherSuite$BulkCipher;

    new-instance v1, Lsun/security/ssl/CipherSuite$BulkCipher;

    const-string/jumbo v2, "RC4"

    const/16 v4, 0x10

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct {v1, v2, v4, v5, v6}, Lsun/security/ssl/CipherSuite$BulkCipher;-><init>(Ljava/lang/String;IIZ)V

    sput-object v1, Lsun/security/ssl/CipherSuite;->B_RC4_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    new-instance v1, Lsun/security/ssl/CipherSuite$BulkCipher;

    const-string/jumbo v2, "DES/CBC/NoPadding"

    const/16 v4, 0x8

    const/16 v5, 0x8

    const/4 v6, 0x1

    invoke-direct {v1, v2, v4, v5, v6}, Lsun/security/ssl/CipherSuite$BulkCipher;-><init>(Ljava/lang/String;IIZ)V

    sput-object v1, Lsun/security/ssl/CipherSuite;->B_DES:Lsun/security/ssl/CipherSuite$BulkCipher;

    new-instance v1, Lsun/security/ssl/CipherSuite$BulkCipher;

    const-string/jumbo v2, "DESede/CBC/NoPadding"

    const/16 v4, 0x18

    const/16 v5, 0x8

    const/4 v6, 0x1

    invoke-direct {v1, v2, v4, v5, v6}, Lsun/security/ssl/CipherSuite$BulkCipher;-><init>(Ljava/lang/String;IIZ)V

    sput-object v1, Lsun/security/ssl/CipherSuite;->B_3DES:Lsun/security/ssl/CipherSuite$BulkCipher;

    new-instance v1, Lsun/security/ssl/CipherSuite$BulkCipher;

    const-string/jumbo v2, "IDEA"

    const/16 v4, 0x10

    const/16 v5, 0x8

    const/4 v6, 0x0

    invoke-direct {v1, v2, v4, v5, v6}, Lsun/security/ssl/CipherSuite$BulkCipher;-><init>(Ljava/lang/String;IIZ)V

    sput-object v1, Lsun/security/ssl/CipherSuite;->B_IDEA:Lsun/security/ssl/CipherSuite$BulkCipher;

    new-instance v1, Lsun/security/ssl/CipherSuite$BulkCipher;

    const-string/jumbo v2, "AES/CBC/NoPadding"

    const/16 v4, 0x10

    const/16 v5, 0x10

    const/4 v6, 0x1

    invoke-direct {v1, v2, v4, v5, v6}, Lsun/security/ssl/CipherSuite$BulkCipher;-><init>(Ljava/lang/String;IIZ)V

    sput-object v1, Lsun/security/ssl/CipherSuite;->B_AES_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    new-instance v1, Lsun/security/ssl/CipherSuite$BulkCipher;

    const-string/jumbo v2, "AES/CBC/NoPadding"

    const/16 v4, 0x20

    const/16 v5, 0x10

    const/4 v6, 0x1

    invoke-direct {v1, v2, v4, v5, v6}, Lsun/security/ssl/CipherSuite$BulkCipher;-><init>(Ljava/lang/String;IIZ)V

    sput-object v1, Lsun/security/ssl/CipherSuite;->B_AES_256:Lsun/security/ssl/CipherSuite$BulkCipher;

    new-instance v1, Lsun/security/ssl/CipherSuite$MacAlg;

    const-string/jumbo v2, "NULL"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v1, v2, v4, v5, v6}, Lsun/security/ssl/CipherSuite$MacAlg;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lsun/security/ssl/CipherSuite;->M_NULL:Lsun/security/ssl/CipherSuite$MacAlg;

    new-instance v1, Lsun/security/ssl/CipherSuite$MacAlg;

    const-string/jumbo v2, "MD5"

    const/16 v4, 0x10

    const/16 v5, 0x40

    const/16 v6, 0x9

    invoke-direct {v1, v2, v4, v5, v6}, Lsun/security/ssl/CipherSuite$MacAlg;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lsun/security/ssl/CipherSuite;->M_MD5:Lsun/security/ssl/CipherSuite$MacAlg;

    new-instance v1, Lsun/security/ssl/CipherSuite$MacAlg;

    const-string/jumbo v2, "SHA"

    const/16 v4, 0x14

    const/16 v5, 0x40

    const/16 v6, 0x9

    invoke-direct {v1, v2, v4, v5, v6}, Lsun/security/ssl/CipherSuite$MacAlg;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lsun/security/ssl/CipherSuite;->M_SHA:Lsun/security/ssl/CipherSuite$MacAlg;

    new-instance v1, Lsun/security/ssl/CipherSuite$MacAlg;

    const-string/jumbo v2, "SHA256"

    const/16 v4, 0x20

    const/16 v5, 0x40

    const/16 v6, 0x9

    invoke-direct {v1, v2, v4, v5, v6}, Lsun/security/ssl/CipherSuite$MacAlg;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lsun/security/ssl/CipherSuite;->M_SHA256:Lsun/security/ssl/CipherSuite$MacAlg;

    new-instance v1, Lsun/security/ssl/CipherSuite$MacAlg;

    const-string/jumbo v2, "SHA384"

    const/16 v4, 0x30

    const/16 v5, 0x80

    const/16 v6, 0x11

    invoke-direct {v1, v2, v4, v5, v6}, Lsun/security/ssl/CipherSuite$MacAlg;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lsun/security/ssl/CipherSuite;->M_SHA384:Lsun/security/ssl/CipherSuite$MacAlg;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lsun/security/ssl/CipherSuite;->idMap:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lsun/security/ssl/CipherSuite;->nameMap:Ljava/util/Map;

    const/16 v16, 0x0

    const/16 v17, 0x1

    invoke-static {}, Lsun/security/ssl/SunJSSE;->isFIPS()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v14, 0x1

    :goto_0
    const-string/jumbo v1, "SSL_NULL_WITH_NULL_NULL"

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_NULL:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_NULL:Lsun/security/ssl/CipherSuite$BulkCipher;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    const v7, 0xffff

    sget-object v1, Lsun/security/ssl/ProtocolVersion;->TLS11:Lsun/security/ssl/ProtocolVersion;

    iget v0, v1, Lsun/security/ssl/ProtocolVersion;->v:I

    move/from16 v18, v0

    sget-object v1, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v8, v1, Lsun/security/ssl/ProtocolVersion;->v:I

    const-string/jumbo v1, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384"

    const/16 v3, 0x257

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDHE_ECDSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_256:Lsun/security/ssl/CipherSuite$BulkCipher;

    sget-object v9, Lsun/security/ssl/CipherSuite$PRF;->P_SHA384:Lsun/security/ssl/CipherSuite$PRF;

    const v2, 0xc024

    const/4 v6, 0x1

    invoke-static/range {v1 .. v9}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZIILsun/security/ssl/CipherSuite$PRF;)V

    const-string/jumbo v1, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384"

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDHE_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_256:Lsun/security/ssl/CipherSuite$BulkCipher;

    sget-object v9, Lsun/security/ssl/CipherSuite$PRF;->P_SHA384:Lsun/security/ssl/CipherSuite$PRF;

    const v2, 0xc028

    const/4 v6, 0x1

    invoke-static/range {v1 .. v9}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZIILsun/security/ssl/CipherSuite$PRF;)V

    const-string/jumbo v1, "TLS_RSA_WITH_AES_256_CBC_SHA256"

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_256:Lsun/security/ssl/CipherSuite$BulkCipher;

    sget-object v9, Lsun/security/ssl/CipherSuite$PRF;->P_SHA256:Lsun/security/ssl/CipherSuite$PRF;

    const/16 v2, 0x3d

    const/4 v6, 0x1

    invoke-static/range {v1 .. v9}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZIILsun/security/ssl/CipherSuite$PRF;)V

    const-string/jumbo v1, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384"

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_ECDSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_256:Lsun/security/ssl/CipherSuite$BulkCipher;

    sget-object v9, Lsun/security/ssl/CipherSuite$PRF;->P_SHA384:Lsun/security/ssl/CipherSuite$PRF;

    const v2, 0xc026

    const/4 v6, 0x1

    invoke-static/range {v1 .. v9}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZIILsun/security/ssl/CipherSuite$PRF;)V

    const-string/jumbo v1, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384"

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_256:Lsun/security/ssl/CipherSuite$BulkCipher;

    sget-object v9, Lsun/security/ssl/CipherSuite$PRF;->P_SHA384:Lsun/security/ssl/CipherSuite$PRF;

    const v2, 0xc02a

    const/4 v6, 0x1

    invoke-static/range {v1 .. v9}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZIILsun/security/ssl/CipherSuite$PRF;)V

    const-string/jumbo v1, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA256"

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DHE_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_256:Lsun/security/ssl/CipherSuite$BulkCipher;

    sget-object v9, Lsun/security/ssl/CipherSuite$PRF;->P_SHA256:Lsun/security/ssl/CipherSuite$PRF;

    const/16 v2, 0x6b

    const/4 v6, 0x1

    invoke-static/range {v1 .. v9}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZIILsun/security/ssl/CipherSuite$PRF;)V

    const-string/jumbo v1, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA256"

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DHE_DSS:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_256:Lsun/security/ssl/CipherSuite$BulkCipher;

    sget-object v9, Lsun/security/ssl/CipherSuite$PRF;->P_SHA256:Lsun/security/ssl/CipherSuite$PRF;

    const/16 v2, 0x6a

    const/4 v6, 0x1

    invoke-static/range {v1 .. v9}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZIILsun/security/ssl/CipherSuite$PRF;)V

    const-string/jumbo v1, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA"

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDHE_ECDSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_256:Lsun/security/ssl/CipherSuite$BulkCipher;

    const v2, 0xc00a

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    const-string/jumbo v1, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDHE_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_256:Lsun/security/ssl/CipherSuite$BulkCipher;

    const v2, 0xc014

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    const-string/jumbo v1, "TLS_RSA_WITH_AES_256_CBC_SHA"

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_256:Lsun/security/ssl/CipherSuite$BulkCipher;

    const/16 v2, 0x35

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    const-string/jumbo v1, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA"

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_ECDSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_256:Lsun/security/ssl/CipherSuite$BulkCipher;

    const v2, 0xc005

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    const-string/jumbo v1, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA"

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_256:Lsun/security/ssl/CipherSuite$BulkCipher;

    const v2, 0xc00f

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    const-string/jumbo v1, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA"

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DHE_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_256:Lsun/security/ssl/CipherSuite$BulkCipher;

    const/16 v2, 0x39

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    const-string/jumbo v1, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA"

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DHE_DSS:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_256:Lsun/security/ssl/CipherSuite$BulkCipher;

    const/16 v2, 0x38

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    const-string/jumbo v1, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256"

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDHE_ECDSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    sget-object v9, Lsun/security/ssl/CipherSuite$PRF;->P_SHA256:Lsun/security/ssl/CipherSuite$PRF;

    const v2, 0xc023

    const/4 v6, 0x1

    invoke-static/range {v1 .. v9}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZIILsun/security/ssl/CipherSuite$PRF;)V

    const-string/jumbo v1, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256"

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDHE_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    sget-object v9, Lsun/security/ssl/CipherSuite$PRF;->P_SHA256:Lsun/security/ssl/CipherSuite$PRF;

    const v2, 0xc027

    const/4 v6, 0x1

    invoke-static/range {v1 .. v9}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZIILsun/security/ssl/CipherSuite$PRF;)V

    const-string/jumbo v1, "TLS_RSA_WITH_AES_128_CBC_SHA256"

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    sget-object v9, Lsun/security/ssl/CipherSuite$PRF;->P_SHA256:Lsun/security/ssl/CipherSuite$PRF;

    const/16 v2, 0x3c

    const/4 v6, 0x1

    invoke-static/range {v1 .. v9}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZIILsun/security/ssl/CipherSuite$PRF;)V

    const-string/jumbo v1, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256"

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_ECDSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    sget-object v9, Lsun/security/ssl/CipherSuite$PRF;->P_SHA256:Lsun/security/ssl/CipherSuite$PRF;

    const v2, 0xc025

    const/4 v6, 0x1

    invoke-static/range {v1 .. v9}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZIILsun/security/ssl/CipherSuite$PRF;)V

    const-string/jumbo v1, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256"

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    sget-object v9, Lsun/security/ssl/CipherSuite$PRF;->P_SHA256:Lsun/security/ssl/CipherSuite$PRF;

    const v2, 0xc029

    const/4 v6, 0x1

    invoke-static/range {v1 .. v9}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZIILsun/security/ssl/CipherSuite$PRF;)V

    const-string/jumbo v1, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA256"

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DHE_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    sget-object v9, Lsun/security/ssl/CipherSuite$PRF;->P_SHA256:Lsun/security/ssl/CipherSuite$PRF;

    const/16 v2, 0x67

    const/4 v6, 0x1

    invoke-static/range {v1 .. v9}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZIILsun/security/ssl/CipherSuite$PRF;)V

    const-string/jumbo v1, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA256"

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DHE_DSS:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    sget-object v9, Lsun/security/ssl/CipherSuite$PRF;->P_SHA256:Lsun/security/ssl/CipherSuite$PRF;

    const/16 v2, 0x40

    const/4 v6, 0x1

    invoke-static/range {v1 .. v9}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZIILsun/security/ssl/CipherSuite$PRF;)V

    const-string/jumbo v1, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA"

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDHE_ECDSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    const v2, 0xc009

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    const-string/jumbo v1, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDHE_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    const v2, 0xc013

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    const-string/jumbo v1, "TLS_RSA_WITH_AES_128_CBC_SHA"

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    const/16 v2, 0x2f

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    const-string/jumbo v1, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA"

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_ECDSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    const v2, 0xc004

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    const-string/jumbo v1, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA"

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    const v2, 0xc00e

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    const-string/jumbo v1, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA"

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DHE_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    const/16 v2, 0x33

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    const-string/jumbo v1, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA"

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DHE_DSS:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    const/16 v2, 0x32

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    const-string/jumbo v1, "TLS_ECDHE_ECDSA_WITH_RC4_128_SHA"

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDHE_ECDSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_RC4_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    const v2, 0xc007

    move v6, v14

    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    const-string/jumbo v1, "TLS_ECDHE_RSA_WITH_RC4_128_SHA"

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDHE_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_RC4_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    const v2, 0xc011

    move v6, v14

    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    const-string/jumbo v1, "SSL_RSA_WITH_RC4_128_SHA"

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_RC4_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    const/4 v2, 0x5

    move v6, v14

    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    const-string/jumbo v1, "TLS_ECDH_ECDSA_WITH_RC4_128_SHA"

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_ECDSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_RC4_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    const v2, 0xc002

    move v6, v14

    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    const-string/jumbo v1, "TLS_ECDH_RSA_WITH_RC4_128_SHA"

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_RC4_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    const v2, 0xc00c

    move v6, v14

    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    const-string/jumbo v1, "TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA"

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDHE_ECDSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_3DES:Lsun/security/ssl/CipherSuite$BulkCipher;

    const v2, 0xc008

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    const-string/jumbo v1, "TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA"

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDHE_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_3DES:Lsun/security/ssl/CipherSuite$BulkCipher;

    const v2, 0xc012

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    const-string/jumbo v1, "SSL_RSA_WITH_3DES_EDE_CBC_SHA"

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_3DES:Lsun/security/ssl/CipherSuite$BulkCipher;

    const/16 v2, 0xa

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    const-string/jumbo v1, "TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA"

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_ECDSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_3DES:Lsun/security/ssl/CipherSuite$BulkCipher;

    const v2, 0xc003

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    const-string/jumbo v1, "TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA"

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_3DES:Lsun/security/ssl/CipherSuite$BulkCipher;

    const v2, 0xc00d

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    const-string/jumbo v1, "SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA"

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DHE_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_3DES:Lsun/security/ssl/CipherSuite$BulkCipher;

    const/16 v2, 0x16

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    const-string/jumbo v1, "SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA"

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DHE_DSS:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_3DES:Lsun/security/ssl/CipherSuite$BulkCipher;

    const/16 v2, 0x13

    move v6, v14

    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    const-string/jumbo v1, "SSL_RSA_WITH_RC4_128_MD5"

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_RC4_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    const/4 v2, 0x4

    move v6, v14

    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    const-string/jumbo v1, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_SCSV:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_NULL:Lsun/security/ssl/CipherSuite$BulkCipher;

    const/16 v2, 0xff

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    const-string/jumbo v1, "TLS_DH_anon_WITH_AES_256_CBC_SHA256"

    const/16 v3, 0x12b

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_256:Lsun/security/ssl/CipherSuite$BulkCipher;

    sget-object v9, Lsun/security/ssl/CipherSuite$PRF;->P_SHA256:Lsun/security/ssl/CipherSuite$PRF;

    const/16 v2, 0x6d

    move v6, v14

    invoke-static/range {v1 .. v9}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZIILsun/security/ssl/CipherSuite$PRF;)V

    const-string/jumbo v1, "TLS_ECDH_anon_WITH_AES_256_CBC_SHA"

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_256:Lsun/security/ssl/CipherSuite$BulkCipher;

    const v2, 0xc019

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    const-string/jumbo v1, "TLS_DH_anon_WITH_AES_256_CBC_SHA"

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_256:Lsun/security/ssl/CipherSuite$BulkCipher;

    const/16 v2, 0x3a

    move v6, v14

    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    const-string/jumbo v1, "TLS_DH_anon_WITH_AES_128_CBC_SHA256"

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    sget-object v9, Lsun/security/ssl/CipherSuite$PRF;->P_SHA256:Lsun/security/ssl/CipherSuite$PRF;

    const/16 v2, 0x6c

    move v6, v14

    invoke-static/range {v1 .. v9}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZIILsun/security/ssl/CipherSuite$PRF;)V

    const-string/jumbo v1, "TLS_ECDH_anon_WITH_AES_128_CBC_SHA"

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    const v2, 0xc018

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    const-string/jumbo v1, "TLS_DH_anon_WITH_AES_128_CBC_SHA"

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    const/16 v2, 0x34

    move v6, v14

    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    const-string/jumbo v1, "TLS_ECDH_anon_WITH_RC4_128_SHA"

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_RC4_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    const v2, 0xc016

    move v6, v14

    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    const-string/jumbo v1, "SSL_DH_anon_WITH_RC4_128_MD5"

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_RC4_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    const/16 v2, 0x18

    move v6, v14

    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    const-string/jumbo v1, "TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA"

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_3DES:Lsun/security/ssl/CipherSuite$BulkCipher;

    const v2, 0xc017

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    const-string/jumbo v1, "SSL_DH_anon_WITH_3DES_EDE_CBC_SHA"

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_3DES:Lsun/security/ssl/CipherSuite$BulkCipher;

    const/16 v2, 0x1b

    move v6, v14

    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    const-string/jumbo v1, "TLS_RSA_WITH_NULL_SHA256"

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_NULL:Lsun/security/ssl/CipherSuite$BulkCipher;

    sget-object v9, Lsun/security/ssl/CipherSuite$PRF;->P_SHA256:Lsun/security/ssl/CipherSuite$PRF;

    const/16 v2, 0x3b

    move v6, v14

    invoke-static/range {v1 .. v9}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZIILsun/security/ssl/CipherSuite$PRF;)V

    const-string/jumbo v1, "TLS_ECDHE_ECDSA_WITH_NULL_SHA"

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDHE_ECDSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_NULL:Lsun/security/ssl/CipherSuite$BulkCipher;

    const v2, 0xc006

    move v6, v14

    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    const-string/jumbo v1, "TLS_ECDHE_RSA_WITH_NULL_SHA"

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDHE_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_NULL:Lsun/security/ssl/CipherSuite$BulkCipher;

    const v2, 0xc010

    move v6, v14

    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    const-string/jumbo v1, "SSL_RSA_WITH_NULL_SHA"

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_NULL:Lsun/security/ssl/CipherSuite$BulkCipher;

    const/4 v2, 0x2

    move v6, v14

    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    const-string/jumbo v1, "TLS_ECDH_ECDSA_WITH_NULL_SHA"

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_ECDSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_NULL:Lsun/security/ssl/CipherSuite$BulkCipher;

    const v2, 0xc001

    move v6, v14

    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    const-string/jumbo v1, "TLS_ECDH_RSA_WITH_NULL_SHA"

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_NULL:Lsun/security/ssl/CipherSuite$BulkCipher;

    const v2, 0xc00b

    move v6, v14

    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    const-string/jumbo v1, "TLS_ECDH_anon_WITH_NULL_SHA"

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_NULL:Lsun/security/ssl/CipherSuite$BulkCipher;

    const v2, 0xc015

    move v6, v14

    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    const-string/jumbo v1, "SSL_RSA_WITH_NULL_MD5"

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_NULL:Lsun/security/ssl/CipherSuite$BulkCipher;

    const/4 v2, 0x1

    move v6, v14

    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    const-string/jumbo v9, "SSL_RSA_WITH_DES_CBC_SHA"

    add-int/lit8 v3, v3, -0x1

    sget-object v12, Lsun/security/ssl/CipherSuite$KeyExchange;->K_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v13, Lsun/security/ssl/CipherSuite;->B_DES:Lsun/security/ssl/CipherSuite$BulkCipher;

    const/16 v10, 0x9

    move v11, v3

    move v15, v8

    invoke-static/range {v9 .. v15}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZI)V

    const-string/jumbo v9, "SSL_DHE_RSA_WITH_DES_CBC_SHA"

    add-int/lit8 v3, v3, -0x1

    sget-object v12, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DHE_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v13, Lsun/security/ssl/CipherSuite;->B_DES:Lsun/security/ssl/CipherSuite$BulkCipher;

    const/16 v10, 0x15

    move v11, v3

    move v15, v8

    invoke-static/range {v9 .. v15}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZI)V

    const-string/jumbo v9, "SSL_DHE_DSS_WITH_DES_CBC_SHA"

    add-int/lit8 v3, v3, -0x1

    sget-object v12, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DHE_DSS:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v13, Lsun/security/ssl/CipherSuite;->B_DES:Lsun/security/ssl/CipherSuite$BulkCipher;

    const/16 v10, 0x12

    move v11, v3

    move v15, v8

    invoke-static/range {v9 .. v15}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZI)V

    const-string/jumbo v9, "SSL_DH_anon_WITH_DES_CBC_SHA"

    add-int/lit8 v3, v3, -0x1

    sget-object v12, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v13, Lsun/security/ssl/CipherSuite;->B_DES:Lsun/security/ssl/CipherSuite$BulkCipher;

    const/16 v10, 0x1a

    move v11, v3

    move v15, v8

    invoke-static/range {v9 .. v15}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZI)V

    const-string/jumbo v9, "SSL_RSA_EXPORT_WITH_RC4_40_MD5"

    add-int/lit8 v3, v3, -0x1

    sget-object v12, Lsun/security/ssl/CipherSuite$KeyExchange;->K_RSA_EXPORT:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v13, Lsun/security/ssl/CipherSuite;->B_RC4_40:Lsun/security/ssl/CipherSuite$BulkCipher;

    const/4 v10, 0x3

    move v11, v3

    move/from16 v15, v18

    invoke-static/range {v9 .. v15}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZI)V

    const-string/jumbo v9, "SSL_DH_anon_EXPORT_WITH_RC4_40_MD5"

    add-int/lit8 v3, v3, -0x1

    sget-object v12, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v13, Lsun/security/ssl/CipherSuite;->B_RC4_40:Lsun/security/ssl/CipherSuite$BulkCipher;

    const/16 v10, 0x17

    move v11, v3

    move/from16 v15, v18

    invoke-static/range {v9 .. v15}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZI)V

    const-string/jumbo v9, "SSL_RSA_EXPORT_WITH_DES40_CBC_SHA"

    add-int/lit8 v3, v3, -0x1

    sget-object v12, Lsun/security/ssl/CipherSuite$KeyExchange;->K_RSA_EXPORT:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v13, Lsun/security/ssl/CipherSuite;->B_DES_40:Lsun/security/ssl/CipherSuite$BulkCipher;

    const/16 v10, 0x8

    move v11, v3

    move/from16 v15, v18

    invoke-static/range {v9 .. v15}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZI)V

    const-string/jumbo v9, "SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA"

    add-int/lit8 v3, v3, -0x1

    sget-object v12, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DHE_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v13, Lsun/security/ssl/CipherSuite;->B_DES_40:Lsun/security/ssl/CipherSuite$BulkCipher;

    const/16 v10, 0x14

    move v11, v3

    move/from16 v15, v18

    invoke-static/range {v9 .. v15}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZI)V

    const-string/jumbo v9, "SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA"

    add-int/lit8 v3, v3, -0x1

    sget-object v12, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DHE_DSS:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v13, Lsun/security/ssl/CipherSuite;->B_DES_40:Lsun/security/ssl/CipherSuite$BulkCipher;

    const/16 v10, 0x11

    move v11, v3

    move/from16 v15, v18

    invoke-static/range {v9 .. v15}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZI)V

    const-string/jumbo v9, "SSL_DH_anon_EXPORT_WITH_DES40_CBC_SHA"

    add-int/lit8 v3, v3, -0x1

    sget-object v12, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v13, Lsun/security/ssl/CipherSuite;->B_DES_40:Lsun/security/ssl/CipherSuite$BulkCipher;

    const/16 v10, 0x19

    move v11, v3

    move/from16 v15, v18

    invoke-static/range {v9 .. v15}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZI)V

    const-string/jumbo v1, "TLS_KRB5_WITH_RC4_128_SHA"

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_RC4_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    const/16 v2, 0x20

    move v6, v14

    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    const-string/jumbo v1, "TLS_KRB5_WITH_RC4_128_MD5"

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_RC4_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    const/16 v2, 0x24

    move v6, v14

    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    const-string/jumbo v1, "TLS_KRB5_WITH_3DES_EDE_CBC_SHA"

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_3DES:Lsun/security/ssl/CipherSuite$BulkCipher;

    const/16 v2, 0x1f

    move v6, v14

    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    const-string/jumbo v1, "TLS_KRB5_WITH_3DES_EDE_CBC_MD5"

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_3DES:Lsun/security/ssl/CipherSuite$BulkCipher;

    const/16 v2, 0x23

    move v6, v14

    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    const-string/jumbo v9, "TLS_KRB5_WITH_DES_CBC_SHA"

    add-int/lit8 v3, v3, -0x1

    sget-object v12, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v13, Lsun/security/ssl/CipherSuite;->B_DES:Lsun/security/ssl/CipherSuite$BulkCipher;

    const/16 v10, 0x1e

    move v11, v3

    move v15, v8

    invoke-static/range {v9 .. v15}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZI)V

    const-string/jumbo v9, "TLS_KRB5_WITH_DES_CBC_MD5"

    add-int/lit8 v3, v3, -0x1

    sget-object v12, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v13, Lsun/security/ssl/CipherSuite;->B_DES:Lsun/security/ssl/CipherSuite$BulkCipher;

    const/16 v10, 0x22

    move v11, v3

    move v15, v8

    invoke-static/range {v9 .. v15}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZI)V

    const-string/jumbo v9, "TLS_KRB5_EXPORT_WITH_RC4_40_SHA"

    add-int/lit8 v3, v3, -0x1

    sget-object v12, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5_EXPORT:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v13, Lsun/security/ssl/CipherSuite;->B_RC4_40:Lsun/security/ssl/CipherSuite$BulkCipher;

    const/16 v10, 0x28

    move v11, v3

    move/from16 v15, v18

    invoke-static/range {v9 .. v15}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZI)V

    const-string/jumbo v9, "TLS_KRB5_EXPORT_WITH_RC4_40_MD5"

    add-int/lit8 v3, v3, -0x1

    sget-object v12, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5_EXPORT:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v13, Lsun/security/ssl/CipherSuite;->B_RC4_40:Lsun/security/ssl/CipherSuite$BulkCipher;

    const/16 v10, 0x2b

    move v11, v3

    move/from16 v15, v18

    invoke-static/range {v9 .. v15}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZI)V

    const-string/jumbo v9, "TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA"

    add-int/lit8 v3, v3, -0x1

    sget-object v12, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5_EXPORT:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v13, Lsun/security/ssl/CipherSuite;->B_DES_40:Lsun/security/ssl/CipherSuite$BulkCipher;

    const/16 v10, 0x26

    move v11, v3

    move/from16 v15, v18

    invoke-static/range {v9 .. v15}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZI)V

    const-string/jumbo v9, "TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5"

    add-int/lit8 v3, v3, -0x1

    sget-object v12, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5_EXPORT:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v13, Lsun/security/ssl/CipherSuite;->B_DES_40:Lsun/security/ssl/CipherSuite$BulkCipher;

    const/16 v10, 0x29

    move v11, v3

    move/from16 v15, v18

    invoke-static/range {v9 .. v15}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZI)V

    const-string/jumbo v1, "SSL_RSA_EXPORT_WITH_RC2_CBC_40_MD5"

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "SSL_RSA_WITH_IDEA_CBC_SHA"

    const/4 v2, 0x7

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "SSL_DH_DSS_EXPORT_WITH_DES40_CBC_SHA"

    const/16 v2, 0xb

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "SSL_DH_DSS_WITH_DES_CBC_SHA"

    const/16 v2, 0xc

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "SSL_DH_DSS_WITH_3DES_EDE_CBC_SHA"

    const/16 v2, 0xd

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "SSL_DH_RSA_EXPORT_WITH_DES40_CBC_SHA"

    const/16 v2, 0xe

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "SSL_DH_RSA_WITH_DES_CBC_SHA"

    const/16 v2, 0xf

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "SSL_DH_RSA_WITH_3DES_EDE_CBC_SHA"

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "SSL_FORTEZZA_DMS_WITH_NULL_SHA"

    const/16 v2, 0x1c

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "SSL_FORTEZZA_DMS_WITH_FORTEZZA_CBC_SHA"

    const/16 v2, 0x1d

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "SSL_RSA_EXPORT1024_WITH_DES_CBC_SHA"

    const/16 v2, 0x62

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "SSL_DHE_DSS_EXPORT1024_WITH_DES_CBC_SHA"

    const/16 v2, 0x63

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "SSL_RSA_EXPORT1024_WITH_RC4_56_SHA"

    const/16 v2, 0x64

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "SSL_DHE_DSS_EXPORT1024_WITH_RC4_56_SHA"

    const/16 v2, 0x65

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "SSL_DHE_DSS_WITH_RC4_128_SHA"

    const/16 v2, 0x66

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "NETSCAPE_RSA_FIPS_WITH_3DES_EDE_CBC_SHA"

    const v2, 0xffe0

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "NETSCAPE_RSA_FIPS_WITH_DES_CBC_SHA"

    const v2, 0xffe1

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "SSL_RSA_FIPS_WITH_DES_CBC_SHA"

    const v2, 0xfefe

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "SSL_RSA_FIPS_WITH_3DES_EDE_CBC_SHA"

    const v2, 0xfeff

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_KRB5_WITH_IDEA_CBC_SHA"

    const/16 v2, 0x21

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_KRB5_WITH_IDEA_CBC_MD5"

    const/16 v2, 0x25

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_KRB5_EXPORT_WITH_RC2_CBC_40_SHA"

    const/16 v2, 0x27

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_KRB5_EXPORT_WITH_RC2_CBC_40_MD5"

    const/16 v2, 0x2a

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_RSA_WITH_SEED_CBC_SHA"

    const/16 v2, 0x96

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_DH_DSS_WITH_SEED_CBC_SHA"

    const/16 v2, 0x97

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_DH_RSA_WITH_SEED_CBC_SHA"

    const/16 v2, 0x98

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_DHE_DSS_WITH_SEED_CBC_SHA"

    const/16 v2, 0x99

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_DHE_RSA_WITH_SEED_CBC_SHA"

    const/16 v2, 0x9a

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_DH_anon_WITH_SEED_CBC_SHA"

    const/16 v2, 0x9b

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_PSK_WITH_RC4_128_SHA"

    const/16 v2, 0x8a

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_PSK_WITH_3DES_EDE_CBC_SHA"

    const/16 v2, 0x8b

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_PSK_WITH_AES_128_CBC_SHA"

    const/16 v2, 0x8c

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_PSK_WITH_AES_256_CBC_SHA"

    const/16 v2, 0x8d

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_DHE_PSK_WITH_RC4_128_SHA"

    const/16 v2, 0x8e

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_DHE_PSK_WITH_3DES_EDE_CBC_SHA"

    const/16 v2, 0x8f

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_DHE_PSK_WITH_AES_128_CBC_SHA"

    const/16 v2, 0x90

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_DHE_PSK_WITH_AES_256_CBC_SHA"

    const/16 v2, 0x91

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_RSA_PSK_WITH_RC4_128_SHA"

    const/16 v2, 0x92

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_RSA_PSK_WITH_3DES_EDE_CBC_SHA"

    const/16 v2, 0x93

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_RSA_PSK_WITH_AES_128_CBC_SHA"

    const/16 v2, 0x94

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_RSA_PSK_WITH_AES_256_CBC_SHA"

    const/16 v2, 0x95

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_PSK_WITH_NULL_SHA"

    const/16 v2, 0x2c

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_DHE_PSK_WITH_NULL_SHA"

    const/16 v2, 0x2d

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_RSA_PSK_WITH_NULL_SHA"

    const/16 v2, 0x2e

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_DH_DSS_WITH_AES_128_CBC_SHA"

    const/16 v2, 0x30

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_DH_RSA_WITH_AES_128_CBC_SHA"

    const/16 v2, 0x31

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_DH_DSS_WITH_AES_256_CBC_SHA"

    const/16 v2, 0x36

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_DH_RSA_WITH_AES_256_CBC_SHA"

    const/16 v2, 0x37

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_DH_DSS_WITH_AES_128_CBC_SHA256"

    const/16 v2, 0x3e

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_DH_RSA_WITH_AES_128_CBC_SHA256"

    const/16 v2, 0x3f

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_DH_DSS_WITH_AES_256_CBC_SHA256"

    const/16 v2, 0x68

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_DH_RSA_WITH_AES_256_CBC_SHA256"

    const/16 v2, 0x69

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_RSA_WITH_AES_128_GCM_SHA256"

    const/16 v2, 0x9c

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_RSA_WITH_AES_256_GCM_SHA384"

    const/16 v2, 0x9d

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_DHE_RSA_WITH_AES_128_GCM_SHA256"

    const/16 v2, 0x9e

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_DHE_RSA_WITH_AES_256_GCM_SHA384"

    const/16 v2, 0x9f

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_DH_RSA_WITH_AES_128_GCM_SHA256"

    const/16 v2, 0xa0

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_DH_RSA_WITH_AES_256_GCM_SHA384"

    const/16 v2, 0xa1

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_DHE_DSS_WITH_AES_128_GCM_SHA256"

    const/16 v2, 0xa2

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_DHE_DSS_WITH_AES_256_GCM_SHA384"

    const/16 v2, 0xa3

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_DH_DSS_WITH_AES_128_GCM_SHA256"

    const/16 v2, 0xa4

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_DH_DSS_WITH_AES_256_GCM_SHA384"

    const/16 v2, 0xa5

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_DH_anon_WITH_AES_128_GCM_SHA256"

    const/16 v2, 0xa6

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_DH_anon_WITH_AES_256_GCM_SHA384"

    const/16 v2, 0xa7

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_PSK_WITH_AES_128_GCM_SHA256"

    const/16 v2, 0xa8

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_PSK_WITH_AES_256_GCM_SHA384"

    const/16 v2, 0xa9

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_DHE_PSK_WITH_AES_128_GCM_SHA256"

    const/16 v2, 0xaa

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_DHE_PSK_WITH_AES_256_GCM_SHA384"

    const/16 v2, 0xab

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_RSA_PSK_WITH_AES_128_GCM_SHA256"

    const/16 v2, 0xac

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_RSA_PSK_WITH_AES_256_GCM_SHA384"

    const/16 v2, 0xad

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_PSK_WITH_AES_128_CBC_SHA256"

    const/16 v2, 0xae

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_PSK_WITH_AES_256_CBC_SHA384"

    const/16 v2, 0xaf

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_PSK_WITH_NULL_SHA256"

    const/16 v2, 0xb0

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_PSK_WITH_NULL_SHA384"

    const/16 v2, 0xb1

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_DHE_PSK_WITH_AES_128_CBC_SHA256"

    const/16 v2, 0xb2

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_DHE_PSK_WITH_AES_256_CBC_SHA384"

    const/16 v2, 0xb3

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_DHE_PSK_WITH_NULL_SHA256"

    const/16 v2, 0xb4

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_DHE_PSK_WITH_NULL_SHA384"

    const/16 v2, 0xb5

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_RSA_PSK_WITH_AES_128_CBC_SHA256"

    const/16 v2, 0xb6

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_RSA_PSK_WITH_AES_256_CBC_SHA384"

    const/16 v2, 0xb7

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_RSA_PSK_WITH_NULL_SHA256"

    const/16 v2, 0xb8

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_RSA_PSK_WITH_NULL_SHA384"

    const/16 v2, 0xb9

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_RSA_WITH_CAMELLIA_128_CBC_SHA"

    const/16 v2, 0x41

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_DH_DSS_WITH_CAMELLIA_128_CBC_SHA"

    const/16 v2, 0x42

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_DH_RSA_WITH_CAMELLIA_128_CBC_SHA"

    const/16 v2, 0x43

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA"

    const/16 v2, 0x44

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA"

    const/16 v2, 0x45

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_DH_anon_WITH_CAMELLIA_128_CBC_SHA"

    const/16 v2, 0x46

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_RSA_WITH_CAMELLIA_256_CBC_SHA"

    const/16 v2, 0x84

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_DH_DSS_WITH_CAMELLIA_256_CBC_SHA"

    const/16 v2, 0x85

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_DH_RSA_WITH_CAMELLIA_256_CBC_SHA"

    const/16 v2, 0x86

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA"

    const/16 v2, 0x87

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA"

    const/16 v2, 0x88

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_DH_anon_WITH_CAMELLIA_256_CBC_SHA"

    const/16 v2, 0x89

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_RSA_WITH_CAMELLIA_128_CBC_SHA256"

    const/16 v2, 0xba

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_DH_DSS_WITH_CAMELLIA_128_CBC_SHA256"

    const/16 v2, 0xbb

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_DH_RSA_WITH_CAMELLIA_128_CBC_SHA256"

    const/16 v2, 0xbc

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA256"

    const/16 v2, 0xbd

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA256"

    const/16 v2, 0xbe

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_DH_anon_WITH_CAMELLIA_128_CBC_SHA256"

    const/16 v2, 0xbf

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_RSA_WITH_CAMELLIA_256_CBC_SHA256"

    const/16 v2, 0xc0

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_DH_DSS_WITH_CAMELLIA_256_CBC_SHA256"

    const/16 v2, 0xc1

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_DH_RSA_WITH_CAMELLIA_256_CBC_SHA256"

    const/16 v2, 0xc2

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA256"

    const/16 v2, 0xc3

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA256"

    const/16 v2, 0xc4

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_DH_anon_WITH_CAMELLIA_256_CBC_SHA256"

    const/16 v2, 0xc5

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_SRP_SHA_WITH_3DES_EDE_CBC_SHA"

    const v2, 0xc01a

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_SRP_SHA_RSA_WITH_3DES_EDE_CBC_SHA"

    const v2, 0xc01b

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_SRP_SHA_DSS_WITH_3DES_EDE_CBC_SHA"

    const v2, 0xc01c

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_SRP_SHA_WITH_AES_128_CBC_SHA"

    const v2, 0xc01d

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_SRP_SHA_RSA_WITH_AES_128_CBC_SHA"

    const v2, 0xc01e

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_SRP_SHA_DSS_WITH_AES_128_CBC_SHA"

    const v2, 0xc01f

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_SRP_SHA_WITH_AES_256_CBC_SHA"

    const v2, 0xc020

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_SRP_SHA_RSA_WITH_AES_256_CBC_SHA"

    const v2, 0xc021

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_SRP_SHA_DSS_WITH_AES_256_CBC_SHA"

    const v2, 0xc022

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256"

    const v2, 0xc02b

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384"

    const v2, 0xc02c

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256"

    const v2, 0xc02d

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384"

    const v2, 0xc02e

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256"

    const v2, 0xc02f

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384"

    const v2, 0xc030

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256"

    const v2, 0xc031

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384"

    const v2, 0xc032

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_ECDHE_PSK_WITH_RC4_128_SHA"

    const v2, 0xc033

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_ECDHE_PSK_WITH_3DES_EDE_CBC_SHA"

    const v2, 0xc034

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA"

    const v2, 0xc035

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA"

    const v2, 0xc036

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA256"

    const v2, 0xc037

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA384"

    const v2, 0xc038

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_ECDHE_PSK_WITH_NULL_SHA"

    const v2, 0xc039

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_ECDHE_PSK_WITH_NULL_SHA256"

    const v2, 0xc03a

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "TLS_ECDHE_PSK_WITH_NULL_SHA384"

    const v2, 0xc03b

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->valueOf(II)Lsun/security/ssl/CipherSuite;

    move-result-object v1

    sput-object v1, Lsun/security/ssl/CipherSuite;->C_NULL:Lsun/security/ssl/CipherSuite;

    const/4 v1, 0x0

    const/16 v2, 0xff

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->valueOf(II)Lsun/security/ssl/CipherSuite;

    move-result-object v1

    sput-object v1, Lsun/security/ssl/CipherSuite;->C_SCSV:Lsun/security/ssl/CipherSuite;

    return-void

    :cond_0
    const/4 v14, 0x0

    goto/16 :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsun/security/ssl/CipherSuite;->name:Ljava/lang/String;

    iput p2, p0, Lsun/security/ssl/CipherSuite;->id:I

    iput-boolean v1, p0, Lsun/security/ssl/CipherSuite;->allowed:Z

    iput v1, p0, Lsun/security/ssl/CipherSuite;->priority:I

    iput-object v0, p0, Lsun/security/ssl/CipherSuite;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    iput-object v0, p0, Lsun/security/ssl/CipherSuite;->cipher:Lsun/security/ssl/CipherSuite$BulkCipher;

    iput-object v0, p0, Lsun/security/ssl/CipherSuite;->macAlg:Lsun/security/ssl/CipherSuite$MacAlg;

    iput-boolean v1, p0, Lsun/security/ssl/CipherSuite;->exportable:Z

    const v0, 0xffff

    iput v0, p0, Lsun/security/ssl/CipherSuite;->obsoleted:I

    iput v1, p0, Lsun/security/ssl/CipherSuite;->supported:I

    sget-object v0, Lsun/security/ssl/CipherSuite$PRF;->P_NONE:Lsun/security/ssl/CipherSuite$PRF;

    iput-object v0, p0, Lsun/security/ssl/CipherSuite;->prfAlg:Lsun/security/ssl/CipherSuite$PRF;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZIILsun/security/ssl/CipherSuite$PRF;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsun/security/ssl/CipherSuite;->name:Ljava/lang/String;

    iput p2, p0, Lsun/security/ssl/CipherSuite;->id:I

    iput p3, p0, Lsun/security/ssl/CipherSuite;->priority:I

    iput-object p4, p0, Lsun/security/ssl/CipherSuite;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    iput-object p5, p0, Lsun/security/ssl/CipherSuite;->cipher:Lsun/security/ssl/CipherSuite$BulkCipher;

    iget-boolean v0, p5, Lsun/security/ssl/CipherSuite$BulkCipher;->exportable:Z

    iput-boolean v0, p0, Lsun/security/ssl/CipherSuite;->exportable:Z

    const-string/jumbo v0, "_MD5"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lsun/security/ssl/CipherSuite;->M_MD5:Lsun/security/ssl/CipherSuite$MacAlg;

    iput-object v0, p0, Lsun/security/ssl/CipherSuite;->macAlg:Lsun/security/ssl/CipherSuite$MacAlg;

    :goto_0
    iget-boolean v0, p4, Lsun/security/ssl/CipherSuite$KeyExchange;->allowed:Z

    and-int/2addr p6, v0

    iget-boolean v0, p5, Lsun/security/ssl/CipherSuite$BulkCipher;->allowed:Z

    and-int/2addr p6, v0

    iput-boolean p6, p0, Lsun/security/ssl/CipherSuite;->allowed:Z

    iput p7, p0, Lsun/security/ssl/CipherSuite;->obsoleted:I

    iput p8, p0, Lsun/security/ssl/CipherSuite;->supported:I

    iput-object p9, p0, Lsun/security/ssl/CipherSuite;->prfAlg:Lsun/security/ssl/CipherSuite$PRF;

    return-void

    :cond_0
    const-string/jumbo v0, "_SHA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lsun/security/ssl/CipherSuite;->M_SHA:Lsun/security/ssl/CipherSuite$MacAlg;

    iput-object v0, p0, Lsun/security/ssl/CipherSuite;->macAlg:Lsun/security/ssl/CipherSuite$MacAlg;

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "_SHA256"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lsun/security/ssl/CipherSuite;->M_SHA256:Lsun/security/ssl/CipherSuite$MacAlg;

    iput-object v0, p0, Lsun/security/ssl/CipherSuite;->macAlg:Lsun/security/ssl/CipherSuite$MacAlg;

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "_SHA384"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lsun/security/ssl/CipherSuite;->M_SHA384:Lsun/security/ssl/CipherSuite$MacAlg;

    iput-object v0, p0, Lsun/security/ssl/CipherSuite;->macAlg:Lsun/security/ssl/CipherSuite$MacAlg;

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "_NULL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lsun/security/ssl/CipherSuite;->M_NULL:Lsun/security/ssl/CipherSuite$MacAlg;

    iput-object v0, p0, Lsun/security/ssl/CipherSuite;->macAlg:Lsun/security/ssl/CipherSuite$MacAlg;

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "_SCSV"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lsun/security/ssl/CipherSuite;->M_NULL:Lsun/security/ssl/CipherSuite$MacAlg;

    iput-object v0, p0, Lsun/security/ssl/CipherSuite;->macAlg:Lsun/security/ssl/CipherSuite$MacAlg;

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown MAC algorithm for ciphersuite "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static add(Ljava/lang/String;I)V
    .locals 4

    new-instance v0, Lsun/security/ssl/CipherSuite;

    invoke-direct {v0, p0, p1}, Lsun/security/ssl/CipherSuite;-><init>(Ljava/lang/String;I)V

    sget-object v1, Lsun/security/ssl/CipherSuite;->idMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Duplicate ciphersuite definition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-void
.end method

.method private static add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V
    .locals 7

    const v6, 0xffff

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZI)V

    return-void
.end method

.method private static add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZI)V
    .locals 9

    sget-object v8, Lsun/security/ssl/CipherSuite$PRF;->P_SHA256:Lsun/security/ssl/CipherSuite$PRF;

    sget-object v0, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v0, v0, Lsun/security/ssl/ProtocolVersion;->v:I

    if-ge p6, v0, :cond_0

    sget-object v8, Lsun/security/ssl/CipherSuite$PRF;->P_NONE:Lsun/security/ssl/CipherSuite$PRF;

    :cond_0
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v8}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZIILsun/security/ssl/CipherSuite$PRF;)V

    return-void
.end method

.method private static add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZIILsun/security/ssl/CipherSuite$PRF;)V
    .locals 10

    new-instance v0, Lsun/security/ssl/CipherSuite;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lsun/security/ssl/CipherSuite;-><init>(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZIILsun/security/ssl/CipherSuite$PRF;)V

    sget-object v1, Lsun/security/ssl/CipherSuite;->idMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Duplicate ciphersuite definition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-boolean v1, v0, Lsun/security/ssl/CipherSuite;->allowed:Z

    if-eqz v1, :cond_1

    sget-object v1, Lsun/security/ssl/CipherSuite;->nameMap:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Duplicate ciphersuite definition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-void
.end method

.method static allowedCipherSuites()Ljava/util/Collection;
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

    sget-object v0, Lsun/security/ssl/CipherSuite;->nameMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method static valueOf(II)Lsun/security/ssl/CipherSuite;
    .locals 7

    const/16 v6, 0x10

    and-int/lit16 p0, p0, 0xff

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 v4, p0, 0x8

    or-int v3, v4, p1

    sget-object v4, Lsun/security/ssl/CipherSuite;->idMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/ssl/CipherSuite;

    if-nez v0, :cond_0

    invoke-static {p0, v6}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v6}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lsun/security/ssl/CipherSuite;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4, v3}, Lsun/security/ssl/CipherSuite;-><init>(Ljava/lang/String;I)V

    :cond_0
    return-object v0
.end method

.method static valueOf(Ljava/lang/String;)Lsun/security/ssl/CipherSuite;
    .locals 4

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Name must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    sget-object v1, Lsun/security/ssl/CipherSuite;->nameMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/ssl/CipherSuite;

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lsun/security/ssl/CipherSuite;->allowed:Z

    if-nez v1, :cond_2

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported ciphersuite "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    return-object v0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lsun/security/ssl/CipherSuite;

    iget v0, p1, Lsun/security/ssl/CipherSuite;->priority:I

    iget v1, p0, Lsun/security/ssl/CipherSuite;->priority:I

    sub-int/2addr v0, v1

    return v0
.end method

.method isAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lsun/security/ssl/CipherSuite;->allowed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/security/ssl/CipherSuite;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    invoke-virtual {v0}, Lsun/security/ssl/CipherSuite$KeyExchange;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/security/ssl/CipherSuite;->cipher:Lsun/security/ssl/CipherSuite$BulkCipher;

    invoke-virtual {v0}, Lsun/security/ssl/CipherSuite$BulkCipher;->isAvailable()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isNegotiable()Z
    .locals 1

    sget-object v0, Lsun/security/ssl/CipherSuite;->C_SCSV:Lsun/security/ssl/CipherSuite;

    if-eq p0, v0, :cond_0

    invoke-virtual {p0}, Lsun/security/ssl/CipherSuite;->isAvailable()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/CipherSuite;->name:Ljava/lang/String;

    return-object v0
.end method
