.class public final Lsun/security/provider/certpath/OCSPResponse;
.super Ljava/lang/Object;
.source "OCSPResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;,
        Lsun/security/provider/certpath/OCSPResponse$SingleResponse;
    }
.end annotation


# static fields
.field private static final synthetic -sun-security-provider-certpath-OCSPResponse$ResponseStatusSwitchesValues:[I = null

.field private static final CERT_STATUS_GOOD:I = 0x0

.field private static final CERT_STATUS_REVOKED:I = 0x1

.field private static final CERT_STATUS_UNKNOWN:I = 0x2

.field private static final DEFAULT_MAX_CLOCK_SKEW:I = 0xdbba0

.field private static final KEY_TAG:I = 0x2

.field private static final KP_OCSP_SIGNING_OID:Ljava/lang/String; = "1.3.6.1.5.5.7.3.9"

.field private static final MAX_CLOCK_SKEW:I

.field private static final NAME_TAG:I = 0x1

.field private static final OCSP_BASIC_RESPONSE_OID:Lsun/security/util/ObjectIdentifier;

.field private static final debug:Lsun/security/util/Debug;

.field private static final dump:Z

.field private static rsvalues:[Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

.field private static values:[Ljava/security/cert/CRLReason;


# instance fields
.field private certs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lsun/security/x509/X509CertImpl;",
            ">;"
        }
    .end annotation
.end field

.field private responderKeyId:Lsun/security/x509/KeyIdentifier;

.field private responderName:Ljavax/security/auth/x500/X500Principal;

.field private final responseNonce:[B

.field private final responseStatus:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

.field private final sigAlgId:Lsun/security/x509/AlgorithmId;

.field private final signature:[B

.field private signerCert:Lsun/security/x509/X509CertImpl;

.field private final singleResponseMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lsun/security/provider/certpath/CertId;",
            "Lsun/security/provider/certpath/OCSPResponse$SingleResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final tbsResponseData:[B


# direct methods
.method static synthetic -get0()Lsun/security/util/Debug;
    .locals 1

    sget-object v0, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    return-object v0
.end method

.method static synthetic -get1()[Ljava/security/cert/CRLReason;
    .locals 1

    sget-object v0, Lsun/security/provider/certpath/OCSPResponse;->values:[Ljava/security/cert/CRLReason;

    return-object v0
.end method

.method private static synthetic -getsun-security-provider-certpath-OCSPResponse$ResponseStatusSwitchesValues()[I
    .locals 3

    sget-object v0, Lsun/security/provider/certpath/OCSPResponse;->-sun-security-provider-certpath-OCSPResponse$ResponseStatusSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lsun/security/provider/certpath/OCSPResponse;->-sun-security-provider-certpath-OCSPResponse$ResponseStatusSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->values()[Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->INTERNAL_ERROR:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    :try_start_1
    sget-object v1, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->MALFORMED_REQUEST:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_1
    :try_start_2
    sget-object v1, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->SIG_REQUIRED:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    :try_start_3
    sget-object v1, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->SUCCESSFUL:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v1, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->TRY_LATER:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    :try_start_5
    sget-object v1, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->UNAUTHORIZED:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    :try_start_6
    sget-object v1, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->UNUSED:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    sput-object v0, Lsun/security/provider/certpath/OCSPResponse;->-sun-security-provider-certpath-OCSPResponse$ResponseStatusSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1

    :catch_6
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->values()[Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/OCSPResponse;->rsvalues:[Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    const-string/jumbo v0, "certpath"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    sget-object v0, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ocsp"

    invoke-static {v0}, Lsun/security/util/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    sput-boolean v0, Lsun/security/provider/certpath/OCSPResponse;->dump:Z

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/OCSPResponse;->OCSP_BASIC_RESPONSE_OID:Lsun/security/util/ObjectIdentifier;

    invoke-static {}, Lsun/security/provider/certpath/OCSPResponse;->initializeClockSkew()I

    move-result v0

    sput v0, Lsun/security/provider/certpath/OCSPResponse;->MAX_CLOCK_SKEW:I

    invoke-static {}, Ljava/security/cert/CRLReason;->values()[Ljava/security/cert/CRLReason;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/OCSPResponse;->values:[Ljava/security/cert/CRLReason;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :array_0
    .array-data 4
        0x1
        0x3
        0x6
        0x1
        0x5
        0x5
        0x7
        0x30
        0x1
        0x1
    .end array-data
.end method

.method constructor <init>([B)V
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->responderName:Ljavax/security/auth/x500/X500Principal;

    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->responderKeyId:Lsun/security/x509/KeyIdentifier;

    sget-boolean v27, Lsun/security/provider/certpath/OCSPResponse;->dump:Z

    if-eqz v27, :cond_0

    new-instance v10, Lsun/misc/HexDumpEncoder;

    invoke-direct {v10}, Lsun/misc/HexDumpEncoder;-><init>()V

    sget-object v27, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "OCSPResponse bytes...\n\n"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Lsun/misc/CharacterEncoder;->encode([B)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, "\n"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_0
    new-instance v6, Lsun/security/util/DerValue;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Lsun/security/util/DerValue;-><init>([B)V

    iget-byte v0, v6, Lsun/security/util/DerValue;->tag:B

    move/from16 v27, v0

    const/16 v28, 0x30

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_1

    new-instance v27, Ljava/io/IOException;

    const-string/jumbo v28, "Bad encoding in OCSP response: expected ASN.1 SEQUENCE tag."

    invoke-direct/range {v27 .. v28}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v27

    :cond_1
    invoke-virtual {v6}, Lsun/security/util/DerValue;->getData()Lsun/security/util/DerInputStream;

    move-result-object v8

    invoke-virtual {v8}, Lsun/security/util/DerInputStream;->getEnumerated()I

    move-result v23

    if-ltz v23, :cond_3

    sget-object v27, Lsun/security/provider/certpath/OCSPResponse;->rsvalues:[Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v23

    move/from16 v1, v27

    if-ge v0, v1, :cond_3

    sget-object v27, Lsun/security/provider/certpath/OCSPResponse;->rsvalues:[Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    aget-object v27, v27, v23

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->responseStatus:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    sget-object v27, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    if-eqz v27, :cond_2

    sget-object v27, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "OCSP response status: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/provider/certpath/OCSPResponse;->responseStatus:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/provider/certpath/OCSPResponse;->responseStatus:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    move-object/from16 v27, v0

    sget-object v28, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->SUCCESSFUL:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-eq v0, v1, :cond_4

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->singleResponseMap:Ljava/util/Map;

    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->certs:Ljava/util/List;

    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->sigAlgId:Lsun/security/x509/AlgorithmId;

    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->signature:[B

    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->tbsResponseData:[B

    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->responseNonce:[B

    return-void

    :cond_3
    new-instance v27, Ljava/io/IOException;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "Unknown OCSPResponse status: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v27

    :cond_4
    invoke-virtual {v8}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v6

    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v6, v0}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v27

    if-nez v27, :cond_5

    new-instance v27, Ljava/io/IOException;

    const-string/jumbo v28, "Bad encoding in responseBytes element of OCSP response: expected ASN.1 context specific tag 0."

    invoke-direct/range {v27 .. v28}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v27

    :cond_5
    iget-object v0, v6, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v25

    move-object/from16 v0, v25

    iget-byte v0, v0, Lsun/security/util/DerValue;->tag:B

    move/from16 v27, v0

    const/16 v28, 0x30

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_6

    new-instance v27, Ljava/io/IOException;

    const-string/jumbo v28, "Bad encoding in responseBytes element of OCSP response: expected ASN.1 SEQUENCE tag."

    invoke-direct/range {v27 .. v28}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v27

    :cond_6
    move-object/from16 v0, v25

    iget-object v8, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v8}, Lsun/security/util/DerInputStream;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v16

    sget-object v27, Lsun/security/provider/certpath/OCSPResponse;->OCSP_BASIC_RESPONSE_OID:Lsun/security/util/ObjectIdentifier;

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_8

    sget-object v27, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    if-eqz v27, :cond_7

    sget-object v27, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    const-string/jumbo v28, "OCSP response type: basic"

    invoke-virtual/range {v27 .. v28}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_7
    new-instance v3, Lsun/security/util/DerInputStream;

    invoke-virtual {v8}, Lsun/security/util/DerInputStream;->getOctetString()[B

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v3, v0}, Lsun/security/util/DerInputStream;-><init>([B)V

    const/16 v27, 0x2

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v20

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v27, v0

    const/16 v28, 0x3

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_a

    new-instance v27, Ljava/io/IOException;

    const-string/jumbo v28, "Unexpected BasicOCSPResponse value"

    invoke-direct/range {v27 .. v28}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v27

    :cond_8
    sget-object v27, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    if-eqz v27, :cond_9

    sget-object v27, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "OCSP response type: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_9
    new-instance v27, Ljava/io/IOException;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "Unsupported OCSP response type: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v27

    :cond_a
    const/16 v27, 0x0

    aget-object v14, v20, v27

    const/16 v27, 0x0

    aget-object v27, v20, v27

    invoke-virtual/range {v27 .. v27}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->tbsResponseData:[B

    iget-byte v0, v14, Lsun/security/util/DerValue;->tag:B

    move/from16 v27, v0

    const/16 v28, 0x30

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_b

    new-instance v27, Ljava/io/IOException;

    const-string/jumbo v28, "Bad encoding in tbsResponseData element of OCSP response: expected ASN.1 SEQUENCE tag."

    invoke-direct/range {v27 .. v28}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v27

    :cond_b
    iget-object v0, v14, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v17

    const/16 v27, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v27

    if-eqz v27, :cond_d

    invoke-virtual/range {v17 .. v17}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v27

    if-eqz v27, :cond_d

    invoke-virtual/range {v17 .. v17}, Lsun/security/util/DerValue;->isContextSpecific()Z

    move-result v27

    if-eqz v27, :cond_d

    move-object/from16 v0, v17

    iget-object v0, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lsun/security/util/DerValue;->getInteger()I

    move-result v26

    move-object/from16 v0, v17

    iget-object v0, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lsun/security/util/DerInputStream;->available()I

    move-result v27

    if-eqz v27, :cond_c

    new-instance v27, Ljava/io/IOException;

    const-string/jumbo v28, "Bad encoding in version  element of OCSP response: bad format"

    invoke-direct/range {v27 .. v28}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v27

    :cond_c
    invoke-virtual/range {v19 .. v19}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v17

    :cond_d
    move-object/from16 v0, v17

    iget-byte v0, v0, Lsun/security/util/DerValue;->tag:B

    move/from16 v27, v0

    and-int/lit8 v27, v27, 0x1f

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-short v0, v0

    move/from16 v24, v0

    const/16 v27, 0x1

    move/from16 v0, v24

    move/from16 v1, v27

    if-ne v0, v1, :cond_11

    new-instance v27, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual/range {v17 .. v17}, Lsun/security/util/DerValue;->getData()Lsun/security/util/DerInputStream;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lsun/security/util/DerInputStream;->toByteArray()[B

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->responderName:Ljavax/security/auth/x500/X500Principal;

    sget-object v27, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    if-eqz v27, :cond_e

    sget-object v27, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "Responder\'s name: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/provider/certpath/OCSPResponse;->responderName:Ljavax/security/auth/x500/X500Principal;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_e
    :goto_0
    invoke-virtual/range {v19 .. v19}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v17

    sget-object v27, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    if-eqz v27, :cond_f

    invoke-virtual/range {v17 .. v17}, Lsun/security/util/DerValue;->getGeneralizedTime()Ljava/util/Date;

    move-result-object v13

    sget-object v27, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "OCSP response produced at: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_f
    const/16 v27, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v22

    new-instance v27, Ljava/util/HashMap;

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v28, v0

    invoke-direct/range {v27 .. v28}, Ljava/util/HashMap;-><init>(I)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->singleResponseMap:Ljava/util/Map;

    sget-object v27, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    if-eqz v27, :cond_10

    sget-object v27, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "OCSP number of SingleResponses: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_10
    const/4 v11, 0x0

    :goto_1
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v11, v0, :cond_13

    new-instance v21, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;

    aget-object v27, v22, v11

    const/16 v28, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;-><init>(Lsun/security/util/DerValue;Lsun/security/provider/certpath/OCSPResponse$SingleResponse;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/provider/certpath/OCSPResponse;->singleResponseMap:Ljava/util/Map;

    move-object/from16 v27, v0

    invoke-static/range {v21 .. v21}, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->-wrap0(Lsun/security/provider/certpath/OCSPResponse$SingleResponse;)Lsun/security/provider/certpath/CertId;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_11
    const/16 v27, 0x2

    move/from16 v0, v24

    move/from16 v1, v27

    if-ne v0, v1, :cond_12

    new-instance v27, Lsun/security/x509/KeyIdentifier;

    invoke-virtual/range {v17 .. v17}, Lsun/security/util/DerValue;->getData()Lsun/security/util/DerInputStream;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lsun/security/util/DerInputStream;->getOctetString()[B

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Lsun/security/x509/KeyIdentifier;-><init>([B)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->responderKeyId:Lsun/security/x509/KeyIdentifier;

    sget-object v27, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    if-eqz v27, :cond_e

    sget-object v27, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "Responder\'s key ID: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/provider/certpath/OCSPResponse;->responderKeyId:Lsun/security/x509/KeyIdentifier;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lsun/security/x509/KeyIdentifier;->getIdentifier()[B

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lsun/security/util/Debug;->toString([B)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_12
    new-instance v27, Ljava/io/IOException;

    const-string/jumbo v28, "Bad encoding in responderID element of OCSP response: expected ASN.1 context specific tag 0 or 1"

    invoke-direct/range {v27 .. v28}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v27

    :cond_13
    const/4 v12, 0x0

    invoke-virtual/range {v19 .. v19}, Lsun/security/util/DerInputStream;->available()I

    move-result v27

    if-lez v27, :cond_17

    invoke-virtual/range {v19 .. v19}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v17

    const/16 v27, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v27

    if-eqz v27, :cond_17

    move-object/from16 v0, v17

    iget-object v0, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    move-object/from16 v27, v0

    const/16 v28, 0x3

    invoke-virtual/range {v27 .. v28}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v15

    const/4 v11, 0x0

    :goto_2
    array-length v0, v15

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v11, v0, :cond_17

    new-instance v9, Lsun/security/x509/Extension;

    aget-object v27, v15, v11

    move-object/from16 v0, v27

    invoke-direct {v9, v0}, Lsun/security/x509/Extension;-><init>(Lsun/security/util/DerValue;)V

    sget-object v27, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    if-eqz v27, :cond_14

    sget-object v27, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "OCSP extension: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_14
    invoke-virtual {v9}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v27

    sget-object v28, Lsun/security/provider/certpath/OCSP;->NONCE_EXTENSION_OID:Lsun/security/util/ObjectIdentifier;

    invoke-virtual/range {v27 .. v28}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_16

    invoke-virtual {v9}, Lsun/security/x509/Extension;->getExtensionValue()[B

    move-result-object v12

    :cond_15
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_16
    invoke-virtual {v9}, Lsun/security/x509/Extension;->isCritical()Z

    move-result v27

    if-eqz v27, :cond_15

    new-instance v27, Ljava/io/IOException;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "Unsupported OCSP critical extension: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v9}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v27

    :cond_17
    move-object/from16 v0, p0

    iput-object v12, v0, Lsun/security/provider/certpath/OCSPResponse;->responseNonce:[B

    const/16 v27, 0x1

    aget-object v27, v20, v27

    invoke-static/range {v27 .. v27}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->sigAlgId:Lsun/security/x509/AlgorithmId;

    const/16 v27, 0x2

    aget-object v27, v20, v27

    invoke-virtual/range {v27 .. v27}, Lsun/security/util/DerValue;->getBitString()[B

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->signature:[B

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v27, v0

    const/16 v28, 0x3

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_1a

    const/16 v27, 0x3

    aget-object v18, v20, v27

    const/16 v27, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v27

    if-nez v27, :cond_18

    new-instance v27, Ljava/io/IOException;

    const-string/jumbo v28, "Bad encoding in certs element of OCSP response: expected ASN.1 context specific tag 0."

    invoke-direct/range {v27 .. v28}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v27

    :cond_18
    invoke-virtual/range {v18 .. v18}, Lsun/security/util/DerValue;->getData()Lsun/security/util/DerInputStream;

    move-result-object v27

    const/16 v28, 0x3

    invoke-virtual/range {v27 .. v28}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v7

    new-instance v27, Ljava/util/ArrayList;

    array-length v0, v7

    move/from16 v28, v0

    invoke-direct/range {v27 .. v28}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->certs:Ljava/util/List;

    const/4 v11, 0x0

    :goto_3
    :try_start_0
    array-length v0, v7

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v11, v0, :cond_1b

    new-instance v5, Lsun/security/x509/X509CertImpl;

    aget-object v27, v7, v11

    invoke-virtual/range {v27 .. v27}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v5, v0}, Lsun/security/x509/X509CertImpl;-><init>([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/provider/certpath/OCSPResponse;->certs:Ljava/util/List;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v27, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    if-eqz v27, :cond_19

    sget-object v27, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "OCSP response cert #"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    add-int/lit8 v29, v11, 0x1

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, ": "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v5}, Lsun/security/x509/X509CertImpl;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_19
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :catch_0
    move-exception v4

    new-instance v27, Ljava/io/IOException;

    const-string/jumbo v28, "Bad encoding in X509 Certificate"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v27

    :cond_1a
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->certs:Ljava/util/List;

    :cond_1b
    return-void
.end method

.method private static initializeClockSkew()I
    .locals 3

    new-instance v1, Lsun/security/action/GetIntegerAction;

    const-string/jumbo v2, "com.sun.security.ocsp.clockSkew"

    invoke-direct {v1, v2}, Lsun/security/action/GetIntegerAction;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_1

    :cond_0
    const v1, 0xdbba0

    return v1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    return v1
.end method

.method private verifySignature(Ljava/security/cert/X509Certificate;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Lsun/security/provider/certpath/OCSPResponse;->sigAlgId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v2}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    iget-object v2, p0, Lsun/security/provider/certpath/OCSPResponse;->tbsResponseData:[B

    invoke-virtual {v1, v2}, Ljava/security/Signature;->update([B)V

    iget-object v2, p0, Lsun/security/provider/certpath/OCSPResponse;->signature:[B

    invoke-virtual {v1, v2}, Ljava/security/Signature;->verify([B)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_0

    sget-object v2, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    const-string/jumbo v3, "Verified signature of OCSP Response"

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x1

    return v2

    :cond_1
    sget-object v2, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_2

    sget-object v2, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    const-string/jumbo v3, "Error verifying signature of OCSP Response"

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    const/4 v2, 0x0

    return v2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    invoke-direct {v2, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method getResponseStatus()Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;
    .locals 1

    iget-object v0, p0, Lsun/security/provider/certpath/OCSPResponse;->responseStatus:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    return-object v0
.end method

.method getSignerCertificate()Ljava/security/cert/X509Certificate;
    .locals 1

    iget-object v0, p0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    return-object v0
.end method

.method getSingleResponse(Lsun/security/provider/certpath/CertId;)Lsun/security/provider/certpath/OCSPResponse$SingleResponse;
    .locals 1

    iget-object v0, p0, Lsun/security/provider/certpath/OCSPResponse;->singleResponseMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;

    return-object v0
.end method

.method verify(Ljava/util/List;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/util/Date;[B)V
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lsun/security/provider/certpath/CertId;",
            ">;",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/Date;",
            "[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    invoke-static {}, Lsun/security/provider/certpath/OCSPResponse;->-getsun-security-provider-certpath-OCSPResponse$ResponseStatusSwitchesValues()[I

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/provider/certpath/OCSPResponse;->responseStatus:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "OCSP response error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lsun/security/provider/certpath/OCSPResponse;->responseStatus:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "OCSP response error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lsun/security/provider/certpath/OCSPResponse;->responseStatus:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v7, Ljava/security/cert/CertPathValidatorException$BasicReason;->UNDETERMINED_REVOCATION_STATUS:Ljava/security/cert/CertPathValidatorException$BasicReason;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-direct/range {v2 .. v7}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v2

    :pswitch_1
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lsun/security/provider/certpath/CertId;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lsun/security/provider/certpath/OCSPResponse;->getSingleResponse(Lsun/security/provider/certpath/CertId;)Lsun/security/provider/certpath/OCSPResponse$SingleResponse;

    move-result-object v26

    if-nez v26, :cond_2

    sget-object v2, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_1

    sget-object v2, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No response found for CertId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_1
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v3, "OCSP response does not include a response for a certificate supplied in the OCSP request"

    invoke-direct {v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    sget-object v2, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_0

    sget-object v2, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Status of certificate (with serial number "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Lsun/security/provider/certpath/CertId;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v26 .. v26}, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->getCertStatus()Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    if-nez v2, :cond_6

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/OCSPResponse;->certs:Ljava/util/List;

    invoke-static/range {p2 .. p2}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/OCSPResponse;->certs:Ljava/util/List;

    invoke-static/range {p3 .. p3}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/OCSPResponse;->responderName:Ljavax/security/auth/x500/X500Principal;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/OCSPResponse;->certs:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lsun/security/x509/X509CertImpl;

    invoke-virtual {v10}, Lsun/security/x509/X509CertImpl;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/provider/certpath/OCSPResponse;->responderName:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v2, v3}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iput-object v10, v0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    :cond_6
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    sget-object v2, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_7

    sget-object v2, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    const-string/jumbo v3, "OCSP response is signed by the target\'s Issuing CA"

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    invoke-virtual {v2}, Lsun/security/x509/X509CertImpl;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/provider/certpath/OCSPResponse;->sigAlgId:Lsun/security/x509/AlgorithmId;

    invoke-static {v2, v3}, Lsun/security/provider/certpath/AlgorithmChecker;->check(Ljava/security/PublicKey;Lsun/security/x509/AlgorithmId;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lsun/security/provider/certpath/OCSPResponse;->verifySignature(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-nez v2, :cond_12

    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v3, "Error verifying OCSP Response\'s signature"

    invoke-direct {v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_0
    move-exception v9

    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v3, "Invalid issuer or trusted responder certificate"

    invoke-direct {v2, v3, v9}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/OCSPResponse;->responderKeyId:Lsun/security/x509/KeyIdentifier;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/OCSPResponse;->certs:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_9
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lsun/security/x509/X509CertImpl;

    invoke-virtual {v10}, Lsun/security/x509/X509CertImpl;->getSubjectKeyId()Lsun/security/x509/KeyIdentifier;

    move-result-object v14

    if-eqz v14, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/OCSPResponse;->responderKeyId:Lsun/security/x509/KeyIdentifier;

    invoke-virtual {v2, v14}, Lsun/security/x509/KeyIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iput-object v10, v0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    goto :goto_1

    :cond_a
    :try_start_1
    new-instance v15, Lsun/security/x509/KeyIdentifier;

    invoke-virtual {v10}, Lsun/security/x509/X509CertImpl;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-direct {v15, v2}, Lsun/security/x509/KeyIdentifier;-><init>(Ljava/security/PublicKey;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-object v14, v15

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/OCSPResponse;->responderKeyId:Lsun/security/x509/KeyIdentifier;

    invoke-virtual {v2, v14}, Lsun/security/x509/KeyIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iput-object v10, v0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    goto/16 :goto_1

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    sget-object v2, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_7

    sget-object v2, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    const-string/jumbo v3, "OCSP response is signed by a Trusted Responder"

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    invoke-virtual {v2}, Lsun/security/x509/X509CertImpl;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    invoke-virtual {v2}, Lsun/security/x509/X509CertImpl;->getExtendedKeyUsage()Ljava/util/List;

    move-result-object v20

    if-eqz v20, :cond_e

    const-string/jumbo v2, "1.3.6.1.5.5.7.3.9"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v2

    if-eqz v2, :cond_e

    new-instance v8, Lsun/security/provider/certpath/AlgorithmChecker;

    new-instance v2, Ljava/security/cert/TrustAnchor;

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-direct {v2, v0, v3}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    invoke-direct {v8, v2}, Lsun/security/provider/certpath/AlgorithmChecker;-><init>(Ljava/security/cert/TrustAnchor;)V

    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Lsun/security/provider/certpath/AlgorithmChecker;->init(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Lsun/security/provider/certpath/AlgorithmChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V

    if-nez p4, :cond_f

    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    invoke-virtual {v2}, Lsun/security/x509/X509CertImpl;->checkValidity()V
    :try_end_3
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    sget-object v3, Lsun/security/x509/PKIXExtensions;->OCSPNoCheck_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v2, v3}, Lsun/security/x509/X509CertImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    move-result-object v21

    if-eqz v21, :cond_d

    sget-object v2, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_d

    sget-object v2, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    const-string/jumbo v3, "Responder\'s certificate includes the extension id-pkix-ocsp-nocheck."

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_d
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    invoke-virtual/range {p2 .. p2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/security/x509/X509CertImpl;->verify(Ljava/security/PublicKey;)V

    sget-object v2, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_7

    sget-object v2, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    const-string/jumbo v3, "OCSP response is signed by an Authorized Responder"

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/security/GeneralSecurityException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v18

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    goto/16 :goto_2

    :cond_e
    :try_start_5
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v3, "Responder\'s certificate not valid for signing OCSP responses"

    invoke-direct {v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_5
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception v16

    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v3, "Responder\'s certificate not valid for signing OCSP responses"

    move-object/from16 v0, v16

    invoke-direct {v2, v3, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_f
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Lsun/security/x509/X509CertImpl;->checkValidity(Ljava/util/Date;)V
    :try_end_6
    .catch Ljava/security/cert/CertificateException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_4

    :catch_3
    move-exception v19

    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v3, "Responder\'s certificate not within the validity period"

    move-object/from16 v0, v19

    invoke-direct {v2, v3, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_10
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v3, "Responder\'s certificate is not authorized to sign OCSP responses"

    invoke-direct {v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_11
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v3, "Unable to verify OCSP Response\'s signature"

    invoke-direct {v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_12
    if-eqz p5, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/OCSPResponse;->responseNonce:[B

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/OCSPResponse;->responseNonce:[B

    move-object/from16 v0, p5

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_19

    :cond_13
    if-nez p4, :cond_1a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    :goto_5
    new-instance v25, Ljava/util/Date;

    sget v2, Lsun/security/provider/certpath/OCSPResponse;->MAX_CLOCK_SKEW:I

    int-to-long v2, v2

    add-long v2, v2, v22

    move-object/from16 v0, v25

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    new-instance v24, Ljava/util/Date;

    sget v2, Lsun/security/provider/certpath/OCSPResponse;->MAX_CLOCK_SKEW:I

    int-to-long v2, v2

    sub-long v2, v22, v2

    move-object/from16 v0, v24

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/OCSPResponse;->singleResponseMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :cond_14
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;

    sget-object v2, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_16

    const-string/jumbo v28, ""

    invoke-static/range {v26 .. v26}, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->-get0(Lsun/security/provider/certpath/OCSPResponse$SingleResponse;)Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_15

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " until "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {v26 .. v26}, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->-get0(Lsun/security/provider/certpath/OCSPResponse$SingleResponse;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    :cond_15
    sget-object v2, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Response\'s validity interval is from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v26 .. v26}, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->-get1(Lsun/security/provider/certpath/OCSPResponse$SingleResponse;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_16
    invoke-static/range {v26 .. v26}, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->-get1(Lsun/security/provider/certpath/OCSPResponse$SingleResponse;)Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_17

    invoke-static/range {v26 .. v26}, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->-get1(Lsun/security/provider/certpath/OCSPResponse$SingleResponse;)Ljava/util/Date;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-nez v2, :cond_18

    :cond_17
    invoke-static/range {v26 .. v26}, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->-get0(Lsun/security/provider/certpath/OCSPResponse$SingleResponse;)Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-static/range {v26 .. v26}, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->-get0(Lsun/security/provider/certpath/OCSPResponse$SingleResponse;)Ljava/util/Date;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_18
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v3, "Response is unreliable: its validity interval is out-of-date"

    invoke-direct {v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_19
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v3, "Nonces don\'t match"

    invoke-direct {v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1a
    invoke-virtual/range {p4 .. p4}, Ljava/util/Date;->getTime()J

    move-result-wide v22

    goto/16 :goto_5

    :cond_1b
    return-void

    :catch_4
    move-exception v17

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
