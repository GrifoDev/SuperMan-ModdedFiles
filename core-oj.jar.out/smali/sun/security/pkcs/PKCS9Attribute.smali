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

    .prologue
    const/16 v11, 0x9

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 183
    const-string/jumbo v3, "jar"

    invoke-static {v3}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v3

    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->debug:Lsun/security/util/Debug;

    .line 188
    const/16 v3, 0x12

    new-array v3, v3, [Lsun/security/util/ObjectIdentifier;

    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    .line 193
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x2

    if-ge v1, v3, :cond_0

    .line 194
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    .line 195
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

    .line 194
    aput-object v4, v3, v1

    .line 193
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 199
    :cond_0
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x2

    .line 200
    new-array v5, v11, [I

    fill-array-data v5, :array_0

    invoke-static {v5}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v5

    .line 199
    aput-object v5, v3, v4

    .line 201
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    .line 202
    new-array v5, v11, [I

    fill-array-data v5, :array_1

    invoke-static {v5}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v5

    .line 201
    aput-object v5, v3, v4

    .line 205
    :try_start_0
    const-string/jumbo v3, "[B"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->BYTE_ARRAY_CLASS:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    aget-object v3, v3, v7

    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->EMAIL_ADDRESS_OID:Lsun/security/util/ObjectIdentifier;

    .line 213
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    aget-object v3, v3, v10

    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->UNSTRUCTURED_NAME_OID:Lsun/security/util/ObjectIdentifier;

    .line 214
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->CONTENT_TYPE_OID:Lsun/security/util/ObjectIdentifier;

    .line 215
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/4 v4, 0x4

    aget-object v3, v3, v4

    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->MESSAGE_DIGEST_OID:Lsun/security/util/ObjectIdentifier;

    .line 216
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/4 v4, 0x5

    aget-object v3, v3, v4

    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->SIGNING_TIME_OID:Lsun/security/util/ObjectIdentifier;

    .line 217
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/4 v4, 0x6

    aget-object v3, v3, v4

    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->COUNTERSIGNATURE_OID:Lsun/security/util/ObjectIdentifier;

    .line 218
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/4 v4, 0x7

    aget-object v3, v3, v4

    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->CHALLENGE_PASSWORD_OID:Lsun/security/util/ObjectIdentifier;

    .line 219
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v4, 0x8

    aget-object v3, v3, v4

    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->UNSTRUCTURED_ADDRESS_OID:Lsun/security/util/ObjectIdentifier;

    .line 221
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    aget-object v3, v3, v11

    .line 220
    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->EXTENDED_CERTIFICATE_ATTRIBUTES_OID:Lsun/security/util/ObjectIdentifier;

    .line 222
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v4, 0xa

    aget-object v3, v3, v4

    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->ISSUER_SERIALNUMBER_OID:Lsun/security/util/ObjectIdentifier;

    .line 225
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v4, 0xe

    aget-object v3, v3, v4

    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->EXTENSION_REQUEST_OID:Lsun/security/util/ObjectIdentifier;

    .line 226
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v4, 0xf

    aget-object v3, v3, v4

    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->SMIME_CAPABILITY_OID:Lsun/security/util/ObjectIdentifier;

    .line 227
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v4, 0x10

    aget-object v3, v3, v4

    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->SIGNING_CERTIFICATE_OID:Lsun/security/util/ObjectIdentifier;

    .line 229
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v4, 0x11

    aget-object v3, v3, v4

    .line 228
    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->SIGNATURE_TIMESTAMP_TOKEN_OID:Lsun/security/util/ObjectIdentifier;

    .line 257
    new-instance v3, Ljava/util/Hashtable;

    const/16 v4, 0x12

    invoke-direct {v3, v4}, Ljava/util/Hashtable;-><init>(I)V

    .line 256
    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    .line 260
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    const-string/jumbo v4, "emailaddress"

    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    aget-object v5, v5, v7

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    const-string/jumbo v4, "unstructuredname"

    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    aget-object v5, v5, v10

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    const-string/jumbo v4, "contenttype"

    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    const-string/jumbo v4, "messagedigest"

    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/4 v6, 0x4

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    const-string/jumbo v4, "signingtime"

    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/4 v6, 0x5

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    const-string/jumbo v4, "countersignature"

    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/4 v6, 0x6

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    const-string/jumbo v4, "challengepassword"

    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/4 v6, 0x7

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    const-string/jumbo v4, "unstructuredaddress"

    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v6, 0x8

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    const-string/jumbo v4, "extendedcertificateattributes"

    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    aget-object v5, v5, v11

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    const-string/jumbo v4, "issuerandserialnumber"

    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v6, 0xa

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    const-string/jumbo v4, "rsaproprietary"

    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v6, 0xb

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    const-string/jumbo v4, "rsaproprietary"

    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v6, 0xc

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    const-string/jumbo v4, "signingdescription"

    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v6, 0xd

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    const-string/jumbo v4, "extensionrequest"

    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v6, 0xe

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    const-string/jumbo v4, "smimecapability"

    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v6, 0xf

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    const-string/jumbo v4, "signingcertificate"

    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v6, 0x10

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    const-string/jumbo v4, "signaturetimestamptoken"

    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v6, 0x11

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    new-instance v3, Ljava/util/Hashtable;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Ljava/util/Hashtable;-><init>(I)V

    .line 283
    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    .line 286
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    aget-object v4, v4, v7

    const-string/jumbo v5, "EmailAddress"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    aget-object v4, v4, v10

    const-string/jumbo v5, "UnstructuredName"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const-string/jumbo v5, "ContentType"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const-string/jumbo v5, "MessageDigest"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    const-string/jumbo v5, "SigningTime"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/4 v5, 0x6

    aget-object v4, v4, v5

    const-string/jumbo v5, "Countersignature"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/4 v5, 0x7

    aget-object v4, v4, v5

    const-string/jumbo v5, "ChallengePassword"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v5, 0x8

    aget-object v4, v4, v5

    const-string/jumbo v5, "UnstructuredAddress"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    aget-object v4, v4, v11

    const-string/jumbo v5, "ExtendedCertificateAttributes"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v5, 0xa

    aget-object v4, v4, v5

    const-string/jumbo v5, "IssuerAndSerialNumber"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v5, 0xb

    aget-object v4, v4, v5

    const-string/jumbo v5, "RSAProprietary"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v5, 0xc

    aget-object v4, v4, v5

    const-string/jumbo v5, "RSAProprietary"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v5, 0xd

    aget-object v4, v4, v5

    const-string/jumbo v5, "SMIMESigningDesc"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v5, 0xe

    aget-object v4, v4, v5

    const-string/jumbo v5, "ExtensionRequest"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v5, 0xf

    aget-object v4, v4, v5

    const-string/jumbo v5, "SMIMECapability"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v5, 0x10

    aget-object v4, v4, v5

    const-string/jumbo v5, "SigningCertificate"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v5, 0x11

    aget-object v4, v4, v5

    const-string/jumbo v5, "SignatureTimestampToken"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    const/16 v3, 0x12

    new-array v3, v3, [[Ljava/lang/Byte;

    .line 311
    aput-object v9, v3, v8

    .line 312
    new-array v4, v7, [Ljava/lang/Byte;

    new-instance v5, Ljava/lang/Byte;

    const/16 v6, 0x16

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    aput-object v5, v4, v8

    aput-object v4, v3, v7

    .line 313
    new-array v4, v7, [Ljava/lang/Byte;

    new-instance v5, Ljava/lang/Byte;

    const/16 v6, 0x16

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    aput-object v5, v4, v8

    aput-object v4, v3, v10

    .line 314
    new-array v4, v7, [Ljava/lang/Byte;

    new-instance v5, Ljava/lang/Byte;

    const/4 v6, 0x6

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    aput-object v5, v4, v8

    const/4 v5, 0x3

    aput-object v4, v3, v5

    .line 315
    new-array v4, v7, [Ljava/lang/Byte;

    new-instance v5, Ljava/lang/Byte;

    const/4 v6, 0x4

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    aput-object v5, v4, v8

    const/4 v5, 0x4

    aput-object v4, v3, v5

    .line 316
    new-array v4, v7, [Ljava/lang/Byte;

    new-instance v5, Ljava/lang/Byte;

    const/16 v6, 0x17

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    aput-object v5, v4, v8

    const/4 v5, 0x5

    aput-object v4, v3, v5

    .line 317
    new-array v4, v7, [Ljava/lang/Byte;

    new-instance v5, Ljava/lang/Byte;

    const/16 v6, 0x30

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    aput-object v5, v4, v8

    const/4 v5, 0x6

    aput-object v4, v3, v5

    .line 318
    new-array v4, v10, [Ljava/lang/Byte;

    new-instance v5, Ljava/lang/Byte;

    const/16 v6, 0x13

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    aput-object v5, v4, v8

    .line 319
    new-instance v5, Ljava/lang/Byte;

    const/16 v6, 0x14

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    aput-object v5, v4, v7

    .line 318
    const/4 v5, 0x7

    aput-object v4, v3, v5

    .line 320
    new-array v4, v10, [Ljava/lang/Byte;

    new-instance v5, Ljava/lang/Byte;

    const/16 v6, 0x13

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    aput-object v5, v4, v8

    .line 321
    new-instance v5, Ljava/lang/Byte;

    const/16 v6, 0x14

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    aput-object v5, v4, v7

    .line 320
    const/16 v5, 0x8

    aput-object v4, v3, v5

    .line 322
    new-array v4, v7, [Ljava/lang/Byte;

    new-instance v5, Ljava/lang/Byte;

    const/16 v6, 0x31

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    aput-object v5, v4, v8

    aput-object v4, v3, v11

    .line 323
    new-array v4, v7, [Ljava/lang/Byte;

    new-instance v5, Ljava/lang/Byte;

    const/16 v6, 0x30

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    aput-object v5, v4, v8

    const/16 v5, 0xa

    aput-object v4, v3, v5

    .line 324
    const/16 v4, 0xb

    aput-object v9, v3, v4

    .line 325
    const/16 v4, 0xc

    aput-object v9, v3, v4

    .line 326
    const/16 v4, 0xd

    aput-object v9, v3, v4

    .line 327
    new-array v4, v7, [Ljava/lang/Byte;

    new-instance v5, Ljava/lang/Byte;

    const/16 v6, 0x30

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    aput-object v5, v4, v8

    const/16 v5, 0xe

    aput-object v4, v3, v5

    .line 328
    new-array v4, v7, [Ljava/lang/Byte;

    new-instance v5, Ljava/lang/Byte;

    const/16 v6, 0x30

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    aput-object v5, v4, v8

    const/16 v5, 0xf

    aput-object v4, v3, v5

    .line 329
    new-array v4, v7, [Ljava/lang/Byte;

    new-instance v5, Ljava/lang/Byte;

    const/16 v6, 0x30

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    aput-object v5, v4, v8

    const/16 v5, 0x10

    aput-object v4, v3, v5

    .line 330
    new-array v4, v7, [Ljava/lang/Byte;

    new-instance v5, Ljava/lang/Byte;

    const/16 v6, 0x30

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    aput-object v5, v4, v8

    const/16 v5, 0x11

    aput-object v4, v3, v5

    .line 310
    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_VALUE_TAGS:[[Ljava/lang/Byte;

    .line 333
    const/16 v3, 0x12

    new-array v3, v3, [Ljava/lang/Class;

    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    .line 337
    :try_start_1
    const-string/jumbo v3, "[Ljava.lang.String;"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 339
    .local v2, "str":Ljava/lang/Class;
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 340
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v2, v3, v4

    .line 341
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    const/4 v4, 0x2

    aput-object v2, v3, v4

    .line 342
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    .line 343
    const-string/jumbo v4, "sun.security.util.ObjectIdentifier"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 342
    const/4 v5, 0x3

    aput-object v4, v3, v5

    .line 344
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->BYTE_ARRAY_CLASS:Ljava/lang/Class;

    const/4 v5, 0x4

    aput-object v4, v3, v5

    .line 345
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    const-string/jumbo v4, "java.util.Date"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x5

    aput-object v4, v3, v5

    .line 346
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    .line 347
    const-string/jumbo v4, "[Lsun.security.pkcs.SignerInfo;"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 346
    const/4 v5, 0x6

    aput-object v4, v3, v5

    .line 348
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    .line 349
    const-string/jumbo v4, "java.lang.String"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 348
    const/4 v5, 0x7

    aput-object v4, v3, v5

    .line 350
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    const/16 v4, 0x8

    aput-object v2, v3, v4

    .line 351
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    const/4 v4, 0x0

    const/16 v5, 0x9

    aput-object v4, v3, v5

    .line 352
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    const/4 v4, 0x0

    const/16 v5, 0xa

    aput-object v4, v3, v5

    .line 353
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    const/4 v4, 0x0

    const/16 v5, 0xb

    aput-object v4, v3, v5

    .line 354
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    const/4 v4, 0x0

    const/16 v5, 0xc

    aput-object v4, v3, v5

    .line 355
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    const/4 v4, 0x0

    const/16 v5, 0xd

    aput-object v4, v3, v5

    .line 356
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    .line 357
    const-string/jumbo v4, "sun.security.x509.CertificateExtensions"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 356
    const/16 v5, 0xe

    aput-object v4, v3, v5

    .line 358
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    const/4 v4, 0x0

    const/16 v5, 0xf

    aput-object v4, v3, v5

    .line 359
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    const/4 v4, 0x0

    const/16 v5, 0x10

    aput-object v4, v3, v5

    .line 360
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->BYTE_ARRAY_CLASS:Ljava/lang/Class;

    const/16 v5, 0x11

    aput-object v4, v3, v5
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 370
    const/16 v3, 0x12

    new-array v3, v3, [Z

    fill-array-data v3, :array_2

    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->SINGLE_VALUED:[Z

    .line 180
    return-void

    .line 206
    .end local v2    # "str":Ljava/lang/Class;
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v3, Ljava/lang/ExceptionInInitializerError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 361
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 362
    .restart local v0    # "e":Ljava/lang/ClassNotFoundException;
    new-instance v3, Ljava/lang/ExceptionInInitializerError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 200
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

    .line 202
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

    .line 370
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
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 446
    invoke-static {p1}, Lsun/security/pkcs/PKCS9Attribute;->getOID(Ljava/lang/String;)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 448
    .local v0, "oid":Lsun/security/util/ObjectIdentifier;
    if-nez v0, :cond_0

    .line 449
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 450
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unrecognized attribute name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 451
    const-string/jumbo v3, " constructing PKCS9Attribute."

    .line 450
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 449
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 453
    :cond_0
    invoke-direct {p0, v0, p2}, Lsun/security/pkcs/PKCS9Attribute;->init(Lsun/security/util/ObjectIdentifier;Ljava/lang/Object;)V

    .line 445
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerValue;)V
    .locals 13
    .param p1, "derVal"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v12, -0x1

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 483
    new-instance v1, Lsun/security/util/DerInputStream;

    invoke-virtual {p1}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v8

    invoke-direct {v1, v8}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 484
    .local v1, "derIn":Lsun/security/util/DerInputStream;
    invoke-virtual {v1, v9}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v5

    .line 486
    .local v5, "val":[Lsun/security/util/DerValue;
    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->available()I

    move-result v8

    if-eqz v8, :cond_0

    .line 487
    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "Excess data parsing PKCS9Attribute"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 489
    :cond_0
    array-length v8, v5

    if-eq v8, v9, :cond_1

    .line 490
    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "PKCS9Attribute doesn\'t have two components"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 493
    :cond_1
    aget-object v8, v5, v10

    invoke-virtual {v8}, Lsun/security/util/DerValue;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v8

    iput-object v8, p0, Lsun/security/pkcs/PKCS9Attribute;->oid:Lsun/security/util/ObjectIdentifier;

    .line 494
    aget-object v8, v5, v11

    invoke-virtual {v8}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v0

    .line 495
    .local v0, "content":[B
    new-instance v8, Lsun/security/util/DerInputStream;

    invoke-direct {v8, v0}, Lsun/security/util/DerInputStream;-><init>([B)V

    invoke-virtual {v8, v11}, Lsun/security/util/DerInputStream;->getSet(I)[Lsun/security/util/DerValue;

    move-result-object v2

    .line 497
    .local v2, "elems":[Lsun/security/util/DerValue;
    iget-object v8, p0, Lsun/security/pkcs/PKCS9Attribute;->oid:Lsun/security/util/ObjectIdentifier;

    sget-object v9, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    invoke-static {v8, v9, v11}, Lsun/security/pkcs/PKCS9Attribute;->indexOf(Ljava/lang/Object;[Ljava/lang/Object;I)I

    move-result v8

    iput v8, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    .line 498
    iget v8, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    if-ne v8, v12, :cond_3

    .line 499
    sget-object v8, Lsun/security/pkcs/PKCS9Attribute;->debug:Lsun/security/util/Debug;

    if-eqz v8, :cond_2

    .line 500
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

    .line 502
    :cond_2
    iput-object v0, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    .line 503
    return-void

    .line 507
    :cond_3
    sget-object v8, Lsun/security/pkcs/PKCS9Attribute;->SINGLE_VALUED:[Z

    iget v9, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    aget-boolean v8, v8, v9

    if-eqz v8, :cond_4

    array-length v8, v2

    if-le v8, v11, :cond_4

    .line 508
    invoke-direct {p0}, Lsun/security/pkcs/PKCS9Attribute;->throwSingleValuedException()V

    .line 512
    :cond_4
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v8, v2

    if-ge v3, v8, :cond_6

    .line 513
    new-instance v4, Ljava/lang/Byte;

    aget-object v8, v2, v3

    iget-byte v8, v8, Lsun/security/util/DerValue;->tag:B

    invoke-direct {v4, v8}, Ljava/lang/Byte;-><init>(B)V

    .line 515
    .local v4, "tag":Ljava/lang/Byte;
    sget-object v8, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_VALUE_TAGS:[[Ljava/lang/Byte;

    iget v9, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    aget-object v8, v8, v9

    invoke-static {v4, v8, v10}, Lsun/security/pkcs/PKCS9Attribute;->indexOf(Ljava/lang/Object;[Ljava/lang/Object;I)I

    move-result v8

    if-ne v8, v12, :cond_5

    .line 516
    invoke-direct {p0, v4}, Lsun/security/pkcs/PKCS9Attribute;->throwTagException(Ljava/lang/Byte;)V

    .line 512
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 519
    .end local v4    # "tag":Ljava/lang/Byte;
    :cond_6
    iget v8, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    packed-switch v8, :pswitch_data_0

    .line 481
    :goto_1
    return-void

    .line 524
    :pswitch_0
    array-length v8, v2

    new-array v6, v8, [Ljava/lang/String;

    .line 526
    .local v6, "values":[Ljava/lang/String;
    const/4 v3, 0x0

    :goto_2
    array-length v8, v2

    if-ge v3, v8, :cond_7

    .line 527
    aget-object v8, v2, v3

    invoke-virtual {v8}, Lsun/security/util/DerValue;->getAsString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v3

    .line 526
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 528
    :cond_7
    iput-object v6, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    goto :goto_1

    .line 533
    .end local v6    # "values":[Ljava/lang/String;
    :pswitch_1
    aget-object v8, v2, v10

    invoke-virtual {v8}, Lsun/security/util/DerValue;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v8

    iput-object v8, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    goto :goto_1

    .line 537
    :pswitch_2
    aget-object v8, v2, v10

    invoke-virtual {v8}, Lsun/security/util/DerValue;->getOctetString()[B

    move-result-object v8

    iput-object v8, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    goto :goto_1

    .line 541
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

    .line 546
    :pswitch_4
    array-length v8, v2

    new-array v7, v8, [Lsun/security/pkcs/SignerInfo;

    .line 547
    .local v7, "values":[Lsun/security/pkcs/SignerInfo;
    const/4 v3, 0x0

    :goto_3
    array-length v8, v2

    if-ge v3, v8, :cond_8

    .line 549
    new-instance v8, Lsun/security/pkcs/SignerInfo;

    aget-object v9, v2, v3

    invoke-virtual {v9}, Lsun/security/util/DerValue;->toDerInputStream()Lsun/security/util/DerInputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Lsun/security/pkcs/SignerInfo;-><init>(Lsun/security/util/DerInputStream;)V

    .line 548
    aput-object v8, v7, v3

    .line 547
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 550
    :cond_8
    iput-object v7, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    goto :goto_1

    .line 555
    .end local v7    # "values":[Lsun/security/pkcs/SignerInfo;
    :pswitch_5
    aget-object v8, v2, v10

    invoke-virtual {v8}, Lsun/security/util/DerValue;->getAsString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    goto :goto_1

    .line 559
    :pswitch_6
    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "PKCS9 extended-certificate attribute not supported."

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 563
    :pswitch_7
    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "PKCS9 IssuerAndSerialNumberattribute not supported."

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 568
    :pswitch_8
    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "PKCS9 RSA DSI attributes11 and 12, not supported."

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 572
    :pswitch_9
    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "PKCS9 attribute #13 not supported."

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 576
    :pswitch_a
    new-instance v8, Lsun/security/x509/CertificateExtensions;

    .line 577
    new-instance v9, Lsun/security/util/DerInputStream;

    aget-object v10, v2, v10

    invoke-virtual {v10}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v10

    invoke-direct {v9, v10}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 576
    invoke-direct {v8, v9}, Lsun/security/x509/CertificateExtensions;-><init>(Lsun/security/util/DerInputStream;)V

    iput-object v8, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    goto/16 :goto_1

    .line 581
    :pswitch_b
    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "PKCS9 SMIMECapability attribute not supported."

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 585
    :pswitch_c
    new-instance v8, Lsun/security/pkcs/SigningCertificateInfo;

    aget-object v9, v2, v10

    invoke-virtual {v9}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v9

    invoke-direct {v8, v9}, Lsun/security/pkcs/SigningCertificateInfo;-><init>([B)V

    iput-object v8, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    goto/16 :goto_1

    .line 589
    :pswitch_d
    aget-object v8, v2, v10

    invoke-virtual {v8}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v8

    iput-object v8, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    goto/16 :goto_1

    .line 519
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
    .param p1, "oid"    # Lsun/security/util/ObjectIdentifier;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 425
    invoke-direct {p0, p1, p2}, Lsun/security/pkcs/PKCS9Attribute;->init(Lsun/security/util/ObjectIdentifier;Ljava/lang/Object;)V

    .line 424
    return-void
.end method

.method public static getName(Lsun/security/util/ObjectIdentifier;)Ljava/lang/String;
    .locals 1
    .param p0, "oid"    # Lsun/security/util/ObjectIdentifier;

    .prologue
    .line 785
    sget-object v0, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getOID(Ljava/lang/String;)Lsun/security/util/ObjectIdentifier;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 777
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
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "a"    # [Ljava/lang/Object;
    .param p2, "start"    # I

    .prologue
    .line 835
    move v0, p2

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 836
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 835
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 838
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private init(Lsun/security/util/ObjectIdentifier;Ljava/lang/Object;)V
    .locals 4
    .param p1, "oid"    # Lsun/security/util/ObjectIdentifier;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 459
    iput-object p1, p0, Lsun/security/pkcs/PKCS9Attribute;->oid:Lsun/security/util/ObjectIdentifier;

    .line 460
    sget-object v1, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Lsun/security/pkcs/PKCS9Attribute;->indexOf(Ljava/lang/Object;[Ljava/lang/Object;I)I

    move-result v1

    iput v1, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    .line 461
    iget v1, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    sget-object v0, Lsun/security/pkcs/PKCS9Attribute;->BYTE_ARRAY_CLASS:Ljava/lang/Class;

    .line 462
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 463
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 464
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Wrong value class  for attribute "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 466
    const-string/jumbo v3, " constructing PKCS9Attribute; was "

    .line 464
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 467
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    .line 464
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 467
    const-string/jumbo v3, ", should be "

    .line 464
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 468
    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    .line 464
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 463
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 461
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    sget-object v1, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    iget v2, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    aget-object v0, v1, v2

    goto :goto_0

    .line 470
    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    iput-object p2, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    .line 457
    return-void
.end method

.method private throwSingleValuedException()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 846
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Single-value attribute "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 847
    iget-object v2, p0, Lsun/security/pkcs/PKCS9Attribute;->oid:Lsun/security/util/ObjectIdentifier;

    .line 846
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 847
    const-string/jumbo v2, " ("

    .line 846
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 847
    invoke-virtual {p0}, Lsun/security/pkcs/PKCS9Attribute;->getName()Ljava/lang/String;

    move-result-object v2

    .line 846
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 847
    const-string/jumbo v2, ")"

    .line 846
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 848
    const-string/jumbo v2, " has multiple values."

    .line 846
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private throwTagException(Ljava/lang/Byte;)V
    .locals 5
    .param p1, "tag"    # Ljava/lang/Byte;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 858
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_VALUE_TAGS:[[Ljava/lang/Byte;

    iget v4, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    aget-object v0, v3, v4

    .line 859
    .local v0, "expectedTags":[Ljava/lang/Byte;
    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 860
    .local v2, "msg":Ljava/lang/StringBuffer;
    const-string/jumbo v3, "Value of attribute "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 861
    iget-object v3, p0, Lsun/security/pkcs/PKCS9Attribute;->oid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v3}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 862
    const-string/jumbo v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 863
    invoke-virtual {p0}, Lsun/security/pkcs/PKCS9Attribute;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 864
    const-string/jumbo v3, ") has wrong tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 865
    invoke-virtual {p1}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 866
    const-string/jumbo v3, ".  Expected tags: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 868
    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-virtual {v3}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 870
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 871
    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 872
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 870
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 874
    :cond_0
    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 875
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public derEncode(Ljava/io/OutputStream;)V
    .locals 11
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x31

    .line 604
    new-instance v4, Lsun/security/util/DerOutputStream;

    invoke-direct {v4}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 605
    .local v4, "temp":Lsun/security/util/DerOutputStream;
    iget-object v8, p0, Lsun/security/pkcs/PKCS9Attribute;->oid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v4, v8}, Lsun/security/util/DerOutputStream;->putOID(Lsun/security/util/ObjectIdentifier;)V

    .line 606
    iget v8, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    packed-switch v8, :pswitch_data_0

    .line 720
    :goto_0
    :pswitch_0
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 721
    .local v0, "derOut":Lsun/security/util/DerOutputStream;
    invoke-virtual {v4}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v8

    const/16 v9, 0x30

    invoke-virtual {v0, v9, v8}, Lsun/security/util/DerOutputStream;->write(B[B)V

    .line 723
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/OutputStream;->write([B)V

    .line 603
    return-void

    .line 608
    .end local v0    # "derOut":Lsun/security/util/DerOutputStream;
    :pswitch_1
    iget-object v8, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    check-cast v8, [B

    invoke-virtual {v4, v8}, Lsun/security/util/DerOutputStream;->write([B)V

    goto :goto_0

    .line 613
    :pswitch_2
    iget-object v7, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    check-cast v7, [Ljava/lang/String;

    .line 615
    .local v7, "values":[Ljava/lang/String;
    array-length v8, v7

    .line 614
    new-array v6, v8, [Lsun/security/util/DerOutputStream;

    .line 617
    .local v6, "temps":[Lsun/security/util/DerOutputStream;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v8, v7

    if-ge v3, v8, :cond_0

    .line 618
    new-instance v8, Lsun/security/util/DerOutputStream;

    invoke-direct {v8}, Lsun/security/util/DerOutputStream;-><init>()V

    aput-object v8, v6, v3

    .line 619
    aget-object v8, v6, v3

    aget-object v9, v7, v3

    invoke-virtual {v8, v9}, Lsun/security/util/DerOutputStream;->putIA5String(Ljava/lang/String;)V

    .line 617
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 621
    :cond_0
    invoke-virtual {v4, v10, v6}, Lsun/security/util/DerOutputStream;->putOrderedSetOf(B[Lsun/security/util/DerEncoder;)V

    goto :goto_0

    .line 627
    .end local v3    # "i":I
    .end local v6    # "temps":[Lsun/security/util/DerOutputStream;
    .end local v7    # "values":[Ljava/lang/String;
    :pswitch_3
    new-instance v5, Lsun/security/util/DerOutputStream;

    invoke-direct {v5}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 628
    .local v5, "temp2":Lsun/security/util/DerOutputStream;
    iget-object v8, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    check-cast v8, Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v5, v8}, Lsun/security/util/DerOutputStream;->putOID(Lsun/security/util/ObjectIdentifier;)V

    .line 629
    invoke-virtual {v5}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v4, v10, v8}, Lsun/security/util/DerOutputStream;->write(B[B)V

    goto :goto_0

    .line 635
    .end local v5    # "temp2":Lsun/security/util/DerOutputStream;
    :pswitch_4
    new-instance v5, Lsun/security/util/DerOutputStream;

    invoke-direct {v5}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 636
    .restart local v5    # "temp2":Lsun/security/util/DerOutputStream;
    iget-object v8, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    check-cast v8, [B

    invoke-virtual {v5, v8}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    .line 637
    invoke-virtual {v5}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v4, v10, v8}, Lsun/security/util/DerOutputStream;->write(B[B)V

    goto :goto_0

    .line 643
    .end local v5    # "temp2":Lsun/security/util/DerOutputStream;
    :pswitch_5
    new-instance v5, Lsun/security/util/DerOutputStream;

    invoke-direct {v5}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 644
    .restart local v5    # "temp2":Lsun/security/util/DerOutputStream;
    iget-object v8, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    check-cast v8, Ljava/util/Date;

    invoke-virtual {v5, v8}, Lsun/security/util/DerOutputStream;->putUTCTime(Ljava/util/Date;)V

    .line 645
    invoke-virtual {v5}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v4, v10, v8}, Lsun/security/util/DerOutputStream;->write(B[B)V

    goto :goto_0

    .line 650
    .end local v5    # "temp2":Lsun/security/util/DerOutputStream;
    :pswitch_6
    iget-object v8, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    check-cast v8, [Lsun/security/util/DerEncoder;

    invoke-virtual {v4, v10, v8}, Lsun/security/util/DerOutputStream;->putOrderedSetOf(B[Lsun/security/util/DerEncoder;)V

    goto/16 :goto_0

    .line 655
    :pswitch_7
    new-instance v5, Lsun/security/util/DerOutputStream;

    invoke-direct {v5}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 656
    .restart local v5    # "temp2":Lsun/security/util/DerOutputStream;
    iget-object v8, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v5, v8}, Lsun/security/util/DerOutputStream;->putPrintableString(Ljava/lang/String;)V

    .line 657
    invoke-virtual {v5}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v4, v10, v8}, Lsun/security/util/DerOutputStream;->write(B[B)V

    goto/16 :goto_0

    .line 663
    .end local v5    # "temp2":Lsun/security/util/DerOutputStream;
    :pswitch_8
    iget-object v7, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    check-cast v7, [Ljava/lang/String;

    .line 665
    .restart local v7    # "values":[Ljava/lang/String;
    array-length v8, v7

    .line 664
    new-array v6, v8, [Lsun/security/util/DerOutputStream;

    .line 667
    .restart local v6    # "temps":[Lsun/security/util/DerOutputStream;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    array-length v8, v7

    if-ge v3, v8, :cond_1

    .line 668
    new-instance v8, Lsun/security/util/DerOutputStream;

    invoke-direct {v8}, Lsun/security/util/DerOutputStream;-><init>()V

    aput-object v8, v6, v3

    .line 669
    aget-object v8, v6, v3

    aget-object v9, v7, v3

    invoke-virtual {v8, v9}, Lsun/security/util/DerOutputStream;->putPrintableString(Ljava/lang/String;)V

    .line 667
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 671
    :cond_1
    invoke-virtual {v4, v10, v6}, Lsun/security/util/DerOutputStream;->putOrderedSetOf(B[Lsun/security/util/DerEncoder;)V

    goto/16 :goto_0

    .line 676
    .end local v3    # "i":I
    .end local v6    # "temps":[Lsun/security/util/DerOutputStream;
    .end local v7    # "values":[Ljava/lang/String;
    :pswitch_9
    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "PKCS9 extended-certificate attribute not supported."

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 680
    :pswitch_a
    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "PKCS9 IssuerAndSerialNumberattribute not supported."

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 685
    :pswitch_b
    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "PKCS9 RSA DSI attributes11 and 12, not supported."

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 689
    :pswitch_c
    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "PKCS9 attribute #13 not supported."

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 694
    :pswitch_d
    new-instance v5, Lsun/security/util/DerOutputStream;

    invoke-direct {v5}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 695
    .restart local v5    # "temp2":Lsun/security/util/DerOutputStream;
    iget-object v2, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    check-cast v2, Lsun/security/x509/CertificateExtensions;

    .line 697
    .local v2, "exts":Lsun/security/x509/CertificateExtensions;
    const/4 v8, 0x1

    :try_start_0
    invoke-virtual {v2, v5, v8}, Lsun/security/x509/CertificateExtensions;->encode(Ljava/io/OutputStream;Z)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 701
    invoke-virtual {v5}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v4, v10, v8}, Lsun/security/util/DerOutputStream;->write(B[B)V

    goto/16 :goto_0

    .line 698
    :catch_0
    move-exception v1

    .line 699
    .local v1, "ex":Ljava/security/cert/CertificateException;
    new-instance v8, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/security/cert/CertificateException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 705
    .end local v1    # "ex":Ljava/security/cert/CertificateException;
    .end local v2    # "exts":Lsun/security/x509/CertificateExtensions;
    .end local v5    # "temp2":Lsun/security/util/DerOutputStream;
    :pswitch_e
    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "PKCS9 attribute #15 not supported."

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 709
    :pswitch_f
    new-instance v8, Ljava/io/IOException;

    .line 710
    const-string/jumbo v9, "PKCS9 SigningCertificate attribute not supported."

    .line 709
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 714
    :pswitch_10
    iget-object v8, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    check-cast v8, [B

    invoke-virtual {v4, v10, v8}, Lsun/security/util/DerOutputStream;->write(B[B)V

    goto/16 :goto_0

    .line 606
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

    .prologue
    .line 767
    iget v0, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 768
    iget-object v0, p0, Lsun/security/pkcs/PKCS9Attribute;->oid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    .line 767
    :goto_0
    return-object v0

    .line 769
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

    .prologue
    .line 760
    iget-object v0, p0, Lsun/security/pkcs/PKCS9Attribute;->oid:Lsun/security/util/ObjectIdentifier;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public isKnown()Z
    .locals 2

    .prologue
    .line 732
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

    .prologue
    .line 753
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

    .prologue
    const/4 v8, -0x1

    .line 792
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v5, 0x64

    invoke-direct {v0, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 794
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string/jumbo v5, "["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 796
    iget v5, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    if-ne v5, v8, :cond_1

    .line 797
    iget-object v5, p0, Lsun/security/pkcs/PKCS9Attribute;->oid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v5}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 801
    :goto_0
    const-string/jumbo v5, ": "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 803
    iget v5, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    if-eq v5, v8, :cond_0

    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->SINGLE_VALUED:[Z

    iget v6, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    aget-boolean v5, v5, v6

    if-eqz v5, :cond_3

    .line 804
    :cond_0
    iget-object v5, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    instance-of v5, v5, [B

    if-eqz v5, :cond_2

    .line 805
    new-instance v2, Lsun/misc/HexDumpEncoder;

    invoke-direct {v2}, Lsun/misc/HexDumpEncoder;-><init>()V

    .line 806
    .local v2, "hexDump":Lsun/misc/HexDumpEncoder;
    iget-object v5, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    check-cast v5, [B

    invoke-virtual {v2, v5}, Lsun/misc/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 810
    .end local v2    # "hexDump":Lsun/misc/HexDumpEncoder;
    :goto_1
    const-string/jumbo v5, "]"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 811
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 799
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

    .line 808
    :cond_2
    iget-object v5, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 813
    :cond_3
    const/4 v1, 0x1

    .line 814
    .local v1, "first":Z
    iget-object v4, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    .line 816
    .local v4, "values":[Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    array-length v5, v4

    if-ge v3, v5, :cond_5

    .line 817
    if-eqz v1, :cond_4

    .line 818
    const/4 v1, 0x0

    .line 822
    :goto_3
    aget-object v5, v4, v3

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 816
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 820
    :cond_4
    const-string/jumbo v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 824
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
