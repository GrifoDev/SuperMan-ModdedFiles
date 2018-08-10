.class public Landroid/telephony/ServiceState;
.super Ljava/lang/Object;
.source "ServiceState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ServiceState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/ServiceState;",
            ">;"
        }
    .end annotation
.end field

.field static final DBG:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "PHONE"

.field public static final LTE_IMS_VOICE_AVAIL_NOT_SUPPORT:I = 0x2

.field public static final LTE_IMS_VOICE_AVAIL_SUPPORT:I = 0x1

.field public static final LTE_IMS_VOICE_AVAIL_UNKNOWN:I = 0x0

.field public static final LTE_IS_EB_SUPPORTED_NOT_SUPPORT:I = 0x2

.field public static final LTE_IS_EB_SUPPORTED_SUPPORT:I = 0x1

.field public static final LTE_IS_EB_SUPPORTED_UKNOWN:I = 0x0

.field public static final LTE_IS_EMERGENCY_ACCESS_BARRED:I = 0x1

.field public static final LTE_IS_EMERGENCY_ACCESS_BARRING_UNKNOWN:I = 0x0

.field public static final LTE_IS_EMERGENCY_ACCESS_NOT_BARRED:I = 0x2

.field public static final OPTIONAL_RADIO_TECH_2G_DTM:I = 0x2

.field public static final OPTIONAL_RADIO_TECH_DC:I = 0x1

.field public static final OPTIONAL_RADIO_TECH_NONE:I = 0x0

.field public static final REGISTRATION_STATE_HOME_NETWORK:I = 0x1

.field public static final REGISTRATION_STATE_NOT_REGISTERED_AND_NOT_SEARCHING:I = 0x0

.field public static final REGISTRATION_STATE_NOT_REGISTERED_AND_SEARCHING:I = 0x2

.field public static final REGISTRATION_STATE_REGISTRATION_DENIED:I = 0x3

.field public static final REGISTRATION_STATE_ROAMING:I = 0x5

.field public static final REGISTRATION_STATE_UNKNOWN:I = 0x4

.field public static final REGISTRATION_TYPE_CELLULAR:I = 0x1

.field public static final REGISTRATION_TYPE_NOCELLULAR:I = 0x2

.field public static final REGISTRATION_TYPE_UNKNOWN:I = 0x0

.field public static final RIL_FEMTOCELL_INDICATOR_LTE:I = 0x1

.field public static final RIL_FEMTOCELL_INDICATOR_NONE:I = 0x0

.field public static final RIL_RADIO_CDMA_TECHNOLOGY_BITMASK:I = 0x18f8

.field public static final RIL_RADIO_TECHNOLOGY_1xRTT:I = 0x6

.field public static final RIL_RADIO_TECHNOLOGY_EDGE:I = 0x2

.field public static final RIL_RADIO_TECHNOLOGY_EHRPD:I = 0xd

.field public static final RIL_RADIO_TECHNOLOGY_EVDO_0:I = 0x7

.field public static final RIL_RADIO_TECHNOLOGY_EVDO_A:I = 0x8

.field public static final RIL_RADIO_TECHNOLOGY_EVDO_B:I = 0xc

.field public static final RIL_RADIO_TECHNOLOGY_GPRS:I = 0x1

.field public static final RIL_RADIO_TECHNOLOGY_GSM:I = 0x10

.field public static final RIL_RADIO_TECHNOLOGY_HSDPA:I = 0x9

.field public static final RIL_RADIO_TECHNOLOGY_HSPA:I = 0xb

.field public static final RIL_RADIO_TECHNOLOGY_HSPAP:I = 0xf

.field public static final RIL_RADIO_TECHNOLOGY_HSUPA:I = 0xa

.field public static final RIL_RADIO_TECHNOLOGY_IS95A:I = 0x4

.field public static final RIL_RADIO_TECHNOLOGY_IS95B:I = 0x5

.field public static final RIL_RADIO_TECHNOLOGY_IWLAN:I = 0x12

.field public static final RIL_RADIO_TECHNOLOGY_LTE:I = 0xe

.field public static final RIL_RADIO_TECHNOLOGY_LTE_CA:I = 0x13

.field public static final RIL_RADIO_TECHNOLOGY_TD_SCDMA:I = 0x11

.field public static final RIL_RADIO_TECHNOLOGY_UMTS:I = 0x3

.field public static final RIL_RADIO_TECHNOLOGY_UNKNOWN:I = 0x0

.field public static final RIL_REG_STATE_DENIED:I = 0x3

.field public static final RIL_REG_STATE_DENIED_EMERGENCY_CALL_ENABLED:I = 0xd

.field public static final RIL_REG_STATE_HOME:I = 0x1

.field public static final RIL_REG_STATE_NOT_REG:I = 0x0

.field public static final RIL_REG_STATE_NOT_REG_EMERGENCY_CALL_ENABLED:I = 0xa

.field public static final RIL_REG_STATE_ROAMING:I = 0x5

.field public static final RIL_REG_STATE_SEARCHING:I = 0x2

.field public static final RIL_REG_STATE_SEARCHING_EMERGENCY_CALL_ENABLED:I = 0xc

.field public static final RIL_REG_STATE_UNKNOWN:I = 0x4

.field public static final RIL_REG_STATE_UNKNOWN_EMERGENCY_CALL_ENABLED:I = 0xe

.field public static final ROAMING_TYPE_DOMESTIC:I = 0x2

.field public static final ROAMING_TYPE_INTERNATIONAL:I = 0x3

.field public static final ROAMING_TYPE_NOT_ROAMING:I = 0x0

.field public static final ROAMING_TYPE_UNKNOWN:I = 0x1

.field public static final SNAPSHOT_STATUS_ACTIVATED:I = 0x1

.field public static final SNAPSHOT_STATUS_DEACTIVATED:I = 0x0

.field public static final STATE_EMERGENCY_ONLY:I = 0x2

.field public static final STATE_IN_SERVICE:I = 0x0

.field public static final STATE_OUT_OF_SERVICE:I = 0x1

.field public static final STATE_POWER_OFF:I = 0x3

.field static final VDBG:Z


# instance fields
.field private mCdmaDefaultRoamingIndicator:I

.field private mCdmaEriIconIndex:I

.field private mCdmaEriIconMode:I

.field private mCdmaRoamingIndicator:I

.field private mCssIndicator:Z

.field private mDataOperatorAlphaLong:Ljava/lang/String;

.field private mDataOperatorAlphaShort:Ljava/lang/String;

.field private mDataOperatorNumeric:Ljava/lang/String;

.field private mDataRegState:I

.field private mDataRoamingType:I

.field private mFemtocellIndicator:I

.field private mIsDataRoamingFromRegistration:Z

.field private mIsEmergencyOnly:Z

.field private mIsManualNetworkSelection:Z

.field private mIsPsOnlyReg:Z

