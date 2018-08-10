.class public final Landroid/provider/Telephony$Sms$Intents;
.super Ljava/lang/Object;
.source "Telephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony$Sms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Intents"
.end annotation


# static fields
.field public static final ACTION_CHANGE_DEFAULT:Ljava/lang/String; = "android.provider.Telephony.ACTION_CHANGE_DEFAULT"

.field public static final ACTION_DEFAULT_SMS_PACKAGE_CHANGED:Ljava/lang/String; = "android.provider.action.DEFAULT_SMS_PACKAGE_CHANGED"

.field public static final ACTION_EXTERNAL_PROVIDER_CHANGE:Ljava/lang/String; = "android.provider.action.EXTERNAL_PROVIDER_CHANGE"

.field public static final ACTION_KTLBS_DATA_SMS_RECEIVED:Ljava/lang/String; = "com.kt.location.action.KTLBS_DATA_SMS_RECEIVED"

.field public static final ACTION_KT_TWO_PHONE_MANAGE_SMS_RECEIVED:Ljava/lang/String; = "com.kt.menu.action.TWO_CALL_REG_CHANGED"

.field public static final CB_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.CB_RECEIVED"

.field public static final CB_SETTINGS_AVAILABLE_ACTION:Ljava/lang/String; = "com.samsung.provider.Telephony.CB_SETTINGS_AVAILABLE"

.field public static final DATA_SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.intent.action.DATA_SMS_RECEIVED"

.field public static final DEVICE_READY_ACTION:Ljava/lang/String; = "android.provider.Telephony.DEVICE_READY"

.field public static final DIRECTED_SMS_RECEIVED_ACTION:Ljava/lang/String; = "verizon.intent.action.DIRECTED_SMS_RECEIVED"

.field public static final EMERGENCY_CDMA_MESSAGE_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.EMERGENCY_CDMA_MESSAGE_RECEIVED"

.field public static final EXTRA_IS_DEFAULT_SMS_APP:Ljava/lang/String; = "android.provider.extra.IS_DEFAULT_SMS_APP"

.field public static final EXTRA_LMS_TOKEN_CTC:Ljava/lang/String; = "lms_token_ctc"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "package"

.field public static final GET_CB_ERR_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.GET_CB_ERR_RECEIVED"

.field public static final GET_SMSC_ACTION:Ljava/lang/String; = "com.samsung.provider.Telephony.GET_SMSC"

.field public static final IMEI_TRACKER_SMS_RECEIVED_ACTION:Ljava/lang/String; = "com.samsung.provider.Telephony.IMEI_TRACKER_SMS_RECEIVED"

.field public static final LGU_APM_RECEIVED_ACTION:Ljava/lang/String; = "android.lgt.action.APM_SMS_RECEIVED"

.field public static final LGU_FOTA_RECEIVED_ACTION:Ljava/lang/String; = "com.samsung.intent.action.PUSH_CONFIRM"

.field public static final LMS_FIRST_DISPLAY_TIMEOUT_CTC_ACTION:Ljava/lang/String; = "com.samsung.provider.Telephony.LMS_FIRST_DISPLAY_TIMEOUT_CTC"

.field public static final LMS_MAXIMAL_CONNECTION_TIMEOUT_CTC_ACTION:Ljava/lang/String; = "com.samsung.provider.Telephony.LMS_MAXIMAL_CONNECTION_TIMEOUT_CTC"

.field public static final MMS_DOWNLOADED_ACTION:Ljava/lang/String; = "android.provider.Telephony.MMS_DOWNLOADED"

.field public static final NSRISMS_RECEIVED_ACTION:Ljava/lang/String; = "com.samsung.provider.Telephony.SECURITY_SMS_RECEIVED"

.field public static final RESULT_SMS_DSAC_FAIL:I = 0x7

.field public static final RESULT_SMS_DUPLICATE:I = 0x8

.field public static final RESULT_SMS_DUPLICATED:I = 0x5

.field public static final RESULT_SMS_GENERIC_ERROR:I = 0x2

.field public static final RESULT_SMS_HANDLED:I = 0x1

.field public static final RESULT_SMS_MDM_DISCARDED:I = 0xa

.field public static final RESULT_SMS_OUT_OF_MEMORY:I = 0x3

.field public static final RESULT_SMS_SEGMENT:I = 0x9

