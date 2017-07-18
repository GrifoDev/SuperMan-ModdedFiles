.class public Lsun/security/pkcs/PKCS9Attribute;
.super Ljava/lang/Object;
.source "PKCS9Attribute.java"

# interfaces
.implements Lsun/security/util/DerEncoder;


# static fields
.field private static final BYTE_ARRAY_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static final CHALLENGE_PASSWORD_OID:Lsun/security/util/ObjectIdentifier;

.field public static final CHALLENGE_PASSWORD_STR:Ljava/lang/String; = "ChallengePassword"

.field public static final CONTENT_TYPE_OID:Lsun/security/util/ObjectIdentifier;

.field public static final CONTENT_TYPE_STR:Ljava/lang/String; = "ContentType"

.field public static final COUNTERSIGNATURE_OID:Lsun/security/util/ObjectIdentifier;

.field public static final COUNTERSIGNATURE_STR:Ljava/lang/String; = "Countersignature"

.field public static final EMAIL_ADDRESS_OID:Lsun/security/util/ObjectIdentifier;

.field public static final EMAIL_ADDRESS_STR:Ljava/lang/String; = "EmailAddress"

.field public static final EXTENDED_CERTIFICATE_ATTRIBUTES_OID:Lsun/security/util/ObjectIdentifier;

.field public static final EXTENDED_CERTIFICATE_ATTRIBUTES_STR:Ljava/lang/String; = "ExtendedCertificateAttributes"

.field public static final EXTENSION_REQUEST_OID:Lsun/security/util/ObjectIdentifier;

.field public static final EXTENSION_REQUEST_STR:Ljava/lang/String; = "ExtensionRequest"

.field public static final ISSUER_SERIALNUMBER_OID:Lsun/security/util/ObjectIdentifier;

.field public static final ISSUER_SERIALNUMBER_STR:Ljava/lang/String; = "IssuerAndSerialNumber"

.field public static final MESSAGE_DIGEST_OID:Lsun/security/util/ObjectIdentifier;

.field public static final MESSAGE_DIGEST_STR:Ljava/lang/String; = "MessageDigest"

.field private static final NAME_OID_TABLE:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lsun/security/util/ObjectIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field private static final OID_NAME_TABLE:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lsun/security/util/ObjectIdentifier;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