.field private mIsUsingCarrierAggregation:Z

.field private mLteEarfcnRsrpBoost:I

.field private mLteImsVoiceAvail:I

.field private mLteIsEbSupported:I

.field private mLteIsEmergencyAccessBarred:I

.field private mMobileDataRegState:I

.field private mMobileDataRoamingType:I

.field private mMobileVoiceRegState:I

.field private mNetworkId:I

.field private mOptionalRadioTech:I

.field private mRilDataRadioTechnology:I

.field private mRilMobileDataRadioTechnology:I

.field private mRilMobileVoiceRadioTechnology:I

.field private mRilVoiceRadioTechnology:I

.field private mSnapshotStatus:I

.field private mSystemId:I

.field private mVoiceOperatorAlphaLong:Ljava/lang/String;

.field private mVoiceOperatorAlphaShort:Ljava/lang/String;

.field private mVoiceOperatorNumeric:Ljava/lang/String;

.field private mVoiceRegState:I

.field private mVoiceRegType:I

.field private mVoiceRoamingType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/ServiceState$1;

    invoke-direct {v0}, Landroid/telephony/ServiceState$1;-><init>()V

    sput-object v0, Landroid/telephony/ServiceState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    iput v1, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    iput v1, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    iput v0, p0, Landroid/telephony/ServiceState;->mLteEarfcnRsrpBoost:I

    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRegType:I

    iput v0, p0, Landroid/telephony/ServiceState;->mLteImsVoiceAvail:I

    iput v0, p0, Landroid/telephony/ServiceState;->mLteIsEbSupported:I

    iput v0, p0, Landroid/telephony/ServiceState;->mLteIsEmergencyAccessBarred:I

    iput v0, p0, Landroid/telephony/ServiceState;->mSnapshotStatus:I

    iput v1, p0, Landroid/telephony/ServiceState;->mMobileVoiceRegState:I

    iput v1, p0, Landroid/telephony/ServiceState;->mMobileDataRegState:I

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsPsOnlyReg:Z

    iput v0, p0, Landroid/telephony/ServiceState;->mFemtocellIndicator:I

    iput v0, p0, Landroid/telephony/ServiceState;->mOptionalRadioTech:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    iput v1, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    iput v1, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    iput v2, p0, Landroid/telephony/ServiceState;->mLteEarfcnRsrpBoost:I

    iput v2, p0, Landroid/telephony/ServiceState;->mVoiceRegType:I

    iput v2, p0, Landroid/telephony/ServiceState;->mLteImsVoiceAvail:I

    iput v2, p0, Landroid/telephony/ServiceState;->mLteIsEbSupported:I

    iput v2, p0, Landroid/telephony/ServiceState;->mLteIsEmergencyAccessBarred:I

    iput v2, p0, Landroid/telephony/ServiceState;->mSnapshotStatus:I

    iput v1, p0, Landroid/telephony/ServiceState;->mMobileVoiceRegState:I

    iput v1, p0, Landroid/telephony/ServiceState;->mMobileDataRegState:I

    iput-boolean v2, p0, Landroid/telephony/ServiceState;->mIsPsOnlyReg:Z

    iput v2, p0, Landroid/telephony/ServiceState;->mFemtocellIndicator:I

    iput v2, p0, Landroid/telephony/ServiceState;->mOptionalRadioTech:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mSystemId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsUsingCarrierAggregation:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mLteEarfcnRsrpBoost:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRegType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mLteImsVoiceAvail:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mLteIsEbSupported:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mLteIsEmergencyAccessBarred:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mSnapshotStatus:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mMobileVoiceRegState:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mRilMobileVoiceRadioTechnology:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mMobileDataRegState:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mMobileDataRoamingType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mRilMobileDataRadioTechnology:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    :goto_5
    iput-boolean v1, p0, Landroid/telephony/ServiceState;->mIsPsOnlyReg:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mFemtocellIndicator:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mOptionalRadioTech:I

    return-void

    :cond_0
    move v0, v2

    goto/16 :goto_0

    :cond_1
    move v0, v2

    goto/16 :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_4

    :cond_5
    move v1, v2

    goto :goto_5
.end method

