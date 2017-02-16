.class public Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
.super Ljava/lang/Object;
.source "EnterpriseExchangeAccount.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/enterprise/email/EnterpriseExchangeAccount$1;
    }
.end annotation


# static fields
.field public static final ACTION_CBA_INSTALL_STATUS_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.CBA_INSTALL_STATUS_INTERNAL"

.field public static final ACTION_CBA_INSTALL_STATUS_OLD:Ljava/lang/String; = "android.intent.action.sec.CBA_INSTALL_STATUS"

.field public static final ACTION_CBA_INSTALL_STATUS_SEC_EDM:Ljava/lang/String; = "com.samsung.edm.intent.action.EXCHANGE_CBA_INSTALL_STATUS"

.field public static final ACTION_CREATE_EMAIL_ACCOUNT:Ljava/lang/String; = "com.samsung.android.knox.intent.action.CREATE_EMAILACCOUNT_INTERNAL"

.field public static final ACTION_DELETE_EMAIL_ACCOUNT:Ljava/lang/String; = "com.samsung.android.knox.intent.action.DELETE_EMAILACCOUNT_INTERNAL"

.field public static final ACTION_DELETE_NOT_VALIDATED_EMAIL_ACCOUNT:Ljava/lang/String; = "com.samsung.android.knox.intent.action.DELETE_NOT_VALIDATED_EMAILACCOUNT_INTERNAL"

.field public static final ACTION_EAS_INTENT:Ljava/lang/String; = "com.samsung.android.knox.intent.action.EAS_INTENT_INTERNAL"

.field public static final ACTION_EMAIL_ENABLE_MESSSAGE_COMPOSE:Ljava/lang/String; = "com.samsung.android.knox.intent.action.EMAIL_ENABLE_MSG_COMPOSE_INTERNAL"

.field public static final ACTION_EMAIL_INSTALL_CERTIFICATE:Ljava/lang/String; = "com.samsung.android.knox.intent.action.EMAIL_INSTALL_CERT_INTERNAL"

.field public static final ACTION_EMAIL_RENAME_CERTIFICATE:Ljava/lang/String; = "com.samsung.android.knox.intent.action.EMAIL_RENAME_CERTIFICATE_INTERNAL"

.field public static final ACTION_ENFORCE_SMIME_ALIAS_EMAIL_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.ENFORCE_SMIME_ALIAS_EMAIL_INTERNAL"

.field public static final ACTION_ENFORCE_SMIME_ALIAS_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.ENFORCE_SMIME_ALIAS_INTERNAL"

.field public static final ACTION_FORCE_SMIME_CERTIFICATE:Ljava/lang/String; = "com.samsung.android.knox.intent.action.FORCE_SMIME_CERTIFICATE_INTERNAL"

.field public static final ACTION_FORCE_SMIME_CERTIFICATE_FOR_ENCRYPTION:Ljava/lang/String; = "com.samsung.android.knox.intent.action.FORCE_SMIME_CERTIFICATE_FOR_ENCRYPTION_INTERNAL"

.field public static final ACTION_FORCE_SMIME_CERTIFICATE_FOR_SIGNING:Ljava/lang/String; = "com.samsung.android.knox.intent.action.FORCE_SMIME_CERTIFICATE_FOR_SIGNING_INTERNAL"

.field public static final ACTION_GET_EMAIL_DEVICE_ID_REQUEST:Ljava/lang/String; = "com.samsung.android.knox.intent.action.GET_EMAIL_DEVICEID_REQUEST_INTERNAL"

.field public static final ACTION_GET_EMAIL_DEVICE_ID_RESULT:Ljava/lang/String; = "com.samsung.android.knox.intent.action.GET_EMAIL_DEVICEID_RESULT_INTERNAL"

.field public static final ACTION_RELEASE_SMIME_CERTIFICATE:Ljava/lang/String; = "com.samsung.android.knox.intent.action.RELEASE_SMIME_CERTIFICATE_INTERNAL"