.field public static final RESULT_SMS_UNSUPPORTED:I = 0x4

.field public static final SET_CB_ERR_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SET_CB_ERR_RECEIVED"

.field public static final SHOW_DATA_SMS_RECEIVED_ACTION:Ljava/lang/String; = "com.kt.show.manger.action.SHOW_DATA_SMS_RECEIVED"

.field public static final SIM_FULL_ACTION:Ljava/lang/String; = "android.provider.Telephony.SIM_FULL"

.field public static final SMS_CARRIER_PROVISION_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_CARRIER_PROVISION"

.field public static final SMS_CB_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_CB_RECEIVED"

.field public static final SMS_CB_RECEIVED_WIFI_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_CB_WIFI_RECEIVED"

.field public static final SMS_DELIVER_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_DELIVER"

.field public static final SMS_EMERGENCY_CB_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_EMERGENCY_CB_RECEIVED"

.field public static final SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"

.field public static final SMS_REJECTED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_REJECTED"

.field public static final SMS_SERVICE_CATEGORY_PROGRAM_DATA_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_SERVICE_CATEGORY_PROGRAM_DATA_RECEIVED"

.field public static final WAP_PUSH_DELIVER_ACTION:Ljava/lang/String; = "android.provider.Telephony.WAP_PUSH_DELIVER"

.field public static final WAP_PUSH_DM_NOTI_RECEIVED_ACTION:Ljava/lang/String; = "com.samsung.provider.Telephony.WAP_PUSH_DM_NOTI_RECEIVED"

.field public static final WAP_PUSH_DS_NOTI_RECEIVED_ACTION:Ljava/lang/String; = "com.samsung.provider.Telephony.WAP_PUSH_DS_NOTI_RECEIVED"