.method public constructor <init>(Landroid/telephony/ServiceState;)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    iput v1, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    iput v1, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    iput v0, p0, Landroid/telephony/ServiceState;->mLteEarfcnRsrpBoost:I

    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRegType:I

    iput v0, p0, Landroid/telephony/ServiceState;->mLteImsVoiceAvail:I

    iput v0, p0, Landroid/telephony/ServiceState;->mLteIsEbSupported:I

    iput v0, p0, Landroid/telephony/ServiceState;->mLteIsEmergencyAccessBarred:I

    iput v0, p0, Landroid/telephony/ServiceState;->mSnapshotStatus:I

    iput v1, p0, Landroid/telephony/ServiceState;->mMobileVoiceRegState:I

    iput v1, p0, Landroid/telephony/ServiceState;->mMobileDataRegState:I

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsPsOnlyReg:Z

    iput v0, p0, Landroid/telephony/ServiceState;->mFemtocellIndicator:I

    iput v0, p0, Landroid/telephony/ServiceState;->mOptionalRadioTech:I

    invoke-virtual {p0, p1}, Landroid/telephony/ServiceState;->copyFrom(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method public static bearerBitmapHasCdma(I)Z
    .locals 2

    const/4 v0, 0x0

    and-int/lit16 v1, p0, 0x18f8

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static bitmaskHasTech(II)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-lt p1, v0, :cond_2

    add-int/lit8 v2, p1, -0x1

    shl-int v2, v0, v2

    and-int/2addr v2, p0

    if-eqz v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private static equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static getBitmaskForTech(I)I
    .locals 2

    const/4 v1, 0x1

    if-lt p0, v1, :cond_0

    add-int/lit8 v0, p0, -0x1

    shl-int v0, v1, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getBitmaskFromString(Ljava/lang/String;)I
    .locals 9

    const/4 v6, 0x0

    const-string/jumbo v5, "\\|"

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    array-length v7, v3

    move v5, v6

    :goto_0
    if-ge v5, v7, :cond_1

    aget-object v0, v3, v5

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    return v6

    :catch_0
    move-exception v4

    return v6

    :cond_0
    invoke-static {v2}, Landroid/telephony/ServiceState;->getBitmaskForTech(I)I

    move-result v8

    or-int/2addr v1, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static final getRoamingLogString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string/jumbo v0, "UNKNOWN"

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "home"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "roaming"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "Domestic Roaming"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "International Roaming"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static isCdma(I)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 v1, 0x5

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x6

    if-eq p0, v1, :cond_0

    const/4 v1, 0x7

    if-eq p0, v1, :cond_0

    const/16 v1, 0x8

    if-eq p0, v1, :cond_0

    const/16 v1, 0xc

    if-eq p0, v1, :cond_0

    const/16 v1, 0xd

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isGsm(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/16 v1, 0x9

    if-eq p0, v1, :cond_0

    const/16 v1, 0xa

    if-eq p0, v1, :cond_0

    const/16 v1, 0xb

    if-eq p0, v1, :cond_0

    const/16 v1, 0xe

    if-eq p0, v1, :cond_0

    const/16 v1, 0xf

    if-eq p0, v1, :cond_0

    const/16 v1, 0x10

    if-eq p0, v1, :cond_0

    const/16 v1, 0x11

    if-eq p0, v1, :cond_0

    const/16 v1, 0x12

    if-eq p0, v1, :cond_0

    const/16 v1, 0x13

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLte(I)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0xe

    if-eq p0, v1, :cond_0

    const/16 v1, 0x13

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static mergeServiceStates(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .locals 3

    const/4 v2, 0x0

    iget v1, p1, Landroid/telephony/ServiceState;->mVoiceRegState:I

    if-eqz v1, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0, p0}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    iget v1, p1, Landroid/telephony/ServiceState;->mVoiceRegState:I

    iput v1, v0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    iput-boolean v2, v0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    return-object v0
.end method

.method public static newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;
    .locals 1

    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    invoke-direct {v0, p0}, Landroid/telephony/ServiceState;->setFromNotifierBundle(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private rilRadioTechnologyToNetworkType(I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_1
    const/4 v0, 0x2

    return v0

    :pswitch_2
    const/4 v0, 0x3

    return v0

    :pswitch_3
    const/16 v0, 0x8

    return v0

    :pswitch_4
    const/16 v0, 0x9

    return v0

    :pswitch_5
    const/16 v0, 0xa

    return v0

    :pswitch_6
    const/4 v0, 0x4

    return v0

    :pswitch_7
    const/4 v0, 0x7

    return v0

    :pswitch_8
    const/4 v0, 0x5

    return v0

    :pswitch_9
    const/4 v0, 0x6

    return v0

    :pswitch_a
    const/16 v0, 0xc

    return v0

    :pswitch_b
    const/16 v0, 0xe

    return v0

    :pswitch_c
    const/16 v0, 0xd

    return v0

    :pswitch_d
    const/16 v0, 0xf

    return v0

    :pswitch_e
    const/16 v0, 0x10

    return v0

    :pswitch_f
    const/16 v0, 0x11

    return v0

    :pswitch_10
    const/16 v0, 0x12

    return v0

    :pswitch_11
    const/16 v0, 0x13

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method public static rilRadioTechnologyToString(I)Ljava/lang/String;
    .locals 4

    packed-switch p0, :pswitch_data_0

    const-string/jumbo v0, "Unexpected"

    const-string/jumbo v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unexpected radioTechnology="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0

    :pswitch_0
    const-string/jumbo v0, "Unknown"

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "GPRS"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "EDGE"

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "UMTS"

    goto :goto_0

    :pswitch_4
    const-string/jumbo v0, "CDMA-IS95A"

    goto :goto_0

    :pswitch_5
    const-string/jumbo v0, "CDMA-IS95B"

    goto :goto_0

    :pswitch_6
    const-string/jumbo v0, "1xRTT"

    goto :goto_0

    :pswitch_7
    const-string/jumbo v0, "EvDo-rev.0"

    goto :goto_0

    :pswitch_8
    const-string/jumbo v0, "EvDo-rev.A"

    goto :goto_0

    :pswitch_9
    const-string/jumbo v0, "HSDPA"

    goto :goto_0

    :pswitch_a
    const-string/jumbo v0, "HSUPA"

    goto :goto_0

    :pswitch_b
    const-string/jumbo v0, "HSPA"

    goto :goto_0

    :pswitch_c
    const-string/jumbo v0, "EvDo-rev.B"

    goto :goto_0

    :pswitch_d
    const-string/jumbo v0, "eHRPD"

    goto :goto_0

    :pswitch_e
    const-string/jumbo v0, "LTE"

    goto :goto_0

    :pswitch_f
    const-string/jumbo v0, "HSPAP"

    goto :goto_0

    :pswitch_10
    const-string/jumbo v0, "GSM"

    goto :goto_0

    :pswitch_11
    const-string/jumbo v0, "IWLAN"

    goto :goto_0

    :pswitch_12
    const-string/jumbo v0, "TD-SCDMA"

    goto :goto_0

    :pswitch_13
    const-string/jumbo v0, "LTE_CA"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
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
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_12
        :pswitch_11
        :pswitch_13
    .end packed-switch
.end method

.method private setFromNotifierBundle(Landroid/os/Bundle;)V
    .locals 1

    const-string/jumbo v0, "voiceRegState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    const-string/jumbo v0, "dataRegState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    const-string/jumbo v0, "voiceRoamingType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    const-string/jumbo v0, "dataRoamingType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    const-string/jumbo v0, "operator-alpha-long"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    const-string/jumbo v0, "operator-alpha-short"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    const-string/jumbo v0, "operator-numeric"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    const-string/jumbo v0, "data-operator-alpha-long"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    const-string/jumbo v0, "data-operator-alpha-short"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    const-string/jumbo v0, "data-operator-numeric"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    const-string/jumbo v0, "manual"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    const-string/jumbo v0, "radioTechnology"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    const-string/jumbo v0, "dataRadioTechnology"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    const-string/jumbo v0, "cssIndicator"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    const-string/jumbo v0, "networkId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    const-string/jumbo v0, "systemId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mSystemId:I

    const-string/jumbo v0, "cdmaRoamingIndicator"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    const-string/jumbo v0, "cdmaDefaultRoamingIndicator"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    const-string/jumbo v0, "emergencyOnly"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    const-string/jumbo v0, "isDataRoamingFromRegistration"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    const-string/jumbo v0, "isUsingCarrierAggregation"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsUsingCarrierAggregation:Z

    const-string/jumbo v0, "LteEarfcnRsrpBoost"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mLteEarfcnRsrpBoost:I

    const-string/jumbo v0, "voiceRegType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRegType:I

    const-string/jumbo v0, "lteimsvoiceavail"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mLteImsVoiceAvail:I

    const-string/jumbo v0, "lteisebsupported"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mLteIsEbSupported:I

    const-string/jumbo v0, "lteisemergencyaccessbarred"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mLteIsEmergencyAccessBarred:I

    const-string/jumbo v0, "snapshotstatus"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mSnapshotStatus:I

    const-string/jumbo v0, "mobileVoiceRegState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mMobileVoiceRegState:I

    const-string/jumbo v0, "mobileVoiceRadioTechnology"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mRilMobileVoiceRadioTechnology:I

    const-string/jumbo v0, "mobileDataRegState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mMobileDataRegState:I

    const-string/jumbo v0, "mobileDataRoamingType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mMobileDataRoamingType:I

    const-string/jumbo v0, "mobileDataRadioTechnology"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mRilMobileDataRadioTechnology:I

    const-string/jumbo v0, "isPsOnlyReg"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsPsOnlyReg:Z

    const-string/jumbo v0, "femtocellIndicator"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mFemtocellIndicator:I

    return-void
.end method

.method private setNullState(I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    iput p1, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    iput p1, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    iput v0, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    iput-object v2, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    iput-object v2, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    iput-object v2, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    iput-object v2, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    iput-object v2, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    iput-object v2, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    iput v0, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    iput v0, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    iput v1, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    iput v1, p0, Landroid/telephony/ServiceState;->mSystemId:I

    iput v1, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    iput v1, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    iput v1, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    iput v1, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsUsingCarrierAggregation:Z

    iput v0, p0, Landroid/telephony/ServiceState;->mLteEarfcnRsrpBoost:I

    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRegType:I

    iput v0, p0, Landroid/telephony/ServiceState;->mLteImsVoiceAvail:I

    iput v0, p0, Landroid/telephony/ServiceState;->mLteIsEbSupported:I

    iput v0, p0, Landroid/telephony/ServiceState;->mLteIsEmergencyAccessBarred:I

    iput v0, p0, Landroid/telephony/ServiceState;->mSnapshotStatus:I

    iput p1, p0, Landroid/telephony/ServiceState;->mMobileVoiceRegState:I

    iput v0, p0, Landroid/telephony/ServiceState;->mRilMobileVoiceRadioTechnology:I

    iput p1, p0, Landroid/telephony/ServiceState;->mMobileDataRegState:I

    iput v0, p0, Landroid/telephony/ServiceState;->mMobileDataRoamingType:I

    iput v0, p0, Landroid/telephony/ServiceState;->mRilMobileDataRadioTechnology:I

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsPsOnlyReg:Z

    iput v0, p0, Landroid/telephony/ServiceState;->mFemtocellIndicator:I

    iput v0, p0, Landroid/telephony/ServiceState;->mOptionalRadioTech:I

    return-void
.end method


# virtual methods
.method public canCellularVoiceService()Z
    .locals 2

    iget v0, p0, Landroid/telephony/ServiceState;->mVoiceRegType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected copyFrom(Landroid/telephony/ServiceState;)V
    .locals 1

    iget v0, p1, Landroid/telephony/ServiceState;->mVoiceRegState:I

    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    iget v0, p1, Landroid/telephony/ServiceState;->mDataRegState:I

    iput v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    iget v0, p1, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    iget v0, p1, Landroid/telephony/ServiceState;->mDataRoamingType:I

    iput v0, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    iget-object v0, p1, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    iget-object v0, p1, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    iget-object v0, p1, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    iget-object v0, p1, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    iget-object v0, p1, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    iget-object v0, p1, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    iget-boolean v0, p1, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    iget v0, p1, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    iput v0, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    iget v0, p1, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    iput v0, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    iget-boolean v0, p1, Landroid/telephony/ServiceState;->mCssIndicator:Z

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    iget v0, p1, Landroid/telephony/ServiceState;->mNetworkId:I

    iput v0, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    iget v0, p1, Landroid/telephony/ServiceState;->mSystemId:I

    iput v0, p0, Landroid/telephony/ServiceState;->mSystemId:I

    iget v0, p1, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    iget v0, p1, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    iget v0, p1, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    iget v0, p1, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    iget-boolean v0, p1, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    iget-boolean v0, p1, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    iget-boolean v0, p1, Landroid/telephony/ServiceState;->mIsUsingCarrierAggregation:Z

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsUsingCarrierAggregation:Z

    iget v0, p1, Landroid/telephony/ServiceState;->mLteEarfcnRsrpBoost:I

    iput v0, p0, Landroid/telephony/ServiceState;->mLteEarfcnRsrpBoost:I

    iget v0, p1, Landroid/telephony/ServiceState;->mVoiceRegType:I

    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRegType:I

    iget v0, p1, Landroid/telephony/ServiceState;->mLteImsVoiceAvail:I

    iput v0, p0, Landroid/telephony/ServiceState;->mLteImsVoiceAvail:I

    iget v0, p1, Landroid/telephony/ServiceState;->mLteIsEbSupported:I

    iput v0, p0, Landroid/telephony/ServiceState;->mLteIsEbSupported:I

    iget v0, p1, Landroid/telephony/ServiceState;->mLteIsEmergencyAccessBarred:I

    iput v0, p0, Landroid/telephony/ServiceState;->mLteIsEmergencyAccessBarred:I

    iget v0, p1, Landroid/telephony/ServiceState;->mSnapshotStatus:I

    iput v0, p0, Landroid/telephony/ServiceState;->mSnapshotStatus:I

    iget v0, p1, Landroid/telephony/ServiceState;->mMobileVoiceRegState:I

    iput v0, p0, Landroid/telephony/ServiceState;->mMobileVoiceRegState:I

    iget v0, p1, Landroid/telephony/ServiceState;->mRilMobileVoiceRadioTechnology:I

    iput v0, p0, Landroid/telephony/ServiceState;->mRilMobileVoiceRadioTechnology:I

    iget v0, p1, Landroid/telephony/ServiceState;->mMobileDataRegState:I

    iput v0, p0, Landroid/telephony/ServiceState;->mMobileDataRegState:I

    iget v0, p1, Landroid/telephony/ServiceState;->mMobileDataRoamingType:I

    iput v0, p0, Landroid/telephony/ServiceState;->mMobileDataRoamingType:I

    iget v0, p1, Landroid/telephony/ServiceState;->mRilMobileDataRadioTechnology:I

    iput v0, p0, Landroid/telephony/ServiceState;->mRilMobileDataRadioTechnology:I

    iget-boolean v0, p1, Landroid/telephony/ServiceState;->mIsPsOnlyReg:Z

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsPsOnlyReg:Z

    iget v0, p1, Landroid/telephony/ServiceState;->mFemtocellIndicator:I

    iput v0, p0, Landroid/telephony/ServiceState;->mFemtocellIndicator:I

    iget v0, p1, Landroid/telephony/ServiceState;->mOptionalRadioTech:I

    iput v0, p0, Landroid/telephony/ServiceState;->mOptionalRadioTech:I

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v3, 0x0

    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/telephony/ServiceState;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    return v3

    :catch_0
    move-exception v1

    return v3

    :cond_0
    iget v4, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    iget v5, v2, Landroid/telephony/ServiceState;->mVoiceRegState:I

    if-ne v4, v5, :cond_1

    iget v4, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    iget v5, v2, Landroid/telephony/ServiceState;->mDataRegState:I

    if-ne v4, v5, :cond_1

    iget-boolean v4, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    iget-boolean v5, v2, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    if-ne v4, v5, :cond_1

    iget v4, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    iget v5, v2, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    if-ne v4, v5, :cond_1

    iget v4, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    iget v5, v2, Landroid/telephony/ServiceState;->mDataRoamingType:I

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    iget-object v5, v2, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    iget-object v5, v2, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    iget-object v5, v2, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    iget-object v5, v2, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    iget-object v5, v2, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    iget-object v5, v2, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-boolean v5, v2, Landroid/telephony/ServiceState;->mCssIndicator:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/ServiceState;->mNetworkId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Landroid/telephony/ServiceState;->mSystemId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/ServiceState;->mSystemId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Landroid/telephony/ServiceState;->mVoiceRegType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/ServiceState;->mVoiceRegType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Landroid/telephony/ServiceState;->mLteImsVoiceAvail:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/ServiceState;->mLteImsVoiceAvail:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Landroid/telephony/ServiceState;->mLteIsEbSupported:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/ServiceState;->mLteIsEbSupported:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Landroid/telephony/ServiceState;->mLteIsEmergencyAccessBarred:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/ServiceState;->mLteIsEmergencyAccessBarred:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Landroid/telephony/ServiceState;->mSnapshotStatus:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/ServiceState;->mSnapshotStatus:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Landroid/telephony/ServiceState;->mMobileVoiceRegState:I

    iget v5, v2, Landroid/telephony/ServiceState;->mMobileVoiceRegState:I

    if-ne v4, v5, :cond_1

    iget v4, p0, Landroid/telephony/ServiceState;->mRilMobileVoiceRadioTechnology:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/ServiceState;->mRilMobileVoiceRadioTechnology:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Landroid/telephony/ServiceState;->mMobileDataRegState:I

    iget v5, v2, Landroid/telephony/ServiceState;->mMobileDataRegState:I

    if-ne v4, v5, :cond_1

    iget v4, p0, Landroid/telephony/ServiceState;->mMobileDataRoamingType:I

    iget v5, v2, Landroid/telephony/ServiceState;->mMobileDataRoamingType:I

    if-ne v4, v5, :cond_1

    iget v4, p0, Landroid/telephony/ServiceState;->mRilMobileDataRadioTechnology:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/ServiceState;->mRilMobileDataRadioTechnology:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Landroid/telephony/ServiceState;->mIsPsOnlyReg:Z

    iget-boolean v5, v2, Landroid/telephony/ServiceState;->mIsPsOnlyReg:Z

    if-ne v4, v5, :cond_1

    iget v4, p0, Landroid/telephony/ServiceState;->mFemtocellIndicator:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/ServiceState;->mFemtocellIndicator:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    iget-boolean v5, v2, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    if-ne v4, v5, :cond_1

    iget-boolean v4, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    iget-boolean v5, v2, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    if-ne v4, v5, :cond_1

    iget-boolean v4, p0, Landroid/telephony/ServiceState;->mIsUsingCarrierAggregation:Z

    iget-boolean v5, v2, Landroid/telephony/ServiceState;->mIsUsingCarrierAggregation:Z

    if-ne v4, v5, :cond_1

    iget v4, p0, Landroid/telephony/ServiceState;->mOptionalRadioTech:I

    iget v5, v2, Landroid/telephony/ServiceState;->mOptionalRadioTech:I

    if-ne v4, v5, :cond_1

    const/4 v3, 0x1

    :cond_1
    return v3
.end method

.method public fillInNotifierBundle(Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "voiceRegState"

    iget v1, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "dataRegState"

    iget v1, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "voiceRoamingType"

    iget v1, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "dataRoamingType"

    iget v1, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "operator-alpha-long"

    iget-object v1, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "operator-alpha-short"

    iget-object v1, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "operator-numeric"

    iget-object v1, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "data-operator-alpha-long"

    iget-object v1, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "data-operator-alpha-short"

    iget-object v1, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "data-operator-numeric"

    iget-object v1, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "manual"

    iget-boolean v1, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "radioTechnology"

    iget v1, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "dataRadioTechnology"

    iget v1, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "cssIndicator"

    iget-boolean v1, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "networkId"

    iget v1, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "systemId"

    iget v1, p0, Landroid/telephony/ServiceState;->mSystemId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "cdmaRoamingIndicator"

    iget v1, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "cdmaDefaultRoamingIndicator"

    iget v1, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "emergencyOnly"

    iget-boolean v1, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "isDataRoamingFromRegistration"

    iget-boolean v1, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "isUsingCarrierAggregation"

    iget-boolean v1, p0, Landroid/telephony/ServiceState;->mIsUsingCarrierAggregation:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "LteEarfcnRsrpBoost"

    iget v1, p0, Landroid/telephony/ServiceState;->mLteEarfcnRsrpBoost:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "voiceRegType"

    iget v1, p0, Landroid/telephony/ServiceState;->mVoiceRegType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "lteimsvoiceavail"

    iget v1, p0, Landroid/telephony/ServiceState;->mLteImsVoiceAvail:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "lteisebsupported"

    iget v1, p0, Landroid/telephony/ServiceState;->mLteIsEbSupported:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "lteisemergencyaccessbarred"

    iget v1, p0, Landroid/telephony/ServiceState;->mLteIsEmergencyAccessBarred:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "snapshotstatus"

    iget v1, p0, Landroid/telephony/ServiceState;->mSnapshotStatus:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "mobileVoiceRegState"

    iget v1, p0, Landroid/telephony/ServiceState;->mMobileVoiceRegState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "mobileVoiceRadioTechnology"

    iget v1, p0, Landroid/telephony/ServiceState;->mRilMobileVoiceRadioTechnology:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "mobileDataRegState"

    iget v1, p0, Landroid/telephony/ServiceState;->mMobileDataRegState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "mobileDataRoamingType"

    iget v1, p0, Landroid/telephony/ServiceState;->mMobileDataRoamingType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "mobileDataRadioTechnology"

    iget v1, p0, Landroid/telephony/ServiceState;->mRilMobileDataRadioTechnology:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "isPsOnlyReg"

    iget-boolean v1, p0, Landroid/telephony/ServiceState;->mIsPsOnlyReg:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "femtocellIndicator"

    iget v1, p0, Landroid/telephony/ServiceState;->mFemtocellIndicator:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public getCdmaDefaultRoamingIndicator()I
    .locals 1

    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    return v0
.end method

.method public getCdmaEriIconIndex()I
    .locals 1

    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    return v0
.end method

.method public getCdmaEriIconMode()I
    .locals 1

    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    return v0
.end method

.method public getCdmaRoamingIndicator()I
    .locals 1

    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    return v0
.end method

.method public getCssIndicator()I
    .locals 1

    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDataNetworkType()I
    .locals 1

    iget v0, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    invoke-direct {p0, v0}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v0

    return v0
.end method

.method public getDataOperatorAlphaLong()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    return-object v0
.end method

.method public getDataOperatorAlphaShort()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    return-object v0
.end method

.method public getDataOperatorNumeric()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    return-object v0
.end method

.method public getDataRegState()I
    .locals 1

    iget v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    return v0
.end method

.method public getDataRoaming()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getDataRoamingFromRegistration()Z
    .locals 1

    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    return v0
.end method

.method public getDataRoamingType()I
    .locals 1

    iget v0, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    return v0
.end method

.method public getFemtocellIndicator()I
    .locals 1

    iget v0, p0, Landroid/telephony/ServiceState;->mFemtocellIndicator:I

    return v0
.end method

.method public getIsManualSelection()Z
    .locals 1

    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    return v0
.end method

.method public getLteEarfcnRsrpBoost()I
    .locals 1

    iget v0, p0, Landroid/telephony/ServiceState;->mLteEarfcnRsrpBoost:I

    return v0
.end method

.method public getLteImsVoiceAvail()I
    .locals 1

    iget v0, p0, Landroid/telephony/ServiceState;->mLteImsVoiceAvail:I

    return v0
.end method

.method public getLteIsEbSupported()I
    .locals 1

    iget v0, p0, Landroid/telephony/ServiceState;->mLteIsEbSupported:I

    return v0
.end method

.method public getLteIsEmergencyAccessBarred()I
    .locals 1

    iget v0, p0, Landroid/telephony/ServiceState;->mLteIsEmergencyAccessBarred:I

    return v0
.end method

.method public getMobileDataRegState()I
    .locals 1

    iget v0, p0, Landroid/telephony/ServiceState;->mMobileDataRegState:I

    return v0
.end method

.method public getMobileDataRoaming()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/telephony/ServiceState;->mMobileDataRoamingType:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getMobileDataRoamingType()I
    .locals 1

    iget v0, p0, Landroid/telephony/ServiceState;->mMobileDataRoamingType:I

    return v0
.end method

.method public getMobileVoiceRegState()I
    .locals 1

    iget v0, p0, Landroid/telephony/ServiceState;->mMobileVoiceRegState:I

    return v0
.end method

.method public getNetworkId()I
    .locals 1

    iget v0, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    return v0
.end method

.method public getNetworkType()I
    .locals 2

    const-string/jumbo v0, "PHONE"

    const-string/jumbo v1, "ServiceState.getNetworkType() DEPRECATED will be removed *******"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    invoke-direct {p0, v0}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v0

    return v0
.end method

.method public getOperatorAlpha()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorAlphaLong()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorAlphaShort()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    return-object v0
.end method

.method public getOptionalRadioTech()I
    .locals 1

    iget v0, p0, Landroid/telephony/ServiceState;->mOptionalRadioTech:I

    return v0
.end method

.method public getRadioTechnology()I
    .locals 2

    const-string/jumbo v0, "PHONE"

    const-string/jumbo v1, "ServiceState.getRadioTechnology() DEPRECATED will be removed *******"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    return v0
.end method

.method public getRilDataRadioTechnology()I
    .locals 1

    iget v0, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    return v0
.end method

.method public getRilMobileDataRadioTechnology()I
    .locals 1

    iget v0, p0, Landroid/telephony/ServiceState;->mRilMobileDataRadioTechnology:I

    return v0
.end method

.method public getRilMobileVoiceRadioTechnology()I
    .locals 1

    iget v0, p0, Landroid/telephony/ServiceState;->mRilMobileVoiceRadioTechnology:I

    return v0
.end method

.method public getRilVoiceRadioTechnology()I
    .locals 1

    iget v0, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    return v0
.end method

.method public getRoaming()Z
    .locals 1

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getSnapshotStatus()I
    .locals 1

    iget v0, p0, Landroid/telephony/ServiceState;->mSnapshotStatus:I

    return v0
.end method

.method public getState()I
    .locals 1

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    return v0
.end method

.method public getSystemId()I
    .locals 1

    iget v0, p0, Landroid/telephony/ServiceState;->mSystemId:I

    return v0
.end method

.method public getVoiceNetworkType()I
    .locals 1

    iget v0, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    invoke-direct {p0, v0}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v0

    return v0
.end method

.method public getVoiceOperatorAlphaLong()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceOperatorAlphaShort()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceOperatorNumeric()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceRegState()I
    .locals 1

    iget v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    return v0
.end method

.method public getVoiceRegType()I
    .locals 1

    iget v0, p0, Landroid/telephony/ServiceState;->mVoiceRegType:I

    return v0
.end method

.method public getVoiceRoaming()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getVoiceRoamingType()I
    .locals 1

    iget v0, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    mul-int/lit8 v3, v3, 0x25

    add-int/2addr v0, v3

    iget v3, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    add-int/2addr v0, v3

    iget v3, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    add-int/2addr v3, v0

    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v3, v0

    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v2

    :goto_1
    add-int/2addr v3, v0

    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v2

    :goto_2
    add-int/2addr v3, v0

    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v2

    :goto_3
    add-int/2addr v3, v0

    iget-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    if-nez v0, :cond_4

    move v0, v2

    :goto_4
    add-int/2addr v3, v0

    iget-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    if-nez v0, :cond_5

    move v0, v2

    :goto_5
    add-int/2addr v3, v0

    iget-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    if-nez v0, :cond_6

    move v0, v2

    :goto_6
    add-int/2addr v0, v3

    iget v3, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    add-int/2addr v0, v3

    iget v3, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    add-int/2addr v0, v3

    iget v3, p0, Landroid/telephony/ServiceState;->mVoiceRegType:I

    add-int/2addr v0, v3

    iget v3, p0, Landroid/telephony/ServiceState;->mLteImsVoiceAvail:I

    add-int/2addr v0, v3

    iget v3, p0, Landroid/telephony/ServiceState;->mLteIsEbSupported:I

    add-int/2addr v0, v3

    iget v3, p0, Landroid/telephony/ServiceState;->mLteIsEmergencyAccessBarred:I

    add-int/2addr v0, v3

    iget v3, p0, Landroid/telephony/ServiceState;->mSnapshotStatus:I

    add-int/2addr v0, v3

    iget v3, p0, Landroid/telephony/ServiceState;->mMobileVoiceRegState:I

    add-int/2addr v0, v3

    iget v3, p0, Landroid/telephony/ServiceState;->mRilMobileVoiceRadioTechnology:I

    add-int/2addr v0, v3

    iget v3, p0, Landroid/telephony/ServiceState;->mMobileDataRegState:I

    add-int/2addr v0, v3

    iget v3, p0, Landroid/telephony/ServiceState;->mMobileDataRoamingType:I

    add-int/2addr v0, v3

    iget v3, p0, Landroid/telephony/ServiceState;->mRilMobileDataRadioTechnology:I

    add-int/2addr v3, v0

    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsPsOnlyReg:Z

    if-eqz v0, :cond_7

    move v0, v1

    :goto_7
    add-int/2addr v0, v3

    iget v3, p0, Landroid/telephony/ServiceState;->mFemtocellIndicator:I

    add-int/2addr v3, v0

    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    if-eqz v0, :cond_8

    move v0, v1

    :goto_8
    add-int/2addr v0, v3

    iget-boolean v3, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    if-eqz v3, :cond_9

    :goto_9
    add-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_3

    :cond_4
    iget-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_4

    :cond_5
    iget-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_5

    :cond_6
    iget-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_6

    :cond_7
    move v0, v2

    goto :goto_7

    :cond_8
    move v0, v2

    goto :goto_8

    :cond_9
    move v1, v2

    goto :goto_9
.end method

.method public isEmergencyOnly()Z
    .locals 1

    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    return v0
.end method

.method public isPsOnlyReg()Z
    .locals 1

    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsPsOnlyReg:Z

    return v0
.end method

.method public isUsingCarrierAggregation()Z
    .locals 1

    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsUsingCarrierAggregation:Z

    return v0
.end method

.method public setCdmaDefaultRoamingIndicator(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    return-void
.end method

.method public setCdmaEriIconIndex(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    return-void
.end method

.method public setCdmaEriIconMode(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    return-void
.end method

.method public setCdmaRoamingIndicator(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    return-void
.end method

.method public setCssIndicator(I)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    return-void
.end method

.method public setDataOperatorAlphaLong(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    return-void
.end method

.method public setDataOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    iput-object p2, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    iput-object p3, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    return-void
.end method

.method public setDataOperatorNumeric(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    return-void
.end method

.method public setDataRegState(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    return-void
.end method

.method public setDataRoaming(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDataRoamingFromRegistration(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    return-void
.end method

.method public setDataRoamingType(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    return-void
.end method

.method public setEmergencyOnly(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    return-void
.end method

.method public setFemtocellIndicator(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/ServiceState;->mFemtocellIndicator:I

    return-void
.end method

.method public setIsManualSelection(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    return-void
.end method

.method public setIsUsingCarrierAggregation(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/telephony/ServiceState;->mIsUsingCarrierAggregation:Z

    return-void
.end method

.method public setLteEarfcnRsrpBoost(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/ServiceState;->mLteEarfcnRsrpBoost:I

    return-void
.end method

.method public setLteImsVoiceAvail(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/ServiceState;->mLteImsVoiceAvail:I

    return-void
.end method

.method public setLteIsEbSupported(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/ServiceState;->mLteIsEbSupported:I

    return-void
.end method

.method public setLteIsEmergencyAccessBarred(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/ServiceState;->mLteIsEmergencyAccessBarred:I

    return-void
.end method

.method public setMobileDataRegState(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/ServiceState;->mMobileDataRegState:I

    return-void
.end method

.method public setMobileDataRoaming(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Landroid/telephony/ServiceState;->mMobileDataRoamingType:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMobileDataRoamingType(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/ServiceState;->mMobileDataRoamingType:I

    return-void
.end method

.method public setMobileVoiceRegState(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/ServiceState;->mMobileVoiceRegState:I

    return-void
.end method

.method public setOperatorAlpha(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    iput-object p2, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    iput-object p1, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    iput-object p2, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    return-void
.end method

.method public setOperatorAlphaLong(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    iput-object p1, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    return-void
.end method

.method public setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    iput-object p2, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    iput-object p3, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    iput-object p1, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    iput-object p2, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    iput-object p3, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    return-void
.end method

.method public setOptionalRadioTech(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/ServiceState;->mOptionalRadioTech:I

    return-void
.end method

.method public setPsOnlyReg(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/telephony/ServiceState;->mIsPsOnlyReg:Z

    return-void
.end method

.method public setRilDataRadioTechnology(I)V
    .locals 1

    const/16 v0, 0x13

    if-ne p1, v0, :cond_0

    const/16 p1, 0xe

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsUsingCarrierAggregation:Z

    :goto_0
    iput p1, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsUsingCarrierAggregation:Z

    goto :goto_0
.end method

.method public setRilMobileDataRadioTechnology(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/ServiceState;->mRilMobileDataRadioTechnology:I

    return-void
.end method

.method public setRilMobileVoiceRadioTechnology(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/ServiceState;->mRilMobileVoiceRadioTechnology:I

    return-void
.end method

.method public setRilVoiceRadioTechnology(I)V
    .locals 1

    const/16 v0, 0x13

    if-ne p1, v0, :cond_0

    const/16 p1, 0xe

    :cond_0
    iput p1, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    return-void
.end method

.method public setRoaming(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    iget v0, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    iput v0, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSnapshotStatus(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/ServiceState;->mSnapshotStatus:I

    return-void
.end method

.method public setState(I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/telephony/ServiceState;->setVoiceRegState(I)V

    return-void
.end method

.method public setStateOff()V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/telephony/ServiceState;->setNullState(I)V

    return-void
.end method

.method public setStateOutOfService()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/telephony/ServiceState;->setNullState(I)V

    return-void
.end method

.method public setSystemAndNetworkId(II)V
    .locals 0

    iput p1, p0, Landroid/telephony/ServiceState;->mSystemId:I

    iput p2, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    return-void
.end method

.method public setVoiceOperatorAlphaLong(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    return-void
.end method

.method public setVoiceOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    iput-object p2, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    iput-object p3, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    return-void
.end method

.method public setVoiceRegState(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    return-void
.end method

.method public setVoiceRegType(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/ServiceState;->mVoiceRegType:I

    return-void
.end method

.method public setVoiceRoaming(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVoiceRoamingType(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    return-void
.end method

.method public toSimpleString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Voice=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    invoke-static {v1}, Landroid/telephony/ServiceState;->getRoamingLogString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    invoke-static {v1}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " (Mobile:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ServiceState;->mMobileVoiceRegState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ServiceState;->mRilMobileVoiceRadioTechnology:I

    invoke-static {v1}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ")] Data=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    invoke-static {v1}, Landroid/telephony/ServiceState;->getRoamingLogString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    invoke-static {v1}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ServiceState;->mSnapshotStatus:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string/jumbo v1, " Snap"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string/jumbo v1, " (Mobile:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ServiceState;->mMobileDataRegState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ServiceState;->mMobileDataRoamingType:I

    invoke-static {v1}, Landroid/telephony/ServiceState;->getRoamingLogString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ServiceState;->mRilMobileDataRadioTechnology:I

    invoke-static {v1}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ")]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez v1, :cond_4

    const-string/jumbo v1, " OpName=[VL:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    iget-object v2, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    const-string/jumbo v1, ", VS:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string/jumbo v1, ", VN:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    iget-object v2, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    const-string/jumbo v1, ", DL:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    iget-object v2, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    const-string/jumbo v1, ", DS:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string/jumbo v1, ", DN:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " NID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " SID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ServiceState;->mSystemId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_4
    const-string/jumbo v1, " VoPS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ServiceState;->mLteImsVoiceAvail:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " EbSup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ServiceState;->mLteIsEbSupported:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " EABarr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ServiceState;->mLteIsEmergencyAccessBarred:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " RoamInd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " DefRoamInd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    if-eqz v1, :cond_5

    const-string/jumbo v1, " CSS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-boolean v1, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    if-eqz v1, :cond_6

    const-string/jumbo v1, " Manual"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-boolean v1, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    if-eqz v1, :cond_7

    const-string/jumbo v1, " EmergOnly"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    iget-boolean v1, p0, Landroid/telephony/ServiceState;->mIsPsOnlyReg:Z

    if-eqz v1, :cond_8

    const-string/jumbo v1, " PsOnly"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    iget-boolean v1, p0, Landroid/telephony/ServiceState;->mIsUsingCarrierAggregation:Z

    if-eqz v1, :cond_9

    const-string/jumbo v1, " CA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    iget-boolean v1, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    if-eqz v1, :cond_a

    const-string/jumbo v1, " DataRoamFromRegi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    iget v1, p0, Landroid/telephony/ServiceState;->mVoiceRegType:I

    if-eqz v1, :cond_b

    const-string/jumbo v1, " VoiceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ServiceState;->mVoiceRegType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_b
    iget v1, p0, Landroid/telephony/ServiceState;->mFemtocellIndicator:I

    if-eqz v1, :cond_c

    const-string/jumbo v1, " FemtoInd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ServiceState;->mFemtocellIndicator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_c
    iget v1, p0, Landroid/telephony/ServiceState;->mLteEarfcnRsrpBoost:I

    if-eqz v1, :cond_d

    const-string/jumbo v1, " RsrpBoost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ServiceState;->mLteEarfcnRsrpBoost:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget v4, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    invoke-static {v4}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    invoke-static {v4}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v0

    iget v4, p0, Landroid/telephony/ServiceState;->mRilMobileVoiceRadioTechnology:I

    invoke-static {v4}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v2

    iget v4, p0, Landroid/telephony/ServiceState;->mRilMobileDataRadioTechnology:I

    invoke-static {v4}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v1

    sget-boolean v4, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "voice "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    invoke-static {v5}, Landroid/telephony/ServiceState;->getRoamingLogString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "data "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    invoke-static {v5}, Landroid/telephony/ServiceState;->getRoamingLogString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v4, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "(manual)"

    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v4, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    if-eqz v4, :cond_1

    const-string/jumbo v4, "CSS supported"

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " RoamInd="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " DefRoamInd="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " VoiceRegType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/telephony/ServiceState;->mVoiceRegType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ImsVoiceAvail="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/telephony/ServiceState;->mLteImsVoiceAvail:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " IsEbSupport="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/telephony/ServiceState;->mLteIsEbSupported:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " IsEaBarred="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/telephony/ServiceState;->mLteIsEmergencyAccessBarred:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " Snap="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/telephony/ServiceState;->mSnapshotStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " MobileVoice="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/telephony/ServiceState;->mMobileVoiceRegState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " MobileData="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/telephony/ServiceState;->mMobileDataRegState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/telephony/ServiceState;->mMobileDataRoamingType:I

    invoke-static {v5}, Landroid/telephony/ServiceState;->getRoamingLogString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " PsOnly="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Landroid/telephony/ServiceState;->mIsPsOnlyReg:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " FemtocellInd="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/telephony/ServiceState;->mFemtocellIndicator:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " EmergOnly="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " IsDataRoamingFromRegistration="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " IsUsingCarrierAggregation="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Landroid/telephony/ServiceState;->mIsUsingCarrierAggregation:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " mLteEarfcnRsrpBoost="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/telephony/ServiceState;->mLteEarfcnRsrpBoost:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_0
    const-string/jumbo v4, ""

    goto/16 :goto_0

    :cond_1
    const-string/jumbo v4, "CSS not supported"

    goto/16 :goto_1

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "voice "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    invoke-static {v5}, Landroid/telephony/ServiceState;->getRoamingLogString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "data "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    invoke-static {v5}, Landroid/telephony/ServiceState;->getRoamingLogString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v4, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    if-eqz v4, :cond_3

    const-string/jumbo v4, "(manual)"

    :goto_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v4, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    if-eqz v4, :cond_4

    const-string/jumbo v4, "CSS supported"

    :goto_3
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/telephony/ServiceState;->mSystemId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " RoamInd="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " DefRoamInd="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " VoiceRegType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/telephony/ServiceState;->mVoiceRegType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ImsVoiceAvail="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/telephony/ServiceState;->mLteImsVoiceAvail:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " IsEbSupport="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/telephony/ServiceState;->mLteIsEbSupported:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " IsEaBarred="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/telephony/ServiceState;->mLteIsEmergencyAccessBarred:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " Snap="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/telephony/ServiceState;->mSnapshotStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " MobileVoice="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/telephony/ServiceState;->mMobileVoiceRegState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " MobileData="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/telephony/ServiceState;->mMobileDataRegState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/telephony/ServiceState;->mMobileDataRoamingType:I

    invoke-static {v5}, Landroid/telephony/ServiceState;->getRoamingLogString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " PsOnly="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Landroid/telephony/ServiceState;->mIsPsOnlyReg:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " FemtocellInd="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/telephony/ServiceState;->mFemtocellIndicator:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " EmergOnly="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " IsDataRoamingFromRegistration="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " IsUsingCarrierAggregation="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Landroid/telephony/ServiceState;->mIsUsingCarrierAggregation:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " mLteEarfcnRsrpBoost="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/telephony/ServiceState;->mLteEarfcnRsrpBoost:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_3
    const-string/jumbo v4, ""

    goto/16 :goto_2

    :cond_4
    const-string/jumbo v4, "CSS not supported"

    goto/16 :goto_3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/ServiceState;->mSystemId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsUsingCarrierAggregation:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/ServiceState;->mLteEarfcnRsrpBoost:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/ServiceState;->mVoiceRegType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/ServiceState;->mLteImsVoiceAvail:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/ServiceState;->mLteIsEbSupported:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/ServiceState;->mLteIsEmergencyAccessBarred:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/ServiceState;->mSnapshotStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/ServiceState;->mMobileVoiceRegState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/ServiceState;->mRilMobileVoiceRadioTechnology:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/ServiceState;->mMobileDataRegState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/ServiceState;->mMobileDataRoamingType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/ServiceState;->mRilMobileDataRadioTechnology:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsPsOnlyReg:Z

    if-eqz v0, :cond_5

    :goto_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/ServiceState;->mFemtocellIndicator:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/ServiceState;->mOptionalRadioTech:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    move v0, v2

    goto/16 :goto_0

    :cond_1
    move v0, v2

    goto/16 :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_4

    :cond_5
    move v1, v2

    goto :goto_5
.end method