.field public static final ACTION_RELEASE_SMIME_CERTIFICATE_FOR_ENCRYPTION:Ljava/lang/String; = "com.samsung.android.knox.intent.action.RELEASE_SMIME_CERTIFICATE_FOR_ENCRYPTION_INTERNAL"

.field public static final ACTION_RELEASE_SMIME_CERTIFICATE_FOR_SIGNING:Ljava/lang/String; = "com.samsung.android.knox.intent.action.RELEASE_SMIME_CERTIFICATE_FOR_SIGNING_INTERNAL"

.field public static final ACTION_REQUEST_EMAIL_ACCOUNT_PASSWORD:Ljava/lang/String; = "com.samsung.android.knox.intent.action.REQUEST_EMAILACCOUNT_PASSWORD_INTERNAL"

.field public static final ACTION_RESULT_EMAIL_ACCOUNT_PASSWORD:Ljava/lang/String; = "com.samsung.android.knox.intent.action.RESULT_EMAILACCOUNT_PASSWORD_INTERNAL"

.field public static final ACTION_SET_EMAIL_ACCOUNT_PASSWORD:Ljava/lang/String; = "com.samsung.android.knox.intent.action.SET_EMAILACCOUNT_PASSWORD_INTERNAL"

.field public static final ACTION_SMIME_INSTALL_STATUS:Ljava/lang/String; = "com.samsung.edm.intent.action.EXCHANGE_SMIME_INSTALL_STATUS"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/sec/enterprise/email/EnterpriseExchangeAccount;",
            ">;"
        }
    .end annotation
.end field

.field public static final ENFORCE_SMIME_ALIAS_TYPE_ENCRYPT:I = 0x0

.field public static final ENFORCE_SMIME_ALIAS_TYPE_SIGN:I = 0x1

.field public static final EXTRA_ACCOUNT_EAS_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.ACCOUNT_EAS_INTERNAL"

.field public static final EXTRA_ACCOUNT_ID:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.ACCOUNT_ID"

.field public static final EXTRA_ACCOUNT_ID_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.ACCOUNT_ID_INTERNAL"

.field public static final EXTRA_ACCOUNT_NAME_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.ACCOUNT_NAME_INTERNAL"

.field public static final EXTRA_ACCOUNT_SETUP_RESULT_STATUS_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.ACCOUNT_SETUP_RESULT_STATUS_INTERNAL"

.field public static final EXTRA_CERTIFICATE_ALIAS_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.CERTIFICATE_ALIAS_INTERNAL"

.field public static final EXTRA_CERTIFICATE_DATA_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.CERTIFICATE_DATA_INTERNAL"

.field public static final EXTRA_CERTIFICATE_PASSWORD_ID:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.CERT_PASSWORD_ID_INTERNAL"

.field public static final EXTRA_CERTIFICATE_PASSWORD_ID_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.CERTIFICATE_PASSWD_ID_INTERNAL"

.field public static final EXTRA_CERTIFICATE_PASSWORD_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.CERTIFICATE_PASSWD_INTERNAL"

.field public static final EXTRA_CERTIFICATE_PATH:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.CERT_PATH_INTERNAL"

.field public static final EXTRA_CERTIFICATE_RESULT_ID:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.CERT_RESULT_ID_INTERNAL"

.field public static final EXTRA_CERTIFICATE_RESULT_ID_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.CERTIFICATE_RESULT_ID_INTERNAL"

.field public static final EXTRA_DEVICE_ID_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.DEVICE_ID_INTERNAL"

.field public static final EXTRA_DOMAIN_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.DOMAIN_INTERNAL"

.field public static final EXTRA_ENFORCE_SMIME_ALIAS_NAME:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.ENFORCE_SMIME_ALIAS_NAME_INTERNAL"

.field public static final EXTRA_ENFORCE_SMIME_ALIAS_STORAGE:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.ENFORCE_SMIME_ALIAS_STORAGE_INTERNAL"

