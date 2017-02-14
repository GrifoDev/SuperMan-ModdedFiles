.class public Lcom/android/server/enterprise/otp/engine/common/OTPInternal;
.super Ljava/lang/Object;
.source "OTPInternal.java"


# static fields
.field public static final ALPHANUMERIC:I = 0x202

.field public static final BASE64:I = 0x203

.field public static final BINARY:I = 0x204

.field public static final CONTAINER_ID:Ljava/lang/String; = "CONTAINER_ID"

.field public static final DB_FILENAME:Ljava/lang/String; = "OtpDatabase.db"

.field public static final DB_PATH:Ljava/lang/String; = "/data/system"

.field public static final DB_VERSION:I = 0x3

.field public static final DSKPP_KEY_CONFIRMATION_MAC:Ljava/lang/String; = "DSKPP_KEY_CONFIRMATION_MAC"

.field public static final DSKPP_K_PROV:Ljava/lang/String; = "DSKPP_KEY_PROV"

.field public static final DSKPP_SERVER_ID:Ljava/lang/String; = "DSKPP_SERVER_ID"

.field public static final HEXADECIMAL:I = 0x201

.field public static final MAX_TOKENS_PER_DEVICE:I = 0xc

.field public static final MAX_VENDOR_TOKENID_SIZE:I = 0x400

.field public static final OATH_PROTOCOL_INDEX:I = 0x1

.field public static final OCRA_CHALLENGE:Ljava/lang/String; = "OCRA_CHALLENGE"

.field public static final OCRA_IS_SIGNATURE:Ljava/lang/String; = "OCRA_IS_SIGNATURE"

.field public static final OCRA_PIN:Ljava/lang/String; = "OCRA_PIN"

.field public static final OCRA_SESSION:Ljava/lang/String; = "OCRA_SESSION"

.field public static final OCRA_SUITE_INDEX:I = 0x100

.field public static final OTP_ENCODING_BASE:I = 0x200

.field public static final OTP_ENCODING_INDEX:I = 0x80

.field public static final OTP_HASH_ALGO_INDEX:I = 0x2000

.field public static final OTP_INTERNAL_TOKEN_ID:Ljava/lang/String; = "OTP_INTERNAL_TOKEN_ID"

.field public static final OTP_LENGTH_INDEX:I = 0x40

.field public static final OTP_PARAM_INDEX:I = 0x20

.field public static final OTP_PERMISSION_PROVISION:Ljava/lang/String; = "android.permission.sec.OTP_PROVISION"

.field public static final OTP_PERMISSION_PROVISION_NEW:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_OTP_PROVISION"

.field public static final RESYNC_FLAGS:Ljava/lang/String; = "RESYNC_FLAGS"

.field public static final SDK_VERSION_DEFINED:Ljava/lang/String; = "SDK_VERSION_DEFINED"

.field public static final SHARED_SECRET_ENCRYPTION_ALGO_INDEX:I = 0x8

.field public static final SHARED_SECRET_ENCRYPTION_IV_INDEX:I = 0x10

.field public static final SHARED_SECRET_ENCRYPTION_KEY_INDEX:I = 0x4

.field public static final SHARED_SECRET_INDEX:I = 0x2

.field public static final SHARED_SECRET_PBE_NUM_ITERATIONS_INDEX:I = 0x800

.field public static final SHARED_SECRET_PBE_PASSWORD_INDEX:I = 0x200

.field public static final SHARED_SECRET_PBE_SALT_INDEX:I = 0x400

.field public static final TIME_DRIFT_INDEX:I = 0x1000

.field public static final TOKEN_STATE:Ljava/lang/String; = "TOKEN_STATE"

.field public static final XMLNS_DKEY:Ljava/lang/String; = "http://www.w3.org/2009/xmlsec-derivedkey#"

.field public static final XMLNS_DS:Ljava/lang/String; = "http://www.w3.org/2000/09/xmldsig#"

.field public static final XMLNS_DSKPP:Ljava/lang/String; = "urn:ietf:params:xml:ns:keyprov:dskpp"

.field public static final XMLNS_PKCS5:Ljava/lang/String; = "http://www.rsasecurity.com/rsalabs/pkcs/schemas/pkcs-5v2-0#"

.field public static final XMLNS_PSKC:Ljava/lang/String; = "urn:ietf:params:xml:ns:keyprov:pskc"

.field public static final XMLNS_XENC:Ljava/lang/String; = "http://www.w3.org/2001/04/xmlenc#"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static removePaddingInBase32(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object p0

    :cond_0
    const-string/jumbo v2, "="

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    return-object p0
.end method

.method public static final throwExceptionBasedOnError(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/16 v0, 0x40c

    if-ne p0, v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Token Blocked, Please try after sometime"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/16 v0, 0x408

    if-ne p0, v0, :cond_1

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "No Such token present. Please check Token ID"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 v0, 0x40d

    if-ne p0, v0, :cond_2

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Operation Failed due to Internal Error"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/16 v0, 0x4ff

    if-ne p0, v0, :cond_3

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Caller Verificaiton failed due to lack of sufficient information"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/16 v0, 0x40a

    if-ne p0, v0, :cond_4

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Trying to access token that is provisioned for different Container"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/16 v0, 0x402

    if-ne p0, v0, :cond_5

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Caller is not whitelisted to perform the operation"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const/16 v0, 0x407

    if-ne p0, v0, :cond_6

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Token is not in Active state, Unable to generate OTP"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const/16 v0, 0x409

    if-ne p0, v0, :cond_7

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Policy defined for tokens has expied."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const/16 v0, 0x406

    if-ne p0, v0, :cond_8

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Pin is required for OTP Generation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    const/16 v0, 0x405

    if-ne p0, v0, :cond_9

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Challenge is required for OTP Generation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    const/16 v0, 0x404

    if-ne p0, v0, :cond_a

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "The Algorithm for OTP generation is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const/16 v0, 0x40e

    if-ne p0, v0, :cond_b

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Feature is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    const/16 v0, 0x412

    if-ne p0, v0, :cond_c

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Feature is not supported by device."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Error occured in processing the operation"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
