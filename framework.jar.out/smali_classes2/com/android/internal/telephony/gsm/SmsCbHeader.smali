.class public Lcom/android/internal/telephony/gsm/SmsCbHeader;
.super Ljava/lang/Object;
.source "SmsCbHeader.java"


# static fields
.field static final FORMAT_ETWS_PRIMARY:I = 0x3

.field static final FORMAT_GSM:I = 0x1

.field static final FORMAT_UMTS:I = 0x2

.field private static final MESSAGE_TYPE_CBS_MESSAGE:I = 0x1

.field static final PDU_HEADER_LENGTH:I = 0x6

.field private static final PDU_LENGTH_ETWS:I = 0x38

.field private static final PDU_LENGTH_GSM:I = 0x58


# instance fields
.field private final mCmasInfo:Landroid/telephony/SmsCbCmasInfo;

.field private final mDataCodingScheme:I

.field private final mEtwsInfo:Landroid/telephony/SmsCbEtwsInfo;

.field private final mFormat:I

.field private final mGeographicalScope:I

.field private final mMessageIdentifier:I

.field private final mNrOfPages:I

.field private final mPageIndex:I

.field private final mSerialNumber:I


# direct methods
.method public constructor <init>([B)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v2, v0

    const/4 v6, 0x6

    if-ge v2, v6, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Illegal PDU"

    invoke-direct {v2, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object/from16 v0, p1

    array-length v2, v0

    const/16 v6, 0x58

    if-gt v2, v6, :cond_9

    const/4 v2, 0x0

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xc0

    ushr-int/lit8 v2, v2, 0x6

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mGeographicalScope:I

    const/4 v2, 0x0

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    const/4 v6, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v2, v6

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mSerialNumber:I

    const/4 v2, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    const/4 v6, 0x3

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v2, v6

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isEtwsMessage()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p1

    array-length v2, v0

    const/16 v6, 0x38

    if-gt v2, v6, :cond_5

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mFormat:I

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mDataCodingScheme:I

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mPageIndex:I

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mNrOfPages:I

    const/4 v2, 0x4

    aget-byte v2, p1, v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    const/4 v4, 0x1

    :goto_0
    const/4 v2, 0x5

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_3

    const/4 v5, 0x1

    :goto_1
    const/4 v2, 0x4

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xfe

    ushr-int/lit8 v3, v2, 0x1

    move-object/from16 v0, p1

    array-length v2, v0

    const/4 v6, 0x6

    if-le v2, v6, :cond_4

    move-object/from16 v0, p1

    array-length v2, v0

    const/4 v6, 0x6

    move-object/from16 v0, p1

    invoke-static {v0, v6, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    :goto_2
    new-instance v2, Landroid/telephony/SmsCbEtwsInfo;

    const/4 v6, 0x1

    invoke-direct/range {v2 .. v7}, Landroid/telephony/SmsCbEtwsInfo;-><init>(IZZZ[B)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mEtwsInfo:Landroid/telephony/SmsCbEtwsInfo;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mCmasInfo:Landroid/telephony/SmsCbCmasInfo;

    return-void

    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    goto :goto_2

    :cond_5
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mFormat:I

    const/4 v2, 0x4

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mDataCodingScheme:I

    const/4 v2, 0x5

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xf0

    ushr-int/lit8 v17, v2, 0x4

    const/4 v2, 0x5

    aget-byte v2, p1, v2

    and-int/lit8 v16, v2, 0xf

    if-eqz v17, :cond_6

    if-nez v16, :cond_8

    :cond_6
    :goto_3
    const/16 v17, 0x1

    const/16 v16, 0x1

    :cond_7
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mPageIndex:I

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mNrOfPages:I

    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isEtwsMessage()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isEtwsEmergencyUserAlert()Z

    move-result v4

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isEtwsPopupAlert()Z

    move-result v5

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getEtwsWarningType()I

    move-result v3

    new-instance v8, Landroid/telephony/SmsCbEtwsInfo;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-direct/range {v8 .. v13}, Landroid/telephony/SmsCbEtwsInfo;-><init>(IZZZ[B)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mEtwsInfo:Landroid/telephony/SmsCbEtwsInfo;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mCmasInfo:Landroid/telephony/SmsCbCmasInfo;

    :goto_5
    return-void

    :cond_8
    move/from16 v0, v17

    move/from16 v1, v16

    if-le v0, v1, :cond_7

    goto :goto_3

    :cond_9
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mFormat:I

    const/4 v2, 0x0

    aget-byte v15, p1, v2

    const/4 v2, 0x1

    if-eq v15, v2, :cond_a

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unsupported message type "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_a
    const/4 v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    const/4 v6, 0x2

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v2, v6

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    const/4 v2, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xc0

    ushr-int/lit8 v2, v2, 0x6

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mGeographicalScope:I

    const/4 v2, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    const/4 v6, 0x4

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v2, v6

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mSerialNumber:I

    const/4 v2, 0x5

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mDataCodingScheme:I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mPageIndex:I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mNrOfPages:I

    goto/16 :goto_4

    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isCmasMessage()Z

    move-result v2

    if-nez v2, :cond_c

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isEuAlertMessage()Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getCmasMessageClass()I

    move-result v9

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getCmasSeverity()I

    move-result v12

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getCmasUrgency()I

    move-result v13

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getCmasCertainty()I

    move-result v14

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mEtwsInfo:Landroid/telephony/SmsCbEtwsInfo;

    new-instance v8, Landroid/telephony/SmsCbCmasInfo;

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-direct/range {v8 .. v14}, Landroid/telephony/SmsCbCmasInfo;-><init>(IIIIII)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mCmasInfo:Landroid/telephony/SmsCbCmasInfo;

    goto/16 :goto_5

    :cond_d
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mEtwsInfo:Landroid/telephony/SmsCbEtwsInfo;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mCmasInfo:Landroid/telephony/SmsCbCmasInfo;

    goto/16 :goto_5
.end method

.method private getCmasCertainty()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, -0x1

    return v0

    :pswitch_1
    const/4 v0, 0x0

    return v0

    :pswitch_2
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1113
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getCmasMessageClass()I
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    sparse-switch v1, :sswitch_data_0

    return v3

    :sswitch_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_Message_CMASOperator"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "la-cho"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "la-tfg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return v4

    :cond_1
    return v3

    :sswitch_1
    return v4

    :sswitch_2
    const/4 v1, 0x1

    return v1

    :sswitch_3
    const/4 v1, 0x2

    return v1

    :sswitch_4
    const/4 v1, 0x3

    return v1

    :sswitch_5
    const/4 v1, 0x4

    return v1

    :sswitch_6
    const/4 v1, 0x5

    return v1

    :sswitch_7
    const/4 v1, 0x6

    return v1

    :sswitch_8
    const/4 v1, 0x7

    return v1

    :sswitch_data_0
    .sparse-switch
        0x397 -> :sswitch_0
        0x1112 -> :sswitch_1
        0x1113 -> :sswitch_2
        0x1114 -> :sswitch_2
        0x1115 -> :sswitch_3
        0x1116 -> :sswitch_3
        0x1117 -> :sswitch_3
        0x1118 -> :sswitch_3
        0x1119 -> :sswitch_3
        0x111a -> :sswitch_3
        0x111b -> :sswitch_4
        0x111c -> :sswitch_5
        0x111d -> :sswitch_6
        0x111e -> :sswitch_7
        0x111f -> :sswitch_1
        0x1120 -> :sswitch_2
        0x1121 -> :sswitch_2
        0x1122 -> :sswitch_3
        0x1123 -> :sswitch_3
        0x1124 -> :sswitch_3
        0x1125 -> :sswitch_3
        0x1126 -> :sswitch_3
        0x1127 -> :sswitch_3
        0x1128 -> :sswitch_4
        0x1129 -> :sswitch_5
        0x112a -> :sswitch_6
        0x112b -> :sswitch_7
        0x1900 -> :sswitch_8
    .end sparse-switch
.end method

.method private getCmasSeverity()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, -0x1

    return v0

    :pswitch_1
    const/4 v0, 0x0

    return v0

    :pswitch_2
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1113
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private getCmasUrgency()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, -0x1

    return v0

    :pswitch_1
    const/4 v0, 0x0

    return v0

    :pswitch_2
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1113
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private getEtwsWarningType()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    add-int/lit16 v0, v0, -0x1100

    return v0
.end method

.method private isCmasMessage()Z
    .locals 8

    const/16 v7, 0x397

    const/16 v6, 0x112f

    const/16 v5, 0x1112

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string/jumbo v4, "CscFeature_Message_CMASOperator"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "la-cho"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "la-tfg"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_0
    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    if-eq v3, v7, :cond_1

    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    if-lt v3, v5, :cond_3

    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    if-gt v3, v6, :cond_2

    :cond_1
    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    const-string/jumbo v3, "la-pet"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    const/16 v4, 0x207

    if-eq v3, v4, :cond_5

    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    if-ne v3, v7, :cond_6

    :cond_5
    :goto_1
    return v1

    :cond_6
    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    if-lt v3, v5, :cond_7

    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    if-le v3, v6, :cond_5

    move v1, v2

    goto :goto_1

    :cond_7
    move v1, v2

    goto :goto_1

    :cond_8
    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    if-lt v3, v5, :cond_9

    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    if-gt v3, v6, :cond_9

    move v2, v1

    :cond_9
    return v2
.end method

.method private isEtwsEmergencyUserAlert()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mSerialNumber:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isEtwsMessage()Z
    .locals 2

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    const v1, 0xfff8

    and-int/2addr v0, v1

    const/16 v1, 0x1100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEtwsPopupAlert()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mSerialNumber:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isEuAlertMessage()Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    const/16 v2, 0x1112

    if-lt v1, v2, :cond_1

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    const/16 v2, 0x112f

    if-gt v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    const/16 v2, 0x1900

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method getCmasInfo()Landroid/telephony/SmsCbCmasInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mCmasInfo:Landroid/telephony/SmsCbCmasInfo;

    return-object v0
.end method

.method getDataCodingScheme()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mDataCodingScheme:I

    return v0
.end method

.method getEtwsInfo()Landroid/telephony/SmsCbEtwsInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mEtwsInfo:Landroid/telephony/SmsCbEtwsInfo;

    return-object v0
.end method

.method getGeographicalScope()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mGeographicalScope:I

    return v0
.end method

.method getNumberOfPages()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mNrOfPages:I

    return v0
.end method

.method getPageIndex()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mPageIndex:I

    return v0
.end method

.method getSerialNumber()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mSerialNumber:I

    return v0
.end method

.method getServiceCategory()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    return v0
.end method

.method isEmergencyMessage()Z
    .locals 8

    const/16 v7, 0x397

    const/16 v6, 0x207

    const/16 v5, 0x1112

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string/jumbo v4, "CscFeature_Message_CMASOperator"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "la-cho"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "la-tfg"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    if-eq v3, v7, :cond_1

    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    if-ne v3, v5, :cond_2

    :cond_1
    return v1

    :cond_2
    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    if-eq v3, v6, :cond_1

    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    const/16 v4, 0x111c

    if-eq v3, v4, :cond_1

    return v2

    :cond_3
    const-string/jumbo v3, "la-pet"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    if-eq v3, v6, :cond_4

    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    if-ne v3, v7, :cond_5

    :cond_4
    :goto_0
    return v1

    :cond_5
    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    if-lt v3, v5, :cond_6

    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    const/16 v4, 0x112f

    if-le v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    :cond_6
    move v1, v2

    goto :goto_0

    :cond_7
    const-string/jumbo v3, "IUS"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    if-eq v3, v5, :cond_8

    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    const/16 v4, 0x1113

    if-ne v3, v4, :cond_9

    :cond_8
    return v2

    :cond_9
    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    const/16 v4, 0x1114

    if-eq v3, v4, :cond_8

    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    const/16 v4, 0x1115

    if-eq v3, v4, :cond_8

    :cond_a
    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    const/16 v4, 0x1100

    if-lt v3, v4, :cond_c

    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    const/16 v4, 0x18ff

    if-gt v3, v4, :cond_c

    :cond_b
    :goto_1
    return v1

    :cond_c
    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    const/16 v4, 0x1900

    if-eq v3, v4, :cond_b

    move v1, v2

    goto :goto_1
.end method

.method isEtwsPrimaryNotification()Z
    .locals 2

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mFormat:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isKpasTestMessage()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v3, "SKT"

    aput-object v3, v2, v1

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    const v3, 0xa000

    if-ne v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v3, "LGT"

    aput-object v3, v2, v1

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    const v3, 0xa16b

    if-ne v2, v3, :cond_2

    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    return v1
.end method

.method isUmtsFormat()Z
    .locals 2

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mFormat:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SmsCbHeader{GS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mGeographicalScope:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", serialNumber=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mSerialNumber:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", messageIdentifier=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", DCS=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mDataCodingScheme:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", page "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mPageIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mNrOfPages:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
