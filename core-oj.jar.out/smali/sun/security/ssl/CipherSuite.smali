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

    .prologue
    .line 83
    const-string/jumbo v1, "com.sun.net.ssl.enableECC"

    const/4 v2, 0x1

    .line 82
    invoke-static {v1, v2}, Lsun/security/ssl/Debug;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lsun/security/ssl/CipherSuite;->ALLOW_ECC:Z

    .line 569
    new-instance v1, Lsun/security/ssl/CipherSuite$BulkCipher;

    const-string/jumbo v2, "NULL"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v1 .. v6}, Lsun/security/ssl/CipherSuite$BulkCipher;-><init>(Ljava/lang/String;IIIZ)V

    .line 568
    sput-object v1, Lsun/security/ssl/CipherSuite;->B_NULL:Lsun/security/ssl/CipherSuite$BulkCipher;

    .line 571
    new-instance v1, Lsun/security/ssl/CipherSuite$BulkCipher;

    const-string/jumbo v2, "RC4"

    const/4 v3, 0x5

    const/16 v4, 0x10

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v1 .. v6}, Lsun/security/ssl/CipherSuite$BulkCipher;-><init>(Ljava/lang/String;IIIZ)V

    .line 570
    sput-object v1, Lsun/security/ssl/CipherSuite;->B_RC4_40:Lsun/security/ssl/CipherSuite$BulkCipher;

    .line 573
    new-instance v1, Lsun/security/ssl/CipherSuite$BulkCipher;

    const-string/jumbo v2, "RC2"

    const/4 v3, 0x5

    const/16 v4, 0x10

    const/16 v5, 0x8

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lsun/security/ssl/CipherSuite$BulkCipher;-><init>(Ljava/lang/String;IIIZ)V

    .line 572
    sput-object v1, Lsun/security/ssl/CipherSuite;->B_RC2_40:Lsun/security/ssl/CipherSuite$BulkCipher;

    .line 575
    new-instance v1, Lsun/security/ssl/CipherSuite$BulkCipher;

    const-string/jumbo v2, "DES/CBC/NoPadding"

    const/4 v3, 0x5

    const/16 v4, 0x8

    const/16 v5, 0x8

    const/4 v6, 0x1

    invoke-direct/range {v1 .. v6}, Lsun/security/ssl/CipherSuite$BulkCipher;-><init>(Ljava/lang/String;IIIZ)V

    .line 574
    sput-object v1, Lsun/security/ssl/CipherSuite;->B_DES_40:Lsun/security/ssl/CipherSuite$BulkCipher;

    .line 579
    new-instance v1, Lsun/security/ssl/CipherSuite$BulkCipher;

    const-string/jumbo v2, "RC4"

    const/16 v4, 0x10

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct {v1, v2, v4, v5, v6}, Lsun/security/ssl/CipherSuite$BulkCipher;-><init>(Ljava/lang/String;IIZ)V

    .line 578
    sput-object v1, Lsun/security/ssl/CipherSuite;->B_RC4_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    .line 581
    new-instance v1, Lsun/security/ssl/CipherSuite$BulkCipher;

    const-string/jumbo v2, "DES/CBC/NoPadding"

    const/16 v4, 0x8

    const/16 v5, 0x8

    const/4 v6, 0x1

    invoke-direct {v1, v2, v4, v5, v6}, Lsun/security/ssl/CipherSuite$BulkCipher;-><init>(Ljava/lang/String;IIZ)V

    .line 580
    sput-object v1, Lsun/security/ssl/CipherSuite;->B_DES:Lsun/security/ssl/CipherSuite$BulkCipher;

    .line 583
    new-instance v1, Lsun/security/ssl/CipherSuite$BulkCipher;

    const-string/jumbo v2, "DESede/CBC/NoPadding"

    const/16 v4, 0x18

    const/16 v5, 0x8

    const/4 v6, 0x1

    invoke-direct {v1, v2, v4, v5, v6}, Lsun/security/ssl/CipherSuite$BulkCipher;-><init>(Ljava/lang/String;IIZ)V

    .line 582
    sput-object v1, Lsun/security/ssl/CipherSuite;->B_3DES:Lsun/security/ssl/CipherSuite$BulkCipher;

    .line 585
    new-instance v1, Lsun/security/ssl/CipherSuite$BulkCipher;

    const-string/jumbo v2, "IDEA"

    const/16 v4, 0x10

    const/16 v5, 0x8

    const/4 v6, 0x0

    invoke-direct {v1, v2, v4, v5, v6}, Lsun/security/ssl/CipherSuite$BulkCipher;-><init>(Ljava/lang/String;IIZ)V

    .line 584
    sput-object v1, Lsun/security/ssl/CipherSuite;->B_IDEA:Lsun/security/ssl/CipherSuite$BulkCipher;

    .line 587
    new-instance v1, Lsun/security/ssl/CipherSuite$BulkCipher;

    const-string/jumbo v2, "AES/CBC/NoPadding"

    const/16 v4, 0x10

    const/16 v5, 0x10

    const/4 v6, 0x1

    invoke-direct {v1, v2, v4, v5, v6}, Lsun/security/ssl/CipherSuite$BulkCipher;-><init>(Ljava/lang/String;IIZ)V

    .line 586
    sput-object v1, Lsun/security/ssl/CipherSuite;->B_AES_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    .line 589
    new-instance v1, Lsun/security/ssl/CipherSuite$BulkCipher;

    const-string/jumbo v2, "AES/CBC/NoPadding"

    const/16 v4, 0x20

    const/16 v5, 0x10

    const/4 v6, 0x1

    invoke-direct {v1, v2, v4, v5, v6}, Lsun/security/ssl/CipherSuite$BulkCipher;-><init>(Ljava/lang/String;IIZ)V

    .line 588
    sput-object v1, Lsun/security/ssl/CipherSuite;->B_AES_256:Lsun/security/ssl/CipherSuite$BulkCipher;

    .line 592
    new-instance v1, Lsun/security/ssl/CipherSuite$MacAlg;

    const-string/jumbo v2, "NULL"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v1, v2, v4, v5, v6}, Lsun/security/ssl/CipherSuite$MacAlg;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lsun/security/ssl/CipherSuite;->M_NULL:Lsun/security/ssl/CipherSuite$MacAlg;

    .line 593
    new-instance v1, Lsun/security/ssl/CipherSuite$MacAlg;

    const-string/jumbo v2, "MD5"

    const/16 v4, 0x10

    const/16 v5, 0x40

    const/16 v6, 0x9

    invoke-direct {v1, v2, v4, v5, v6}, Lsun/security/ssl/CipherSuite$MacAlg;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lsun/security/ssl/CipherSuite;->M_MD5:Lsun/security/ssl/CipherSuite$MacAlg;

    .line 594
    new-instance v1, Lsun/security/ssl/CipherSuite$MacAlg;

    const-string/jumbo v2, "SHA"

    const/16 v4, 0x14

    const/16 v5, 0x40

    const/16 v6, 0x9

    invoke-direct {v1, v2, v4, v5, v6}, Lsun/security/ssl/CipherSuite$MacAlg;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lsun/security/ssl/CipherSuite;->M_SHA:Lsun/security/ssl/CipherSuite$MacAlg;

    .line 595
    new-instance v1, Lsun/security/ssl/CipherSuite$MacAlg;

    const-string/jumbo v2, "SHA256"

    const/16 v4, 0x20

    const/16 v5, 0x40

    const/16 v6, 0x9

    invoke-direct {v1, v2, v4, v5, v6}, Lsun/security/ssl/CipherSuite$MacAlg;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lsun/security/ssl/CipherSuite;->M_SHA256:Lsun/security/ssl/CipherSuite$MacAlg;

    .line 596
    new-instance v1, Lsun/security/ssl/CipherSuite$MacAlg;

    const-string/jumbo v2, "SHA384"

    const/16 v4, 0x30

    const/16 v5, 0x80

    const/16 v6, 0x11

    invoke-direct {v1, v2, v4, v5, v6}, Lsun/security/ssl/CipherSuite$MacAlg;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lsun/security/ssl/CipherSuite;->M_SHA384:Lsun/security/ssl/CipherSuite$MacAlg;

    .line 641
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lsun/security/ssl/CipherSuite;->idMap:Ljava/util/Map;

    .line 642
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lsun/security/ssl/CipherSuite;->nameMap:Ljava/util/Map;

    .line 644
    const/16 v16, 0x0

    .line 645
    .local v16, "F":Z
    const/16 v17, 0x1

    .line 647
    .local v17, "T":Z
    invoke-static {}, Lsun/security/ssl/SunJSSE;->isFIPS()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v14, 0x1

    .line 882
    .local v14, "N":Z
    :goto_0
    const-string/jumbo v1, "SSL_NULL_WITH_NULL_NULL"

    .line 883
    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_NULL:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_NULL:Lsun/security/ssl/CipherSuite$BulkCipher;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 882
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    .line 900
    const v7, 0xffff

    .line 901
    .local v7, "max":I
    sget-object v1, Lsun/security/ssl/ProtocolVersion;->TLS11:Lsun/security/ssl/ProtocolVersion;

    iget v0, v1, Lsun/security/ssl/ProtocolVersion;->v:I

    move/from16 v18, v0

    .line 902
    .local v18, "tls11":I
    sget-object v1, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v8, v1, Lsun/security/ssl/ProtocolVersion;->v:I

    .line 906
    .local v8, "tls12":I
    const-string/jumbo v1, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384"

    .line 907
    const/16 v3, 0x257

    .local v3, "p":I
    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDHE_ECDSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_256:Lsun/security/ssl/CipherSuite$BulkCipher;

    sget-object v9, Lsun/security/ssl/CipherSuite$PRF;->P_SHA384:Lsun/security/ssl/CipherSuite$PRF;

    const v2, 0xc024

    const/4 v6, 0x1

    .line 906
    invoke-static/range {v1 .. v9}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZIILsun/security/ssl/CipherSuite$PRF;)V

    .line 908
    const-string/jumbo v1, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384"

    .line 909
    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDHE_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_256:Lsun/security/ssl/CipherSuite$BulkCipher;

    sget-object v9, Lsun/security/ssl/CipherSuite$PRF;->P_SHA384:Lsun/security/ssl/CipherSuite$PRF;

    const v2, 0xc028

    const/4 v6, 0x1

    .line 908
    invoke-static/range {v1 .. v9}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZIILsun/security/ssl/CipherSuite$PRF;)V

    .line 910
    const-string/jumbo v1, "TLS_RSA_WITH_AES_256_CBC_SHA256"

    .line 911
    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_256:Lsun/security/ssl/CipherSuite$BulkCipher;

    sget-object v9, Lsun/security/ssl/CipherSuite$PRF;->P_SHA256:Lsun/security/ssl/CipherSuite$PRF;

    const/16 v2, 0x3d

    const/4 v6, 0x1

    .line 910
    invoke-static/range {v1 .. v9}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZIILsun/security/ssl/CipherSuite$PRF;)V

    .line 912
    const-string/jumbo v1, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384"

    .line 913
    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_ECDSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_256:Lsun/security/ssl/CipherSuite$BulkCipher;

    sget-object v9, Lsun/security/ssl/CipherSuite$PRF;->P_SHA384:Lsun/security/ssl/CipherSuite$PRF;

    const v2, 0xc026

    const/4 v6, 0x1

    .line 912
    invoke-static/range {v1 .. v9}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZIILsun/security/ssl/CipherSuite$PRF;)V

    .line 914
    const-string/jumbo v1, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384"

    .line 915
    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_256:Lsun/security/ssl/CipherSuite$BulkCipher;

    sget-object v9, Lsun/security/ssl/CipherSuite$PRF;->P_SHA384:Lsun/security/ssl/CipherSuite$PRF;

    const v2, 0xc02a

    const/4 v6, 0x1

    .line 914
    invoke-static/range {v1 .. v9}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZIILsun/security/ssl/CipherSuite$PRF;)V

    .line 916
    const-string/jumbo v1, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA256"

    .line 917
    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DHE_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_256:Lsun/security/ssl/CipherSuite$BulkCipher;

    sget-object v9, Lsun/security/ssl/CipherSuite$PRF;->P_SHA256:Lsun/security/ssl/CipherSuite$PRF;

    const/16 v2, 0x6b

    const/4 v6, 0x1

    .line 916
    invoke-static/range {v1 .. v9}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZIILsun/security/ssl/CipherSuite$PRF;)V

    .line 918
    const-string/jumbo v1, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA256"

    .line 919
    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DHE_DSS:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_256:Lsun/security/ssl/CipherSuite$BulkCipher;

    sget-object v9, Lsun/security/ssl/CipherSuite$PRF;->P_SHA256:Lsun/security/ssl/CipherSuite$PRF;

    const/16 v2, 0x6a

    const/4 v6, 0x1

    .line 918
    invoke-static/range {v1 .. v9}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZIILsun/security/ssl/CipherSuite$PRF;)V

    .line 921
    const-string/jumbo v1, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA"

    .line 922
    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDHE_ECDSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_256:Lsun/security/ssl/CipherSuite$BulkCipher;

    const v2, 0xc00a

    const/4 v6, 0x1

    .line 921
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    .line 923
    const-string/jumbo v1, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"

    .line 924
    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDHE_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_256:Lsun/security/ssl/CipherSuite$BulkCipher;

    const v2, 0xc014

    const/4 v6, 0x1

    .line 923
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    .line 925
    const-string/jumbo v1, "TLS_RSA_WITH_AES_256_CBC_SHA"

    .line 926
    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_256:Lsun/security/ssl/CipherSuite$BulkCipher;

    const/16 v2, 0x35

    const/4 v6, 0x1

    .line 925
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    .line 927
    const-string/jumbo v1, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA"

    .line 928
    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_ECDSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_256:Lsun/security/ssl/CipherSuite$BulkCipher;

    const v2, 0xc005

    const/4 v6, 0x1

    .line 927
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    .line 929
    const-string/jumbo v1, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA"

    .line 930
    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_256:Lsun/security/ssl/CipherSuite$BulkCipher;

    const v2, 0xc00f

    const/4 v6, 0x1

    .line 929
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    .line 931
    const-string/jumbo v1, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA"

    .line 932
    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DHE_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_256:Lsun/security/ssl/CipherSuite$BulkCipher;

    const/16 v2, 0x39

    const/4 v6, 0x1

    .line 931
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    .line 933
    const-string/jumbo v1, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA"

    .line 934
    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DHE_DSS:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_256:Lsun/security/ssl/CipherSuite$BulkCipher;

    const/16 v2, 0x38

    const/4 v6, 0x1

    .line 933
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    .line 936
    const-string/jumbo v1, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256"

    .line 937
    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDHE_ECDSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    sget-object v9, Lsun/security/ssl/CipherSuite$PRF;->P_SHA256:Lsun/security/ssl/CipherSuite$PRF;

    const v2, 0xc023

    const/4 v6, 0x1

    .line 936
    invoke-static/range {v1 .. v9}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZIILsun/security/ssl/CipherSuite$PRF;)V

    .line 938
    const-string/jumbo v1, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256"

    .line 939
    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDHE_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    sget-object v9, Lsun/security/ssl/CipherSuite$PRF;->P_SHA256:Lsun/security/ssl/CipherSuite$PRF;

    const v2, 0xc027

    const/4 v6, 0x1

    .line 938
    invoke-static/range {v1 .. v9}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZIILsun/security/ssl/CipherSuite$PRF;)V

    .line 940
    const-string/jumbo v1, "TLS_RSA_WITH_AES_128_CBC_SHA256"

    .line 941
    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    sget-object v9, Lsun/security/ssl/CipherSuite$PRF;->P_SHA256:Lsun/security/ssl/CipherSuite$PRF;

    const/16 v2, 0x3c

    const/4 v6, 0x1

    .line 940
    invoke-static/range {v1 .. v9}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZIILsun/security/ssl/CipherSuite$PRF;)V

    .line 942
    const-string/jumbo v1, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256"

    .line 943
    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_ECDSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    sget-object v9, Lsun/security/ssl/CipherSuite$PRF;->P_SHA256:Lsun/security/ssl/CipherSuite$PRF;

    const v2, 0xc025

    const/4 v6, 0x1

    .line 942
    invoke-static/range {v1 .. v9}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZIILsun/security/ssl/CipherSuite$PRF;)V

    .line 944
    const-string/jumbo v1, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256"

    .line 945
    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    sget-object v9, Lsun/security/ssl/CipherSuite$PRF;->P_SHA256:Lsun/security/ssl/CipherSuite$PRF;

    const v2, 0xc029

    const/4 v6, 0x1

    .line 944
    invoke-static/range {v1 .. v9}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZIILsun/security/ssl/CipherSuite$PRF;)V

    .line 946
    const-string/jumbo v1, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA256"

    .line 947
    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DHE_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    sget-object v9, Lsun/security/ssl/CipherSuite$PRF;->P_SHA256:Lsun/security/ssl/CipherSuite$PRF;

    const/16 v2, 0x67

    const/4 v6, 0x1

    .line 946
    invoke-static/range {v1 .. v9}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZIILsun/security/ssl/CipherSuite$PRF;)V

    .line 948
    const-string/jumbo v1, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA256"

    .line 949
    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DHE_DSS:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    sget-object v9, Lsun/security/ssl/CipherSuite$PRF;->P_SHA256:Lsun/security/ssl/CipherSuite$PRF;

    const/16 v2, 0x40

    const/4 v6, 0x1

    .line 948
    invoke-static/range {v1 .. v9}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZIILsun/security/ssl/CipherSuite$PRF;)V

    .line 951
    const-string/jumbo v1, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA"

    .line 952
    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDHE_ECDSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    const v2, 0xc009

    const/4 v6, 0x1

    .line 951
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    .line 953
    const-string/jumbo v1, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"

    .line 954
    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDHE_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    const v2, 0xc013

    const/4 v6, 0x1

    .line 953
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    .line 955
    const-string/jumbo v1, "TLS_RSA_WITH_AES_128_CBC_SHA"

    .line 956
    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    const/16 v2, 0x2f

    const/4 v6, 0x1

    .line 955
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    .line 957
    const-string/jumbo v1, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA"

    .line 958
    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_ECDSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    const v2, 0xc004

    const/4 v6, 0x1

    .line 957
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    .line 959
    const-string/jumbo v1, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA"

    .line 960
    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    const v2, 0xc00e

    const/4 v6, 0x1

    .line 959
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    .line 961
    const-string/jumbo v1, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA"

    .line 962
    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DHE_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    const/16 v2, 0x33

    const/4 v6, 0x1

    .line 961
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    .line 963
    const-string/jumbo v1, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA"

    .line 964
    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DHE_DSS:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    const/16 v2, 0x32

    const/4 v6, 0x1

    .line 963
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    .line 966
    const-string/jumbo v1, "TLS_ECDHE_ECDSA_WITH_RC4_128_SHA"

    .line 967
    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDHE_ECDSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_RC4_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    const v2, 0xc007

    move v6, v14

    .line 966
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    .line 968
    const-string/jumbo v1, "TLS_ECDHE_RSA_WITH_RC4_128_SHA"

    .line 969
    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDHE_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_RC4_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    const v2, 0xc011

    move v6, v14

    .line 968
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    .line 970
    const-string/jumbo v1, "SSL_RSA_WITH_RC4_128_SHA"

    .line 971
    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_RC4_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    const/4 v2, 0x5

    move v6, v14

    .line 970
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    .line 972
    const-string/jumbo v1, "TLS_ECDH_ECDSA_WITH_RC4_128_SHA"

    .line 973
    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_ECDSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_RC4_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    const v2, 0xc002

    move v6, v14

    .line 972
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    .line 974
    const-string/jumbo v1, "TLS_ECDH_RSA_WITH_RC4_128_SHA"

    .line 975
    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_RC4_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    const v2, 0xc00c

    move v6, v14

    .line 974
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    .line 977
    const-string/jumbo v1, "TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA"

    .line 978
    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDHE_ECDSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_3DES:Lsun/security/ssl/CipherSuite$BulkCipher;

    const v2, 0xc008

    const/4 v6, 0x1

    .line 977
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    .line 979
    const-string/jumbo v1, "TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA"

    .line 980
    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDHE_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_3DES:Lsun/security/ssl/CipherSuite$BulkCipher;

    const v2, 0xc012

    const/4 v6, 0x1

    .line 979
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    .line 981
    const-string/jumbo v1, "SSL_RSA_WITH_3DES_EDE_CBC_SHA"

    .line 982
    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_3DES:Lsun/security/ssl/CipherSuite$BulkCipher;

    const/16 v2, 0xa

    const/4 v6, 0x1

    .line 981
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    .line 983
    const-string/jumbo v1, "TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA"

    .line 984
    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_ECDSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_3DES:Lsun/security/ssl/CipherSuite$BulkCipher;

    const v2, 0xc003

    const/4 v6, 0x1

    .line 983
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    .line 985
    const-string/jumbo v1, "TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA"

    .line 986
    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_3DES:Lsun/security/ssl/CipherSuite$BulkCipher;

    const v2, 0xc00d

    const/4 v6, 0x1

    .line 985
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    .line 987
    const-string/jumbo v1, "SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA"

    .line 988
    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DHE_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_3DES:Lsun/security/ssl/CipherSuite$BulkCipher;

    const/16 v2, 0x16

    const/4 v6, 0x1

    .line 987
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    .line 989
    const-string/jumbo v1, "SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA"

    .line 990
    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DHE_DSS:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_3DES:Lsun/security/ssl/CipherSuite$BulkCipher;

    const/16 v2, 0x13

    move v6, v14

    .line 989
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    .line 992
    const-string/jumbo v1, "SSL_RSA_WITH_RC4_128_MD5"

    .line 993
    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_RC4_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    const/4 v2, 0x4

    move v6, v14

    .line 992
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    .line 996
    const-string/jumbo v1, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    .line 997
    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_SCSV:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_NULL:Lsun/security/ssl/CipherSuite$BulkCipher;

    const/16 v2, 0xff

    const/4 v6, 0x1

    .line 996
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    .line 1020
    const-string/jumbo v1, "TLS_DH_anon_WITH_AES_256_CBC_SHA256"

    .line 1021
    const/16 v3, 0x12b

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_256:Lsun/security/ssl/CipherSuite$BulkCipher;

    sget-object v9, Lsun/security/ssl/CipherSuite$PRF;->P_SHA256:Lsun/security/ssl/CipherSuite$PRF;

    const/16 v2, 0x6d

    move v6, v14

    .line 1020
    invoke-static/range {v1 .. v9}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZIILsun/security/ssl/CipherSuite$PRF;)V

    .line 1022
    const-string/jumbo v1, "TLS_ECDH_anon_WITH_AES_256_CBC_SHA"

    .line 1023
    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_256:Lsun/security/ssl/CipherSuite$BulkCipher;

    const v2, 0xc019

    const/4 v6, 0x1

    .line 1022
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    .line 1024
    const-string/jumbo v1, "TLS_DH_anon_WITH_AES_256_CBC_SHA"

    .line 1025
    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_256:Lsun/security/ssl/CipherSuite$BulkCipher;

    const/16 v2, 0x3a

    move v6, v14

    .line 1024
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    .line 1027
    const-string/jumbo v1, "TLS_DH_anon_WITH_AES_128_CBC_SHA256"

    .line 1028
    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    sget-object v9, Lsun/security/ssl/CipherSuite$PRF;->P_SHA256:Lsun/security/ssl/CipherSuite$PRF;

    const/16 v2, 0x6c

    move v6, v14

    .line 1027
    invoke-static/range {v1 .. v9}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZIILsun/security/ssl/CipherSuite$PRF;)V

    .line 1029
    const-string/jumbo v1, "TLS_ECDH_anon_WITH_AES_128_CBC_SHA"

    .line 1030
    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    const v2, 0xc018

    const/4 v6, 0x1

    .line 1029
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    .line 1031
    const-string/jumbo v1, "TLS_DH_anon_WITH_AES_128_CBC_SHA"

    .line 1032
    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    const/16 v2, 0x34

    move v6, v14

    .line 1031
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    .line 1034
    const-string/jumbo v1, "TLS_ECDH_anon_WITH_RC4_128_SHA"

    .line 1035
    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_RC4_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    const v2, 0xc016

    move v6, v14

    .line 1034
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    .line 1036
    const-string/jumbo v1, "SSL_DH_anon_WITH_RC4_128_MD5"

    .line 1037
    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_RC4_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    const/16 v2, 0x18

    move v6, v14

    .line 1036
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    .line 1039
    const-string/jumbo v1, "TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA"

    .line 1040
    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_3DES:Lsun/security/ssl/CipherSuite$BulkCipher;

    const v2, 0xc017

    const/4 v6, 0x1

    .line 1039
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    .line 1041
    const-string/jumbo v1, "SSL_DH_anon_WITH_3DES_EDE_CBC_SHA"

    .line 1042
    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_3DES:Lsun/security/ssl/CipherSuite$BulkCipher;

    const/16 v2, 0x1b

    move v6, v14

    .line 1041
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    .line 1044
    const-string/jumbo v1, "TLS_RSA_WITH_NULL_SHA256"

    .line 1045
    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_NULL:Lsun/security/ssl/CipherSuite$BulkCipher;

    sget-object v9, Lsun/security/ssl/CipherSuite$PRF;->P_SHA256:Lsun/security/ssl/CipherSuite$PRF;

    const/16 v2, 0x3b

    move v6, v14

    .line 1044
    invoke-static/range {v1 .. v9}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZIILsun/security/ssl/CipherSuite$PRF;)V

    .line 1046
    const-string/jumbo v1, "TLS_ECDHE_ECDSA_WITH_NULL_SHA"

    .line 1047
    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDHE_ECDSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_NULL:Lsun/security/ssl/CipherSuite$BulkCipher;

    const v2, 0xc006

    move v6, v14

    .line 1046
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    .line 1048
    const-string/jumbo v1, "TLS_ECDHE_RSA_WITH_NULL_SHA"

    .line 1049
    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDHE_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_NULL:Lsun/security/ssl/CipherSuite$BulkCipher;

    const v2, 0xc010

    move v6, v14

    .line 1048
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    .line 1050
    const-string/jumbo v1, "SSL_RSA_WITH_NULL_SHA"

    .line 1051
    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_NULL:Lsun/security/ssl/CipherSuite$BulkCipher;

    const/4 v2, 0x2

    move v6, v14

    .line 1050
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    .line 1052
    const-string/jumbo v1, "TLS_ECDH_ECDSA_WITH_NULL_SHA"

    .line 1053
    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_ECDSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_NULL:Lsun/security/ssl/CipherSuite$BulkCipher;

    const v2, 0xc001

    move v6, v14

    .line 1052
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    .line 1054
    const-string/jumbo v1, "TLS_ECDH_RSA_WITH_NULL_SHA"

    .line 1055
    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_NULL:Lsun/security/ssl/CipherSuite$BulkCipher;

    const v2, 0xc00b

    move v6, v14

    .line 1054
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    .line 1056
    const-string/jumbo v1, "TLS_ECDH_anon_WITH_NULL_SHA"

    .line 1057
    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_NULL:Lsun/security/ssl/CipherSuite$BulkCipher;

    const v2, 0xc015

    move v6, v14

    .line 1056
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    .line 1058
    const-string/jumbo v1, "SSL_RSA_WITH_NULL_MD5"

    .line 1059
    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_NULL:Lsun/security/ssl/CipherSuite$BulkCipher;

    const/4 v2, 0x1

    move v6, v14

    .line 1058
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    .line 1062
    const-string/jumbo v9, "SSL_RSA_WITH_DES_CBC_SHA"

    .line 1063
    add-int/lit8 v3, v3, -0x1

    sget-object v12, Lsun/security/ssl/CipherSuite$KeyExchange;->K_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v13, Lsun/security/ssl/CipherSuite;->B_DES:Lsun/security/ssl/CipherSuite$BulkCipher;

    const/16 v10, 0x9

    move v11, v3

    move v15, v8

    .line 1062
    invoke-static/range {v9 .. v15}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZI)V

    .line 1064
    const-string/jumbo v9, "SSL_DHE_RSA_WITH_DES_CBC_SHA"

    .line 1065
    add-int/lit8 v3, v3, -0x1

    sget-object v12, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DHE_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v13, Lsun/security/ssl/CipherSuite;->B_DES:Lsun/security/ssl/CipherSuite$BulkCipher;

    const/16 v10, 0x15

    move v11, v3

    move v15, v8

    .line 1064
    invoke-static/range {v9 .. v15}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZI)V

    .line 1066
    const-string/jumbo v9, "SSL_DHE_DSS_WITH_DES_CBC_SHA"

    .line 1067
    add-int/lit8 v3, v3, -0x1

    sget-object v12, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DHE_DSS:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v13, Lsun/security/ssl/CipherSuite;->B_DES:Lsun/security/ssl/CipherSuite$BulkCipher;

    const/16 v10, 0x12

    move v11, v3

    move v15, v8

    .line 1066
    invoke-static/range {v9 .. v15}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZI)V

    .line 1068
    const-string/jumbo v9, "SSL_DH_anon_WITH_DES_CBC_SHA"

    .line 1069
    add-int/lit8 v3, v3, -0x1

    sget-object v12, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v13, Lsun/security/ssl/CipherSuite;->B_DES:Lsun/security/ssl/CipherSuite$BulkCipher;

    const/16 v10, 0x1a

    move v11, v3

    move v15, v8

    .line 1068
    invoke-static/range {v9 .. v15}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZI)V

    .line 1072
    const-string/jumbo v9, "SSL_RSA_EXPORT_WITH_RC4_40_MD5"

    .line 1073
    add-int/lit8 v3, v3, -0x1

    sget-object v12, Lsun/security/ssl/CipherSuite$KeyExchange;->K_RSA_EXPORT:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v13, Lsun/security/ssl/CipherSuite;->B_RC4_40:Lsun/security/ssl/CipherSuite$BulkCipher;

    const/4 v10, 0x3

    move v11, v3

    move/from16 v15, v18

    .line 1072
    invoke-static/range {v9 .. v15}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZI)V

    .line 1074
    const-string/jumbo v9, "SSL_DH_anon_EXPORT_WITH_RC4_40_MD5"

    .line 1075
    add-int/lit8 v3, v3, -0x1

    sget-object v12, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v13, Lsun/security/ssl/CipherSuite;->B_RC4_40:Lsun/security/ssl/CipherSuite$BulkCipher;

    const/16 v10, 0x17

    move v11, v3

    move/from16 v15, v18

    .line 1074
    invoke-static/range {v9 .. v15}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZI)V

    .line 1077
    const-string/jumbo v9, "SSL_RSA_EXPORT_WITH_DES40_CBC_SHA"

    .line 1078
    add-int/lit8 v3, v3, -0x1

    sget-object v12, Lsun/security/ssl/CipherSuite$KeyExchange;->K_RSA_EXPORT:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v13, Lsun/security/ssl/CipherSuite;->B_DES_40:Lsun/security/ssl/CipherSuite$BulkCipher;

    const/16 v10, 0x8

    move v11, v3

    move/from16 v15, v18

    .line 1077
    invoke-static/range {v9 .. v15}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZI)V

    .line 1079
    const-string/jumbo v9, "SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA"

    .line 1080
    add-int/lit8 v3, v3, -0x1

    sget-object v12, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DHE_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v13, Lsun/security/ssl/CipherSuite;->B_DES_40:Lsun/security/ssl/CipherSuite$BulkCipher;

    const/16 v10, 0x14

    move v11, v3

    move/from16 v15, v18

    .line 1079
    invoke-static/range {v9 .. v15}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZI)V

    .line 1081
    const-string/jumbo v9, "SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA"

    .line 1082
    add-int/lit8 v3, v3, -0x1

    sget-object v12, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DHE_DSS:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v13, Lsun/security/ssl/CipherSuite;->B_DES_40:Lsun/security/ssl/CipherSuite$BulkCipher;

    const/16 v10, 0x11

    move v11, v3

    move/from16 v15, v18

    .line 1081
    invoke-static/range {v9 .. v15}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZI)V

    .line 1083
    const-string/jumbo v9, "SSL_DH_anon_EXPORT_WITH_DES40_CBC_SHA"

    .line 1084
    add-int/lit8 v3, v3, -0x1

    sget-object v12, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v13, Lsun/security/ssl/CipherSuite;->B_DES_40:Lsun/security/ssl/CipherSuite$BulkCipher;

    const/16 v10, 0x19

    move v11, v3

    move/from16 v15, v18

    .line 1083
    invoke-static/range {v9 .. v15}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZI)V

    .line 1087
    const-string/jumbo v1, "TLS_KRB5_WITH_RC4_128_SHA"

    .line 1088
    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_RC4_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    const/16 v2, 0x20

    move v6, v14

    .line 1087
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    .line 1089
    const-string/jumbo v1, "TLS_KRB5_WITH_RC4_128_MD5"

    .line 1090
    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_RC4_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    const/16 v2, 0x24

    move v6, v14

    .line 1089
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    .line 1091
    const-string/jumbo v1, "TLS_KRB5_WITH_3DES_EDE_CBC_SHA"

    .line 1092
    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_3DES:Lsun/security/ssl/CipherSuite$BulkCipher;

    const/16 v2, 0x1f

    move v6, v14

    .line 1091
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    .line 1093
    const-string/jumbo v1, "TLS_KRB5_WITH_3DES_EDE_CBC_MD5"

    .line 1094
    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite;->B_3DES:Lsun/security/ssl/CipherSuite$BulkCipher;

    const/16 v2, 0x23

    move v6, v14

    .line 1093
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    .line 1095
    const-string/jumbo v9, "TLS_KRB5_WITH_DES_CBC_SHA"

    .line 1096
    add-int/lit8 v3, v3, -0x1

    sget-object v12, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v13, Lsun/security/ssl/CipherSuite;->B_DES:Lsun/security/ssl/CipherSuite$BulkCipher;

    const/16 v10, 0x1e

    move v11, v3

    move v15, v8

    .line 1095
    invoke-static/range {v9 .. v15}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZI)V

    .line 1097
    const-string/jumbo v9, "TLS_KRB5_WITH_DES_CBC_MD5"

    .line 1098
    add-int/lit8 v3, v3, -0x1

    sget-object v12, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v13, Lsun/security/ssl/CipherSuite;->B_DES:Lsun/security/ssl/CipherSuite$BulkCipher;

    const/16 v10, 0x22

    move v11, v3

    move v15, v8

    .line 1097
    invoke-static/range {v9 .. v15}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZI)V

    .line 1099
    const-string/jumbo v9, "TLS_KRB5_EXPORT_WITH_RC4_40_SHA"

    .line 1100
    add-int/lit8 v3, v3, -0x1

    sget-object v12, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5_EXPORT:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v13, Lsun/security/ssl/CipherSuite;->B_RC4_40:Lsun/security/ssl/CipherSuite$BulkCipher;

    const/16 v10, 0x28

    move v11, v3

    move/from16 v15, v18

    .line 1099
    invoke-static/range {v9 .. v15}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZI)V

    .line 1101
    const-string/jumbo v9, "TLS_KRB5_EXPORT_WITH_RC4_40_MD5"

    .line 1102
    add-int/lit8 v3, v3, -0x1

    sget-object v12, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5_EXPORT:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v13, Lsun/security/ssl/CipherSuite;->B_RC4_40:Lsun/security/ssl/CipherSuite$BulkCipher;

    const/16 v10, 0x2b

    move v11, v3

    move/from16 v15, v18

    .line 1101
    invoke-static/range {v9 .. v15}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZI)V

    .line 1103
    const-string/jumbo v9, "TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA"

    .line 1104
    add-int/lit8 v3, v3, -0x1

    sget-object v12, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5_EXPORT:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v13, Lsun/security/ssl/CipherSuite;->B_DES_40:Lsun/security/ssl/CipherSuite$BulkCipher;

    const/16 v10, 0x26

    move v11, v3

    move/from16 v15, v18

    .line 1103
    invoke-static/range {v9 .. v15}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZI)V

    .line 1105
    const-string/jumbo v9, "TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5"

    .line 1106
    add-int/lit8 v3, v3, -0x1

    sget-object v12, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5_EXPORT:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v13, Lsun/security/ssl/CipherSuite;->B_DES_40:Lsun/security/ssl/CipherSuite$BulkCipher;

    const/16 v10, 0x29

    move v11, v3

    move/from16 v15, v18

    .line 1105
    invoke-static/range {v9 .. v15}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZI)V

    .line 1124
    const-string/jumbo v1, "SSL_RSA_EXPORT_WITH_RC2_CBC_40_MD5"

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1125
    const-string/jumbo v1, "SSL_RSA_WITH_IDEA_CBC_SHA"

    const/4 v2, 0x7

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1126
    const-string/jumbo v1, "SSL_DH_DSS_EXPORT_WITH_DES40_CBC_SHA"

    const/16 v2, 0xb

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1127
    const-string/jumbo v1, "SSL_DH_DSS_WITH_DES_CBC_SHA"

    const/16 v2, 0xc

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1128
    const-string/jumbo v1, "SSL_DH_DSS_WITH_3DES_EDE_CBC_SHA"

    const/16 v2, 0xd

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1129
    const-string/jumbo v1, "SSL_DH_RSA_EXPORT_WITH_DES40_CBC_SHA"

    const/16 v2, 0xe

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1130
    const-string/jumbo v1, "SSL_DH_RSA_WITH_DES_CBC_SHA"

    const/16 v2, 0xf

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1131
    const-string/jumbo v1, "SSL_DH_RSA_WITH_3DES_EDE_CBC_SHA"

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1134
    const-string/jumbo v1, "SSL_FORTEZZA_DMS_WITH_NULL_SHA"

    const/16 v2, 0x1c

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1135
    const-string/jumbo v1, "SSL_FORTEZZA_DMS_WITH_FORTEZZA_CBC_SHA"

    const/16 v2, 0x1d

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1138
    const-string/jumbo v1, "SSL_RSA_EXPORT1024_WITH_DES_CBC_SHA"

    const/16 v2, 0x62

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1139
    const-string/jumbo v1, "SSL_DHE_DSS_EXPORT1024_WITH_DES_CBC_SHA"

    const/16 v2, 0x63

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1140
    const-string/jumbo v1, "SSL_RSA_EXPORT1024_WITH_RC4_56_SHA"

    const/16 v2, 0x64

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1141
    const-string/jumbo v1, "SSL_DHE_DSS_EXPORT1024_WITH_RC4_56_SHA"

    const/16 v2, 0x65

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1142
    const-string/jumbo v1, "SSL_DHE_DSS_WITH_RC4_128_SHA"

    const/16 v2, 0x66

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1146
    const-string/jumbo v1, "NETSCAPE_RSA_FIPS_WITH_3DES_EDE_CBC_SHA"

    const v2, 0xffe0

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1147
    const-string/jumbo v1, "NETSCAPE_RSA_FIPS_WITH_DES_CBC_SHA"

    const v2, 0xffe1

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1148
    const-string/jumbo v1, "SSL_RSA_FIPS_WITH_DES_CBC_SHA"

    const v2, 0xfefe

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1149
    const-string/jumbo v1, "SSL_RSA_FIPS_WITH_3DES_EDE_CBC_SHA"

    const v2, 0xfeff

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1152
    const-string/jumbo v1, "TLS_KRB5_WITH_IDEA_CBC_SHA"

    const/16 v2, 0x21

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1153
    const-string/jumbo v1, "TLS_KRB5_WITH_IDEA_CBC_MD5"

    const/16 v2, 0x25

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1154
    const-string/jumbo v1, "TLS_KRB5_EXPORT_WITH_RC2_CBC_40_SHA"

    const/16 v2, 0x27

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1155
    const-string/jumbo v1, "TLS_KRB5_EXPORT_WITH_RC2_CBC_40_MD5"

    const/16 v2, 0x2a

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1158
    const-string/jumbo v1, "TLS_RSA_WITH_SEED_CBC_SHA"

    const/16 v2, 0x96

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1159
    const-string/jumbo v1, "TLS_DH_DSS_WITH_SEED_CBC_SHA"

    const/16 v2, 0x97

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1160
    const-string/jumbo v1, "TLS_DH_RSA_WITH_SEED_CBC_SHA"

    const/16 v2, 0x98

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1161
    const-string/jumbo v1, "TLS_DHE_DSS_WITH_SEED_CBC_SHA"

    const/16 v2, 0x99

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1162
    const-string/jumbo v1, "TLS_DHE_RSA_WITH_SEED_CBC_SHA"

    const/16 v2, 0x9a

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1163
    const-string/jumbo v1, "TLS_DH_anon_WITH_SEED_CBC_SHA"

    const/16 v2, 0x9b

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1166
    const-string/jumbo v1, "TLS_PSK_WITH_RC4_128_SHA"

    const/16 v2, 0x8a

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1167
    const-string/jumbo v1, "TLS_PSK_WITH_3DES_EDE_CBC_SHA"

    const/16 v2, 0x8b

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1168
    const-string/jumbo v1, "TLS_PSK_WITH_AES_128_CBC_SHA"

    const/16 v2, 0x8c

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1169
    const-string/jumbo v1, "TLS_PSK_WITH_AES_256_CBC_SHA"

    const/16 v2, 0x8d

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1170
    const-string/jumbo v1, "TLS_DHE_PSK_WITH_RC4_128_SHA"

    const/16 v2, 0x8e

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1171
    const-string/jumbo v1, "TLS_DHE_PSK_WITH_3DES_EDE_CBC_SHA"

    const/16 v2, 0x8f

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1172
    const-string/jumbo v1, "TLS_DHE_PSK_WITH_AES_128_CBC_SHA"

    const/16 v2, 0x90

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1173
    const-string/jumbo v1, "TLS_DHE_PSK_WITH_AES_256_CBC_SHA"

    const/16 v2, 0x91

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1174
    const-string/jumbo v1, "TLS_RSA_PSK_WITH_RC4_128_SHA"

    const/16 v2, 0x92

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1175
    const-string/jumbo v1, "TLS_RSA_PSK_WITH_3DES_EDE_CBC_SHA"

    const/16 v2, 0x93

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1176
    const-string/jumbo v1, "TLS_RSA_PSK_WITH_AES_128_CBC_SHA"

    const/16 v2, 0x94

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1177
    const-string/jumbo v1, "TLS_RSA_PSK_WITH_AES_256_CBC_SHA"

    const/16 v2, 0x95

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1180
    const-string/jumbo v1, "TLS_PSK_WITH_NULL_SHA"

    const/16 v2, 0x2c

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1181
    const-string/jumbo v1, "TLS_DHE_PSK_WITH_NULL_SHA"

    const/16 v2, 0x2d

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1182
    const-string/jumbo v1, "TLS_RSA_PSK_WITH_NULL_SHA"

    const/16 v2, 0x2e

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1185
    const-string/jumbo v1, "TLS_DH_DSS_WITH_AES_128_CBC_SHA"

    const/16 v2, 0x30

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1186
    const-string/jumbo v1, "TLS_DH_RSA_WITH_AES_128_CBC_SHA"

    const/16 v2, 0x31

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1187
    const-string/jumbo v1, "TLS_DH_DSS_WITH_AES_256_CBC_SHA"

    const/16 v2, 0x36

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1188
    const-string/jumbo v1, "TLS_DH_RSA_WITH_AES_256_CBC_SHA"

    const/16 v2, 0x37

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1189
    const-string/jumbo v1, "TLS_DH_DSS_WITH_AES_128_CBC_SHA256"

    const/16 v2, 0x3e

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1190
    const-string/jumbo v1, "TLS_DH_RSA_WITH_AES_128_CBC_SHA256"

    const/16 v2, 0x3f

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1191
    const-string/jumbo v1, "TLS_DH_DSS_WITH_AES_256_CBC_SHA256"

    const/16 v2, 0x68

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1192
    const-string/jumbo v1, "TLS_DH_RSA_WITH_AES_256_CBC_SHA256"

    const/16 v2, 0x69

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1195
    const-string/jumbo v1, "TLS_RSA_WITH_AES_128_GCM_SHA256"

    const/16 v2, 0x9c

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1196
    const-string/jumbo v1, "TLS_RSA_WITH_AES_256_GCM_SHA384"

    const/16 v2, 0x9d

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1197
    const-string/jumbo v1, "TLS_DHE_RSA_WITH_AES_128_GCM_SHA256"

    const/16 v2, 0x9e

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1198
    const-string/jumbo v1, "TLS_DHE_RSA_WITH_AES_256_GCM_SHA384"

    const/16 v2, 0x9f

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1199
    const-string/jumbo v1, "TLS_DH_RSA_WITH_AES_128_GCM_SHA256"

    const/16 v2, 0xa0

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1200
    const-string/jumbo v1, "TLS_DH_RSA_WITH_AES_256_GCM_SHA384"

    const/16 v2, 0xa1

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1201
    const-string/jumbo v1, "TLS_DHE_DSS_WITH_AES_128_GCM_SHA256"

    const/16 v2, 0xa2

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1202
    const-string/jumbo v1, "TLS_DHE_DSS_WITH_AES_256_GCM_SHA384"

    const/16 v2, 0xa3

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1203
    const-string/jumbo v1, "TLS_DH_DSS_WITH_AES_128_GCM_SHA256"

    const/16 v2, 0xa4

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1204
    const-string/jumbo v1, "TLS_DH_DSS_WITH_AES_256_GCM_SHA384"

    const/16 v2, 0xa5

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1205
    const-string/jumbo v1, "TLS_DH_anon_WITH_AES_128_GCM_SHA256"

    const/16 v2, 0xa6

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1206
    const-string/jumbo v1, "TLS_DH_anon_WITH_AES_256_GCM_SHA384"

    const/16 v2, 0xa7

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1209
    const-string/jumbo v1, "TLS_PSK_WITH_AES_128_GCM_SHA256"

    const/16 v2, 0xa8

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1210
    const-string/jumbo v1, "TLS_PSK_WITH_AES_256_GCM_SHA384"

    const/16 v2, 0xa9

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1211
    const-string/jumbo v1, "TLS_DHE_PSK_WITH_AES_128_GCM_SHA256"

    const/16 v2, 0xaa

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1212
    const-string/jumbo v1, "TLS_DHE_PSK_WITH_AES_256_GCM_SHA384"

    const/16 v2, 0xab

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1213
    const-string/jumbo v1, "TLS_RSA_PSK_WITH_AES_128_GCM_SHA256"

    const/16 v2, 0xac

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1214
    const-string/jumbo v1, "TLS_RSA_PSK_WITH_AES_256_GCM_SHA384"

    const/16 v2, 0xad

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1215
    const-string/jumbo v1, "TLS_PSK_WITH_AES_128_CBC_SHA256"

    const/16 v2, 0xae

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1216
    const-string/jumbo v1, "TLS_PSK_WITH_AES_256_CBC_SHA384"

    const/16 v2, 0xaf

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1217
    const-string/jumbo v1, "TLS_PSK_WITH_NULL_SHA256"

    const/16 v2, 0xb0

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1218
    const-string/jumbo v1, "TLS_PSK_WITH_NULL_SHA384"

    const/16 v2, 0xb1

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1219
    const-string/jumbo v1, "TLS_DHE_PSK_WITH_AES_128_CBC_SHA256"

    const/16 v2, 0xb2

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1220
    const-string/jumbo v1, "TLS_DHE_PSK_WITH_AES_256_CBC_SHA384"

    const/16 v2, 0xb3

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1221
    const-string/jumbo v1, "TLS_DHE_PSK_WITH_NULL_SHA256"

    const/16 v2, 0xb4

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1222
    const-string/jumbo v1, "TLS_DHE_PSK_WITH_NULL_SHA384"

    const/16 v2, 0xb5

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1223
    const-string/jumbo v1, "TLS_RSA_PSK_WITH_AES_128_CBC_SHA256"

    const/16 v2, 0xb6

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1224
    const-string/jumbo v1, "TLS_RSA_PSK_WITH_AES_256_CBC_SHA384"

    const/16 v2, 0xb7

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1225
    const-string/jumbo v1, "TLS_RSA_PSK_WITH_NULL_SHA256"

    const/16 v2, 0xb8

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1226
    const-string/jumbo v1, "TLS_RSA_PSK_WITH_NULL_SHA384"

    const/16 v2, 0xb9

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1229
    const-string/jumbo v1, "TLS_RSA_WITH_CAMELLIA_128_CBC_SHA"

    const/16 v2, 0x41

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1230
    const-string/jumbo v1, "TLS_DH_DSS_WITH_CAMELLIA_128_CBC_SHA"

    const/16 v2, 0x42

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1231
    const-string/jumbo v1, "TLS_DH_RSA_WITH_CAMELLIA_128_CBC_SHA"

    const/16 v2, 0x43

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1232
    const-string/jumbo v1, "TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA"

    const/16 v2, 0x44

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1233
    const-string/jumbo v1, "TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA"

    const/16 v2, 0x45

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1234
    const-string/jumbo v1, "TLS_DH_anon_WITH_CAMELLIA_128_CBC_SHA"

    const/16 v2, 0x46

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1235
    const-string/jumbo v1, "TLS_RSA_WITH_CAMELLIA_256_CBC_SHA"

    const/16 v2, 0x84

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1236
    const-string/jumbo v1, "TLS_DH_DSS_WITH_CAMELLIA_256_CBC_SHA"

    const/16 v2, 0x85

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1237
    const-string/jumbo v1, "TLS_DH_RSA_WITH_CAMELLIA_256_CBC_SHA"

    const/16 v2, 0x86

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1238
    const-string/jumbo v1, "TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA"

    const/16 v2, 0x87

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1239
    const-string/jumbo v1, "TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA"

    const/16 v2, 0x88

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1240
    const-string/jumbo v1, "TLS_DH_anon_WITH_CAMELLIA_256_CBC_SHA"

    const/16 v2, 0x89

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1241
    const-string/jumbo v1, "TLS_RSA_WITH_CAMELLIA_128_CBC_SHA256"

    const/16 v2, 0xba

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1242
    const-string/jumbo v1, "TLS_DH_DSS_WITH_CAMELLIA_128_CBC_SHA256"

    const/16 v2, 0xbb

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1243
    const-string/jumbo v1, "TLS_DH_RSA_WITH_CAMELLIA_128_CBC_SHA256"

    const/16 v2, 0xbc

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1244
    const-string/jumbo v1, "TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA256"

    const/16 v2, 0xbd

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1245
    const-string/jumbo v1, "TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA256"

    const/16 v2, 0xbe

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1246
    const-string/jumbo v1, "TLS_DH_anon_WITH_CAMELLIA_128_CBC_SHA256"

    const/16 v2, 0xbf

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1247
    const-string/jumbo v1, "TLS_RSA_WITH_CAMELLIA_256_CBC_SHA256"

    const/16 v2, 0xc0

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1248
    const-string/jumbo v1, "TLS_DH_DSS_WITH_CAMELLIA_256_CBC_SHA256"

    const/16 v2, 0xc1

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1249
    const-string/jumbo v1, "TLS_DH_RSA_WITH_CAMELLIA_256_CBC_SHA256"

    const/16 v2, 0xc2

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1250
    const-string/jumbo v1, "TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA256"

    const/16 v2, 0xc3

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1251
    const-string/jumbo v1, "TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA256"

    const/16 v2, 0xc4

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1252
    const-string/jumbo v1, "TLS_DH_anon_WITH_CAMELLIA_256_CBC_SHA256"

    const/16 v2, 0xc5

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1255
    const-string/jumbo v1, "TLS_SRP_SHA_WITH_3DES_EDE_CBC_SHA"

    const v2, 0xc01a

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1256
    const-string/jumbo v1, "TLS_SRP_SHA_RSA_WITH_3DES_EDE_CBC_SHA"

    const v2, 0xc01b

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1257
    const-string/jumbo v1, "TLS_SRP_SHA_DSS_WITH_3DES_EDE_CBC_SHA"

    const v2, 0xc01c

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1258
    const-string/jumbo v1, "TLS_SRP_SHA_WITH_AES_128_CBC_SHA"

    const v2, 0xc01d

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1259
    const-string/jumbo v1, "TLS_SRP_SHA_RSA_WITH_AES_128_CBC_SHA"

    const v2, 0xc01e

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1260
    const-string/jumbo v1, "TLS_SRP_SHA_DSS_WITH_AES_128_CBC_SHA"

    const v2, 0xc01f

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1261
    const-string/jumbo v1, "TLS_SRP_SHA_WITH_AES_256_CBC_SHA"

    const v2, 0xc020

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1262
    const-string/jumbo v1, "TLS_SRP_SHA_RSA_WITH_AES_256_CBC_SHA"

    const v2, 0xc021

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1263
    const-string/jumbo v1, "TLS_SRP_SHA_DSS_WITH_AES_256_CBC_SHA"

    const v2, 0xc022

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1266
    const-string/jumbo v1, "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256"

    const v2, 0xc02b

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1267
    const-string/jumbo v1, "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384"

    const v2, 0xc02c

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1268
    const-string/jumbo v1, "TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256"

    const v2, 0xc02d

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1269
    const-string/jumbo v1, "TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384"

    const v2, 0xc02e

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1270
    const-string/jumbo v1, "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256"

    const v2, 0xc02f

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1271
    const-string/jumbo v1, "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384"

    const v2, 0xc030

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1272
    const-string/jumbo v1, "TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256"

    const v2, 0xc031

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1273
    const-string/jumbo v1, "TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384"

    const v2, 0xc032

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1276
    const-string/jumbo v1, "TLS_ECDHE_PSK_WITH_RC4_128_SHA"

    const v2, 0xc033

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1277
    const-string/jumbo v1, "TLS_ECDHE_PSK_WITH_3DES_EDE_CBC_SHA"

    const v2, 0xc034

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1278
    const-string/jumbo v1, "TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA"

    const v2, 0xc035

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1279
    const-string/jumbo v1, "TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA"

    const v2, 0xc036

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1280
    const-string/jumbo v1, "TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA256"

    const v2, 0xc037

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1281
    const-string/jumbo v1, "TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA384"

    const v2, 0xc038

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1282
    const-string/jumbo v1, "TLS_ECDHE_PSK_WITH_NULL_SHA"

    const v2, 0xc039

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1283
    const-string/jumbo v1, "TLS_ECDHE_PSK_WITH_NULL_SHA256"

    const v2, 0xc03a

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1284
    const-string/jumbo v1, "TLS_ECDHE_PSK_WITH_NULL_SHA384"

    const v2, 0xc03b

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    .line 1288
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->valueOf(II)Lsun/security/ssl/CipherSuite;

    move-result-object v1

    sput-object v1, Lsun/security/ssl/CipherSuite;->C_NULL:Lsun/security/ssl/CipherSuite;

    .line 1291
    const/4 v1, 0x0

    const/16 v2, 0xff

    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->valueOf(II)Lsun/security/ssl/CipherSuite;

    move-result-object v1

    sput-object v1, Lsun/security/ssl/CipherSuite;->C_SCSV:Lsun/security/ssl/CipherSuite;

    .line 68
    return-void

    .line 647
    .end local v3    # "p":I
    .end local v7    # "max":I
    .end local v8    # "tls12":I
    .end local v14    # "N":Z
    .end local v18    # "tls11":I
    :cond_0
    const/4 v14, 0x0

    .restart local v14    # "N":Z
    goto/16 :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput-object p1, p0, Lsun/security/ssl/CipherSuite;->name:Ljava/lang/String;

    .line 168
    iput p2, p0, Lsun/security/ssl/CipherSuite;->id:I

    .line 169
    iput-boolean v1, p0, Lsun/security/ssl/CipherSuite;->allowed:Z

    .line 171
    iput v1, p0, Lsun/security/ssl/CipherSuite;->priority:I

    .line 172
    iput-object v0, p0, Lsun/security/ssl/CipherSuite;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    .line 173
    iput-object v0, p0, Lsun/security/ssl/CipherSuite;->cipher:Lsun/security/ssl/CipherSuite$BulkCipher;

    .line 174
    iput-object v0, p0, Lsun/security/ssl/CipherSuite;->macAlg:Lsun/security/ssl/CipherSuite$MacAlg;

    .line 175
    iput-boolean v1, p0, Lsun/security/ssl/CipherSuite;->exportable:Z

    .line 176
    const v0, 0xffff

    iput v0, p0, Lsun/security/ssl/CipherSuite;->obsoleted:I

    .line 177
    iput v1, p0, Lsun/security/ssl/CipherSuite;->supported:I

    .line 178
    sget-object v0, Lsun/security/ssl/CipherSuite$PRF;->P_NONE:Lsun/security/ssl/CipherSuite$PRF;

    iput-object v0, p0, Lsun/security/ssl/CipherSuite;->prfAlg:Lsun/security/ssl/CipherSuite$PRF;

    .line 166
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZIILsun/security/ssl/CipherSuite$PRF;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "priority"    # I
    .param p4, "keyExchange"    # Lsun/security/ssl/CipherSuite$KeyExchange;
    .param p5, "cipher"    # Lsun/security/ssl/CipherSuite$BulkCipher;
    .param p6, "allowed"    # Z
    .param p7, "obsoleted"    # I
    .param p8, "supported"    # I
    .param p9, "prfAlg"    # Lsun/security/ssl/CipherSuite$PRF;

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p1, p0, Lsun/security/ssl/CipherSuite;->name:Ljava/lang/String;

    .line 133
    iput p2, p0, Lsun/security/ssl/CipherSuite;->id:I

    .line 134
    iput p3, p0, Lsun/security/ssl/CipherSuite;->priority:I

    .line 135
    iput-object p4, p0, Lsun/security/ssl/CipherSuite;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    .line 136
    iput-object p5, p0, Lsun/security/ssl/CipherSuite;->cipher:Lsun/security/ssl/CipherSuite$BulkCipher;

    .line 137
    iget-boolean v0, p5, Lsun/security/ssl/CipherSuite$BulkCipher;->exportable:Z

    iput-boolean v0, p0, Lsun/security/ssl/CipherSuite;->exportable:Z

    .line 138
    const-string/jumbo v0, "_MD5"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    sget-object v0, Lsun/security/ssl/CipherSuite;->M_MD5:Lsun/security/ssl/CipherSuite$MacAlg;

    iput-object v0, p0, Lsun/security/ssl/CipherSuite;->macAlg:Lsun/security/ssl/CipherSuite$MacAlg;

    .line 155
    :goto_0
    iget-boolean v0, p4, Lsun/security/ssl/CipherSuite$KeyExchange;->allowed:Z

    and-int/2addr p6, v0

    .line 156
    iget-boolean v0, p5, Lsun/security/ssl/CipherSuite$BulkCipher;->allowed:Z

    and-int/2addr p6, v0

    .line 157
    iput-boolean p6, p0, Lsun/security/ssl/CipherSuite;->allowed:Z

    .line 158
    iput p7, p0, Lsun/security/ssl/CipherSuite;->obsoleted:I

    .line 159
    iput p8, p0, Lsun/security/ssl/CipherSuite;->supported:I

    .line 160
    iput-object p9, p0, Lsun/security/ssl/CipherSuite;->prfAlg:Lsun/security/ssl/CipherSuite$PRF;

    .line 131
    return-void

    .line 140
    :cond_0
    const-string/jumbo v0, "_SHA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    sget-object v0, Lsun/security/ssl/CipherSuite;->M_SHA:Lsun/security/ssl/CipherSuite$MacAlg;

    iput-object v0, p0, Lsun/security/ssl/CipherSuite;->macAlg:Lsun/security/ssl/CipherSuite$MacAlg;

    goto :goto_0

    .line 142
    :cond_1
    const-string/jumbo v0, "_SHA256"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 143
    sget-object v0, Lsun/security/ssl/CipherSuite;->M_SHA256:Lsun/security/ssl/CipherSuite$MacAlg;

    iput-object v0, p0, Lsun/security/ssl/CipherSuite;->macAlg:Lsun/security/ssl/CipherSuite$MacAlg;

    goto :goto_0

    .line 144
    :cond_2
    const-string/jumbo v0, "_SHA384"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 145
    sget-object v0, Lsun/security/ssl/CipherSuite;->M_SHA384:Lsun/security/ssl/CipherSuite$MacAlg;

    iput-object v0, p0, Lsun/security/ssl/CipherSuite;->macAlg:Lsun/security/ssl/CipherSuite$MacAlg;

    goto :goto_0

    .line 146
    :cond_3
    const-string/jumbo v0, "_NULL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 147
    sget-object v0, Lsun/security/ssl/CipherSuite;->M_NULL:Lsun/security/ssl/CipherSuite$MacAlg;

    iput-object v0, p0, Lsun/security/ssl/CipherSuite;->macAlg:Lsun/security/ssl/CipherSuite$MacAlg;

    goto :goto_0

    .line 148
    :cond_4
    const-string/jumbo v0, "_SCSV"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 149
    sget-object v0, Lsun/security/ssl/CipherSuite;->M_NULL:Lsun/security/ssl/CipherSuite$MacAlg;

    iput-object v0, p0, Lsun/security/ssl/CipherSuite;->macAlg:Lsun/security/ssl/CipherSuite$MacAlg;

    goto :goto_0

    .line 151
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown MAC algorithm for ciphersuite "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 151
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static add(Ljava/lang/String;I)V
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "id"    # I

    .prologue
    .line 319
    new-instance v0, Lsun/security/ssl/CipherSuite;

    invoke-direct {v0, p0, p1}, Lsun/security/ssl/CipherSuite;-><init>(Ljava/lang/String;I)V

    .line 320
    .local v0, "c":Lsun/security/ssl/CipherSuite;
    sget-object v1, Lsun/security/ssl/CipherSuite;->idMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 321
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Duplicate ciphersuite definition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 322
    const-string/jumbo v3, ", "

    .line 321
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 318
    :cond_0
    return-void