.field private static final PKCS9_VALUE_TAGS:[[Ljava/lang/Byte;

.field private static final RSA_PROPRIETARY_STR:Ljava/lang/String; = "RSAProprietary"

.field public static final SIGNATURE_TIMESTAMP_TOKEN_OID:Lsun/security/util/ObjectIdentifier;

.field public static final SIGNATURE_TIMESTAMP_TOKEN_STR:Ljava/lang/String; = "SignatureTimestampToken"

.field public static final SIGNING_CERTIFICATE_OID:Lsun/security/util/ObjectIdentifier;

.field public static final SIGNING_CERTIFICATE_STR:Ljava/lang/String; = "SigningCertificate"

.field public static final SIGNING_TIME_OID:Lsun/security/util/ObjectIdentifier;

.field public static final SIGNING_TIME_STR:Ljava/lang/String; = "SigningTime"

.field private static final SINGLE_VALUED:[Z

.field public static final SMIME_CAPABILITY_OID:Lsun/security/util/ObjectIdentifier;

.field public static final SMIME_CAPABILITY_STR:Ljava/lang/String; = "SMIMECapability"

.field private static final SMIME_SIGNING_DESC_STR:Ljava/lang/String; = "SMIMESigningDesc"

.field public static final UNSTRUCTURED_ADDRESS_OID:Lsun/security/util/ObjectIdentifier;

.field public static final UNSTRUCTURED_ADDRESS_STR:Ljava/lang/String; = "UnstructuredAddress"

.field public static final UNSTRUCTURED_NAME_OID:Lsun/security/util/ObjectIdentifier;

.field public static final UNSTRUCTURED_NAME_STR:Ljava/lang/String; = "UnstructuredName"

.field private static final VALUE_CLASSES:[Ljava/lang/Class;

.field private static final debug:Lsun/security/util/Debug;


# instance fields
.field private index:I

.field private oid:Lsun/security/util/ObjectIdentifier;

.field private value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v11, 0x9

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string/jumbo v3, "jar"

    invoke-static {v3}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v3

    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->debug:Lsun/security/util/Debug;

    const/16 v3, 0x12

    new-array v3, v3, [Lsun/security/util/ObjectIdentifier;

    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/4 v1, 0x1

    :goto_0
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x2

    if-ge v1, v3, :cond_0

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/4 v4, 0x7

    new-array v4, v4, [I

    aput v7, v4, v8

    aput v10, v4, v7

    const/16 v5, 0x348

    aput v5, v4, v10

    const v5, 0x1bb8d

    const/4 v6, 0x3

    aput v5, v4, v6

    const/4 v5, 0x4

    aput v7, v4, v5

    const/4 v5, 0x5

    aput v11, v4, v5

    const/4 v5, 0x6

    aput v1, v4, v5

    invoke-static {v4}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v4

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x2

    new-array v5, v11, [I

    fill-array-data v5, :array_0

    invoke-static {v5}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v5

    aput-object v5, v3, v4

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    new-array v5, v11, [I

    fill-array-data v5, :array_1

    invoke-static {v5}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v5

    aput-object v5, v3, v4

    :try_start_0
    const-string/jumbo v3, "[B"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->BYTE_ARRAY_CLASS:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    aget-object v3, v3, v7

    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->EMAIL_ADDRESS_OID:Lsun/security/util/ObjectIdentifier;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    aget-object v3, v3, v10

    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->UNSTRUCTURED_NAME_OID:Lsun/security/util/ObjectIdentifier;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->CONTENT_TYPE_OID:Lsun/security/util/ObjectIdentifier;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/4 v4, 0x4

    aget-object v3, v3, v4

    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->MESSAGE_DIGEST_OID:Lsun/security/util/ObjectIdentifier;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/4 v4, 0x5

    aget-object v3, v3, v4

    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->SIGNING_TIME_OID:Lsun/security/util/ObjectIdentifier;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/4 v4, 0x6

    aget-object v3, v3, v4

    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->COUNTERSIGNATURE_OID:Lsun/security/util/ObjectIdentifier;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/4 v4, 0x7

    aget-object v3, v3, v4

    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->CHALLENGE_PASSWORD_OID:Lsun/security/util/ObjectIdentifier;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v4, 0x8

    aget-object v3, v3, v4

    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->UNSTRUCTURED_ADDRESS_OID:Lsun/security/util/ObjectIdentifier;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    aget-object v3, v3, v11

    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->EXTENDED_CERTIFICATE_ATTRIBUTES_OID:Lsun/security/util/ObjectIdentifier;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v4, 0xa

    aget-object v3, v3, v4

    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->ISSUER_SERIALNUMBER_OID:Lsun/security/util/ObjectIdentifier;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v4, 0xe

    aget-object v3, v3, v4

    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->EXTENSION_REQUEST_OID:Lsun/security/util/ObjectIdentifier;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v4, 0xf

    aget-object v3, v3, v4

    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->SMIME_CAPABILITY_OID:Lsun/security/util/ObjectIdentifier;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v4, 0x10

    aget-object v3, v3, v4

    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->SIGNING_CERTIFICATE_OID:Lsun/security/util/ObjectIdentifier;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v4, 0x11

    aget-object v3, v3, v4

    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->SIGNATURE_TIMESTAMP_TOKEN_OID:Lsun/security/util/ObjectIdentifier;

    new-instance v3, Ljava/util/Hashtable;

    const/16 v4, 0x12

    invoke-direct {v3, v4}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    const-string/jumbo v4, "emailaddress"

    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    aget-object v5, v5, v7

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    const-string/jumbo v4, "unstructuredname"

    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    aget-object v5, v5, v10

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    const-string/jumbo v4, "contenttype"

    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    const-string/jumbo v4, "messagedigest"

    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/4 v6, 0x4

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    const-string/jumbo v4, "signingtime"

    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/4 v6, 0x5

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    const-string/jumbo v4, "countersignature"

    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/4 v6, 0x6

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    const-string/jumbo v4, "challengepassword"

    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/4 v6, 0x7

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    const-string/jumbo v4, "unstructuredaddress"

    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v6, 0x8

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    const-string/jumbo v4, "extendedcertificateattributes"

    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    aget-object v5, v5, v11

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    const-string/jumbo v4, "issuerandserialnumber"

    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v6, 0xa

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    const-string/jumbo v4, "rsaproprietary"

    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v6, 0xb

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    const-string/jumbo v4, "rsaproprietary"

    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v6, 0xc

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    const-string/jumbo v4, "signingdescription"

    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v6, 0xd

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    const-string/jumbo v4, "extensionrequest"

    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v6, 0xe

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    const-string/jumbo v4, "smimecapability"

    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v6, 0xf

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    const-string/jumbo v4, "signingcertificate"

    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v6, 0x10

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    const-string/jumbo v4, "signaturetimestamptoken"

    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v6, 0x11

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/util/Hashtable;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    aget-object v4, v4, v7

    const-string/jumbo v5, "EmailAddress"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    aget-object v4, v4, v10

    const-string/jumbo v5, "UnstructuredName"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const-string/jumbo v5, "ContentType"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const-string/jumbo v5, "MessageDigest"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    const-string/jumbo v5, "SigningTime"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/4 v5, 0x6

    aget-object v4, v4, v5

    const-string/jumbo v5, "Countersignature"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/4 v5, 0x7

    aget-object v4, v4, v5

    const-string/jumbo v5, "ChallengePassword"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v5, 0x8

    aget-object v4, v4, v5

    const-string/jumbo v5, "UnstructuredAddress"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    aget-object v4, v4, v11

    const-string/jumbo v5, "ExtendedCertificateAttributes"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v5, 0xa

    aget-object v4, v4, v5

    const-string/jumbo v5, "IssuerAndSerialNumber"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v5, 0xb

    aget-object v4, v4, v5

    const-string/jumbo v5, "RSAProprietary"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v5, 0xc

    aget-object v4, v4, v5

    const-string/jumbo v5, "RSAProprietary"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v5, 0xd

    aget-object v4, v4, v5

    const-string/jumbo v5, "SMIMESigningDesc"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v5, 0xe

    aget-object v4, v4, v5

    const-string/jumbo v5, "ExtensionRequest"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v5, 0xf

    aget-object v4, v4, v5

    const-string/jumbo v5, "SMIMECapability"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v5, 0x10

    aget-object v4, v4, v5

    const-string/jumbo v5, "SigningCertificate"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v5, 0x11

    aget-object v4, v4, v5

    const-string/jumbo v5, "SignatureTimestampToken"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x12

    new-array v3, v3, [[Ljava/lang/Byte;

    aput-object v9, v3, v8

    new-array v4, v7, [Ljava/lang/Byte;

    new-instance v5, Ljava/lang/Byte;

    const/16 v6, 0x16

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    aput-object v5, v4, v8

    aput-object v4, v3, v7

    new-array v4, v7, [Ljava/lang/Byte;

    new-instance v5, Ljava/lang/Byte;

    const/16 v6, 0x16

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    aput-object v5, v4, v8

    aput-object v4, v3, v10

    new-array v4, v7, [Ljava/lang/Byte;

    new-instance v5, Ljava/lang/Byte;

    const/4 v6, 0x6

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    aput-object v5, v4, v8

    const/4 v5, 0x3

    aput-object v4, v3, v5

    new-array v4, v7, [Ljava/lang/Byte;

    new-instance v5, Ljava/lang/Byte;

    const/4 v6, 0x4

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    aput-object v5, v4, v8

    const/4 v5, 0x4

    aput-object v4, v3, v5

    new-array v4, v7, [Ljava/lang/Byte;

    new-instance v5, Ljava/lang/Byte;

    const/16 v6, 0x17

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    aput-object v5, v4, v8

    const/4 v5, 0x5

    aput-object v4, v3, v5

    new-array v4, v7, [Ljava/lang/Byte;

    new-instance v5, Ljava/lang/Byte;

    const/16 v6, 0x30

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    aput-object v5, v4, v8

    const/4 v5, 0x6

    aput-object v4, v3, v5

    new-array v4, v10, [Ljava/lang/Byte;

    new-instance v5, Ljava/lang/Byte;

    const/16 v6, 0x13

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    aput-object v5, v4, v8

    new-instance v5, Ljava/lang/Byte;

    const/16 v6, 0x14

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    aput-object v5, v4, v7

    const/4 v5, 0x7

    aput-object v4, v3, v5

    new-array v4, v10, [Ljava/lang/Byte;

    new-instance v5, Ljava/lang/Byte;

    const/16 v6, 0x13

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    aput-object v5, v4, v8

    new-instance v5, Ljava/lang/Byte;

    const/16 v6, 0x14

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    aput-object v5, v4, v7

    const/16 v5, 0x8

    aput-object v4, v3, v5

    new-array v4, v7, [Ljava/lang/Byte;

    new-instance v5, Ljava/lang/Byte;

    const/16 v6, 0x31

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    aput-object v5, v4, v8

    aput-object v4, v3, v11

    new-array v4, v7, [Ljava/lang/Byte;

    new-instance v5, Ljava/lang/Byte;

    const/16 v6, 0x30

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    aput-object v5, v4, v8

    const/16 v5, 0xa

    aput-object v4, v3, v5

    const/16 v4, 0xb

    aput-object v9, v3, v4

    const/16 v4, 0xc

    aput-object v9, v3, v4

    const/16 v4, 0xd

    aput-object v9, v3, v4

    new-array v4, v7, [Ljava/lang/Byte;

    new-instance v5, Ljava/lang/Byte;

    const/16 v6, 0x30

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    aput-object v5, v4, v8

    const/16 v5, 0xe

    aput-object v4, v3, v5

    new-array v4, v7, [Ljava/lang/Byte;

    new-instance v5, Ljava/lang/Byte;

    const/16 v6, 0x30

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    aput-object v5, v4, v8

    const/16 v5, 0xf

    aput-object v4, v3, v5

    new-array v4, v7, [Ljava/lang/Byte;

    new-instance v5, Ljava/lang/Byte;

    const/16 v6, 0x30

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    aput-object v5, v4, v8

    const/16 v5, 0x10

    aput-object v4, v3, v5

    new-array v4, v7, [Ljava/lang/Byte;

    new-instance v5, Ljava/lang/Byte;

    const/16 v6, 0x30

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    aput-object v5, v4, v8

    const/16 v5, 0x11

    aput-object v4, v3, v5

    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_VALUE_TAGS:[[Ljava/lang/Byte;

    const/16 v3, 0x12

    new-array v3, v3, [Ljava/lang/Class;

    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    :try_start_1
    const-string/jumbo v3, "[Ljava.lang.String;"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v2, v3, v4

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    const/4 v4, 0x2

    aput-object v2, v3, v4

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    const-string/jumbo v4, "sun.security.util.ObjectIdentifier"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->BYTE_ARRAY_CLASS:Ljava/lang/Class;

    const/4 v5, 0x4

    aput-object v4, v3, v5

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    const-string/jumbo v4, "java.util.Date"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x5

    aput-object v4, v3, v5

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    const-string/jumbo v4, "[Lsun.security.pkcs.SignerInfo;"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x6

    aput-object v4, v3, v5

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    const-string/jumbo v4, "java.lang.String"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x7

    aput-object v4, v3, v5

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    const/16 v4, 0x8

    aput-object v2, v3, v4

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    const/4 v4, 0x0

    const/16 v5, 0x9

    aput-object v4, v3, v5

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    const/4 v4, 0x0

    const/16 v5, 0xa

    aput-object v4, v3, v5

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    const/4 v4, 0x0

    const/16 v5, 0xb

    aput-object v4, v3, v5

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    const/4 v4, 0x0

    const/16 v5, 0xc

    aput-object v4, v3, v5

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    const/4 v4, 0x0

    const/16 v5, 0xd

    aput-object v4, v3, v5

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    const-string/jumbo v4, "sun.security.x509.CertificateExtensions"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v5, 0xe

    aput-object v4, v3, v5

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    const/4 v4, 0x0

    const/16 v5, 0xf

    aput-object v4, v3, v5

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    const/4 v4, 0x0

    const/16 v5, 0x10

    aput-object v4, v3, v5

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->BYTE_ARRAY_CLASS:Ljava/lang/Class;

    const/16 v5, 0x11

    aput-object v4, v3, v5
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v3, 0x12

    new-array v3, v3, [Z

    fill-array-data v3, :array_2

    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->SINGLE_VALUED:[Z

    return-void

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/ExceptionInInitializerError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw v3

    :catch_1
    move-exception v0

    new-instance v3, Ljava/lang/ExceptionInInitializerError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw v3

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x9
        0x10
        0x2
        0xc
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x9
        0x10
        0x2
        0xe
    .end array-data

    :array_2
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lsun/security/pkcs/PKCS9Attribute;->getOID(Ljava/lang/String;)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unrecognized attribute name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " constructing PKCS9Attribute."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-direct {p0, v0, p2}, Lsun/security/pkcs/PKCS9Attribute;->init(Lsun/security/util/ObjectIdentifier;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerValue;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v9, 0x2

    const/4 v12, -0x1

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lsun/security/util/DerInputStream;

    invoke-virtual {p1}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v8

    invoke-direct {v1, v8}, Lsun/security/util/DerInputStream;-><init>([B)V

    invoke-virtual {v1, v9}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v5

    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->available()I

    move-result v8

    if-eqz v8, :cond_0

    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "Excess data parsing PKCS9Attribute"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    array-length v8, v5

    if-eq v8, v9, :cond_1

    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "PKCS9Attribute doesn\'t have two components"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1
    aget-object v8, v5, v10

    invoke-virtual {v8}, Lsun/security/util/DerValue;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v8

    iput-object v8, p0, Lsun/security/pkcs/PKCS9Attribute;->oid:Lsun/security/util/ObjectIdentifier;

    aget-object v8, v5, v11

    invoke-virtual {v8}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v0

    new-instance v8, Lsun/security/util/DerInputStream;

    invoke-direct {v8, v0}, Lsun/security/util/DerInputStream;-><init>([B)V

    invoke-virtual {v8, v11}, Lsun/security/util/DerInputStream;->getSet(I)[Lsun/security/util/DerValue;

    move-result-object v2

    iget-object v8, p0, Lsun/security/pkcs/PKCS9Attribute;->oid:Lsun/security/util/ObjectIdentifier;

    sget-object v9, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    invoke-static {v8, v9, v11}, Lsun/security/pkcs/PKCS9Attribute;->indexOf(Ljava/lang/Object;[Ljava/lang/Object;I)I

    move-result v8

    iput v8, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    iget v8, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    if-ne v8, v12, :cond_3

    sget-object v8, Lsun/security/pkcs/PKCS9Attribute;->debug:Lsun/security/util/Debug;

    if-eqz v8, :cond_2

    sget-object v8, Lsun/security/pkcs/PKCS9Attribute;->debug:Lsun/security/util/Debug;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unsupported signer attribute: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lsun/security/pkcs/PKCS9Attribute;->oid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_2
    iput-object v0, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    return-void

    :cond_3
    sget-object v8, Lsun/security/pkcs/PKCS9Attribute;->SINGLE_VALUED:[Z

    iget v9, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    aget-boolean v8, v8, v9

    if-eqz v8, :cond_4

    array-length v8, v2

    if-le v8, v11, :cond_4

    invoke-direct {p0}, Lsun/security/pkcs/PKCS9Attribute;->throwSingleValuedException()V

    :cond_4
    const/4 v3, 0x0

    :goto_0
    array-length v8, v2

    if-ge v3, v8, :cond_6

    new-instance v4, Ljava/lang/Byte;

    aget-object v8, v2, v3

    iget-byte v8, v8, Lsun/security/util/DerValue;->tag:B

    invoke-direct {v4, v8}, Ljava/lang/Byte;-><init>(B)V

    sget-object v8, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_VALUE_TAGS:[[Ljava/lang/Byte;

    iget v9, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    aget-object v8, v8, v9

    invoke-static {v4, v8, v10}, Lsun/security/pkcs/PKCS9Attribute;->indexOf(Ljava/lang/Object;[Ljava/lang/Object;I)I

    move-result v8

    if-ne v8, v12, :cond_5

    invoke-direct {p0, v4}, Lsun/security/pkcs/PKCS9Attribute;->throwTagException(Ljava/lang/Byte;)V

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    iget v8, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    packed-switch v8, :pswitch_data_0

    :goto_1
    return-void

    :pswitch_0
    array-length v8, v2

    new-array v6, v8, [Ljava/lang/String;

    const/4 v3, 0x0

    :goto_2
    array-length v8, v2

    if-ge v3, v8, :cond_7

    aget-object v8, v2, v3

    invoke-virtual {v8}, Lsun/security/util/DerValue;->getAsString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    iput-object v6, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    goto :goto_1

    :pswitch_1
    aget-object v8, v2, v10

    invoke-virtual {v8}, Lsun/security/util/DerValue;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v8

    iput-object v8, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    goto :goto_1

    :pswitch_2
    aget-object v8, v2, v10

    invoke-virtual {v8}, Lsun/security/util/DerValue;->getOctetString()[B

    move-result-object v8

    iput-object v8, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    goto :goto_1

    :pswitch_3
    new-instance v8, Lsun/security/util/DerInputStream;

    aget-object v9, v2, v10

    invoke-virtual {v9}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v9

    invoke-direct {v8, v9}, Lsun/security/util/DerInputStream;-><init>([B)V

    invoke-virtual {v8}, Lsun/security/util/DerInputStream;->getUTCTime()Ljava/util/Date;

    move-result-object v8

    iput-object v8, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    goto :goto_1

    :pswitch_4
    array-length v8, v2

    new-array v7, v8, [Lsun/security/pkcs/SignerInfo;

    const/4 v3, 0x0

    :goto_3
    array-length v8, v2

    if-ge v3, v8, :cond_8

    new-instance v8, Lsun/security/pkcs/SignerInfo;

    aget-object v9, v2, v3

    invoke-virtual {v9}, Lsun/security/util/DerValue;->toDerInputStream()Lsun/security/util/DerInputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Lsun/security/pkcs/SignerInfo;-><init>(Lsun/security/util/DerInputStream;)V

    aput-object v8, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_8
    iput-object v7, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    goto :goto_1

    :pswitch_5
    aget-object v8, v2, v10

    invoke-virtual {v8}, Lsun/security/util/DerValue;->getAsString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    goto :goto_1

    :pswitch_6
    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "PKCS9 extended-certificate attribute not supported."

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    :pswitch_7
    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "PKCS9 IssuerAndSerialNumberattribute not supported."

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    :pswitch_8
    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "PKCS9 RSA DSI attributes11 and 12, not supported."

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    :pswitch_9
    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "PKCS9 attribute #13 not supported."

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    :pswitch_a
    new-instance v8, Lsun/security/x509/CertificateExtensions;

    new-instance v9, Lsun/security/util/DerInputStream;

    aget-object v10, v2, v10

    invoke-virtual {v10}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v10

    invoke-direct {v9, v10}, Lsun/security/util/DerInputStream;-><init>([B)V

    invoke-direct {v8, v9}, Lsun/security/x509/CertificateExtensions;-><init>(Lsun/security/util/DerInputStream;)V

    iput-object v8, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    goto/16 :goto_1

    :pswitch_b
    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "PKCS9 SMIMECapability attribute not supported."

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    :pswitch_c
    new-instance v8, Lsun/security/pkcs/SigningCertificateInfo;

    aget-object v9, v2, v10

    invoke-virtual {v9}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v9

    invoke-direct {v8, v9}, Lsun/security/pkcs/SigningCertificateInfo;-><init>([B)V

    iput-object v8, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    goto/16 :goto_1

    :pswitch_d
    aget-object v8, v2, v10

    invoke-virtual {v8}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v8

    iput-object v8, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public constructor <init>(Lsun/security/util/ObjectIdentifier;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, p2}, Lsun/security/pkcs/PKCS9Attribute;->init(Lsun/security/util/ObjectIdentifier;Ljava/lang/Object;)V

    return-void
.end method

.method public static getName(Lsun/security/util/ObjectIdentifier;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getOID(Ljava/lang/String;)Lsun/security/util/ObjectIdentifier;
    .locals 2

    sget-object v0, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/util/ObjectIdentifier;

    return-object v0
.end method

.method static indexOf(Ljava/lang/Object;[Ljava/lang/Object;I)I
    .locals 2

    move v0, p2

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private init(Lsun/security/util/ObjectIdentifier;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iput-object p1, p0, Lsun/security/pkcs/PKCS9Attribute;->oid:Lsun/security/util/ObjectIdentifier;

    sget-object v1, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Lsun/security/pkcs/PKCS9Attribute;->indexOf(Ljava/lang/Object;[Ljava/lang/Object;I)I

    move-result v1

    iput v1, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    iget v1, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    sget-object v0, Lsun/security/pkcs/PKCS9Attribute;->BYTE_ARRAY_CLASS:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Wrong value class  for attribute "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " constructing PKCS9Attribute; was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    sget-object v1, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    iget v2, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    aget-object v0, v1, v2

    goto :goto_0

    :cond_1
    iput-object p2, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    return-void
.end method

.method private throwSingleValuedException()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Single-value attribute "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/pkcs/PKCS9Attribute;->oid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lsun/security/pkcs/PKCS9Attribute;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " has multiple values."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private throwTagException(Ljava/lang/Byte;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_VALUE_TAGS:[[Ljava/lang/Byte;

    iget v4, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    aget-object v0, v3, v4

    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string/jumbo v3, "Value of attribute "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lsun/security/pkcs/PKCS9Attribute;->oid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v3}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lsun/security/pkcs/PKCS9Attribute;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v3, ") has wrong tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v3, ".  Expected tags: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-virtual {v3}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x1

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public derEncode(Ljava/io/OutputStream;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v10, 0x31

    new-instance v4, Lsun/security/util/DerOutputStream;

    invoke-direct {v4}, Lsun/security/util/DerOutputStream;-><init>()V

    iget-object v8, p0, Lsun/security/pkcs/PKCS9Attribute;->oid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v4, v8}, Lsun/security/util/DerOutputStream;->putOID(Lsun/security/util/ObjectIdentifier;)V

    iget v8, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    packed-switch v8, :pswitch_data_0

    :goto_0
    :pswitch_0
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    invoke-virtual {v4}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v8

    const/16 v9, 0x30

    invoke-virtual {v0, v9, v8}, Lsun/security/util/DerOutputStream;->write(B[B)V

    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/OutputStream;->write([B)V

    return-void

    :pswitch_1
    iget-object v8, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    check-cast v8, [B

    invoke-virtual {v4, v8}, Lsun/security/util/DerOutputStream;->write([B)V

    goto :goto_0

    :pswitch_2
    iget-object v7, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    check-cast v7, [Ljava/lang/String;

    array-length v8, v7

    new-array v6, v8, [Lsun/security/util/DerOutputStream;

    const/4 v3, 0x0

    :goto_1
    array-length v8, v7

    if-ge v3, v8, :cond_0

    new-instance v8, Lsun/security/util/DerOutputStream;

    invoke-direct {v8}, Lsun/security/util/DerOutputStream;-><init>()V

    aput-object v8, v6, v3

    aget-object v8, v6, v3

    aget-object v9, v7, v3

    invoke-virtual {v8, v9}, Lsun/security/util/DerOutputStream;->putIA5String(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v4, v10, v6}, Lsun/security/util/DerOutputStream;->putOrderedSetOf(B[Lsun/security/util/DerEncoder;)V

    goto :goto_0

    :pswitch_3
    new-instance v5, Lsun/security/util/DerOutputStream;

    invoke-direct {v5}, Lsun/security/util/DerOutputStream;-><init>()V

    iget-object v8, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    check-cast v8, Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v5, v8}, Lsun/security/util/DerOutputStream;->putOID(Lsun/security/util/ObjectIdentifier;)V

    invoke-virtual {v5}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v4, v10, v8}, Lsun/security/util/DerOutputStream;->write(B[B)V

    goto :goto_0

    :pswitch_4
    new-instance v5, Lsun/security/util/DerOutputStream;

    invoke-direct {v5}, Lsun/security/util/DerOutputStream;-><init>()V

    iget-object v8, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    check-cast v8, [B

    invoke-virtual {v5, v8}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    invoke-virtual {v5}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v4, v10, v8}, Lsun/security/util/DerOutputStream;->write(B[B)V

    goto :goto_0

    :pswitch_5
    new-instance v5, Lsun/security/util/DerOutputStream;

    invoke-direct {v5}, Lsun/security/util/DerOutputStream;-><init>()V

    iget-object v8, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    check-cast v8, Ljava/util/Date;

    invoke-virtual {v5, v8}, Lsun/security/util/DerOutputStream;->putUTCTime(Ljava/util/Date;)V

    invoke-virtual {v5}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v4, v10, v8}, Lsun/security/util/DerOutputStream;->write(B[B)V

    goto :goto_0

    :pswitch_6
    iget-object v8, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    check-cast v8, [Lsun/security/util/DerEncoder;

    invoke-virtual {v4, v10, v8}, Lsun/security/util/DerOutputStream;->putOrderedSetOf(B[Lsun/security/util/DerEncoder;)V

    goto/16 :goto_0

    :pswitch_7
    new-instance v5, Lsun/security/util/DerOutputStream;

    invoke-direct {v5}, Lsun/security/util/DerOutputStream;-><init>()V

    iget-object v8, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v5, v8}, Lsun/security/util/DerOutputStream;->putPrintableString(Ljava/lang/String;)V

    invoke-virtual {v5}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v4, v10, v8}, Lsun/security/util/DerOutputStream;->write(B[B)V

    goto/16 :goto_0

    :pswitch_8
    iget-object v7, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    check-cast v7, [Ljava/lang/String;

    array-length v8, v7

    new-array v6, v8, [Lsun/security/util/DerOutputStream;

    const/4 v3, 0x0

    :goto_2
    array-length v8, v7

    if-ge v3, v8, :cond_1

    new-instance v8, Lsun/security/util/DerOutputStream;

    invoke-direct {v8}, Lsun/security/util/DerOutputStream;-><init>()V

    aput-object v8, v6, v3

    aget-object v8, v6, v3

    aget-object v9, v7, v3

    invoke-virtual {v8, v9}, Lsun/security/util/DerOutputStream;->putPrintableString(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {v4, v10, v6}, Lsun/security/util/DerOutputStream;->putOrderedSetOf(B[Lsun/security/util/DerEncoder;)V

    goto/16 :goto_0

    :pswitch_9
    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "PKCS9 extended-certificate attribute not supported."

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    :pswitch_a
    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "PKCS9 IssuerAndSerialNumberattribute not supported."

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    :pswitch_b
    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "PKCS9 RSA DSI attributes11 and 12, not supported."

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    :pswitch_c
    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "PKCS9 attribute #13 not supported."

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    :pswitch_d
    new-instance v5, Lsun/security/util/DerOutputStream;

    invoke-direct {v5}, Lsun/security/util/DerOutputStream;-><init>()V

    iget-object v2, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    check-cast v2, Lsun/security/x509/CertificateExtensions;

    const/4 v8, 0x1

    :try_start_0
    invoke-virtual {v2, v5, v8}, Lsun/security/x509/CertificateExtensions;->encode(Ljava/io/OutputStream;Z)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v5}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v4, v10, v8}, Lsun/security/util/DerOutputStream;->write(B[B)V

    goto/16 :goto_0

    :catch_0
    move-exception v1

    new-instance v8, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/security/cert/CertificateException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    :pswitch_e
    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "PKCS9 attribute #15 not supported."

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    :pswitch_f
    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "PKCS9 SigningCertificate attribute not supported."

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    :pswitch_10
    iget-object v8, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    check-cast v8, [B

    invoke-virtual {v4, v10, v8}, Lsun/security/util/DerOutputStream;->write(B[B)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lsun/security/pkcs/PKCS9Attribute;->oid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v1, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    iget v2, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getOID()Lsun/security/util/ObjectIdentifier;
    .locals 1

    iget-object v0, p0, Lsun/security/pkcs/PKCS9Attribute;->oid:Lsun/security/util/ObjectIdentifier;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public isKnown()Z
    .locals 2

    iget v0, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSingleValued()Z
    .locals 2

    iget v0, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    sget-object v0, Lsun/security/pkcs/PKCS9Attribute;->SINGLE_VALUED:[Z

    iget v1, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    aget-boolean v0, v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    const/4 v8, -0x1

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v5, 0x64

    invoke-direct {v0, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string/jumbo v5, "["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v5, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    if-ne v5, v8, :cond_1

    iget-object v5, p0, Lsun/security/pkcs/PKCS9Attribute;->oid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v5}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    const-string/jumbo v5, ": "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v5, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    if-eq v5, v8, :cond_0

    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->SINGLE_VALUED:[Z

    iget v6, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    aget-boolean v5, v5, v6

    if-eqz v5, :cond_3

    :cond_0
    iget-object v5, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    instance-of v5, v5, [B

    if-eqz v5, :cond_2

    new-instance v2, Lsun/misc/HexDumpEncoder;

    invoke-direct {v2}, Lsun/misc/HexDumpEncoder;-><init>()V

    iget-object v5, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    check-cast v5, [B

    invoke-virtual {v2, v5}, Lsun/misc/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    const-string/jumbo v5, "]"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_1
    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v6, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    iget v7, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    iget-object v4, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    :goto_2
    array-length v5, v4

    if-ge v3, v5, :cond_5

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    :goto_3
    aget-object v5, v4, v3

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    const-string/jumbo v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
