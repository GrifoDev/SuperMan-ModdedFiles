.class public Lcom/android/internal/telephony/SmsHeader;
.super Ljava/lang/Object;
.source "SmsHeader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SmsHeader$ConcatRef;,
        Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;,
        Lcom/android/internal/telephony/SmsHeader$MiscElt;,
        Lcom/android/internal/telephony/SmsHeader$PortAddrs;,
        Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;
    }
.end annotation


# static fields
.field public static final ELT_ID_APPLICATION_PORT_ADDRESSING_16_BIT:I = 0x5

.field public static final ELT_ID_APPLICATION_PORT_ADDRESSING_8_BIT:I = 0x4

.field public static final ELT_ID_CHARACTER_SIZE_WVG_OBJECT:I = 0x19

.field public static final ELT_ID_COMPRESSION_CONTROL:I = 0x16

.field public static final ELT_ID_CONCATENATED_16_BIT_REFERENCE:I = 0x8

.field public static final ELT_ID_CONCATENATED_8_BIT_REFERENCE:I = 0x0

.field public static final ELT_ID_ENHANCED_VOICE_MAIL_INFORMATION:I = 0x23

.field public static final ELT_ID_EXTENDED_OBJECT:I = 0x14

.field public static final ELT_ID_EXTENDED_OBJECT_DATA_REQUEST_CMD:I = 0x1a

.field public static final ELT_ID_HYPERLINK_FORMAT_ELEMENT:I = 0x21

.field public static final ELT_ID_KT_READ_CONFIRM:I = 0x44

.field public static final ELT_ID_LARGE_ANIMATION:I = 0xe

.field public static final ELT_ID_LARGE_PICTURE:I = 0x10

.field public static final ELT_ID_NATIONAL_LANGUAGE_LOCKING_SHIFT:I = 0x25

.field public static final ELT_ID_NATIONAL_LANGUAGE_SINGLE_SHIFT:I = 0x24

.field public static final ELT_ID_OBJECT_DISTR_INDICATOR:I = 0x17

.field public static final ELT_ID_OPERATOR_CONTROL_ELEMENT:I = 0xc0

.field public static final ELT_ID_PREDEFINED_ANIMATION:I = 0xd

.field public static final ELT_ID_PREDEFINED_SOUND:I = 0xb

.field public static final ELT_ID_REPLY_ADDRESS_ELEMENT:I = 0x22

.field public static final ELT_ID_REUSED_EXTENDED_OBJECT:I = 0x15

.field public static final ELT_ID_RFC_822_EMAIL_HEADER:I = 0x20

.field public static final ELT_ID_SMALL_ANIMATION:I = 0xf

.field public static final ELT_ID_SMALL_PICTURE:I = 0x11

.field public static final ELT_ID_SMSC_CONTROL_PARAMS:I = 0x6

.field public static final ELT_ID_SPECIAL_SMS_MESSAGE_INDICATION:I = 0x1

.field public static final ELT_ID_STANDARD_WVG_OBJECT:I = 0x18

.field public static final ELT_ID_TEXT_FORMATTING:I = 0xa

.field public static final ELT_ID_UDH_SOURCE_INDICATION:I = 0x7

.field public static final ELT_ID_USER_DEFINED_SOUND:I = 0xc

.field public static final ELT_ID_USER_PROMPT_INDICATOR:I = 0x13

.field public static final ELT_ID_VARIABLE_PICTURE:I = 0x12

.field public static final ELT_ID_WIRELESS_CTRL_MSG_PROTOCOL:I = 0x9

.field public static final PORT_KT_APP_MANAGER_MAX:I = 0xc216

.field public static final PORT_KT_APP_MANAGER_MIN:I = 0xc210

.field public static final PORT_KT_TWO_PHONE_CANCEL:I = 0xc402

.field public static final PORT_KT_TWO_PHONE_CHANGE:I = 0xc403

.field public static final PORT_KT_TWO_PHONE_SUBSCRIBE:I = 0xc401