.end method

.method private static add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V
    .locals 7
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "id"    # I
    .param p2, "priority"    # I
    .param p3, "keyExchange"    # Lsun/security/ssl/CipherSuite$KeyExchange;
    .param p4, "cipher"    # Lsun/security/ssl/CipherSuite$BulkCipher;
    .param p5, "allowed"    # Z

    .prologue
    .line 311
    const v6, 0xffff

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 310
    invoke-static/range {v0 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZI)V

    .line 309
    return-void
.end method

.method private static add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZI)V
    .locals 9
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "id"    # I
    .param p2, "priority"    # I
    .param p3, "keyExchange"    # Lsun/security/ssl/CipherSuite$KeyExchange;
    .param p4, "cipher"    # Lsun/security/ssl/CipherSuite$BulkCipher;
    .param p5, "allowed"    # Z
    .param p6, "obsoleted"    # I

    .prologue
    .line 295
    sget-object v8, Lsun/security/ssl/CipherSuite$PRF;->P_SHA256:Lsun/security/ssl/CipherSuite$PRF;

    .line 296
    .local v8, "prf":Lsun/security/ssl/CipherSuite$PRF;
    sget-object v0, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v0, v0, Lsun/security/ssl/ProtocolVersion;->v:I

    if-ge p6, v0, :cond_0

    .line 297
    sget-object v8, Lsun/security/ssl/CipherSuite$PRF;->P_NONE:Lsun/security/ssl/CipherSuite$PRF;

    .line 301
    :cond_0
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    .line 300
    invoke-static/range {v0 .. v8}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZIILsun/security/ssl/CipherSuite$PRF;)V

    .line 292
    return-void