.field public static final EXTRA_ENFORCE_SMIME_ALIAS_TYPE:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.ENFORCE_SMIME_ALIAS_TYPE"

.field public static final EXTRA_IS_DEFAULT_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.IS_DEFAULT_INTERNAL"

.field public static final EXTRA_NOTIFY_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.NOTIFY_INTERNAL"

.field public static final EXTRA_OUTGOING_USER_PASSWORD_ID_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.OUTGOING_USER_PASSWD_ID_INTERNAL"

.field public static final EXTRA_OUTGOING_USER_PASSWORD_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.OUTGOING_USER_PASSWD_INTERNAL"

.field public static final EXTRA_PEAK_DAYS_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.PEAK_DAYS_INTERNAL"

.field public static final EXTRA_PEAK_END_TIME_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.PEAK_END_TIME_INTERNAL"

.field public static final EXTRA_PEAK_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.PEAK_INTERNAL"

.field public static final EXTRA_PEAK_OFF_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.OFF_PEAK_INTERNAL"

.field public static final EXTRA_PEAK_START_TIME_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.PEAK_START_TIME_INTERNAL"

.field public static final EXTRA_PERIOD_CALENDAR_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.PERIOD_CALENDAR_INTERNAL"

.field public static final EXTRA_PERIOD_EMAIL_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.PERIOD_EMAIL_INTERNAL"

.field public static final EXTRA_RECEIVE_HOST_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.RECEIVE_HOST_INTERNAL"

.field public static final EXTRA_RETRIVAL_SIZE2_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.RETRIVAL_SIZE_INTERNAL"

.field public static final EXTRA_RETRIVAL_SIZE_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra."

.field public static final EXTRA_ROAMING_SCHEDULE_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.ROAMING_SCHEDULE_INTERNAL"

.field public static final EXTRA_SERVER_NAME_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.SERVICE_NAME_INTERNAL"

.field public static final EXTRA_SERVER_PATH_PREFIX_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.SERVER_PATH_PREFIX_INTERNAL"

.field public static final EXTRA_SERVICE_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.SERVICE_INTERNAL"

.field public static final EXTRA_SIGNATURE_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.SIGNATURE_INTERNAL"

.field public static final EXTRA_SMIME_INSTALL_TYPE:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.SMIME_INSTALL_TYPE"

.field public static final EXTRA_SMIME_RESULT:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.SMIME_RESULT"

.field public static final EXTRA_STATUS:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.STATUS"

.field public static final EXTRA_SYNC_CALENDAR_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.SYNC_CALENDAR_INTERNAL"

.field public static final EXTRA_SYNC_CONTACTS_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.SYNC_CONTACTS_INTERNAL"

.field public static final EXTRA_TRUST_ALL_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.TRUST_ALL_INTERNAL"

.field public static final EXTRA_USER_HANDLE_ID_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.USER_HANDLE_ID_INTERNAL"

.field public static final EXTRA_USER_ID_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

.field public static final EXTRA_USER_NAME_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.EXTRA_USER_NAME_INTERNAL"

.field public static final EXTRA_USER_PASSWORD_ID_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.USER_PASSWD_ID_INTERNAL"

.field public static final EXTRA_USER_PASSWORD_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.USER_PASSWD_INTERNAL"

.field public static final EXTRA_USE_SSL_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.USE_SSL_INTERNAL"

.field public static final EXTRA_USE_TLS_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.USE_TLS_INTERNAL"

.field public static final EXTRA_VIBRATE_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.EXTRA_VIBRATE_INTERNAL"

.field public static final EXTRA_VIBRATE_WHEN_SILENT_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.VIBRATE_WHEN_SILENT_INTERNAL"

.field public static final SET_SMIME_CERTIFICATE_ALL:I = 0x1

.field public static final SET_SMIME_CERTIFICATE_BY_ENCRYPTION:I = 0x2

.field public static final SET_SMIME_CERTIFICATE_BY_SIGNING:I = 0x3

