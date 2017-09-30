.class public Lcom/android/incallui/carriermatching/CarrierMatchingUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/carriermatching/CarrierMatchingUtils$CarrierMatchColumns;
    }
.end annotation


# static fields
.field private static final CARRIER_MATCHING_ALWAYS_ASK:Ljava/lang/String; = "carrier_matching_always_ask"

.field private static final CARRIER_MATCHING_STATUS:Ljava/lang/String; = "carrier_matching_status"

.field private static final CARRIER_PROJECTION:[Ljava/lang/String;

.field private static final DISABLE_MATCHING_BY_SIM_CARRIER:I = 0x1

.field private static final INVALID:I = -0x1

.field private static final KEY_RESULT_INFOR:Ljava/lang/String; = "keyResultOfSimAndLog"

.field private static final KEY_RESULT_NEW_NUMBER:Ljava/lang/String; = "keyNewNumber"

.field static final MATCHING_BY_CALL_LOG:I = 0x3

.field static final MATCHING_BY_DEFAULT_SIM:I = 0x4

.field static final MATCHING_BY_SERVICE_STATE:I = 0x1

.field static final MATCHING_BY_SIM_CARRIER:I = 0x2

.field static final NO_MATCHING:I = 0x0

.field static final REASON_TWO_SIM_NO_SERVICE:I = 0x7

.field private static final REASON_VIDEO_CALL:I = 0x5

.field private static final REASON_VOICE_MAIL:I = 0x6

.field private static final SIM1:I = 0x0

.field private static final SIM2:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CarrierMatchingUtils"


# instance fields
.field private callingByOperatorName:Ljava/lang/String;

.field private carrierMatchingBy:I

.field private carrierUri:Landroid/net/Uri;

.field private dialNumber:Ljava/lang/String;

.field private dialToOperatorName:Ljava/lang/String;

.field private isNoMatchingBySimCarrier:Z

.field private isWaitingSwapUseSim:Z

.field private mAccountHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation
.end field

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mSubscriptionInfoArrayList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTelecomManager:Landroid/telecom/TelecomManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private needShowDialingInfo:Z

.field private simNumeric:[Ljava/lang/String;

.field private simState:[I

.field private slotIdCarrierMatching:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "mcc"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "mnc"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "operator"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "prefix_number"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->CARRIER_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->mAccountHandles:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->slotIdCarrierMatching:I

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->simState:[I

    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->simNumeric:[Ljava/lang/String;

    iput v1, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->carrierMatchingBy:I

    iput-boolean v1, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->isWaitingSwapUseSim:Z

    iput-boolean v1, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->needShowDialingInfo:Z

    iput-boolean v1, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->isNoMatchingBySimCarrier:Z

    const-string v0, "content://com.android.contacts/carrier_match"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->carrierUri:Landroid/net/Uri;

    const-string v0, "CarrierMatchingUtils"

    const-string v1, "CarrierMatchingUtils()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->mContext:Landroid/content/Context;

    const-string v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    iput-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->mTelecomManager:Landroid/telecom/TelecomManager;

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method private carrierMatchingBySimAndCallLog(Ljava/util/ArrayList;I)Landroid/os/Bundle;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    const/4 v11, 0x3

    const/4 v6, 0x2

    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    new-array v4, v11, [I

    fill-array-data v4, :array_0

    iget-object v1, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->dialNumber:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->getSlotCarrierMatchingBySimCarrier(Ljava/lang/String;)I

    move-result v5

    aput v5, v4, v8

    aget v5, v4, v8

    if-eq v5, v10, :cond_0

    iget-object v1, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->simNumeric:[Ljava/lang/String;

    aget-object v1, v1, v8

    iget-object v2, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->simNumeric:[Ljava/lang/String;

    aget-object v2, v2, v9

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    aput v10, v4, v8

    aput v9, v4, v6

    :goto_0
    aget v1, v4, v9

    if-nez v1, :cond_3

    aget v1, v4, v6

    if-eq v1, v9, :cond_4

    const v1, 0x7fffffff

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v0

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->getSlotCarrierMatchingByCallLog(Ljava/lang/String;)[I

    move-result-object v6

    aget v7, v6, v8

    if-eq v7, v10, :cond_5

    aget v7, v6, v8

    if-eq v7, p2, :cond_5

    aget v7, v6, v9

    if-ge v7, v1, :cond_5

    aget v1, v6, v9

    aget v2, v6, v8

    aput v2, v4, v8

    aput v11, v4, v9

    move v12, v1

    move-object v1, v0

    move v0, v12

    :goto_2
    move-object v2, v1

    move v1, v0

    goto :goto_1

    :cond_1
    aput v6, v4, v9

    goto :goto_0

    :cond_2
    move-object v0, v2

    :cond_3
    :goto_3
    const-string v1, "keyResultOfSimAndLog"

    invoke-virtual {v3, v1, v4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string v1, "keyNewNumber"

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_4
    invoke-direct {p0, v0}, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->getSlotCarrierMatchingByCallLog(Ljava/lang/String;)[I

    move-result-object v1

    aget v1, v1, v8

    aput v1, v4, v8

    aget v1, v4, v8

    if-eq v1, v10, :cond_3

    aget v1, v4, v8

    if-eq v1, p2, :cond_3

    aput v11, v4, v9

    goto :goto_3

    :cond_5
    move v0, v1

    move-object v1, v2

    goto :goto_2

    :cond_6
    move-object v0, v1

    goto :goto_0

    :array_0
    .array-data 4
        -0x1
        0x0
        0x0
    .end array-data
.end method

.method private carrierMatchingBySimAndCallLog(Ljava/lang/String;)[I
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v3, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-array v0, v7, [I

    fill-array-data v0, :array_0

    invoke-direct {p0, p1}, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->getSlotCarrierMatchingBySimCarrier(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v4

    aget v1, v0, v4

    if-eq v1, v3, :cond_0

    iget-object v1, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->simNumeric:[Ljava/lang/String;

    aget-object v1, v1, v4

    iget-object v2, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->simNumeric:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    aput v3, v0, v4

    aput v5, v0, v6

    :cond_0
    :goto_0
    aget v1, v0, v5

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->getSlotCarrierMatchingByCallLog(Ljava/lang/String;)[I

    move-result-object v1

    aget v1, v1, v4

    aput v1, v0, v4

    aget v1, v0, v4

    if-eq v1, v3, :cond_1

    aput v7, v0, v5

    :cond_1
    const-string v1, "CarrierMatchingUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "carrierMatchingBySimAndCallLog return result[0] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , result[1] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , result[2] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_2
    aput v6, v0, v5

    goto :goto_0

    :array_0
    .array-data 4
        -0x1
        0x0
        0x0
    .end array-data
.end method

.method private getDefaultIdToCalls()I
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "prefered_voice_call"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-string v1, "CarrierMatchingUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDefaultIdToCalls key = prefered_voice_call, value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "CarrierMatchingUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDefaultIdToCalls: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getDialNumberCarrierMatching()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->dialNumber:Ljava/lang/String;

    return-object v0
.end method

.method private getDialOperatorNameFromNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    const-string v3, "prefix_number = ? AND mcc=?"

    invoke-direct {p0, p1}, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->getPrefixFromDialNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->getDefaultIdToCalls()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->mSubscriptionInfoArrayList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v2, :cond_2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object v2, v4, v1

    const/4 v1, 0x1

    aput-object v0, v4, v1

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->carrierUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->CARRIER_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "operator"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->dialToOperatorName:Ljava/lang/String;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->dialToOperatorName:Ljava/lang/String;

    :goto_1
    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    const-string v0, ""

    goto :goto_1
.end method

.method private getPrefixFromDialNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v1, 0x0

    const/4 v7, 0x6

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/incallui/util/SystemServiceUtils;->getCountryIso(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    const-string v0, "CarrierMatchingUtils"

    const-string v3, "getPrefixFromDialNumber e164Number is null "

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_2

    const-string v0, "KH"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0xa

    if-ne v0, v3, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v3, "018"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0xd

    if-ne v0, v3, :cond_2

    invoke-virtual {p1, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v3, "+85518"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "CarrierMatchingUtils"

    const-string v1, "getPrefixFromDialNumber Seatel number "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "+85518"

    :goto_0
    return-object v0

    :cond_2
    if-eqz v2, :cond_3

    const-string v0, "ID"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->getPrefixFromDialNumberWithIDN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    const-string v0, "MM"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->getPrefixFromDialNumberWithMYM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_0

    :cond_5
    invoke-static {v3, v2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    const-string v0, "CarrierMatchingUtils"

    const-string v2, "getPrefixFromDialNumber formatNumber is null "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_0

    :cond_6
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "-"

    const-string v4, " "

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_7
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v1, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v4, v1, v6

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aget-object v4, v1, v6

    if-eqz v4, :cond_8

    aget-object v1, v1, v6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v6, :cond_8

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v4, "VN"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v0, "CarrierMatchingUtils"

    const-string v1, "getPrefixFromDialNumber checking for 08xx number in VN "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    invoke-virtual {v3, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_8
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v7, :cond_9

    const-string v0, "CarrierMatchingUtils"

    const-string v1, "getPrefixFromDialNumber special format in MYM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_9
    const-string v1, "CarrierMatchingUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPrefixFromDialNumber result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private getPrefixFromDialNumberWithIDN(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    const-string v1, "+"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_1

    const/4 v0, 0x6

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    const-string v1, "CarrierMatchingUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPrefixFromDialNumberWithIDN result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getPrefixFromDialNumberWithMYM(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    const-string v1, "+"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    const/4 v0, 0x6

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    const-string v1, "CarrierMatchingUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPrefixFromDialNumberWithMYM result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSlotCarrierMatchingByCallLog(Ljava/lang/String;)[I
    .locals 10

    const/4 v6, 0x0

    const/4 v4, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    new-array v7, v4, [I

    fill-array-data v7, :array_0

    const-string v0, "content://logs/call"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "number = ? or e164_number = ?"

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v8

    const-string v0, "sim_id"

    aput-object v0, v2, v9

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v8

    aput-object p1, v4, v9

    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_1
    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v2, "sim_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    aput v0, v7, v3

    const/4 v0, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    aput v2, v7, v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    const-string v0, "CarrierMatchingUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSlotCarrierMatchingByCallLog result[0]  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v7, v8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , result[1]  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v7, v9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_0
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method private getSlotCarrierMatchingBySimCarrier(Ljava/lang/String;)I
    .locals 7

    const/4 v6, 0x0

    const-string v3, "prefix_number = ?"

    invoke-direct {p0, p1}, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->getPrefixFromDialNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, v4, v1

    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->carrierUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->CARRIER_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_4

    :cond_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "mcc"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string v0, "mnc"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v0, "CarrierMatchingUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSlotCarrierMatchingBySim carrierMNC : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", carrierMCC = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->mSubscriptionInfoArrayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v5

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getMnc()I

    move-result v6

    if-ne v2, v5, :cond_1

    if-ne v3, v6, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const-string v2, "CarrierMatchingUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSlotCarrierMatchingBySimCarrier result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_0
    return v0

    :cond_3
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_4
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    const-string v0, "CarrierMatchingUtils"

    const-string v1, "getSlotCarrierMatchingBySimCarrier INVALID"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_1
    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private init()V
    .locals 4

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->mSubscriptionInfoArrayList:Ljava/util/List;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->simState:[I

    array-length v0, v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->simState:[I

    iget-object v2, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->semGetServiceState(I)I

    move-result v2

    aput v2, v0, v1

    iget-object v2, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->simNumeric:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->mSubscriptionInfoArrayList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->mSubscriptionInfoArrayList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getMnc()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "CarrierMatchingUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , simState...  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->simState:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,  simNumeric...  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->simNumeric:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private isAlwaysAsk()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "carrier_matching_always_ask"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    const-string v2, "CarrierMatchingUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isEnableCarrierMatching key = carrier_matching_always_ask, value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "CarrierMatchingUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isEnableCarrierMatching: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_1
.end method

.method private isCanMakeCall(I)Z
    .locals 7

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {p1}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSubIdUsingPhoneId(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->semGetServiceState(I)I

    move-result v3

    const-string v4, "CarrierMatchingUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isCanMakeCall phoneId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   subId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " serviceState : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_0

    move v0, v1

    :cond_0
    invoke-static {p1}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->shouldPreventCallForPsOnlySim(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "CarrierMatchingUtils"

    const-string v2, "Can not make call by SmartFren/Bolt Sim"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method public static isEnableCarrierMatching()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "carrier_matching_status"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    if-ne v2, v0, :cond_0

    move v2, v0

    :goto_0
    const-string v3, "feature_multisim_preferred_sim"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "feature_multisim_carrier_match_sea"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->checkMultiSim()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/InCallUISystemDB;->isFlightMode(Landroid/content/Context;)Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "CarrierMatchingUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isEnableCarrierMatching: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_1
.end method

.method private isMakeCallWithoutPrimaryNumber()Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getWaitingForAccountCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getWaitingForAccountCall()Lcom/android/incallui/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->dialNumber:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private makeNewOutGoingWithNewNumber(I)V
    .locals 6

    invoke-direct {p0}, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->getDialNumberCarrierMatching()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "noCheckCarrierMatching"

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    iget-object v4, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v4, v0}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v5, "tel"

    invoke-virtual {v4, v5}, Landroid/telecom/PhoneAccount;->supportsUriScheme(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->mAccountHandles:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->mAccountHandles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    const-string v3, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->mTelecomManager:Landroid/telecom/TelecomManager;

    const-string v3, "tel"

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/telecom/TelecomManager;->placeCall(Landroid/net/Uri;Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->clearDisconnectedTimeoutEvent()Z

    :cond_2
    return-void
.end method


# virtual methods
.method public disconnectOutGoingCall()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->isWaitingSwapUseSim:Z

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/incallui/Call;->setState(I)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/CallList;->onUpdate(Lcom/android/incallui/Call;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/incallui/TelecomAdapter;->disconnectCall(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public findSlotIdCarrierMatching()V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getWaitingForAccountCall()Lcom/android/incallui/Call;

    move-result-object v2

    const-string v3, "CarrierMatchingUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findSlotIdCarrierMatching()... call : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->init()V

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->dialNumber:Ljava/lang/String;

    :cond_0
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/TelecomAdapter;->getListNumber()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Lcom/android/incallui/Call;->isVideoCall(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "CarrierMatchingUtils"

    const-string v4, "No Matching for video call"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->getDefaultIdToCalls()I

    move-result v2

    iput v2, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->slotIdCarrierMatching:I

    const/4 v2, 0x5

    iput v2, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->carrierMatchingBy:I

    :cond_1
    iget v2, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->carrierMatchingBy:I

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->dialNumber:Ljava/lang/String;

    if-nez v2, :cond_2

    const-string v2, "CarrierMatchingUtils"

    const-string v4, "No Matching for voice mail"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->getDefaultIdToCalls()I

    move-result v2

    iput v2, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->slotIdCarrierMatching:I

    const/4 v2, 0x6

    iput v2, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->carrierMatchingBy:I

    :cond_2
    iget v2, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->carrierMatchingBy:I

    if-nez v2, :cond_6

    invoke-direct {p0, v0}, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->isCanMakeCall(I)Z

    move-result v2

    invoke-direct {p0, v1}, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->isCanMakeCall(I)Z

    move-result v4

    const-string v5, "CarrierMatchingUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Matching by Sim Service isSim1Ready "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , isSim2Ready "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_3

    if-nez v4, :cond_3

    iput v1, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->carrierMatchingBy:I

    iput v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->slotIdCarrierMatching:I

    :cond_3
    if-nez v2, :cond_4

    if-eqz v4, :cond_4

    iput v1, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->carrierMatchingBy:I

    iput v1, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->slotIdCarrierMatching:I

    :cond_4
    if-nez v2, :cond_5

    if-nez v4, :cond_5

    iput v8, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->slotIdCarrierMatching:I

    const/4 v2, 0x7

    iput v2, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->carrierMatchingBy:I

    :cond_5
    const-string v2, "CarrierMatchingUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Service check carrierMatchingBy = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->carrierMatchingBy:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget v2, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->carrierMatchingBy:I

    if-nez v2, :cond_9

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_7
    iget-object v2, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->dialNumber:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->carrierMatchingBySimAndCallLog(Ljava/lang/String;)[I

    move-result-object v2

    aget v3, v2, v0

    iput v3, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->slotIdCarrierMatching:I

    aget v3, v2, v1

    iput v3, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->carrierMatchingBy:I

    aget v2, v2, v9

    if-ne v2, v1, :cond_8

    move v0, v1

    :cond_8
    iput-boolean v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->isNoMatchingBySimCarrier:Z

    :cond_9
    :goto_0
    iget v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->carrierMatchingBy:I

    if-nez v0, :cond_a

    const-string v0, "CarrierMatchingUtils"

    const-string v2, "Can not matching with any reason so check default sim"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->getDefaultIdToCalls()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->slotIdCarrierMatching:I

    iget v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->slotIdCarrierMatching:I

    if-eq v0, v8, :cond_a

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->carrierMatchingBy:I

    :cond_a
    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->dialNumber:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->getDialOperatorNameFromNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->dialToOperatorName:Ljava/lang/String;

    iget v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->slotIdCarrierMatching:I

    if-eq v0, v8, :cond_b

    iget v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->slotIdCarrierMatching:I

    invoke-virtual {p0, v0}, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->getNetworkOperatorName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->callingByOperatorName:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->needShowDialingInfo:Z

    :cond_b
    const-string v0, "CarrierMatchingUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findSlotIdCarrierMatching() ... dialToOperatorName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->dialToOperatorName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", callingByOperatorName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->callingByOperatorName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , slotIdCarrierMatching = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->slotIdCarrierMatching:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , carrierMatchingBy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->carrierMatchingBy:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    invoke-direct {p0, v3, v8}, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->carrierMatchingBySimAndCallLog(Ljava/util/ArrayList;I)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "keyResultOfSimAndLog"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    if-eqz v3, :cond_e

    aget v4, v3, v0

    iput v4, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->slotIdCarrierMatching:I

    aget v4, v3, v1

    iput v4, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->carrierMatchingBy:I

    aget v3, v3, v9

    if-ne v3, v1, :cond_d

    move v0, v1

    :cond_d
    iput-boolean v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->isNoMatchingBySimCarrier:Z

    :cond_e
    const-string v0, "keyNewNumber"

    iget-object v3, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->dialNumber:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->dialNumber:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public getCallingByOperatorName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->callingByOperatorName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->callingByOperatorName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getDialToOperatorName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->dialToOperatorName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->dialToOperatorName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getNetworkOperatorName(I)Ljava/lang/String;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->mSubscriptionInfoArrayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "CarrierMatchingUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNetworkOperatorName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSlotIdCarrierMatching()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->slotIdCarrierMatching:I

    return v0
.end method

.method isAirplaneModeOn()Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/incallui/InCallUISystemDB;->isFlightMode(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method isCarrierMatchingBy()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->carrierMatchingBy:I

    return v0
.end method

.method public isFindingByHistory()Z
    .locals 2

    iget v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->carrierMatchingBy:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFindingByServiceState()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->carrierMatchingBy:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFindingBySimCarrier()Z
    .locals 2

    iget v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->carrierMatchingBy:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isNoMatchingBySimCarrier()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->isNoMatchingBySimCarrier:Z

    return v0
.end method

.method public isShouldShowDialog()Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->isAlwaysAsk()Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->carrierMatchingBy:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_0

    move v0, v1

    :cond_0
    iget v2, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->carrierMatchingBy:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->carrierMatchingBy:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    const-string v1, "CarrierMatchingUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isShouldShowDialog  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isWaitingSwapUseSim()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->isWaitingSwapUseSim:Z

    return v0
.end method

.method public makeCallWithCarrierMatching(I)V
    .locals 4

    const-string v0, "CarrierMatchingUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeCallWithCarrierMatching slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->mContext:Landroid/content/Context;

    const-string v1, "ACCM"

    invoke-static {v0, v1}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    iget-object v2, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v2, v0}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "tel"

    invoke-virtual {v2, v3}, Landroid/telecom/PhoneAccount;->supportsUriScheme(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->mAccountHandles:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->isMakeCallWithoutPrimaryNumber()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "CarrierMatchingUtils"

    const-string v1, "isMakeCallWithoutPrimaryNumber"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->cancelAccountSelection()V

    invoke-direct {p0, p1}, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->makeNewOutGoingWithNewNumber(I)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->mAccountHandles:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->mAccountHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_2

    const-string v0, "CarrierMatchingUtils"

    const-string v1, "autoSelectAccountHandler make call"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->mAccountHandles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/incallui/InCallPresenter;->handleAccountSelection(Landroid/telecom/PhoneAccountHandle;Z)V

    goto :goto_1
.end method

.method public needShowDialingInfo()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->needShowDialingInfo:Z

    return v0
.end method

.method public resetVariable()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v0, "CarrierMatchingUtils"

    const-string v1, "resetVariable "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->slotIdCarrierMatching:I

    iput-object v3, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->dialNumber:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->dialToOperatorName:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->callingByOperatorName:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->isWaitingSwapUseSim:Z

    iput-boolean v2, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->needShowDialingInfo:Z

    iput v2, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->carrierMatchingBy:I

    iput-boolean v2, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->isNoMatchingBySimCarrier:Z

    return-void
.end method

.method setNeedShowDialingInfo(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->needShowDialingInfo:Z

    return-void
.end method

.method setSlotIdCarrierMatching(I)V
    .locals 1

    iput p1, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->slotIdCarrierMatching:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->getNetworkOperatorName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->callingByOperatorName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setWaitingSwapUseSim(Z)V
    .locals 3

    const-string v0, "CarrierMatchingUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetWaitingSwapUseSim value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->isWaitingSwapUseSim:Z

    return-void
.end method

.method public swapUserSimToDialing()V
    .locals 5

    const-string v0, "CarrierMatchingUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "swapUserSimToDialing slotIdCarrierMatching = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->slotIdCarrierMatching:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->slotIdCarrierMatching:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->dialNumber:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "CarrierMatchingUtils"

    const-string v1, "Can not swapUserSimToDialing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "noCheckCarrierMatching"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->slotIdCarrierMatching:I

    xor-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    const-string v2, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->mTelecomManager:Landroid/telecom/TelecomManager;

    const-string v2, "tel"

    iget-object v3, p0, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->dialNumber:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/telecom/TelecomManager;->placeCall(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_0
.end method