.field public static final WAP_PUSH_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.WAP_PUSH_RECEIVED"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static combineFourBytes([B[BI)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string/jumbo v3, "Telephony"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "combineFourBytes : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-byte v5, p1, v6

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-byte v5, p1, v7

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-byte v5, p0, v6

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-byte v5, p0, v7

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " offset : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const/4 v3, 0x4

    new-array v1, v3, [B

    aget-byte v3, p1, v6

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v6

    aget-byte v3, p1, v7

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v7

    aget-byte v3, p0, p2

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    const/4 v4, 0x2

    aput-byte v3, v1, v4

    add-int/lit8 v3, p2, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    const/4 v4, 0x3

    aput-byte v3, v1, v4

    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "utf-16"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    const-string/jumbo v2, ""

    const-string/jumbo v3, "Telephony"

    const-string/jumbo v4, "implausible UnsupportedEncodingException"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;
    .locals 34

    :try_start_0
    const-string/jumbo v31, "pdus"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v13

    check-cast v13, [Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v13, :cond_0

    const-string/jumbo v31, "Telephony"

    const-string/jumbo v32, "pdus does not exist in the intent"

    invoke-static/range {v31 .. v32}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v31, 0x0

    return-object v31

    :catch_0
    move-exception v3

    const-string/jumbo v31, "Telephony"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "getMessagesFromIntent: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v31, 0x0

    return-object v31

    :cond_0
    const-string/jumbo v31, "format"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v31, "subscription"

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v32

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v27

    const-string/jumbo v31, "Telephony"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, " getMessagesFromIntent sub_id : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    array-length v0, v13

    move/from16 v22, v0

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [B

    move-object/from16 v24, v0

    const/4 v9, 0x0

    const/16 v25, 0x0

    move/from16 v0, v22

    new-array v15, v0, [Landroid/telephony/SmsMessage;

    const/4 v8, 0x0

    :goto_0
    move/from16 v0, v22

    if-ge v8, v0, :cond_10

    aget-object v21, v13, v8

    check-cast v21, [B

    if-eqz v21, :cond_4

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v31, v0

    if-lez v31, :cond_4

    move-object/from16 v0, v21

    invoke-static {v0, v7}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v31

    aput-object v31, v15, v8

    if-eqz v9, :cond_1

    aget-object v31, v15, v8

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/SmsMessageBase;->getUserData()[B

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/provider/Telephony$Sms$Intents;->combineFourBytes([B[BI)Ljava/lang/String;

    move-result-object v26

    aget-object v31, v15, v8

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v12

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const/16 v32, 0x1

    move/from16 v0, v32

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    aget-object v31, v15, v8

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SmsMessageBase;->replaceMessageBody(Ljava/lang/String;)V

    const/4 v9, 0x0

    :cond_1
    aget-object v31, v15, v8

    if-eqz v31, :cond_2

    aget-object v31, v15, v8

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    move-object/from16 v31, v0

    if-eqz v31, :cond_2

    aget-object v31, v15, v8

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/SmsMessageBase;->getIsFourBytesUnicode()Z

    move-result v31

    if-eqz v31, :cond_2

    const-string/jumbo v31, "Telephony"

    const-string/jumbo v32, "Detect multibyte unicode at the end of page"

    invoke-static/range {v31 .. v32}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v31, v15, v8

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/SmsMessageBase;->getLastByte()[B

    move-result-object v11

    const/16 v31, 0x0

    aget-byte v31, v11, v31

    const/16 v32, 0x0

    aput-byte v31, v24, v32

    const/16 v31, 0x1

    aget-byte v31, v11, v31

    const/16 v32, 0x1

    aput-byte v31, v24, v32

    aget-object v31, v15, v8

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/SmsMessageBase;->getBodyOffset()I

    move-result v25

    aget-object v31, v15, v8

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v31, "Telephony"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "messageBody Length : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v31, v15, v8

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    move-object/from16 v31, v0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v32

    add-int/lit8 v32, v32, -0x1

    const/16 v33, 0x0

    move/from16 v0, v33

    move/from16 v1, v32

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lcom/android/internal/telephony/SmsMessageBase;->replaceMessageBody(Ljava/lang/String;)V

    const/4 v9, 0x1

    :cond_2
    invoke-static {}, Landroid/telephony/SmsMessage;->getCDMASmsReassembly()Z

    move-result v31

    if-eqz v31, :cond_4

    const/16 v31, 0x1

    move/from16 v0, v22

    move/from16 v1, v31

    if-le v0, v1, :cond_4

    const/16 v20, 0x0

    const/16 v19, 0x0

    const/16 v28, 0x0

    aget-object v31, v15, v8

    if-eqz v31, :cond_f

    aget-object v31, v15, v8

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    move-object/from16 v31, v0

    if-eqz v31, :cond_f

    aget-object v31, v15, v8

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v28

    const/4 v14, 0x0

    :try_start_1
    const-string/jumbo v31, "("

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_6

    const-string/jumbo v31, ")"

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v31

    if-eqz v31, :cond_6

    const/16 v31, 0x28

    move-object/from16 v0, v28

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v31

    add-int/lit8 v31, v31, 0x1

    const/16 v32, 0x29

    move-object/from16 v0, v28

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v32

    move-object/from16 v0, v28

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const/16 v31, 0x29

    move-object/from16 v0, v28

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v31

    add-int/lit8 v31, v31, 0x2

    move-object/from16 v0, v28

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v28

    :goto_1
    if-eqz v19, :cond_9

    move-object/from16 v14, v28

    const-string/jumbo v31, "/"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v31, v0

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_3

    const/16 v31, 0x0

    :try_start_2
    aget-object v31, v17, v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    const/16 v31, 0x1

    aget-object v31, v17, v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    const/16 v20, 0x1

    :cond_3
    :goto_2
    if-nez v20, :cond_e

    const-string/jumbo v31, "Telephony"

    const-string/jumbo v32, "No pagination found"

    invoke-static/range {v31 .. v32}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_3
    aget-object v31, v15, v8

    if-eqz v31, :cond_5

    aget-object v31, v15, v8

    move-object/from16 v0, v31

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/telephony/SmsMessage;->setSubId(I)V

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_6
    :try_start_3
    const-string/jumbo v31, "["

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_7

    const-string/jumbo v31, "]"

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v31

    if-eqz v31, :cond_7

    const/16 v31, 0x5b

    move-object/from16 v0, v28

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v31

    add-int/lit8 v31, v31, 0x1

    const/16 v32, 0x5d

    move-object/from16 v0, v28

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v32

    move-object/from16 v0, v28

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const/16 v31, 0x5d

    move-object/from16 v0, v28

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v31

    add-int/lit8 v31, v31, 0x2

    move-object/from16 v0, v28

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_1

    :cond_7
    const-string/jumbo v31, "{"

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_8

    const-string/jumbo v31, "}"

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v31

    if-eqz v31, :cond_8

    const/16 v31, 0x7b

    move-object/from16 v0, v28

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v31

    add-int/lit8 v31, v31, 0x1

    const/16 v32, 0x7d

    move-object/from16 v0, v28

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v32

    move-object/from16 v0, v28

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const/16 v31, 0x7d

    move-object/from16 v0, v28

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v31

    add-int/lit8 v31, v31, 0x2

    move-object/from16 v0, v28

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_1

    :cond_8
    const-string/jumbo v31, "Telephony"

    const-string/jumbo v32, "there is no pagination pattern maybe / or of "

    invoke-static/range {v31 .. v32}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v5

    const-string/jumbo v31, "Telephony"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "getMessagesFromIntent : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :catch_2
    move-exception v4

    const-string/jumbo v31, "Telephony"

    const-string/jumbo v32, "there is no pagination yet"

    invoke-static/range {v31 .. v32}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v20, 0x0

    goto/16 :goto_2

    :cond_9
    const-string/jumbo v31, " of "

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v31, v0

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-lt v0, v1, :cond_a

    const-string/jumbo v31, " "

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v31, v0

    const/16 v32, 0x3

    move/from16 v0, v31

    move/from16 v1, v32

    if-lt v0, v1, :cond_a

    const/16 v31, 0x0

    :try_start_4
    aget-object v31, v18, v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    const/16 v31, 0x2

    aget-object v31, v18, v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    const/16 v31, 0x0

    aget-object v31, v18, v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v31

    const/16 v32, 0x2

    aget-object v32, v18, v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    add-int v31, v31, v32

    add-int/lit8 v16, v31, 0x4

    add-int/lit8 v31, v16, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v14

    const/16 v20, 0x1

    :cond_a
    :goto_4
    if-nez v20, :cond_3

    const-string/jumbo v31, "/"

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v31, v0

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-lt v0, v1, :cond_3

    const/16 v31, 0x1

    aget-object v31, v29, v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->toCharArray()[C

    move-result-object v30

    const/16 v31, 0x0

    aget-object v31, v29, v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->toCharArray()[C

    move-result-object v23

    const/4 v6, 0x0

    const/4 v10, 0x0

    :goto_5
    const/16 v31, 0x0

    aget-object v31, v29, v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v31

    add-int/lit8 v31, v31, -0x1

    move/from16 v0, v31

    if-ge v10, v0, :cond_b

    aget-char v31, v23, v10

    invoke-static/range {v31 .. v31}, Ljava/lang/Character;->isDigit(C)Z

    move-result v31

    if-eqz v31, :cond_b

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :catch_3
    move-exception v5

    const-string/jumbo v31, "Telephony"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "extractPagination : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_4
    move-exception v4

    const-string/jumbo v31, "Telephony"

    const-string/jumbo v32, "there is no pagination yet"

    invoke-static/range {v31 .. v32}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_b
    const/16 v31, 0x0

    aget-object v31, v29, v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v31

    add-int/lit8 v31, v31, -0x1

    move/from16 v0, v31

    if-ne v10, v0, :cond_c

    const/4 v6, 0x1

    :cond_c
    const/4 v10, 0x0

    if-eqz v6, :cond_3

    :goto_6
    const/16 v31, 0x1

    aget-object v31, v29, v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v31

    add-int/lit8 v31, v31, -0x1

    move/from16 v0, v31

    if-ge v10, v0, :cond_d

    aget-char v31, v30, v10

    invoke-static/range {v31 .. v31}, Ljava/lang/Character;->isDigit(C)Z

    move-result v31

    if-eqz v31, :cond_d

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_d
    const/16 v31, 0x0

    aget-object v31, v29, v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v31

    add-int v31, v31, v10

    add-int/lit8 v31, v31, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    const/16 v20, 0x1

    goto/16 :goto_2

    :cond_e
    aget-object v31, v15, v8

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/SmsMessageBase;->replaceMessageBody(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_f
    const-string/jumbo v31, "Telephony"

    const-string/jumbo v32, "msgs[i] == null && msgs[i].mWrappedSmsMessage == null "

    invoke-static/range {v31 .. v32}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_10
    return-object v15
.end method