.field public static final SET_SMIME_CERTIFICATE_INVALID_ACCOUNT_ID:I = 0x3

.field public static final SET_SMIME_CERTIFICATE_INVALID_PASSWORD:I = 0x2

.field public static final SET_SMIME_CERTIFICATE_NOT_FOUND:I = 0x1

.field public static final SET_SMIME_CERTIFICATE_OK:I = -0x1

.field public static final SET_SMIME_CERTIFICATE_UNKNOWN_ERROR:I = 0x0

.field public static final SET_SMIME_CERTIFICATE_USER_CANCELED:I = 0x4


# instance fields
.field public mAcceptAllCertificates:Z

.field public mAllowHTMLEmail:Z

.field public mDisplayName:Ljava/lang/String;

.field public mEasUser:Ljava/lang/String;

.field public mEmailAddress:Ljava/lang/String;

.field public mEmailBodyTruncationSize:I

.field public mEmailNotificationVibrateAlways:Z

.field public mEmailNotificationVibrateWhenSilent:Z

.field public mEmailRoamingBodyTruncationSize:I

.field public mId:J

.field public mIsDefault:Z

.field public mMaxCalendarAgeFilter:I

.field public mMaxDevicePasswordFailedAttempts:I

.field public mMaxEmailAgeFilter:I

.field public mMaxEmailBodyTruncationSize:I

.field public mMaxEmailHtmlBodyTruncationSize:I

.field public mMinDevicePasswordLength:I

.field public mMinPasswordComplexCharacters:I

.field public mOffPeakSyncSchedule:I

.field public mPassword:Ljava/lang/String;

.field public mPeakDays:I

.field public mPeakEndMinute:I

.field public mPeakStartMinute:I

.field public mPeakSyncSchedule:I

.field public mProtocol:Ljava/lang/String;

.field public mProtocolVersion:Ljava/lang/String;

.field public mRoamingSyncSchedule:I

.field public mSenderName:Ljava/lang/String;

.field public mServerAddress:Ljava/lang/String;

.field public mServerPort:I

.field public mSignature:Ljava/lang/String;

.field public mSyncCalendar:Z

.field public mSyncCalendarAge:I

.field public mSyncContacts:Z

.field public mSyncInterval:I

.field public mSyncLookback:I

.field public mSyncNotes:Z

.field public mSyncTasks:Z

.field public mUseSSL:Z

