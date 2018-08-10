.class public Landroid/net/wifi/WifiSsid;
.super Ljava/lang/Object;
.source "WifiSsid.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiSsid$1;
    }
.end annotation


# static fields
.field private static final CHARSET_CN:Ljava/lang/String; = "gbk"

.field private static final CHARSET_KOR:Ljava/lang/String; = "ksc5601"

.field private static final CONFIG_CHARSET:Ljava/lang/String;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/WifiSsid;",
            ">;"
        }
    .end annotation
.end field

.field private static final HEX_RADIX:I = 0x10

.field public static final NONE:Ljava/lang/String; = "<unknown ssid>"

.field private static final TAG:Ljava/lang/String; = "WifiSsid"


# instance fields
.field public final octets:Ljava/io/ByteArrayOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Wifi_ConfigEncodingCharSet"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiSsid;->CONFIG_CHARSET:Ljava/lang/String;

    new-instance v0, Landroid/net/wifi/WifiSsid$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiSsid$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiSsid;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/wifi/WifiSsid;)V
    .locals 0

    invoke-direct {p0}, Landroid/net/wifi/WifiSsid;-><init>()V

    return-void
.end method

.method private convertToBytes(Ljava/lang/String;)V
    .locals 10

    const/16 v9, 0x37

    const/16 v8, 0x30

    const/16 v7, 0x10

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_4

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v5, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :pswitch_0
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object v5, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    const/16 v6, 0x22

    invoke-virtual {v5, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :sswitch_1
    iget-object v5, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    const/16 v6, 0x5c

    invoke-virtual {v5, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :sswitch_2
    iget-object v5, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :sswitch_3
    iget-object v5, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    const/16 v6, 0xd

    invoke-virtual {v5, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :sswitch_4
    iget-object v5, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    const/16 v6, 0x9

    invoke-virtual {v5, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :sswitch_5
    iget-object v5, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    const/16 v6, 0x1b

    invoke-virtual {v5, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :sswitch_6
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v3, 0x2

    :try_start_0
    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    :goto_1
    if-gez v4, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    if-ltz v4, :cond_0

    iget-object v5, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v4, -0x1

    goto :goto_1

    :catch_1
    move-exception v1

    const/4 v4, -0x1

    goto :goto_1

    :cond_1
    iget-object v5, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v3, v3, 0x2

    goto/16 :goto_0

    :sswitch_7
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v4, v5, -0x30

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v8, :cond_2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-gt v5, v9, :cond_2

    mul-int/lit8 v5, v4, 0x8

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v4, v5, -0x30

    add-int/lit8 v3, v3, 0x1

    :cond_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v8, :cond_3

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-gt v5, v9, :cond_3

    mul-int/lit8 v5, v4, 0x8

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v4, v5, -0x30

    add-int/lit8 v3, v3, 0x1

    :cond_3
    iget-object v5, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_0

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x5c
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x30 -> :sswitch_7
        0x31 -> :sswitch_7
        0x32 -> :sswitch_7
        0x33 -> :sswitch_7
        0x34 -> :sswitch_7
        0x35 -> :sswitch_7
        0x36 -> :sswitch_7
        0x37 -> :sswitch_7
        0x5c -> :sswitch_1
        0x65 -> :sswitch_5
        0x6e -> :sswitch_2
        0x72 -> :sswitch_3
        0x74 -> :sswitch_4
        0x78 -> :sswitch_6
    .end sparse-switch
.end method

.method public static createFromAsciiEncoded(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;
    .locals 1

    new-instance v0, Landroid/net/wifi/WifiSsid;

    invoke-direct {v0}, Landroid/net/wifi/WifiSsid;-><init>()V

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiSsid;->convertToBytes(Ljava/lang/String;)V

    return-object v0
.end method

.method public static createFromByteArray([B)Landroid/net/wifi/WifiSsid;
    .locals 4

    new-instance v0, Landroid/net/wifi/WifiSsid;

    invoke-direct {v0}, Landroid/net/wifi/WifiSsid;-><init>()V

    if-eqz p0, :cond_0

    iget-object v1, v0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    array-length v2, p0

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_0
    return-object v0
.end method

.method public static createFromHex(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;
    .locals 6

    new-instance v0, Landroid/net/wifi/WifiSsid;

    invoke-direct {v0}, Landroid/net/wifi/WifiSsid;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v4, "0x"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "0X"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_3

    add-int/lit8 v4, v2, 0x2

    :try_start_0
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :goto_1
    iget-object v4, v0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method private isArrayAllZeroes([B)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-byte v1, p1, v0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method static isUCNVString([BI)Z
    .locals 7

    const/16 v6, 0xff

    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_3

    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    int-to-char v0, v4

    const/16 v4, 0x81

    if-lt v0, v4, :cond_2

    if-ge v0, v6, :cond_2

    add-int/lit8 v4, v2, 0x1

    if-ge v4, p1, :cond_2

    add-int/lit8 v4, v2, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    int-to-char v1, v4

    const/16 v4, 0x40

    if-lt v1, v4, :cond_1

    if-ge v1, v6, :cond_1

    const/16 v4, 0x7f

    if-eq v1, v4, :cond_1

    const/4 v3, 0x0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v5

    :cond_2
    const/16 v4, 0x80

    if-lt v0, v4, :cond_0

    return v5

    :cond_3
    if-eqz v3, :cond_4

    return v5

    :cond_4
    const/4 v4, 0x1

    return v4
.end method

.method static isUTF8String([BJ)Z
    .locals 9

    const/16 v7, 0x80

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v2, 0x0

    :goto_0
    int-to-long v4, v2

    cmp-long v4, v4, p1

    if-gez v4, :cond_9

    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    int-to-char v1, v4

    and-int/lit16 v4, v1, 0x80

    if-eqz v4, :cond_0

    const/4 v0, 0x0

    :cond_0
    if-nez v3, :cond_7

    if-lt v1, v7, :cond_1

    const/16 v4, 0xfc

    if-lt v1, v4, :cond_2

    const/16 v4, 0xfd

    if-gt v1, v4, :cond_2

    const/4 v3, 0x6

    :goto_1
    add-int/lit8 v3, v3, -0x1

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/16 v4, 0xf8

    if-lt v1, v4, :cond_3

    const/4 v3, 0x5

    goto :goto_1

    :cond_3
    const/16 v4, 0xf0

    if-lt v1, v4, :cond_4

    const/4 v3, 0x4

    goto :goto_1

    :cond_4
    const/16 v4, 0xe0

    if-lt v1, v4, :cond_5

    const/4 v3, 0x3

    goto :goto_1

    :cond_5
    const/16 v4, 0xc0

    if-lt v1, v4, :cond_6

    const/4 v3, 0x2

    goto :goto_1

    :cond_6
    return v6

    :cond_7
    and-int/lit16 v4, v1, 0xc0

    if-eq v4, v7, :cond_8

    return v6

    :cond_8
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_9
    if-gtz v3, :cond_a

    if-eqz v0, :cond_b

    :cond_a
    return v6

    :cond_b
    const/4 v4, 0x1

    return v4
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getHexString()Ljava/lang/String;
    .locals 9

    const/4 v8, 0x0

    const-string/jumbo v1, "0x"

    invoke-virtual {p0}, Landroid/net/wifi/WifiSsid;->getOctets()[B

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aget-byte v7, v2, v0

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    if-lez v3, :cond_1

    :goto_1
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getOctets()[B
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public isHidden()Z
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiSsid;->isArrayAllZeroes([B)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    iget-object v10, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    iget-object v10, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v10

    if-lez v10, :cond_0

    invoke-direct {p0, v7}, Landroid/net/wifi/WifiSsid;->isArrayAllZeroes([B)Z

    move-result v10

    if-eqz v10, :cond_1

    :cond_0
    const-string/jumbo v10, ""

    return-object v10

    :cond_1
    const-string/jumbo v10, "UTF-8"

    invoke-static {v10}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v10

    sget-object v11, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v10, v11}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v10

    sget-object v11, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v10, v11}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v2

    const/16 v10, 0x20

    invoke-static {v10}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v5

    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v2, v10, v5, v11}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v6

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v6}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v10

    if-eqz v10, :cond_2

    const-string/jumbo v10, "<unknown ssid>"

    return-object v10

    :cond_2
    invoke-virtual {v5}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v8, ""

    iget-object v10, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    const-string/jumbo v10, "gbk"

    sget-object v11, Landroid/net/wifi/WifiSsid;->CONFIG_CHARSET:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string/jumbo v10, "ksc5601"

    sget-object v11, Landroid/net/wifi/WifiSsid;->CONFIG_CHARSET:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    :cond_3
    int-to-long v10, v4

    invoke-static {v7, v10, v11}, Landroid/net/wifi/WifiSsid;->isUTF8String([BJ)Z

    move-result v10

    if-nez v10, :cond_5

    invoke-static {v7, v4}, Landroid/net/wifi/WifiSsid;->isUCNVString([BI)Z

    move-result v10

    if-eqz v10, :cond_5

    :try_start_0
    const-string/jumbo v10, "gbk"

    sget-object v11, Landroid/net/wifi/WifiSsid;->CONFIG_CHARSET:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    new-instance v9, Ljava/lang/String;

    const-string/jumbo v10, "gbk"

    invoke-direct {v9, v7, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object v8, v9

    :goto_0
    move-object v1, v8

    :goto_1
    return-object v1

    :cond_4
    new-instance v9, Ljava/lang/String;

    const-string/jumbo v10, "ksc5601"

    invoke-direct {v9, v7, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v9

    goto :goto_0

    :cond_5
    invoke-virtual {v5}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10

    :cond_6
    invoke-virtual {v5}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10

    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    :cond_0
    return-void
.end method