.end method

.method private static add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZIILsun/security/ssl/CipherSuite$PRF;)V
    .locals 10
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "id"    # I
    .param p2, "priority"    # I
    .param p3, "keyExchange"    # Lsun/security/ssl/CipherSuite$KeyExchange;
    .param p4, "cipher"    # Lsun/security/ssl/CipherSuite$BulkCipher;
    .param p5, "allowed"    # Z
    .param p6, "obsoleted"    # I
    .param p7, "supported"    # I
    .param p8, "prf"    # Lsun/security/ssl/CipherSuite$PRF;

    .prologue
    .line 269
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

    .line 271
    .local v0, "c":Lsun/security/ssl/CipherSuite;
    sget-object v1, Lsun/security/ssl/CipherSuite;->idMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 272
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Duplicate ciphersuite definition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 273
    const-string/jumbo v3, ", "

    .line 272
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 275
    :cond_0
    iget-boolean v1, v0, Lsun/security/ssl/CipherSuite;->allowed:Z

    if-eqz v1, :cond_1

    .line 276
    sget-object v1, Lsun/security/ssl/CipherSuite;->nameMap:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 277
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Duplicate ciphersuite definition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 278
    const-string/jumbo v3, ", "

    .line 277
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 267
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

    .prologue
    .line 257
    sget-object v0, Lsun/security/ssl/CipherSuite;->nameMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method static valueOf(II)Lsun/security/ssl/CipherSuite;
    .locals 7
    .param p0, "id1"    # I
    .param p1, "id2"    # I

    .prologue
    const/16 v6, 0x10

    .line 243
    and-int/lit16 p0, p0, 0xff

    .line 244
    and-int/lit16 p1, p1, 0xff

    .line 245
    shl-int/lit8 v4, p0, 0x8

    or-int v3, v4, p1

    .line 246
    .local v3, "id":I
    sget-object v4, Lsun/security/ssl/CipherSuite;->idMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/ssl/CipherSuite;

    .line 247
    .local v0, "c":Lsun/security/ssl/CipherSuite;
    if-nez v0, :cond_0

    .line 248
    invoke-static {p0, v6}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    .line 249
    .local v1, "h1":Ljava/lang/String;
    invoke-static {p1, v6}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    .line 250
    .local v2, "h2":Ljava/lang/String;
    new-instance v0, Lsun/security/ssl/CipherSuite;

    .end local v0    # "c":Lsun/security/ssl/CipherSuite;
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

    .line 252
    .end local v1    # "h1":Ljava/lang/String;
    .end local v2    # "h2":Ljava/lang/String;
    .restart local v0    # "c":Lsun/security/ssl/CipherSuite;
    :cond_0
    return-object v0
.end method

.method static valueOf(Ljava/lang/String;)Lsun/security/ssl/CipherSuite;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 225
    if-nez p0, :cond_0

    .line 226
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Name must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 229
    :cond_0
    sget-object v1, Lsun/security/ssl/CipherSuite;->nameMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/ssl/CipherSuite;

    .line 230
    .local v0, "c":Lsun/security/ssl/CipherSuite;
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lsun/security/ssl/CipherSuite;->allowed:Z

    if-nez v1, :cond_2

    .line 231
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

    .line 234
    :cond_2
    return-object v0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 206
    check-cast p1, Lsun/security/ssl/CipherSuite;

    .end local p1    # "o":Ljava/lang/Object;
    iget v0, p1, Lsun/security/ssl/CipherSuite;->priority:I

    iget v1, p0, Lsun/security/ssl/CipherSuite;->priority:I

    sub-int/2addr v0, v1

    return v0
.end method

.method isAvailable()Z
    .locals 1

    .prologue
    .line 190
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

    .prologue
    .line 194
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

    .prologue
    .line 213
    iget-object v0, p0, Lsun/security/ssl/CipherSuite;->name:Ljava/lang/String;

    return-object v0
.end method
