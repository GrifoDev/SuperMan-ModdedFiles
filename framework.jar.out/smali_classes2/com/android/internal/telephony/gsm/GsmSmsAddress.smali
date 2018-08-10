.class public Lcom/android/internal/telephony/gsm/GsmSmsAddress;
.super Lcom/android/internal/telephony/SmsAddress;
.source "GsmSmsAddress.java"


# static fields
.field static final DOCOMO:Ljava/lang/String; = "DOCOMO"

.field static final DOCOMO_SMS:Ljava/lang/String; = "DOCOMO SMS"

.field private static final LOG_TAG:Ljava/lang/String; = "GsmSmsAddress"

.field static final NTT_DOCOMO:Ljava/lang/String; = "NTT DOCOMO"

.field static final OFFSET_ADDRESS_LENGTH:I = 0x0

.field static final OFFSET_ADDRESS_VALUE:I = 0x2

.field static final OFFSET_TOA:I = 0x1


# instance fields
.field partofaddress:Ljava/lang/String;


# direct methods
.method public constructor <init>([BII)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v11, 0x6

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/android/internal/telephony/SmsAddress;-><init>()V

    new-array v5, p3, [B

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    invoke-static {p1, p2, v5, v8, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    aget-byte v5, v5, v8

    and-int/lit16 v0, v5, 0xff

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    aget-byte v5, v5, v9

    and-int/lit16 v4, v5, 0xff

    shr-int/lit8 v5, v4, 0x4

    and-int/lit8 v5, v5, 0x7

    iput v5, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->ton:I

    and-int/lit16 v5, v4, 0x80

    const/16 v6, 0x80

    if-eq v5, v6, :cond_0

    new-instance v5, Ljava/text/ParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid TOA - high bit must be set. toa = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, p2, 0x1

    invoke-direct {v5, v6, v7}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v5

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isAlphanumeric()Z

    move-result v5

    if-eqz v5, :cond_3

    mul-int/lit8 v5, v0, 0x4

    div-int/lit8 v1, v5, 0x7

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    invoke-static {v5, v10, v1}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->address:Ljava/lang/String;

    :goto_0
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "SKT"

    aput-object v6, v5, v8

    const-string/jumbo v6, "KTT"

    aput-object v6, v5, v9

    const-string/jumbo v6, "LGT"

    aput-object v6, v5, v10

    const-string/jumbo v6, "KOO"

    const/4 v7, 0x3

    aput-object v6, v5, v7

    invoke-static {v5}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->address:Ljava/lang/String;

    const-string/jumbo v6, "+"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    const-string/jumbo v5, "GsmSmsAddress"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Address Before Replacement = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuffer;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->address:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->address:Ljava/lang/String;

    const-string/jumbo v6, "+"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    const-string/jumbo v5, "+"

    invoke-virtual {v3, v8, v5}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->address:Ljava/lang/String;

    const-string/jumbo v5, "GsmSmsAddress"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Address after Replacement = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v5

    const-string/jumbo v6, "CscFeature_RIL_SmsNttRequirement"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v11, :cond_5

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v5, v8, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->partofaddress:Ljava/lang/String;

    :goto_1
    const-string/jumbo v5, "NTT DOCOMO"

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string/jumbo v5, "NTT DOCOMO"

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "NTT DOCOMO"

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->address:Ljava/lang/String;

    :cond_2
    :goto_2
    return-void

    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    add-int/lit8 v6, p3, -0x1

    aget-byte v2, v5, v6

    and-int/lit8 v5, v0, 0x1

    if-ne v5, v9, :cond_4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    add-int/lit8 v6, p3, -0x1

    aget-byte v7, v5, v6

    or-int/lit16 v7, v7, 0xf0

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    add-int/lit8 v6, p3, -0x1

    invoke-static {v5, v9, v6}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->address:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    add-int/lit8 v6, p3, -0x1

    aput-byte v2, v5, v6

    goto/16 :goto_0

    :cond_5
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->address:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->partofaddress:Ljava/lang/String;

    goto :goto_1

    :cond_6
    const-string/jumbo v5, "DOCOMO SMS"

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string/jumbo v5, "DOCOMO SMS"

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "NTT DOCOMO"

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->address:Ljava/lang/String;

    goto :goto_2

    :cond_7
    const-string/jumbo v5, "DOCOMO"

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string/jumbo v5, "DOCOMO"

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "NTT DOCOMO"

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->address:Ljava/lang/String;

    goto :goto_2

    :cond_8
    const-string/jumbo v5, "DOCOMO"

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->partofaddress:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "DOCOMO"

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->partofaddress:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "NTT DOCOMO"

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->address:Ljava/lang/String;

    goto :goto_2
.end method


# virtual methods
.method public getAddressString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->address:Ljava/lang/String;

    return-object v0
.end method

.method public isAlphanumeric()Z
    .locals 2

    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->ton:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCphsVoiceMessageClear()Z
    .locals 5

    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageIndicatorAddress()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x10

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x90

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public isCphsVoiceMessageIndicatorAddress()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isAlphanumeric()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    aget-byte v2, v2, v0

    and-int/lit8 v2, v2, 0xf

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public isCphsVoiceMessageSet()Z
    .locals 5

    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageIndicatorAddress()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x11

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x91

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public isNetworkSpecific()Z
    .locals 2

    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->ton:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
