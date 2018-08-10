.class public final Landroid/nfc/NdefRecord;
.super Ljava/lang/Object;
.source "NdefRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/NdefRecord$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/nfc/NdefRecord;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_BYTE_ARRAY:[B

.field private static final FLAG_CF:B = 0x20t

.field private static final FLAG_IL:B = 0x8t

.field private static final FLAG_MB:B = -0x80t

.field private static final FLAG_ME:B = 0x40t

.field private static final FLAG_SR:B = 0x10t

.field private static final MAX_PAYLOAD_SIZE:I = 0xa00000

.field public static final RTD_ALTERNATIVE_CARRIER:[B

.field public static final RTD_ANDROID_APP:[B

.field public static final RTD_HANDOVER_CARRIER:[B

.field public static final RTD_HANDOVER_REQUEST:[B

.field public static final RTD_HANDOVER_SELECT:[B

.field public static final RTD_SMART_POSTER:[B

.field public static final RTD_TEXT:[B

.field public static final RTD_URI:[B

.field public static final TNF_ABSOLUTE_URI:S = 0x3s

.field public static final TNF_EMPTY:S = 0x0s

.field public static final TNF_EXTERNAL_TYPE:S = 0x4s

.field public static final TNF_MIME_MEDIA:S = 0x2s

.field public static final TNF_RESERVED:S = 0x7s

.field public static final TNF_UNCHANGED:S = 0x6s

.field public static final TNF_UNKNOWN:S = 0x5s

.field public static final TNF_WELL_KNOWN:S = 0x1s

.field private static final URI_PREFIX_MAP:[Ljava/lang/String;


# instance fields
.field private final mId:[B

.field private final mPayload:[B

.field private final mTnf:S

.field private final mType:[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    new-array v0, v4, [B

    const/16 v1, 0x54

    aput-byte v1, v0, v3

    sput-object v0, Landroid/nfc/NdefRecord;->RTD_TEXT:[B

    new-array v0, v4, [B

    const/16 v1, 0x55

    aput-byte v1, v0, v3

    sput-object v0, Landroid/nfc/NdefRecord;->RTD_URI:[B

    new-array v0, v2, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroid/nfc/NdefRecord;->RTD_SMART_POSTER:[B

    new-array v0, v2, [B

    fill-array-data v0, :array_1

    sput-object v0, Landroid/nfc/NdefRecord;->RTD_ALTERNATIVE_CARRIER:[B

    new-array v0, v2, [B

    fill-array-data v0, :array_2

    sput-object v0, Landroid/nfc/NdefRecord;->RTD_HANDOVER_CARRIER:[B

    new-array v0, v2, [B

    fill-array-data v0, :array_3

    sput-object v0, Landroid/nfc/NdefRecord;->RTD_HANDOVER_REQUEST:[B

    new-array v0, v2, [B

    fill-array-data v0, :array_4

    sput-object v0, Landroid/nfc/NdefRecord;->RTD_HANDOVER_SELECT:[B

    const-string/jumbo v0, "android.com:pkg"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Landroid/nfc/NdefRecord;->RTD_ANDROID_APP:[B

    const/16 v0, 0x24

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, ""

    aput-object v1, v0, v3

    const-string/jumbo v1, "http://www."

    aput-object v1, v0, v4

    const-string/jumbo v1, "https://www."

    aput-object v1, v0, v2

    const-string/jumbo v1, "http://"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "https://"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "tel:"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "mailto:"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "ftp://anonymous:anonymous@"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "ftp://ftp."

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "ftps://"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "sftp://"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "smb://"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "nfs://"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "ftp://"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "dav://"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "news:"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "telnet://"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "imap:"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string/jumbo v1, "rtsp://"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string/jumbo v1, "urn:"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string/jumbo v1, "pop:"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string/jumbo v1, "sip:"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string/jumbo v1, "sips:"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string/jumbo v1, "tftp:"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string/jumbo v1, "btspp://"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string/jumbo v1, "btl2cap://"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string/jumbo v1, "btgoep://"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string/jumbo v1, "tcpobex://"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string/jumbo v1, "irdaobex://"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string/jumbo v1, "file://"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string/jumbo v1, "urn:epc:id:"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-string/jumbo v1, "urn:epc:tag:"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    const-string/jumbo v1, "urn:epc:pat:"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    const-string/jumbo v1, "urn:epc:raw:"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    const-string/jumbo v1, "urn:epc:"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    const-string/jumbo v1, "urn:nfc:"

    const/16 v2, 0x23

    aput-object v1, v0, v2

    sput-object v0, Landroid/nfc/NdefRecord;->URI_PREFIX_MAP:[Ljava/lang/String;

    new-array v0, v3, [B

    sput-object v0, Landroid/nfc/NdefRecord;->EMPTY_BYTE_ARRAY:[B

    new-instance v0, Landroid/nfc/NdefRecord$1;

    invoke-direct {v0}, Landroid/nfc/NdefRecord$1;-><init>()V

    sput-object v0, Landroid/nfc/NdefRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    :array_0
    .array-data 1
        0x53t
        0x70t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x61t
        0x63t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x48t
        0x63t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x48t
        0x72t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x48t
        0x73t
    .end array-data
.end method

.method public constructor <init>(S[B[B[B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    sget-object p2, Landroid/nfc/NdefRecord;->EMPTY_BYTE_ARRAY:[B

    :cond_0
    if-nez p3, :cond_1

    sget-object p3, Landroid/nfc/NdefRecord;->EMPTY_BYTE_ARRAY:[B

    :cond_1
    if-nez p4, :cond_2

    sget-object p4, Landroid/nfc/NdefRecord;->EMPTY_BYTE_ARRAY:[B

    :cond_2
    invoke-static {p1, p2, p3, p4}, Landroid/nfc/NdefRecord;->validateTnf(S[B[B[B)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    iput-short p1, p0, Landroid/nfc/NdefRecord;->mTnf:S

    iput-object p2, p0, Landroid/nfc/NdefRecord;->mType:[B

    iput-object p3, p0, Landroid/nfc/NdefRecord;->mId:[B

    iput-object p4, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/nfc/FormatException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroid/nfc/NdefRecord;->parse(Ljava/nio/ByteBuffer;Z)[Landroid/nfc/NdefRecord;

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lez v2, :cond_0

    new-instance v2, Landroid/nfc/FormatException;

    const-string/jumbo v3, "data too long"

    invoke-direct {v2, v3}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    aget-object v2, v1, v3

    iget-short v2, v2, Landroid/nfc/NdefRecord;->mTnf:S

    iput-short v2, p0, Landroid/nfc/NdefRecord;->mTnf:S

    aget-object v2, v1, v3

    iget-object v2, v2, Landroid/nfc/NdefRecord;->mType:[B

    iput-object v2, p0, Landroid/nfc/NdefRecord;->mType:[B

    aget-object v2, v1, v3

    iget-object v2, v2, Landroid/nfc/NdefRecord;->mId:[B

    iput-object v2, p0, Landroid/nfc/NdefRecord;->mId:[B

    aget-object v2, v1, v3

    iget-object v2, v2, Landroid/nfc/NdefRecord;->mPayload:[B

    iput-object v2, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    return-void
.end method

.method private static bytesToString([B)Ljava/lang/StringBuilder;
    .locals 8

    const/4 v3, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v4, p0

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-byte v0, p0, v2

    const-string/jumbo v5, "%02X"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static createApplicationRecord(Ljava/lang/String;)Landroid/nfc/NdefRecord;
    .locals 5

    const/4 v4, 0x0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "packageName is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "packageName is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Landroid/nfc/NdefRecord;

    sget-object v1, Landroid/nfc/NdefRecord;->RTD_ANDROID_APP:[B

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    const/4 v3, 0x4

    invoke-direct {v0, v3, v1, v4, v2}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v0
.end method

.method public static createExternal(Ljava/lang/String;Ljava/lang/String;[B)Landroid/nfc/NdefRecord;
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    if-nez p0, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "domain is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    if-nez p1, :cond_1

    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "type is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "domain is empty"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "type is empty"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    array-length v3, v1

    add-int/lit8 v3, v3, 0x1

    array-length v4, v2

    add-int/2addr v3, v4

    new-array v0, v3, [B

    array-length v3, v1

    invoke-static {v1, v5, v0, v5, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v3, v1

    const/16 v4, 0x3a

    aput-byte v4, v0, v3

    array-length v3, v1

    add-int/lit8 v3, v3, 0x1

    array-length v4, v2

    invoke-static {v2, v5, v0, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    new-instance v3, Landroid/nfc/NdefRecord;

    const/4 v4, 0x4

    invoke-direct {v3, v4, v0, v6, p2}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v3
.end method

.method public static createMime(Ljava/lang/String;[B)Landroid/nfc/NdefRecord;
    .locals 5

    const/4 v4, 0x0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "mimeType is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-static {p0}, Landroid/content/Intent;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "mimeType is empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-nez v0, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "mimeType must have major type"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_3

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "mimeType must have minor type"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    new-instance v2, Landroid/nfc/NdefRecord;

    const/4 v3, 0x2

    invoke-direct {v2, v3, v1, v4, p1}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v2
.end method

.method public static createTextRecord(Ljava/lang/String;Ljava/lang/String;)Landroid/nfc/NdefRecord;
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    const-string/jumbo v5, "text is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    sget-object v4, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    :goto_0
    array-length v4, v1

    const/16 v5, 0x40

    if-lt v4, v5, :cond_2

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "language code is too long, must be <64 bytes."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    goto :goto_0

    :cond_2
    array-length v4, v1

    add-int/lit8 v4, v4, 0x1

    array-length v5, v3

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    array-length v4, v1

    and-int/lit16 v4, v4, 0xff

    int-to-byte v2, v4

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    new-instance v4, Landroid/nfc/NdefRecord;

    sget-object v5, Landroid/nfc/NdefRecord;->RTD_TEXT:[B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-direct {v4, v8, v5, v7, v6}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v4
.end method

.method public static createUri(Landroid/net/Uri;)Landroid/nfc/NdefRecord;
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-nez p0, :cond_0

    new-instance v5, Ljava/lang/NullPointerException;

    const-string/jumbo v6, "uri is null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "uri is empty"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    const/4 v1, 0x0

    const/4 v0, 0x1

    :goto_0
    sget-object v5, Landroid/nfc/NdefRecord;->URI_PREFIX_MAP:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_2

    sget-object v5, Landroid/nfc/NdefRecord;->URI_PREFIX_MAP:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    int-to-byte v1, v0

    sget-object v5, Landroid/nfc/NdefRecord;->URI_PREFIX_MAP:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    :cond_2
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    array-length v5, v3

    add-int/lit8 v5, v5, 0x1

    new-array v2, v5, [B

    aput-byte v1, v2, v6

    array-length v5, v3

    invoke-static {v3, v6, v2, v7, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    new-instance v5, Landroid/nfc/NdefRecord;

    sget-object v6, Landroid/nfc/NdefRecord;->RTD_URI:[B

    invoke-direct {v5, v7, v6, v8, v2}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v5

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static createUri(Ljava/lang/String;)Landroid/nfc/NdefRecord;
    .locals 1

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/NdefRecord;->createUri(Landroid/net/Uri;)Landroid/nfc/NdefRecord;

    move-result-object v0

    return-object v0
.end method

.method private static ensureSanePayloadSize(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/nfc/FormatException;
        }
    .end annotation

    const-wide/32 v0, 0xa00000

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    new-instance v0, Landroid/nfc/FormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "payload above max limit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/high16 v2, 0xa00000

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method static parse(Ljava/nio/ByteBuffer;Z)[Landroid/nfc/NdefRecord;
    .locals 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/nfc/FormatException;
        }
    .end annotation

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    const/16 v25, 0x0

    const/4 v11, 0x0

    const/16 v19, 0x0

    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v14, 0x0

    const/4 v5, -0x1

    const/16 v16, 0x0

    :cond_0
    :goto_0
    if-nez v16, :cond_1d

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v9

    and-int/lit8 v27, v9, -0x80

    if-eqz v27, :cond_1

    const/4 v15, 0x1

    :goto_1
    and-int/lit8 v27, v9, 0x40

    if-eqz v27, :cond_2

    const/16 v16, 0x1

    :goto_2
    and-int/lit8 v27, v9, 0x20

    if-eqz v27, :cond_3

    const/4 v4, 0x1

    :goto_3
    and-int/lit8 v27, v9, 0x10

    if-eqz v27, :cond_4

    const/16 v23, 0x1

    :goto_4
    and-int/lit8 v27, v9, 0x8

    if-eqz v27, :cond_5

    const/4 v13, 0x1

    :goto_5
    and-int/lit8 v27, v9, 0x7

    move/from16 v0, v27

    int-to-short v0, v0

    move/from16 v24, v0

    if-nez v15, :cond_6

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v27

    if-nez v27, :cond_6

    xor-int/lit8 v27, v14, 0x1

    if-eqz v27, :cond_6

    xor-int/lit8 v27, p1, 0x1

    if-eqz v27, :cond_6

    new-instance v27, Landroid/nfc/FormatException;

    const-string/jumbo v28, "expected MB flag"

    invoke-direct/range {v27 .. v28}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v27
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v7

    new-instance v27, Landroid/nfc/FormatException;

    const-string/jumbo v28, "expected more data"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v7}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v27

    :cond_1
    const/4 v15, 0x0

    goto :goto_1

    :cond_2
    const/16 v16, 0x0

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    :cond_4
    const/16 v23, 0x0

    goto :goto_4

    :cond_5
    const/4 v13, 0x0

    goto :goto_5

    :cond_6
    if-eqz v15, :cond_8

    :try_start_1
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v27

    if-nez v27, :cond_7

    if-eqz v14, :cond_8

    :cond_7
    xor-int/lit8 v27, p1, 0x1

    if-eqz v27, :cond_8

    new-instance v27, Landroid/nfc/FormatException;

    const-string/jumbo v28, "unexpected MB flag"

    invoke-direct/range {v27 .. v28}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v27

    :cond_8
    if-eqz v14, :cond_9

    if-eqz v13, :cond_9

    new-instance v27, Landroid/nfc/FormatException;

    const-string/jumbo v28, "unexpected IL flag in non-leading chunk"

    invoke-direct/range {v27 .. v28}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v27

    :cond_9
    if-eqz v4, :cond_a

    if-eqz v16, :cond_a

    new-instance v27, Landroid/nfc/FormatException;

    const-string/jumbo v28, "unexpected ME flag in non-trailing chunk"

    invoke-direct/range {v27 .. v28}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v27

    :cond_a
    if-eqz v14, :cond_b

    const/16 v27, 0x6

    move/from16 v0, v24

    move/from16 v1, v27

    if-eq v0, v1, :cond_b

    new-instance v27, Landroid/nfc/FormatException;

    const-string/jumbo v28, "expected TNF_UNCHANGED in non-leading chunk"

    invoke-direct/range {v27 .. v28}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v27

    :cond_b
    if-nez v14, :cond_c

    const/16 v27, 0x6

    move/from16 v0, v24

    move/from16 v1, v27

    if-ne v0, v1, :cond_c

    new-instance v27, Landroid/nfc/FormatException;

    const-string/jumbo v28, "unexpected TNF_UNCHANGED in first chunk or unchunked record"

    invoke-direct/range {v27 .. v28}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v27

    :cond_c
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v27

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    if-eqz v23, :cond_d

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v27

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v20, v0

    :goto_6
    if-eqz v13, :cond_e

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v27

    move/from16 v0, v27

    and-int/lit16 v12, v0, 0xff

    :goto_7
    if-eqz v14, :cond_f

    if-eqz v26, :cond_f

    new-instance v27, Landroid/nfc/FormatException;

    const-string/jumbo v28, "expected zero-length type in non-leading chunk"

    invoke-direct/range {v27 .. v28}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v27

    :cond_d
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v27

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v28, v0

    const-wide v30, 0xffffffffL

    and-long v20, v28, v30

    goto :goto_6

    :cond_e
    const/4 v12, 0x0

    goto :goto_7

    :cond_f
    if-nez v14, :cond_10

    if-lez v26, :cond_11

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v25, v0

    :goto_8
    if-lez v12, :cond_12

    new-array v11, v12, [B

    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    :cond_10
    invoke-static/range {v20 .. v21}, Landroid/nfc/NdefRecord;->ensureSanePayloadSize(J)V

    const-wide/16 v28, 0x0

    cmp-long v27, v20, v28

    if-lez v27, :cond_13

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    new-array v0, v0, [B

    move-object/from16 v19, v0

    :goto_a
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    if-eqz v4, :cond_15

    xor-int/lit8 v27, v14, 0x1

    if-eqz v27, :cond_15

    if-nez v26, :cond_14

    const/16 v27, 0x5

    move/from16 v0, v24

    move/from16 v1, v27

    if-eq v0, v1, :cond_14

    new-instance v27, Landroid/nfc/FormatException;

    const-string/jumbo v28, "expected non-zero type length in first chunk"

    invoke-direct/range {v27 .. v28}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v27

    :cond_11
    sget-object v25, Landroid/nfc/NdefRecord;->EMPTY_BYTE_ARRAY:[B

    goto :goto_8

    :cond_12
    sget-object v11, Landroid/nfc/NdefRecord;->EMPTY_BYTE_ARRAY:[B

    goto :goto_9

    :cond_13
    sget-object v19, Landroid/nfc/NdefRecord;->EMPTY_BYTE_ARRAY:[B

    goto :goto_a

    :cond_14
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    move/from16 v5, v24

    :cond_15
    if-nez v4, :cond_16

    if-eqz v14, :cond_17

    :cond_16
    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    if-nez v4, :cond_1a

    if-eqz v14, :cond_1a

    const-wide/16 v20, 0x0

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_b
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_18

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [B

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v28, v0

    add-long v20, v20, v28

    goto :goto_b

    :cond_18
    invoke-static/range {v20 .. v21}, Landroid/nfc/NdefRecord;->ensureSanePayloadSize(J)V

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    new-array v0, v0, [B

    move-object/from16 v19, v0

    const/4 v10, 0x0

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_c
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_19

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [B

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v28

    move-object/from16 v2, v19

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v10, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v27, v0

    add-int v10, v10, v27

    goto :goto_c

    :cond_19
    move/from16 v24, v5

    :cond_1a
    if-eqz v4, :cond_1b

    const/4 v14, 0x1

    goto/16 :goto_0

    :cond_1b
    const/4 v14, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v19

    invoke-static {v0, v1, v11, v2}, Landroid/nfc/NdefRecord;->validateTnf(S[B[B[B)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1c

    new-instance v27, Landroid/nfc/FormatException;

    move-object/from16 v0, v27

    invoke-direct {v0, v8}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v27

    :cond_1c
    new-instance v27, Landroid/nfc/NdefRecord;

    move-object/from16 v0, v27

    move/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v11, v3}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p1, :cond_0

    :cond_1d
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v27

    move/from16 v0, v27

    new-array v0, v0, [Landroid/nfc/NdefRecord;

    move-object/from16 v27, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v27

    check-cast v27, [Landroid/nfc/NdefRecord;

    return-object v27
.end method

.method private parseWktUri()Landroid/net/Uri;
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v3, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    array-length v3, v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    return-object v6

    :cond_0
    iget-object v3, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    aget-byte v3, v3, v5

    and-int/lit8 v1, v3, -0x1

    if-ltz v1, :cond_1

    sget-object v3, Landroid/nfc/NdefRecord;->URI_PREFIX_MAP:[Ljava/lang/String;

    array-length v3, v3

    if-lt v1, v3, :cond_2

    :cond_1
    return-object v6

    :cond_2
    sget-object v3, Landroid/nfc/NdefRecord;->URI_PREFIX_MAP:[Ljava/lang/String;

    aget-object v0, v3, v1

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    iget-object v4, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    array-length v4, v4

    const/4 v5, 0x1

    invoke-static {v3, v5, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    return-object v3
.end method

.method private toUri(Z)Landroid/net/Uri;
    .locals 10

    const/4 v5, 0x0

    iget-short v6, p0, Landroid/nfc/NdefRecord;->mTnf:S

    packed-switch v6, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-object v5

    :pswitch_1
    iget-object v6, p0, Landroid/nfc/NdefRecord;->mType:[B

    sget-object v7, Landroid/nfc/NdefRecord;->RTD_SMART_POSTER:[B

    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_2

    xor-int/lit8 v6, p1, 0x1

    if-eqz v6, :cond_2

    :try_start_0
    new-instance v1, Landroid/nfc/NdefMessage;

    iget-object v6, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    invoke-direct {v1, v6}, Landroid/nfc/NdefMessage;-><init>([B)V

    invoke-virtual {v1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v7

    const/4 v6, 0x0

    array-length v8, v7

    :goto_1
    if-ge v6, v8, :cond_0

    aget-object v2, v7, v6

    const/4 v9, 0x1

    invoke-direct {v2, v9}, Landroid/nfc/NdefRecord;->toUri(Z)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/nfc/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-eqz v3, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    iget-object v6, p0, Landroid/nfc/NdefRecord;->mType:[B

    sget-object v7, Landroid/nfc/NdefRecord;->RTD_URI:[B

    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-direct {p0}, Landroid/nfc/NdefRecord;->parseWktUri()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    move-result-object v5

    :cond_3
    return-object v5

    :pswitch_2
    new-instance v5, Ljava/lang/String;

    iget-object v6, p0, Landroid/nfc/NdefRecord;->mType:[B

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    move-result-object v5

    return-object v5

    :pswitch_3
    if-nez p1, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "vnd.android.nfc://ext/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    iget-object v7, p0, Landroid/nfc/NdefRecord;->mType:[B

    sget-object v8, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v6, v7, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    return-object v5

    :catch_0
    move-exception v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static validateTnf(S[B[B[B)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x0

    packed-switch p0, :pswitch_data_0

    const-string/jumbo v0, "unexpected tnf value: 0x%02x"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    array-length v0, p1

    if-nez v0, :cond_0

    array-length v0, p2

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "unexpected data in TNF_EMPTY record"

    return-object v0

    :cond_1
    array-length v0, p3

    if-nez v0, :cond_0

    return-object v1

    :pswitch_1
    return-object v1

    :pswitch_2
    array-length v0, p1

    if-eqz v0, :cond_2

    const-string/jumbo v0, "unexpected type field in TNF_UNKNOWN or TNF_RESERVEd record"

    return-object v0

    :cond_2
    return-object v1

    :pswitch_3
    const-string/jumbo v0, "unexpected TNF_UNCHANGED in first chunk or logical record"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x0

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    if-nez p1, :cond_1

    return v3

    :cond_1
    invoke-virtual {p0}, Landroid/nfc/NdefRecord;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v3

    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/nfc/NdefRecord;

    iget-object v1, p0, Landroid/nfc/NdefRecord;->mId:[B

    iget-object v2, v0, Landroid/nfc/NdefRecord;->mId:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    :cond_3
    iget-object v1, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    iget-object v2, v0, Landroid/nfc/NdefRecord;->mPayload:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_4

    return v3

    :cond_4
    iget-short v1, p0, Landroid/nfc/NdefRecord;->mTnf:S

    iget-short v2, v0, Landroid/nfc/NdefRecord;->mTnf:S

    if-eq v1, v2, :cond_5

    return v3

    :cond_5
    iget-object v1, p0, Landroid/nfc/NdefRecord;->mType:[B

    iget-object v2, v0, Landroid/nfc/NdefRecord;->mType:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1
.end method

.method getByteLength()I
    .locals 5

    iget-object v3, p0, Landroid/nfc/NdefRecord;->mType:[B

    array-length v3, v3

    add-int/lit8 v3, v3, 0x3

    iget-object v4, p0, Landroid/nfc/NdefRecord;->mId:[B

    array-length v4, v4

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    array-length v4, v4

    add-int v1, v3, v4

    iget-object v3, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    array-length v3, v3

    const/16 v4, 0x100

    if-ge v3, v4, :cond_3

    const/4 v2, 0x1

    :goto_0
    iget-short v3, p0, Landroid/nfc/NdefRecord;->mTnf:S

    if-nez v3, :cond_4

    :cond_0
    const/4 v0, 0x1

    :goto_1
    if-nez v2, :cond_1

    add-int/lit8 v1, v1, 0x3

    :cond_1
    if-eqz v0, :cond_2

    add-int/lit8 v1, v1, 0x1

    :cond_2
    return v1

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    iget-object v3, p0, Landroid/nfc/NdefRecord;->mId:[B

    array-length v3, v3

    if-gtz v3, :cond_0

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getId()[B
    .locals 1

    iget-object v0, p0, Landroid/nfc/NdefRecord;->mId:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getPayload()[B
    .locals 1

    iget-object v0, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getTnf()S
    .locals 1

    iget-short v0, p0, Landroid/nfc/NdefRecord;->mTnf:S

    return v0
.end method

.method public getType()[B
    .locals 1

    iget-object v0, p0, Landroid/nfc/NdefRecord;->mType:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    const/16 v0, 0x1f

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/nfc/NdefRecord;->mId:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int v1, v2, v3

    mul-int/lit8 v2, v1, 0x1f

    iget-short v3, p0, Landroid/nfc/NdefRecord;->mTnf:S

    add-int v1, v2, v3

    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Landroid/nfc/NdefRecord;->mType:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int v1, v2, v3

    return v1
.end method

.method public toByteArray()[B
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/nfc/NdefRecord;->getByteLength()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0, v2, v2}, Landroid/nfc/NdefRecord;->writeToByteBuffer(Ljava/nio/ByteBuffer;ZZ)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public toMimeType()Ljava/lang/String;
    .locals 3

    iget-short v1, p0, Landroid/nfc/NdefRecord;->mTnf:S

    packed-switch v1, :pswitch_data_0

    :cond_0
    const/4 v1, 0x0

    return-object v1

    :pswitch_0
    iget-object v1, p0, Landroid/nfc/NdefRecord;->mType:[B

    sget-object v2, Landroid/nfc/NdefRecord;->RTD_TEXT:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "text/plain"

    return-object v1

    :pswitch_1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Landroid/nfc/NdefRecord;->mType:[B

    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v0}, Landroid/content/Intent;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "NdefRecord tnf=%X"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-short v3, p0, Landroid/nfc/NdefRecord;->mTnf:S

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/nfc/NdefRecord;->mType:[B

    array-length v1, v1

    if-lez v1, :cond_0

    const-string/jumbo v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/nfc/NdefRecord;->mType:[B

    invoke-static {v2}, Landroid/nfc/NdefRecord;->bytesToString([B)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Landroid/nfc/NdefRecord;->mId:[B

    array-length v1, v1

    if-lez v1, :cond_1

    const-string/jumbo v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/nfc/NdefRecord;->mId:[B

    invoke-static {v2}, Landroid/nfc/NdefRecord;->bytesToString([B)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    array-length v1, v1

    if-lez v1, :cond_2

    const-string/jumbo v1, " payload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    invoke-static {v2}, Landroid/nfc/NdefRecord;->bytesToString([B)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toUri()Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/nfc/NdefRecord;->toUri(Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method writeToByteBuffer(Ljava/nio/ByteBuffer;ZZ)V
    .locals 6

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    array-length v4, v4

    const/16 v5, 0x100

    if-ge v4, v5, :cond_3

    const/4 v2, 0x1

    :goto_0
    iget-short v4, p0, Landroid/nfc/NdefRecord;->mTnf:S

    if-nez v4, :cond_4

    :cond_0
    const/4 v1, 0x1

    :goto_1
    if-eqz p2, :cond_5

    const/16 v4, -0x80

    move v5, v4

    :goto_2
    if-eqz p3, :cond_6

    const/16 v4, 0x40

    :goto_3
    or-int/2addr v5, v4

    if-eqz v2, :cond_7

    const/16 v4, 0x10

    :goto_4
    or-int/2addr v4, v5

    if-eqz v1, :cond_1

    const/16 v3, 0x8

    :cond_1
    or-int/2addr v3, v4

    iget-short v4, p0, Landroid/nfc/NdefRecord;->mTnf:S

    or-int/2addr v3, v4

    int-to-byte v0, v3

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v3, p0, Landroid/nfc/NdefRecord;->mType:[B

    array-length v3, v3

    int-to-byte v3, v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_8

    iget-object v3, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    array-length v3, v3

    int-to-byte v3, v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :goto_5
    if-eqz v1, :cond_2

    iget-object v3, p0, Landroid/nfc/NdefRecord;->mId:[B

    array-length v3, v3

    int-to-byte v3, v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :cond_2
    iget-object v3, p0, Landroid/nfc/NdefRecord;->mType:[B

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v3, p0, Landroid/nfc/NdefRecord;->mId:[B

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v3, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-void

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    iget-object v4, p0, Landroid/nfc/NdefRecord;->mId:[B

    array-length v4, v4

    if-gtz v4, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_5
    move v5, v3

    goto :goto_2

    :cond_6
    move v4, v3

    goto :goto_3

    :cond_7
    move v4, v3

    goto :goto_4

    :cond_8
    iget-object v3, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    array-length v3, v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_5
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-short v0, p0, Landroid/nfc/NdefRecord;->mTnf:S

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/nfc/NdefRecord;->mType:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/nfc/NdefRecord;->mType:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Landroid/nfc/NdefRecord;->mId:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/nfc/NdefRecord;->mId:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