.field public static final PORT_KT_WPS_MESSAGE:I = 0xc221

.field public static final PORT_SKT_COMMON_PUSH_SMS:I = 0x425c

.field public static final PORT_SKT_FINDING_FRIENDS:I = 0x1c6b

.field public static final PORT_SKT_FINDING_LOST_PHONE_CANCEL:I = 0x4200

.field public static final PORT_SKT_FINDING_LOST_PHONE_SUBSCRIBE:I = 0x4201

.field public static final PORT_SKT_FOTA_SMS:I = 0x4244

.field public static final PORT_WAP_PUSH:I = 0xb84

.field public static final PORT_WAP_WSP:I = 0x23f0


# instance fields
.field public concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

.field public ktReadConfirm:Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;

.field public languageShiftTable:I

.field public languageTable:I

.field public miscEltList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/SmsHeader$MiscElt;",
            ">;"
        }
    .end annotation
.end field

.field public portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

.field public safeMessageIndication:Z

.field public specialSmsMsgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;",
            ">;"
        }
    .end annotation
.end field

.field public twoPhoneIndication:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/android/internal/telephony/SmsHeader;->safeMessageIndication:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/SmsHeader;->twoPhoneIndication:Z

    return-void
.end method

.method public static fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;
    .locals 14

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v9, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v9}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v11

    if-lez v11, :cond_6

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    sparse-switch v1, :sswitch_data_0

    new-instance v5, Lcom/android/internal/telephony/SmsHeader$MiscElt;

    invoke-direct {v5}, Lcom/android/internal/telephony/SmsHeader$MiscElt;-><init>()V

    iput v1, v5, Lcom/android/internal/telephony/SmsHeader$MiscElt;->id:I

    new-array v11, v4, [B

    iput-object v11, v5, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    iget-object v11, v5, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    const/4 v12, 0x0

    invoke-virtual {v2, v11, v12, v4}, Ljava/io/ByteArrayInputStream;->read([BII)I

    iget-object v11, v9, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_0
    new-instance v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v11

    iput v11, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v11

    iput v11, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v11

    iput v11, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    const/4 v11, 0x1

    iput-boolean v11, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    iget v11, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    if-eqz v11, :cond_0

    iget v11, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    if-eqz v11, :cond_0

    iget v11, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    iget v12, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    if-gt v11, v12, :cond_0

    iput-object v0, v9, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    goto :goto_0

    :sswitch_1
    new-instance v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v11

    shl-int/lit8 v11, v11, 0x8

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v12

    or-int/2addr v11, v12

    iput v11, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v11

    iput v11, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v11

    iput v11, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    const/4 v11, 0x0

    iput-boolean v11, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    iget v11, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    if-eqz v11, :cond_0

    iget v11, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    if-eqz v11, :cond_0

    iget v11, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    iget v12, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    if-gt v11, v12, :cond_0

    iput-object v0, v9, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    goto/16 :goto_0

    :sswitch_2
    new-instance v7, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v7}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v11

    iput v11, v7, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v11

    iput v11, v7, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    const/4 v11, 0x1

    iput-boolean v11, v7, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    iput-object v7, v9, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    goto/16 :goto_0

    :sswitch_3
    new-instance v7, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v7}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v11

    shl-int/lit8 v11, v11, 0x8

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v12

    or-int/2addr v11, v12

    iput v11, v7, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v11

    shl-int/lit8 v11, v11, 0x8

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v12

    or-int/2addr v11, v12

    iput v11, v7, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    const/4 v11, 0x0

    iput-boolean v11, v7, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    iput-object v7, v9, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    goto/16 :goto_0

    :sswitch_4
    new-instance v3, Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;

    invoke-direct {v3}, Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;-><init>()V

    iput v1, v3, Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;->id:I

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v11

    iput v11, v3, Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;->readConfirmID:I

    iput-object v3, v9, Lcom/android/internal/telephony/SmsHeader;->ktReadConfirm:Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;

    const-string/jumbo v11, "SmsHeader"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "id:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v3, Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;->id:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "readConfirmID"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v3, Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;->readConfirmID:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_5
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v11

    iput v11, v9, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    goto/16 :goto_0

    :sswitch_6
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v11

    iput v11, v9, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    goto/16 :goto_0

    :sswitch_7
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v11

    const-string/jumbo v12, "CscFeature_RIL_DisableSmsVoicemail"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_1

    new-instance v5, Lcom/android/internal/telephony/SmsHeader$MiscElt;

    invoke-direct {v5}, Lcom/android/internal/telephony/SmsHeader$MiscElt;-><init>()V

    iput v1, v5, Lcom/android/internal/telephony/SmsHeader$MiscElt;->id:I

    new-array v11, v4, [B

    iput-object v11, v5, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    iget-object v11, v5, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    const/4 v12, 0x0

    invoke-virtual {v2, v11, v12, v4}, Ljava/io/ByteArrayInputStream;->read([BII)I

    iget-object v11, v9, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_1
    new-instance v10, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;

    invoke-direct {v10}, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;-><init>()V

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v11

    iput v11, v10, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgIndType:I

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v11

    iput v11, v10, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgCount:I

    iget-object v11, v9, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v6

    const-string/jumbo v11, "SmsHeader"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "id: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "value: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v11

    const-string/jumbo v12, "CscFeature_RIL_SmsSafeMessageIndication"

    invoke-virtual {v11, v12}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    const-string/jumbo v11, "ril.simtype"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v11, "4"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    const/4 v11, 0x1

    if-ne v6, v11, :cond_5

    const/4 v11, 0x1

    iput-boolean v11, v9, Lcom/android/internal/telephony/SmsHeader;->safeMessageIndication:Z

    :cond_2
    :goto_1
    const-string/jumbo v11, "SafeMessageIndication"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Received smsHeader.safeMessageIndication: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, v9, Lcom/android/internal/telephony/SmsHeader;->safeMessageIndication:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v11

    const-string/jumbo v12, "CscFeature_Common_SupportTwoPhoneService"

    invoke-virtual {v11, v12}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    and-int/lit8 v11, v6, 0x1

    const/4 v12, 0x1

    if-ne v11, v12, :cond_4

    const/4 v11, 0x1

    iput-boolean v11, v9, Lcom/android/internal/telephony/SmsHeader;->twoPhoneIndication:Z

    :cond_4
    const-string/jumbo v11, "TwoPhoneIndication"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Received smsHeader.twoPhoneIndication: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, v9, Lcom/android/internal/telephony/SmsHeader;->twoPhoneIndication:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v11, "2"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    and-int/lit8 v11, v6, 0x2

    const/4 v12, 0x2

    if-ne v11, v12, :cond_2

    const/4 v11, 0x1

    iput-boolean v11, v9, Lcom/android/internal/telephony/SmsHeader;->safeMessageIndication:Z

    goto :goto_1

    :cond_6
    return-object v9

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_7
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x8 -> :sswitch_1
        0x24 -> :sswitch_5
        0x25 -> :sswitch_6
        0x44 -> :sswitch_4
        0xc0 -> :sswitch_8
    .end sparse-switch
.end method

.method public static toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B
    .locals 14

    const/4 v13, 0x2

    const/4 v12, 0x4

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    iget-object v8, p0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    iget v8, p0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/internal/telephony/SmsHeader;->ktReadConfirm:Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;

    if-nez v8, :cond_0

    iget v8, p0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    if-nez v8, :cond_0

    return-object v9

    :cond_0
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    const/16 v8, 0x8c

    invoke-direct {v4, v8}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iget-object v0, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-eqz v0, :cond_1

    iget-boolean v8, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    if-eqz v8, :cond_5

    invoke-virtual {v4, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v8, 0x3

    invoke-virtual {v4, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget v8, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    invoke-virtual {v4, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_0
    iget v8, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    invoke-virtual {v4, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget v8, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    invoke-virtual {v4, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v5, :cond_2

    iget-boolean v8, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    if-eqz v8, :cond_6

    invoke-virtual {v4, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v4, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget v8, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    invoke-virtual {v4, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget v8, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    invoke-virtual {v4, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_2
    :goto_1
    iget v8, p0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    if-eqz v8, :cond_3

    const/16 v8, 0x24

    invoke-virtual {v4, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v4, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget v8, p0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    invoke-virtual {v4, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_3
    iget v8, p0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    if-eqz v8, :cond_4

    const/16 v8, 0x25

    invoke-virtual {v4, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v4, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget v8, p0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    invoke-virtual {v4, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_4
    iget-object v8, p0, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;

    invoke-virtual {v4, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v4, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget v8, v6, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgIndType:I

    and-int/lit16 v8, v8, 0xff

    invoke-virtual {v4, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget v8, v6, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgCount:I

    and-int/lit16 v8, v8, 0xff

    invoke-virtual {v4, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    :cond_5
    const/16 v8, 0x8

    invoke-virtual {v4, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v4, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget v8, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    ushr-int/lit8 v8, v8, 0x8

    invoke-virtual {v4, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget v8, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    and-int/lit16 v8, v8, 0xff

    invoke-virtual {v4, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_0

    :cond_6
    const/4 v8, 0x5

    invoke-virtual {v4, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v4, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget v8, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    ushr-int/lit8 v8, v8, 0x8

    invoke-virtual {v4, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget v8, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    and-int/lit16 v8, v8, 0xff

    invoke-virtual {v4, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget v8, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    ushr-int/lit8 v8, v8, 0x8

    invoke-virtual {v4, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget v8, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    and-int/lit16 v8, v8, 0xff

    invoke-virtual {v4, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_1

    :cond_7
    iget-object v8, p0, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/SmsHeader$MiscElt;

    iget v8, v2, Lcom/android/internal/telephony/SmsHeader$MiscElt;->id:I

    invoke-virtual {v4, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v8, v2, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    array-length v8, v8

    invoke-virtual {v4, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v8, v2, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    iget-object v9, v2, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    array-length v9, v9

    invoke-virtual {v4, v8, v10, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_3

    :cond_8
    iget-object v1, p0, Lcom/android/internal/telephony/SmsHeader;->ktReadConfirm:Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;

    if-eqz v1, :cond_9

    const/16 v8, 0x44

    invoke-virtual {v4, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v4, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget v8, v1, Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;->readConfirmID:I

    invoke-virtual {v4, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_9
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    return-object v8
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "UserDataHeader "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "{ ConcatRef "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-nez v5, :cond_2

    const-string/jumbo v5, "unset"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string/jumbo v5, ", PortAddrs "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-nez v5, :cond_3

    const-string/jumbo v5, "unset"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    iget v5, p0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    if-eqz v5, :cond_0

    const-string/jumbo v5, ", languageShiftTable="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    iget v5, p0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    if-eqz v5, :cond_1

    const-string/jumbo v5, ", languageTable="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;

    const-string/jumbo v5, ", SpecialSmsMsg "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "{ msgIndType="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgIndType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, ", msgCount="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, " }"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    const-string/jumbo v5, "{ refNumber="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget v6, v6, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, ", msgCount="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget v6, v6, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, ", seqNumber="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget v6, v6, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, ", isEightBits="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget-boolean v6, v6, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v5, " }"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v5, "{ destPort="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v6, v6, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, ", origPort="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v6, v6, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, ", areEightBits="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget-boolean v6, v6, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v5, " }"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/SmsHeader$MiscElt;

    const-string/jumbo v5, ", MiscElt "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "{ id="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/android/internal/telephony/SmsHeader$MiscElt;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, ", length="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, ", data="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    invoke-static {v6}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, " }"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    const-string/jumbo v5, " }"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
