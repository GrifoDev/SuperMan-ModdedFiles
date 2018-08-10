.class public Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;
.super Ljava/lang/Object;
.source "GsmSmsCbMessage.java"


# static fields
.field private static final CARRIAGE_RETURN:C = '\r'

.field private static final LANGUAGE_CODES_GROUP_0:[Ljava/lang/String;

.field private static final LANGUAGE_CODES_GROUP_2:[Ljava/lang/String;

.field private static final PDU_BODY_PAGE_LENGTH:I = 0x52


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "de"

    aput-object v1, v0, v4

    const-string/jumbo v1, "en"

    aput-object v1, v0, v5

    const-string/jumbo v1, "it"

    aput-object v1, v0, v6

    const-string/jumbo v1, "fr"

    aput-object v1, v0, v7

    const-string/jumbo v1, "es"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "nl"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "sv"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "da"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "pt"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "fi"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "no"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "el"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "tr"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "hu"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "pl"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const/16 v1, 0xf

    aput-object v3, v0, v1

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->LANGUAGE_CODES_GROUP_0:[Ljava/lang/String;

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "cs"

    aput-object v1, v0, v4

    const-string/jumbo v1, "he"

    aput-object v1, v0, v5

    const-string/jumbo v1, "ar"

    aput-object v1, v0, v6

    const-string/jumbo v1, "ru"

    aput-object v1, v0, v7

    const-string/jumbo v1, "is"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/4 v1, 0x5

    aput-object v3, v0, v1

    const/4 v1, 0x6

    aput-object v3, v0, v1

    const/4 v1, 0x7

    aput-object v3, v0, v1

    const/16 v1, 0x8

    aput-object v3, v0, v1

    const/16 v1, 0x9

    aput-object v3, v0, v1

    const/16 v1, 0xa

    aput-object v3, v0, v1

    const/16 v1, 0xb

    aput-object v3, v0, v1

    const/16 v1, 0xc

    aput-object v3, v0, v1

    const/16 v1, 0xd

    aput-object v3, v0, v1

    const/16 v1, 0xe

    aput-object v3, v0, v1

    const/16 v1, 0xf

    aput-object v3, v0, v1

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->LANGUAGE_CODES_GROUP_2:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSmsCbMessage(Landroid/content/Context;Lcom/android/internal/telephony/gsm/SmsCbHeader;Landroid/telephony/SmsCbLocation;[[B)Landroid/telephony/SmsCbMessage;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isEtwsPrimaryNotification()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/telephony/SmsCbMessage;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getGeographicalScope()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getSerialNumber()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getServiceCategory()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getEtwsInfo()Landroid/telephony/SmsCbEtwsInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/SmsCbEtwsInfo;->getWarningType()I

    move-result v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->getEtwsPrimaryMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getEtwsInfo()Landroid/telephony/SmsCbEtwsInfo;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getCmasInfo()Landroid/telephony/SmsCbCmasInfo;

    move-result-object v11

    const/4 v2, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x3

    move-object/from16 v5, p2

    invoke-direct/range {v1 .. v11}, Landroid/telephony/SmsCbMessage;-><init>(IIILandroid/telephony/SmsCbLocation;ILjava/lang/String;Ljava/lang/String;ILandroid/telephony/SmsCbEtwsInfo;Landroid/telephony/SmsCbCmasInfo;)V

    return-object v1

    :cond_0
    const/4 v7, 0x0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move-object/from16 v0, p3

    array-length v3, v0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v13, p3, v2

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->parseBody(Lcom/android/internal/telephony/gsm/SmsCbHeader;[B)Landroid/util/Pair;

    move-result-object v12

    iget-object v7, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v1, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isEmergencyMessage()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v9, 0x3

    :goto_1
    const-string/jumbo v1, "KPAS"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_RIL_ConfigSmsBroadcastType"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isKpasTestMessage()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v9, 0x3

    :cond_2
    new-instance v1, Landroid/telephony/SmsCbMessage;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getGeographicalScope()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getSerialNumber()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getServiceCategory()I

    move-result v6

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getEtwsInfo()Landroid/telephony/SmsCbEtwsInfo;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getCmasInfo()Landroid/telephony/SmsCbCmasInfo;

    move-result-object v11

    const/4 v2, 0x1

    move-object/from16 v5, p2

    invoke-direct/range {v1 .. v11}, Landroid/telephony/SmsCbMessage;-><init>(IIILandroid/telephony/SmsCbLocation;ILjava/lang/String;Ljava/lang/String;ILandroid/telephony/SmsCbEtwsInfo;Landroid/telephony/SmsCbCmasInfo;)V

    return-object v1

    :cond_3
    const/4 v9, 0x0

    goto :goto_1
.end method

.method public static createSmsCbMessage(Landroid/telephony/SmsCbLocation;[[B)Landroid/telephony/SmsCbMessage;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    new-instance v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;-><init>([B)V

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->createSmsCbMessage(Lcom/android/internal/telephony/gsm/SmsCbHeader;Landroid/telephony/SmsCbLocation;[[B)Landroid/telephony/SmsCbMessage;

    move-result-object v1

    return-object v1
.end method

.method public static createSmsCbMessage(Lcom/android/internal/telephony/gsm/SmsCbHeader;Landroid/telephony/SmsCbLocation;[[B)Landroid/telephony/SmsCbMessage;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v7, 0x0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move-object/from16 v0, p2

    array-length v3, v0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v13, p2, v2

    invoke-static {p0, v13}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->parseBody(Lcom/android/internal/telephony/gsm/SmsCbHeader;[B)Landroid/util/Pair;

    move-result-object v12

    iget-object v7, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v1, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isEmergencyMessage()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v9, 0x3

    :goto_1
    const-string/jumbo v1, "KPAS"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_RIL_ConfigSmsBroadcastType"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isKpasTestMessage()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v9, 0x3

    :cond_1
    new-instance v1, Landroid/telephony/SmsCbMessage;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getGeographicalScope()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getSerialNumber()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getServiceCategory()I

    move-result v6

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getEtwsInfo()Landroid/telephony/SmsCbEtwsInfo;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getCmasInfo()Landroid/telephony/SmsCbCmasInfo;

    move-result-object v11

    const/4 v2, 0x1

    move-object/from16 v5, p1

    invoke-direct/range {v1 .. v11}, Landroid/telephony/SmsCbMessage;-><init>(IIILandroid/telephony/SmsCbLocation;ILjava/lang/String;Ljava/lang/String;ILandroid/telephony/SmsCbEtwsInfo;Landroid/telephony/SmsCbCmasInfo;)V

    return-object v1

    :cond_2
    const/4 v9, 0x0

    goto :goto_1
.end method

.method private static getEtwsPrimaryMessage(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    packed-switch p1, :pswitch_data_0

    const-string/jumbo v1, ""

    return-object v1

    :pswitch_0
    const v1, 0x104030b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_1
    const v1, 0x104030f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_2
    const v1, 0x104030c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_3
    const v1, 0x104030e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_4
    const v1, 0x104030d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static parseBody(Lcom/android/internal/telephony/gsm/SmsCbHeader;[B)Landroid/util/Pair;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/SmsCbHeader;",
            "[B)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v13, 0x52

    const/4 v11, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getDataCodingScheme()I

    move-result v6

    and-int/lit16 v0, v6, 0xf0

    shr-int/lit8 v0, v0, 0x4

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isUmtsFormat()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    aget-byte v8, p1, v0

    array-length v0, p1

    mul-int/lit8 v11, v8, 0x53

    add-int/lit8 v11, v11, 0x7

    if-ge v0, v11, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Pdu length "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, p1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " does not match "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " pages"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    const/4 v1, 0x1

    sget-object v0, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->LANGUAGE_CODES_GROUP_0:[Ljava/lang/String;

    and-int/lit8 v11, v6, 0xf

    aget-object v5, v0, v11

    goto :goto_0

    :pswitch_2
    const/4 v4, 0x1

    and-int/lit8 v0, v6, 0xf

    if-ne v0, v11, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :pswitch_3
    const/4 v1, 0x1

    sget-object v0, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->LANGUAGE_CODES_GROUP_2:[Ljava/lang/String;

    and-int/lit8 v11, v6, 0xf

    aget-object v5, v0, v11

    goto :goto_0

    :pswitch_4
    const/4 v1, 0x1

    goto :goto_0

    :pswitch_5
    and-int/lit8 v0, v6, 0xc

    shr-int/lit8 v0, v0, 0x2

    packed-switch v0, :pswitch_data_1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_6
    const/4 v1, 0x2

    goto :goto_0

    :pswitch_7
    const/4 v1, 0x3

    goto :goto_0

    :pswitch_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unsupported GSM dataCodingScheme "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_9
    and-int/lit8 v0, v6, 0x4

    shr-int/lit8 v0, v0, 0x2

    if-ne v0, v11, :cond_1

    const/4 v1, 0x2

    goto/16 :goto_0

    :cond_1
    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v8, :cond_4

    mul-int/lit8 v0, v7, 0x53

    add-int/lit8 v2, v0, 0x7

    add-int/lit8 v0, v2, 0x52

    aget-byte v3, p1, v0

    if-le v3, v13, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Page length "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " exceeds maximum value "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->unpackBody([BIIIZLjava/lang/String;)Landroid/util/Pair;

    move-result-object v9

    iget-object v5, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v0, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    new-instance v0, Landroid/util/Pair;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v5, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_5
    const/4 v2, 0x6

    array-length v0, p1

    add-int/lit8 v3, v0, -0x6

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->unpackBody([BIIIZLjava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_8
        :pswitch_8
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private static unpackBody([BIIIZLjava/lang/String;)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BIIIZ",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v2, Lcom/android/internal/telephony/gsm/SmsCbHeader;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;-><init>([B)V

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getNumberOfPages()I

    move-result v4

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getPageIndex()I

    move-result v5

    const-string/jumbo v6, "QCOM"

    const-string/jumbo v7, "CMC"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getEtwsInfo()Landroid/telephony/SmsCbEtwsInfo;

    move-result-object v6

    if-eqz v6, :cond_1

    if-ne v4, v5, :cond_1

    const-string/jumbo v6, "GsmSmsCbMessage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Remove padding bit. before length=  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length v6, p0

    add-int/lit8 v3, v6, -0x1

    :goto_0
    if-ltz v3, :cond_0

    aget-byte v6, p0, v3

    if-eqz v6, :cond_4

    :cond_0
    const-string/jumbo v6, "GsmSmsCbMessage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Remove padding bit. after length=  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    packed-switch p1, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    if-eqz v0, :cond_9

    const-string/jumbo v6, "AreaMail"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v7

    const-string/jumbo v8, "CscFeature_RIL_ConfigSmsBroadcastType"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    if-ne v4, v5, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    :goto_2
    if-ltz v3, :cond_3

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0xd

    if-eq v6, v7, :cond_6

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x40

    if-eq v6, v7, :cond_6

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eqz v6, :cond_6

    add-int/lit8 v6, v3, 0x1

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_3
    new-instance v6, Landroid/util/Pair;

    invoke-direct {v6, p5, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6

    :cond_4
    add-int/lit8 v3, v3, -0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :pswitch_1
    mul-int/lit8 v6, p3, 0x8

    div-int/lit8 v6, v6, 0x7

    invoke-static {p0, p2, v6}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v0

    if-eqz p4, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x2

    if-le v6, v7, :cond_2

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p5

    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_2
    if-eqz p4, :cond_5

    array-length v6, p0

    add-int/lit8 v7, p2, 0x2

    if-lt v6, v7, :cond_5

    const/4 v6, 0x2

    invoke-static {p0, p2, v6}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object p5

    add-int/lit8 p2, p2, 0x2

    add-int/lit8 p3, p3, -0x2

    :cond_5
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const v6, 0xfffe

    and-int/2addr v6, p3

    const-string/jumbo v7, "utf-16"

    invoke-direct {v0, p0, p2, v6, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v1

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "Error decoding UTF-16 message"

    invoke-direct {v6, v7, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :cond_6
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    :goto_4
    if-ltz v3, :cond_3

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0xd

    if-eq v6, v7, :cond_8

    add-int/lit8 v6, v3, 0x1

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_8
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    :cond_9
    const-string/jumbo v0, ""

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