.field public mUseTLS:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 288
    new-instance v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount$1;

    invoke-direct {v0}, Landroid/sec/enterprise/email/EnterpriseExchangeAccount$1;-><init>()V

    sput-object v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    invoke-direct {p0, p1}, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->readFromParcel(Landroid/os/Parcel;)V

    .line 353
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 358
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEasUser:Ljava/lang/String;

    .line 359
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mServerAddress:Ljava/lang/String;

    .line 360
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mServerPort:I

    .line 361
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mProtocol:Ljava/lang/String;

    .line 362
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPassword:Ljava/lang/String;

    .line 363
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mUseSSL:Z

    .line 364
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mUseTLS:Z

    .line 365
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mAcceptAllCertificates:Z

    .line 366
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mId:J

    .line 367
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mDisplayName:Ljava/lang/String;

    .line 368
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailAddress:Ljava/lang/String;

    .line 369
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSenderName:Ljava/lang/String;

    .line 370
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mProtocolVersion:Ljava/lang/String;

    .line 371
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSignature:Ljava/lang/String;

    .line 372
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncLookback:I

    .line 373
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncInterval:I

    .line 374
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailNotificationVibrateAlways:Z

    .line 375
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailNotificationVibrateWhenSilent:Z

    .line 376
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mIsDefault:Z

    .line 377
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPeakDays:I

    .line 378
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPeakStartMinute:I

    .line 379
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPeakEndMinute:I

    .line 380
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPeakSyncSchedule:I

    .line 381
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mOffPeakSyncSchedule:I

    .line 382
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mRoamingSyncSchedule:I

    .line 383
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncCalendarAge:I

    .line 384
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailBodyTruncationSize:I

    .line 385
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailRoamingBodyTruncationSize:I

    .line 387
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncCalendar:Z

    .line 388
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    :goto_7
    iput-boolean v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncContacts:Z

    .line 389
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    :goto_8
    iput-boolean v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncTasks:Z

    .line 390
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    :goto_9
    iput-boolean v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncNotes:Z

    .line 392
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_a

    :goto_a
    iput-boolean v1, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mAllowHTMLEmail:Z

    .line 393
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mMinDevicePasswordLength:I

    .line 394
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mMinPasswordComplexCharacters:I

    .line 395
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mMaxEmailHtmlBodyTruncationSize:I

    .line 396
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mMaxEmailBodyTruncationSize:I

    .line 397
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mMaxCalendarAgeFilter:I

    .line 398
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mMaxEmailAgeFilter:I

    .line 399
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mMaxDevicePasswordFailedAttempts:I

    .line 357
    return-void

    :cond_0
    move v0, v2

    .line 363
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 364
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 365
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 374
    goto/16 :goto_3

    :cond_4
    move v0, v2

    .line 375
    goto/16 :goto_4

    :cond_5
    move v0, v2

    .line 376
    goto/16 :goto_5

    :cond_6
    move v0, v2

    .line 387
    goto :goto_6

    :cond_7
    move v0, v2

    .line 388
    goto :goto_7

    :cond_8
    move v0, v2

    .line 389
    goto :goto_8

    :cond_9
    move v0, v2

    .line 390
    goto :goto_9

    :cond_a
    move v1, v2

    .line 392
    goto :goto_a
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 301
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mDisplayName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 405
    const-string/jumbo v1, ",mEmailAddress ="

    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 405
    iget-object v1, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailAddress:Ljava/lang/String;

    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 405
    const-string/jumbo v1, ", mSenderName="

    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 406
    iget-object v1, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSenderName:Ljava/lang/String;

    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 406
    const-string/jumbo v1, ", mProtocol="

    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 406
    iget-object v1, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mProtocol:Ljava/lang/String;

    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 407
    const-string/jumbo v1, ", mProtocolVersion = "

    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 407
    iget-object v1, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mProtocolVersion:Ljava/lang/String;

    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 407
    const-string/jumbo v1, ", mUseSSL="

    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 408
    iget-boolean v1, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mUseSSL:Z

    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 408
    const-string/jumbo v1, ", mUseTLS="

    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 408
    iget-boolean v1, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mUseTLS:Z

    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 409
    const-string/jumbo v1, ", mAcceptAllCertificates = "

    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 409
    iget-boolean v1, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mAcceptAllCertificates:Z

    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 410
    const-string/jumbo v1, ", mSyncLookback="

    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 410
    iget v1, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncLookback:I

    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 410
    const-string/jumbo v1, ", mSyncInterval="

    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 411
    iget v1, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncInterval:I

    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 411
    const-string/jumbo v1, ", mEmailNotificationVibrateAlways="

    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 412
    iget-boolean v1, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailNotificationVibrateAlways:Z

    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 412
    const-string/jumbo v1, ", mIsDefault ="

    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 413
    iget-boolean v1, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mIsDefault:Z

    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 413
    const-string/jumbo v1, ", mPeakDays ="

    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 413
    iget v1, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPeakDays:I

    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 414
    const-string/jumbo v1, ", mPeakStartMinute="

    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 414
    iget v1, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPeakStartMinute:I

    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 415
    const-string/jumbo v1, ", mPeakEndMinute="

    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 415
    iget v1, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPeakEndMinute:I

    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 415
    const-string/jumbo v1, ", mPeakSyncSchedule="

    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 416
    iget v1, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPeakSyncSchedule:I

    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 416
    const-string/jumbo v1, ", mOffPeakSyncSchedule="

    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 417
    iget v1, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mOffPeakSyncSchedule:I

    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 417
    const-string/jumbo v1, ", mRoamingSyncSchedule="

    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 418
    iget v1, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mRoamingSyncSchedule:I

    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 418
    const-string/jumbo v1, ", mSyncCalendarAge="

    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 419
    iget v1, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncCalendarAge:I

    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 419
    const-string/jumbo v1, ", mEmailBodyTruncationSize="

    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 420
    iget v1, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailBodyTruncationSize:I

    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 421
    const-string/jumbo v1, ", mEmailRoamingBodyTruncationSize="

    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 422
    iget v1, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailRoamingBodyTruncationSize:I

    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 422
    const-string/jumbo v1, ", mSyncCalendar="

    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 423
    iget-boolean v1, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncCalendar:Z

    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 423
    const-string/jumbo v1, ", mSyncContacts="

    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 423
    iget-boolean v1, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncContacts:Z

    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 424
    const-string/jumbo v1, ", mAllowHTMLEmail="

    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 424
    iget-boolean v1, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mAllowHTMLEmail:Z

    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 309
    iget-object v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEasUser:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mServerAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 311
    iget v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mServerPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 312
    iget-object v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mProtocol:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 314
    iget-boolean v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mUseSSL:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 315
    iget-boolean v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mUseTLS:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 316
    iget-boolean v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mAcceptAllCertificates:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 317
    iget-wide v4, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mId:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 318
    iget-object v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSenderName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mProtocolVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSignature:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 323
    iget v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncLookback:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 324
    iget v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncInterval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 325
    iget-boolean v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailNotificationVibrateAlways:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 326
    iget-boolean v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailNotificationVibrateWhenSilent:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 327
    iget-boolean v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mIsDefault:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 328
    iget v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPeakDays:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 329
    iget v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPeakStartMinute:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 330
    iget v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPeakEndMinute:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 331
    iget v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPeakSyncSchedule:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 332
    iget v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mOffPeakSyncSchedule:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 333
    iget v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mRoamingSyncSchedule:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 334
    iget v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncCalendarAge:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 335
    iget v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailBodyTruncationSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 336
    iget v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailRoamingBodyTruncationSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 337
    iget-boolean v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncCalendar:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 338
    iget-boolean v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncContacts:Z

    if-eqz v0, :cond_7

    move v0, v1

    :goto_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 339
    iget-boolean v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncTasks:Z

    if-eqz v0, :cond_8

    move v0, v1

    :goto_8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 340
    iget-boolean v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncNotes:Z

    if-eqz v0, :cond_9

    move v0, v1

    :goto_9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 342
    iget-boolean v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mAllowHTMLEmail:Z

    if-eqz v0, :cond_a

    :goto_a
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 343
    iget v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mMinDevicePasswordLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 344
    iget v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mMinPasswordComplexCharacters:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    iget v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mMaxEmailHtmlBodyTruncationSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 346
    iget v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mMaxEmailBodyTruncationSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 347
    iget v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mMaxCalendarAgeFilter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 348
    iget v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mMaxEmailAgeFilter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    iget v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mMaxDevicePasswordFailedAttempts:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 308
    return-void

    :cond_0
    move v0, v2

    .line 314
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 315
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 316
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 325
    goto/16 :goto_3

    :cond_4
    move v0, v2

    .line 326
    goto/16 :goto_4

    :cond_5
    move v0, v2

    .line 327
    goto/16 :goto_5

    :cond_6
    move v0, v2

    .line 337
    goto :goto_6

    :cond_7
    move v0, v2

    .line 338
    goto :goto_7

    :cond_8
    move v0, v2

    .line 339
    goto :goto_8

    :cond_9
    move v0, v2

    .line 340
    goto :goto_9

    :cond_a
    move v1, v2

    .line 342
    goto :goto_a
.end method
