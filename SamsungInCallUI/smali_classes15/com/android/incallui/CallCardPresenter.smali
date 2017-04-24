.class public Lcom/android/incallui/CallCardPresenter;
.super Lcom/android/incallui/Presenter;
.source "CallCardPresenter.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;
.implements Lcom/android/incallui/InCallPresenter$InCallDetailsListener;
.implements Lcom/android/incallui/InCallPresenter$InCallEventListener;
.implements Lcom/android/incallui/CallList$CallUpdateListener;
.implements Lcom/android/incallui/DistanceHelper$Listener;
.implements Lcom/android/incallui/coreapps/CoreAppsContactManager$UpdateCoreAppsContactListener;
.implements Lcom/android/incallui/util/SecCallerInfoUtils$NumberChangedListener;
.implements Lcom/android/incallui/AudioModeProvider$AudioModeListener;
.implements Lcom/android/incallui/smartcall/SmartCallController$SmartCallEventListener;
.implements Lcom/android/incallui/CallOrgInfoController$SecCallOrgInfoListener;
.implements Lcom/android/incallui/InCallPresenter$UpdateContactListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/CallCardPresenter$JanskyCallback;,
        Lcom/android/incallui/CallCardPresenter$ContactLookupCallback;,
        Lcom/android/incallui/CallCardPresenter$PhoneType;,
        Lcom/android/incallui/CallCardPresenter$EmergencyCallListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/Presenter",
        "<",
        "Lcom/android/incallui/CallCardUi;",
        ">;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
        "Lcom/android/incallui/InCallPresenter$IncomingCallListener;",
        "Lcom/android/incallui/InCallPresenter$InCallDetailsListener;",
        "Lcom/android/incallui/InCallPresenter$InCallEventListener;",
        "Lcom/android/incallui/CallList$CallUpdateListener;",
        "Lcom/android/incallui/DistanceHelper$Listener;",
        "Lcom/android/incallui/coreapps/CoreAppsContactManager$UpdateCoreAppsContactListener;",
        "Lcom/android/incallui/util/SecCallerInfoUtils$NumberChangedListener;",
        "Lcom/android/incallui/AudioModeProvider$AudioModeListener;",
        "Lcom/android/incallui/smartcall/SmartCallController$SmartCallEventListener;",
        "Lcom/android/incallui/CallOrgInfoController$SecCallOrgInfoListener;",
        "Lcom/android/incallui/InCallPresenter$UpdateContactListener;"
    }
.end annotation


# static fields
.field private static final CALL_TIME_UPDATE_INTERVAL_MS:J = 0x3e8L

.field private static final ECID_UNKNOWN_NAME:Ljava/lang/String; = "UNKNOWN NAME"

.field private static final EVENT_UPDATE_SMART_CALL_INFO:I = 0x1

.field private static final EVENT_UPDATE_SMART_CALL_INFO_AFTER_2_SEC:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field private static final TIMER_2_SEC:I = 0x7d0

.field private static final UPDATE_PHOTO:I


# instance fields
.field private mCallTimer:Lcom/android/incallui/CallTimer;

.field private mContactsPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mDialingCallType:I

.field private mDistanceHelper:Lcom/android/incallui/DistanceHelper;

.field private mEcidListener:Lcom/android/incallui/service/EcidClient$Listener;

.field private final mEmergencyCallListener:Lcom/android/incallui/CallCardPresenter$EmergencyCallListener;

.field private final mHandler:Landroid/os/Handler;

.field private mHasShownToast:Z

.field private mInCallContactInteractions:Lcom/android/incallui/InCallContactInteractions;

.field private mIsFullscreen:Z

.field private mPrimary:Lcom/android/incallui/Call;

.field public mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

.field private mSecCall:Lcom/android/incallui/SecCall;

.field private mSecondary:Lcom/android/incallui/Call;

.field private mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

.field private mShowMessageVoiceFromVideo:I

.field private mSpinnerShowing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/incallui/Presenter;-><init>()V

    invoke-static {}, Lcom/android/incalluibind/ObjectFactory;->newEmergencyCallListener()Lcom/android/incallui/CallCardPresenter$EmergencyCallListener;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mEmergencyCallListener:Lcom/android/incallui/CallCardPresenter$EmergencyCallListener;

    iput-boolean v1, p0, Lcom/android/incallui/CallCardPresenter;->mSpinnerShowing:Z

    iput-boolean v1, p0, Lcom/android/incallui/CallCardPresenter;->mHasShownToast:Z

    iput-boolean v1, p0, Lcom/android/incallui/CallCardPresenter;->mIsFullscreen:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/CallCardPresenter;->mDialingCallType:I

    iput v1, p0, Lcom/android/incallui/CallCardPresenter;->mShowMessageVoiceFromVideo:I

    new-instance v0, Lcom/android/incallui/CallCardPresenter$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/CallCardPresenter$1;-><init>(Lcom/android/incallui/CallCardPresenter;)V

    iput-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/incallui/CallTimer;

    new-instance v1, Lcom/android/incallui/CallCardPresenter$2;

    invoke-direct {v1, p0}, Lcom/android/incallui/CallCardPresenter$2;-><init>(Lcom/android/incallui/CallCardPresenter;)V

    invoke-direct {v0, v1}, Lcom/android/incallui/CallTimer;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mCallTimer:Lcom/android/incallui/CallTimer;

    const-string v0, "ecid_enable"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/incallui/CallCardPresenter$3;

    invoke-direct {v0, p0}, Lcom/android/incallui/CallCardPresenter$3;-><init>(Lcom/android/incallui/CallCardPresenter;)V

    iput-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mEcidListener:Lcom/android/incallui/service/EcidClient$Listener;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/CallCardPresenter;Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/incallui/CallCardPresenter;->onContactInfoComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/CallCardPresenter;Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/CallCardPresenter;->onImageLoadComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/incallui/CallCardPresenter;Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/CallCardPresenter;->onContactInteractionsInfoComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/incallui/CallCardPresenter;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/CallCardPresenter;->updateSmartCall(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/incallui/CallCardPresenter;Lcom/android/incallui/Call;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/CallCardPresenter;->onEcidUpdate(Lcom/android/incallui/Call;)V

    return-void
.end method

.method private areCallsSame(Lcom/android/incallui/Call;Lcom/android/incallui/Call;)Z
    .locals 2

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private checkManageConferenceVisibleConditionforGED()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private getAccountForCall(Lcom/android/incallui/Call;)Landroid/telecom/PhoneAccount;
    .locals 2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/contacts/common/compat/telecom/TelecomManagerCompat;->getPhoneAccount(Landroid/telecom/TelecomManager;Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v1

    goto :goto_0
.end method

.method private getCallProviderLabel(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/incallui/CallCardPresenter;->getAccountForCall(Lcom/android/incallui/Call;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/android/contacts/common/compat/telecom/TelecomManagerCompat;->getCallCapablePhoneAccounts(Landroid/telecom/TelecomManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getCallStateIcon()Landroid/graphics/drawable/Drawable;
    .locals 4

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getTelecomCall()Landroid/telecom/Call;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telecom/Call$Details;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telecom/StatusHints;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/telecom/StatusHints;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;
    .locals 4

    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    const-string v2, "china_cdma_call"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getCdmaLatestCallFromId()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getCdmaEarliestCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eq v0, p2, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    if-eq v0, p2, :cond_2

    move-object v1, v0

    goto :goto_0

    :cond_2
    if-nez p3, :cond_4

    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getDisconnectingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eq v0, p2, :cond_3

    move-object v1, v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eq v0, p2, :cond_4

    move-object v1, v0

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_5

    if-eq v0, p2, :cond_5

    move-object v1, v0

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getSecondBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    move-object v1, v0

    goto :goto_0
.end method

.method private getConferencePhoto(Lcom/android/incallui/Call;)Landroid/graphics/drawable/Drawable;
    .locals 5

    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lcom/android/incallui/Call;->hasProperty(I)Z

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getConferencePhoto: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const v2, 0x7f02012c

    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    return-object v1

    :cond_0
    const v2, 0x7f020128

    goto :goto_0
.end method

.method private getConferenceString(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 4

    invoke-static {p1}, Lcom/android/incallui/util/CallTypeUtils;->isEnhancedVoiceConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/incallui/CallCardPresenter;->getVZWConferenceString(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const v0, 0x7f09001b

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getConnectionLabel()Ljava/lang/String;
    .locals 7

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getTelecomCall()Landroid/telecom/Call;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telecom/Call$Details;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/telecom/StatusHints;->getLabel()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3}, Landroid/telecom/StatusHints;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->hasOutgoingGatewayCall()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    :try_start_0
    iget-object v5, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getGatewayInfo()Landroid/telecom/GatewayInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telecom/GatewayInfo;->getGatewayProviderPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v5, "Gateway Application Not Found."

    invoke-static {p0, v5, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private getGatewayNumber()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->hasOutgoingGatewayCall()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getGatewayInfo()Landroid/telecom/GatewayInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/GatewayInfo;->getGatewayAddress()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/CallCardPresenter;->getNumberFromHandle(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getNumberFromHandle(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSubscriptionNumber()Ljava/lang/String;
    .locals 4

    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/contacts/common/compat/telecom/TelecomManagerCompat;->getPhoneAccount(Landroid/telecom/TelecomManager;Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getSubscriptionAddress()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/incallui/CallCardPresenter;->getNumberFromHandle(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getVZWConferenceString(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x1

    invoke-static {p1}, Lcom/android/incallui/util/CallTypeUtils;->isEnhancedVoiceConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {p1}, Lcom/android/incallui/util/ImsCommonUtils;->getIMSConferenceCallCounts(Lcom/android/incallui/Call;)I

    move-result v0

    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->getIMSConferenceMaxCallCounts()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    if-ge v3, v0, :cond_0

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    :goto_1
    invoke-static {p1, v3}, Lcom/android/incallui/util/SecCallExtraUtils;->getIMSConferenceParticipantName(Lcom/android/incallui/Call;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string v5, ", "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    sget-object v5, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getConferenceString : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private static hasCallSubject(Lcom/android/incallui/Call;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getTelecomCall()Landroid/telecom/Call;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.telecom.extra.CALL_SUBJECT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasOutgoingGatewayCall()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getGatewayInfo()Landroid/telecom/GatewayInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getGatewayInfo()Landroid/telecom/GatewayInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/GatewayInfo;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isPrimaryCallActive()Z
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPrimaryCallDisconnecting()Z
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPrimaryCallOnHold()Z
    .locals 4

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private maybeClearSessionModificationState(Lcom/android/incallui/Call;)V
    .locals 0

    return-void
.end method

.method private maybeSendAccessibilityEvent(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq p1, v1, :cond_2

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq p2, v1, :cond_4

    :cond_2
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq p1, v1, :cond_3

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq p2, v1, :cond_4

    :cond_3
    if-eqz p3, :cond_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardUi;

    invoke-interface {v1}, Lcom/android/incallui/CallCardUi;->sendAccessibilityAnnouncement()V

    goto :goto_0
.end method

.method private maybeShowHdAudioIcon()V
    .locals 3

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->isPrimaryCallActive()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->isPrimaryCallOnHold()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/android/incallui/Call;->hasProperty(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getLastForwardedNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardUi;

    invoke-interface {v1, v0}, Lcom/android/incallui/CallCardUi;->showHdAudioIndicator(Z)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeShowManageConferenceCallButton()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardUi;

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->shouldShowManageConference()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/incallui/CallCardUi;->showManageConferenceCallButton(Z)V

    :cond_0
    return-void
.end method

.method private maybeShowProgressSpinner(II)V
    .locals 2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    :goto_0
    iget-boolean v1, p0, Lcom/android/incallui/CallCardPresenter;->mSpinnerShowing:Z

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardUi;

    invoke-interface {v1, v0}, Lcom/android/incallui/CallCardUi;->setProgressSpinnerVisible(Z)V

    iput-boolean v0, p0, Lcom/android/incallui/CallCardPresenter;->mSpinnerShowing:Z

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeStartSearch(Lcom/android/incallui/Call;Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/android/incallui/CallCardPresenter;->startContactInfoSearch(Lcom/android/incallui/Call;ZZ)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onContactInfoComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    .locals 5

    const-string v2, "ecid_enable"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/incallui/CallList;->getCallById(Ljava/lang/String;)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/incallui/service/EcidClient;->updateContactInfo(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    :cond_0
    if-eqz p3, :cond_1

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    if-nez p3, :cond_6

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_2
    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_7

    invoke-direct {p0, p2, p3}, Lcom/android/incallui/CallCardPresenter;->updateContactEntry(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    :goto_1
    iget-object v2, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Contact found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/incallui/CallList;->getCallById(Ljava/lang/String;)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getLogState()Lcom/android/incallui/Call$LogState;

    move-result-object v2

    iget v3, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactLookupResult:I

    iput v3, v2, Lcom/android/incallui/Call$LogState;->contactLookupResult:I

    :cond_4
    iget-object v2, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactUri:Landroid/net/Uri;

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactUri:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/android/incallui/CallerInfoUtils;->sendViewNotification(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_5
    return-void

    :cond_6
    const/4 v1, 0x0

    goto :goto_0

    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dropping stale contact lookup info for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private onContactInteractionsInfoComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v1, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->locationAddress:Landroid/location/Address;

    iput-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->locationAddress:Landroid/location/Address;

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->updateContactInteractions()V

    goto :goto_0
.end method

.method private onEcidUpdate(Lcom/android/incallui/Call;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/CallCardPresenter;->areCallsSame(Lcom/android/incallui/Call;Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-static {p1, v0}, Lcom/android/incallui/service/EcidClient;->updateContactInfo(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryDisplayInfo()V

    :cond_0
    return-void
.end method

.method private onImageLoadComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "ecid_enable"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/incallui/CallList;->getCallById(Ljava/lang/String;)Lcom/android/incallui/Call;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/android/incallui/service/EcidClient;->updateContactInfo(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    :cond_2
    iget-object v2, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardUi;

    iget-object v3, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    iget-boolean v4, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    invoke-interface {v2, v3, v4}, Lcom/android/incallui/CallCardUi;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    :cond_3
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardUi;

    iget-object v3, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    iget-boolean v4, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    invoke-interface {v2, v3, v4}, Lcom/android/incallui/CallCardUi;->setSecondaryImage(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->updateGradientColor()V

    goto :goto_0
.end method

.method private setCallbackNumber()V
    .locals 8

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/android/incallui/Call;->hasProperty(I)Z

    move-result v2

    iget-object v5, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v5}, Lcom/android/incallui/Call;->isEmergencyCall()Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz v2, :cond_6

    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getSubscriptionNumber()Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v5

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/InCallPresenter;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v7}, Lcom/android/incallui/Call;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/android/contacts/common/compat/telecom/TelecomManagerCompat;->getLine1Number(Landroid/telecom/TelecomManager;Landroid/telephony/TelephonyManager;Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_4

    invoke-static {v0, v3}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "Numbers are the same (and callback number is not being forced to show); not showing the callback number"

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v5

    check-cast v5, Lcom/android/incallui/CallCardUi;

    iget-object v6, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v6}, Lcom/android/incallui/Call;->isEmergencyCall()Z

    move-result v6

    if-nez v6, :cond_5

    if-eqz v2, :cond_7

    :cond_5
    const/4 v6, 0x1

    :goto_2
    invoke-interface {v5, v0, v6}, Lcom/android/incallui/CallCardUi;->setCallbackNumber(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_6
    iget-object v5, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getTelecomCall()Landroid/telecom/Call;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telecom/Call$Details;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/telecom/StatusHints;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v5, "android.telecom.extra.CALL_BACK_NUMBER"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_7
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private setInCallContactInteractionsType(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mInCallContactInteractions:Lcom/android/incallui/InCallContactInteractions;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/InCallContactInteractions;

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/incallui/InCallContactInteractions;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mInCallContactInteractions:Lcom/android/incallui/InCallContactInteractions;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mInCallContactInteractions:Lcom/android/incallui/InCallContactInteractions;

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallContactInteractions;->switchContactType(Z)Z

    move-result v0

    goto :goto_0
.end method

.method private setYellowPageName(ZZLjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "yellowPageName isYellowPage : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contactExists :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "yellowPageName name : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/incallui/TelecomAdapter;->setYellowPageName(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->setYellowPageName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private shouldRefreshPrimaryInfo(ZLcom/android/incallui/CallCardUi;Z)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v1, :cond_2

    invoke-interface {p2}, Lcom/android/incallui/CallCardUi;->isCallSubjectVisible()Z

    move-result v1

    if-eq v1, p3, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private shouldShowCallSubject(Lcom/android/incallui/Call;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v2

    :cond_0
    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    :cond_1
    move v0, v1

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getCallSubject()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getNumberPresentation()I

    move-result v3

    if-ne v3, v1, :cond_3

    invoke-virtual {p1}, Lcom/android/incallui/Call;->isCallSubjectSupported()Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_2
    move v2, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method private shouldShowEndCallButton(Lcom/android/incallui/Call;I)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p2}, Lcom/android/incallui/Call$State;->isConnectingOrConnected(I)Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x9

    if-ne p2, v1, :cond_0

    :cond_2
    const/4 v1, 0x4

    if-eq p2, v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getSessionModificationState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private shouldShowManageConference()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Lcom/android/incallui/Call;->can(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/incallui/CallCardPresenter;->mIsFullscreen:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private shouldShowNoteSentToast(Lcom/android/incallui/Call;)Z
    .locals 2

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/android/incallui/CallCardPresenter;->hasCallSubject(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startContactInfoSearch(Lcom/android/incallui/Call;ZZ)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isAvailableIMSConferenceInfo()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/android/incallui/CallCardPresenter$ContactLookupCallback;

    invoke-direct {v1, p0, p2}, Lcom/android/incallui/CallCardPresenter$ContactLookupCallback;-><init>(Lcom/android/incallui/CallCardPresenter;Z)V

    invoke-virtual {v0, p1, p3, v1}, Lcom/android/incallui/ContactInfoCache;->findInfo(Lcom/android/incallui/Call;ZLcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;)V

    goto :goto_0
.end method

.method private startSearchForContactUpdate(Lcom/android/incallui/Call;Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isAvailableIMSConferenceInfo()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_1
    new-instance v2, Lcom/android/incallui/CallCardPresenter$ContactLookupCallback;

    invoke-direct {v2, p0, p2}, Lcom/android/incallui/CallCardPresenter$ContactLookupCallback;-><init>(Lcom/android/incallui/CallCardPresenter;Z)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/incallui/ContactInfoCache;->findInfoForContactChanges(Lcom/android/incallui/Call;ZLcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private startTimer(II)V
    .locals 4

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mHandler:Landroid/os/Handler;

    int-to-long v2, p2

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private updateContactEntry(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    .locals 0

    if-eqz p2, :cond_0

    iput-object p1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryDisplayInfo()V

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->updateSecondaryDisplayInfo()V

    goto :goto_0
.end method

.method private updateContactInteractions()V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->locationAddress:Landroid/location/Address;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->openingHours:Ljava/util/List;

    if-eqz v0, :cond_3

    :cond_0
    invoke-direct {p0, v1}, Lcom/android/incallui/CallCardPresenter;->setInCallContactInteractionsType(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardUi;

    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mInCallContactInteractions:Lcom/android/incallui/InCallContactInteractions;

    invoke-virtual {v3}, Lcom/android/incallui/InCallContactInteractions;->getBusinessListHeaderView()Landroid/view/View;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/android/incallui/CallCardUi;->setContactContextTitle(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mInCallContactInteractions:Lcom/android/incallui/InCallContactInteractions;

    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v3, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->locationAddress:Landroid/location/Address;

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mDistanceHelper:Lcom/android/incallui/DistanceHelper;

    iget-object v5, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v5, v5, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->locationAddress:Landroid/location/Address;

    invoke-virtual {v4, v5}, Lcom/android/incallui/DistanceHelper;->calculateDistance(Landroid/location/Address;)F

    move-result v4

    iget-object v5, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v5, v5, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->openingHours:Ljava/util/List;

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/incallui/InCallContactInteractions;->setBusinessInfo(Landroid/location/Address;FLjava/util/List;)V

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardUi;

    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mInCallContactInteractions:Lcom/android/incallui/InCallContactInteractions;

    invoke-virtual {v3}, Lcom/android/incallui/InCallContactInteractions;->getListAdapter()Lcom/android/incallui/InCallContactInteractions$InCallContactInteractionsListAdapter;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/android/incallui/CallCardUi;->setContactContextContent(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardUi;

    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    :goto_0
    invoke-interface {v0, v1}, Lcom/android/incallui/CallCardUi;->showContactContext(Z)V

    :goto_1
    return-void

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardUi;

    invoke-interface {v0, v2}, Lcom/android/incallui/CallCardUi;->showContactContext(Z)V

    goto :goto_1
.end method

.method private updateJanskyinfo()V
    .locals 4

    const-string v0, "jansky_info_for_tmo"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo;->isActiveJanskyAccount()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery;->getInstance(Landroid/content/Context;)Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->getLineMSISDN()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/incallui/CallCardPresenter$JanskyCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/incallui/CallCardPresenter$JanskyCallback;-><init>(Lcom/android/incallui/CallCardPresenter;Lcom/android/incallui/CallCardPresenter$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery;->janskyMultiLinestartQuery(Ljava/lang/String;Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery$OnQueryCompleteListenerMultiLine;)V

    :cond_0
    return-void
.end method

.method private updatePrimaryCallState()V
    .locals 11

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/android/incallui/Call;->hasProperty(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-wide v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->userType:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    :cond_0
    const/4 v10, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardUi;

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v2

    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getSessionModificationState()I

    move-result v3

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getConnectionLabel()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getCallStateIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getGatewayNumber()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/android/incallui/Call;->hasProperty(I)Z

    move-result v8

    iget-object v9, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v9}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v9

    invoke-interface/range {v0 .. v10}, Lcom/android/incallui/CallCardUi;->setCallState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZZZ)V

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->maybeShowHdAudioIcon()V

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->setCallbackNumber()V

    :cond_1
    return-void

    :cond_2
    const/4 v10, 0x0

    goto :goto_0
.end method

.method private updateSecondaryDisplayInfo()V
    .locals 13

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardUi;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-boolean v8, p0, Lcom/android/incallui/CallCardPresenter;->mIsFullscreen:Z

    invoke-interface/range {v0 .. v8}, Lcom/android/incallui/CallCardUi;->setSecondary(ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZ)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-direct {p0, v4}, Lcom/android/incallui/CallCardPresenter;->getConferenceString(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-direct {p0, v4}, Lcom/android/incallui/CallCardPresenter;->getCallProviderLabel(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    const/16 v8, 0x80

    invoke-virtual {v7, v8}, Lcom/android/incallui/Call;->can(I)Z

    move-result v7

    iget-object v8, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-interface/range {v0 .. v8}, Lcom/android/incallui/CallCardUi;->setSecondary(ZLjava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZLcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateSecondaryDisplayInfo() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-virtual {p0, v1}, Lcom/android/incallui/CallCardPresenter;->getNameForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/CallTypeUtils;->isSrvccConference(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    const-string v4, "updateSecondaryDisplayInfo() srvcc"

    invoke-static {v1, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Conference call"

    :cond_3
    if-eqz v2, :cond_4

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v1, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v3, 0x1

    :goto_1
    const/4 v1, 0x1

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-direct {p0, v4}, Lcom/android/incallui/CallCardPresenter;->getCallProviderLabel(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    const/16 v8, 0x80

    invoke-virtual {v7, v8}, Lcom/android/incallui/Call;->can(I)Z

    move-result v7

    iget-object v8, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-interface/range {v0 .. v8}, Lcom/android/incallui/CallCardUi;->setSecondary(ZLjava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZLcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    goto/16 :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v4, v0

    invoke-interface/range {v4 .. v12}, Lcom/android/incallui/CallCardUi;->setSecondary(ZLjava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZLcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    goto/16 :goto_0
.end method

.method private updateSmartCall(Z)V
    .locals 4

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    new-instance v0, Lcom/android/incallui/smartcall/SmartCallUtil$SmartCallCookieWrapper;

    invoke-direct {v0}, Lcom/android/incallui/smartcall/SmartCallUtil$SmartCallCookieWrapper;-><init>()V

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    iput-object v2, v0, Lcom/android/incallui/smartcall/SmartCallUtil$SmartCallCookieWrapper;->call:Lcom/android/incallui/Call;

    iput-boolean p1, v0, Lcom/android/incallui/smartcall/SmartCallUtil$SmartCallCookieWrapper;->isTimeout:Z

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public endCallClicked()V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v1, v2}, Lcom/android/incallui/CallList;->isLiveCall(Lcom/android/incallui/Call;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disconnecting call: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/android/incallui/Call;->setState(I)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v1, v2}, Lcom/android/incallui/CallList;->onUpdate(Lcom/android/incallui/Call;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/TelecomAdapter;->disconnectCall(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCallTime()J
    .locals 12

    const-wide/16 v10, 0x0

    const-wide/16 v6, -0x1

    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-nez v3, :cond_1

    move-wide v4, v6

    :cond_0
    :goto_0
    return-wide v4

    :cond_1
    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getConnectTimeMillis()J

    move-result-wide v0

    const-string v3, "ctc_call_time_duration"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getCdmaEarliestCallForTime()Lcom/android/incallui/Call;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getConnectTimeMillis()J

    move-result-wide v0

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v4, v8, v0

    cmp-long v3, v0, v10

    if-lez v3, :cond_3

    cmp-long v3, v4, v10

    if-gtz v3, :cond_0

    :cond_3
    move-wide v4, v6

    goto :goto_0
.end method

.method public getNameForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;
    .locals 4
    .annotation build Lcom/android/contacts/common/testing/NeededForTesting;
    .end annotation

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->nameAlternative:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mContactsPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-static {v1, v2, v3}, Lcom/android/contacts/common/util/ContactDisplayUtils;->getPreferredDisplayName(Ljava/lang/String;Ljava/lang/String;Lcom/android/contacts/common/preference/ContactsPreferences;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v1, "ecid_enable"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    const-string v2, "UNKNOWN NAME"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    goto :goto_0
.end method

.method public getNumberForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;
    .locals 5
    .annotation build Lcom/android/contacts/common/testing/NeededForTesting;
    .end annotation

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->nameAlternative:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mContactsPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-static {v2, v3, v4}, Lcom/android/contacts/common/util/ContactDisplayUtils;->getPreferredDisplayName(Ljava/lang/String;Ljava/lang/String;Lcom/android/contacts/common/preference/ContactsPreferences;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->time:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->location:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->location:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->time:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_1
    iget-object v2, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->time:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->time:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->location:Ljava/lang/String;

    goto :goto_1
.end method

.method public getPrimaryCall()Lcom/android/incallui/Call;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    return-object v0
.end method

.method protected getPrimaryNameForCall()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSecondaryCall()Lcom/android/incallui/Call;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    return-object v0
.end method

.method public getSecondaryCallTime()J
    .locals 6

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    if-nez v4, :cond_0

    const-wide/16 v2, -0x1

    :goto_0
    return-wide v2

    :cond_0
    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getConnectTimeMillis()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v0

    goto :goto_0
.end method

.method public getSecondaryNameForCall()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Lcom/android/incallui/Call;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v2, 0x1

    invoke-static {p1, p0}, Lcom/android/incalluibind/ObjectFactory;->newDistanceHelper(Landroid/content/Context;Lcom/android/incallui/DistanceHelper$Listener;)Lcom/android/incallui/DistanceHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mDistanceHelper:Lcom/android/incallui/DistanceHelper;

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/ContactsPreferencesFactory;->newContactsPreferences(Landroid/content/Context;)Lcom/android/contacts/common/preference/ContactsPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mContactsPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    if-eqz p2, :cond_2

    iput-object p2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-direct {p0, v1}, Lcom/android/incallui/CallCardPresenter;->shouldShowNoteSentToast(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardUi;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/incallui/CallCardUi;->showNoteSentToast()V

    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, p0}, Lcom/android/incallui/CallList;->addCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    invoke-virtual {p2}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_3

    move v1, v2

    :goto_0
    invoke-direct {p0, p2, v2, v1}, Lcom/android/incallui/CallCardPresenter;->startContactInfoSearch(Lcom/android/incallui/Call;ZZ)V

    const-string v1, "ecid_enable"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mEcidListener:Lcom/android/incallui/service/EcidClient$Listener;

    invoke-static {p2, v1, v2, v3}, Lcom/android/incallui/service/EcidClient;->startEcidLookupQuery(Lcom/android/incallui/Call;Landroid/content/Context;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Lcom/android/incallui/service/EcidClient$Listener;)V

    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->updateJanskyinfo()V

    const-string v1, "voice_call_recording"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->getInstance()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->updateRecorderState()V

    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {p0, v4, v1, v2}, Lcom/android/incallui/CallCardPresenter;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    return-void

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    invoke-direct {p0, v4, v2}, Lcom/android/incallui/CallCardPresenter;->updateContactEntry(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    goto :goto_1
.end method

.method public onAudioMode(I)V
    .locals 0

    return-void
.end method

.method public onCallChanged(Lcom/android/incallui/Call;)V
    .locals 0

    return-void
.end method

.method public onCallStateButtonTouched()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incalluibind/ObjectFactory;->getCallStateButtonBroadcastIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "Sending call state button broadcast: "

    invoke-static {p0, v1, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onChildNumberChange()V
    .locals 1

    const-string v0, "onChildNumberChange"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryDisplayInfo()V

    goto :goto_0
.end method

.method public onContactChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/CallCardPresenter;->startSearchForContactUpdate(Lcom/android/incallui/Call;Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/CallCardPresenter;->startSearchForContactUpdate(Lcom/android/incallui/Call;Z)V

    :cond_1
    return-void
.end method

.method public onDetailsChanged(Lcom/android/incallui/Call;Landroid/telecom/Call$Details;)V
    .locals 5

    const/16 v4, 0x80

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDetailsChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isAvailableIMSConferenceInfo()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/TelecomAdapter;->getParticipantsCount()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_5

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/android/incallui/ContactInfoCache;->buildCacheEntryFromCall(Landroid/content/Context;Lcom/android/incallui/Call;Z)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryDisplayInfo()V

    :cond_1
    :goto_1
    const-string v0, "jansky_info_for_tmo"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->updateJanskyinfo()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardUi;

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardUi;

    invoke-interface {v1}, Lcom/android/incallui/CallCardUi;->needToShowMenu()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/incallui/CallCardUi;->showMenu(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardUi;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/incallui/CallCardUi;->updateVolteView(I)V

    :cond_3
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryCallState()V

    if-eqz p1, :cond_4

    invoke-virtual {p1, v4}, Lcom/android/incallui/Call;->can(I)Z

    move-result v0

    invoke-virtual {p2, v4}, Landroid/telecom/Call$Details;->can(I)Z

    move-result v1

    if-eq v0, v1, :cond_4

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->maybeShowManageConferenceCallButton()V

    :cond_4
    return-void

    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-static {v0, p1, v1, p0}, Lcom/android/incallui/util/SecCallerInfoUtils;->refreshContactInfoCache(Lcom/android/incallui/Call;Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Lcom/android/incallui/util/SecCallerInfoUtils$NumberChangedListener;)V

    goto :goto_1
.end method

.method public onFullscreenModeChanged(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/incallui/CallCardPresenter;->mIsFullscreen:Z

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardUi;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-interface {v0, v1}, Lcom/android/incallui/CallCardUi;->setSecondaryInfoVisible(Z)V

    invoke-interface {v0, p1}, Lcom/android/incallui/CallCardUi;->updateFullscreenMode(Z)V

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->maybeShowManageConferenceCallButton()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/incallui/CallCardPresenter;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    return-void
.end method

.method public onLastForwardedNumberChange()V
    .locals 1

    const-string v0, "onLastForwardedNumberChange"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryDisplayInfo()V

    goto :goto_0
.end method

.method public onLocationReady()V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->updateContactInteractions()V

    return-void
.end method

.method public onMute(Z)V
    .locals 0

    return-void
.end method

.method public onNumberChanged(Lcom/android/incallui/Call;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/CallCardPresenter;->maybeStartSearch(Lcom/android/incallui/Call;Z)V

    return-void
.end method

.method public onSecCallOrgInfoQueryComplete(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardUi;

    invoke-interface {v0, p1}, Lcom/android/incallui/CallCardUi;->updateCallerInfoOrgView(Ljava/lang/String;)V

    return-void
.end method

.method public onSecondaryCallerInfoVisibilityChanged(ZI)V
    .locals 0

    return-void
.end method

.method public onSessionModificationStateChange(I)V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSessionModificationStateChange : sessionModificationState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/incallui/CallCardPresenter;->maybeShowProgressSpinner(II)V

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardUi;

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    move v1, v2

    :goto_1
    invoke-interface {v0, v1, v2}, Lcom/android/incallui/CallCardUi;->setEndCallButtonEnabled(ZZ)V

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryCallState()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onSmartImageQueryComplete()V
    .locals 1

    const-string v0, "SmartImageCallback onQueryComplete"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/incallui/CallCardPresenter;->updateSmartCall(Z)V

    return-void
.end method

.method public onSmartInfoQueryComplete()V
    .locals 1

    const-string v0, "SmartCallback onQueryComplete"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/incallui/CallCardPresenter;->updateSmartCall(Z)V

    return-void
.end method

.method public onSmartInfoQueryStart()V
    .locals 2

    const-string v0, "SmartCallback onSmartInfoQueryStart"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/incallui/CallCardPresenter;->updateSmartCall(Z)V

    const/4 v0, 0x2

    const/16 v1, 0x7d0

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/CallCardPresenter;->startTimer(II)V

    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 27

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onStateChange() "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v26

    check-cast v26, Lcom/android/incallui/CallCardUi;

    if-nez v26, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object p2, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    :cond_2
    const/16 v20, 0x0

    const/16 v22, 0x0

    sget-object v4, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, p2

    if-ne v0, v4, :cond_6

    invoke-virtual/range {p3 .. p3}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v20

    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual/range {p3 .. p3}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v20

    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mInCallContactInteractions:Lcom/android/incallui/InCallContactInteractions;

    if-eqz v4, :cond_5

    sget-object v4, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, p1

    if-eq v0, v4, :cond_4

    sget-object v4, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, p2

    if-ne v0, v4, :cond_5

    :cond_4
    sget-object v4, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, p2

    if-eq v0, v4, :cond_b

    const/4 v4, 0x1

    :goto_2
    move-object/from16 v0, v26

    invoke-interface {v0, v4}, Lcom/android/incallui/CallCardUi;->showContactContext(Z)V

    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Primary call: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Secondary call: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    move-object/from16 v0, v20

    invoke-static {v4, v0}, Lcom/android/incallui/Call;->areSame(Lcom/android/incallui/Call;Lcom/android/incallui/Call;)Z

    move-result v4

    if-nez v4, :cond_c

    const/16 v21, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    move-object/from16 v0, v22

    invoke-static {v4, v0}, Lcom/android/incallui/Call;->areSame(Lcom/android/incallui/Call;Lcom/android/incallui/Call;)Z

    move-result v4

    if-nez v4, :cond_d

    const/16 v23, 0x1

    :goto_4
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    move-object/from16 v19, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v20, :cond_e

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual/range {v20 .. v20}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/incallui/CallList;->isNotUpdatingCall(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    const-string v4, "onStateChange - not update because of conference ended"

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    sget-object v4, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, p2

    if-eq v0, v4, :cond_7

    sget-object v4, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, p2

    if-ne v0, v4, :cond_9

    :cond_7
    invoke-virtual/range {p3 .. p3}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v20

    if-nez v20, :cond_8

    invoke-virtual/range {p3 .. p3}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v20

    :cond_8
    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v4, v6}, Lcom/android/incallui/CallCardPresenter;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v22

    goto/16 :goto_1

    :cond_9
    sget-object v4, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, p2

    if-ne v0, v4, :cond_3

    const-string v4, "roaming_enhancement"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static {}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->getInstance()Lcom/android/incallui/operator/usa/InCallUIExtensionManager;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->dismissCallRoamingGuardDialog(Z)V

    :cond_a
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v4, v6}, Lcom/android/incallui/CallCardPresenter;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v20

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v4}, Lcom/android/incallui/CallCardPresenter;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v22

    goto/16 :goto_1

    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_c
    const/16 v21, 0x0

    goto/16 :goto_3

    :cond_d
    const/16 v23, 0x0

    goto/16 :goto_4

    :cond_e
    if-eqz v21, :cond_f

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/incallui/CallCardPresenter;->shouldShowNoteSentToast(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface/range {v26 .. v26}, Lcom/android/incallui/CallCardUi;->showNoteSentToast()V

    :cond_f
    const-string v4, "feature_vzw"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_10

    const-string v4, "feature_spr"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    :cond_10
    if-eqz v21, :cond_11

    if-eqz v23, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    :cond_11
    const-string v4, "ecid_enable"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/incallui/CallCardPresenter;->mEcidListener:Lcom/android/incallui/service/EcidClient$Listener;

    invoke-static {v4, v6, v7, v8}, Lcom/android/incallui/service/EcidClient;->startEcidLookupQuery(Lcom/android/incallui/Call;Landroid/content/Context;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Lcom/android/incallui/service/EcidClient$Listener;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/incallui/CallCardPresenter;->mEcidListener:Lcom/android/incallui/service/EcidClient$Listener;

    invoke-static {v4, v6, v7, v8}, Lcom/android/incallui/service/EcidClient;->startEcidLookupQuery(Lcom/android/incallui/Call;Landroid/content/Context;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Lcom/android/incallui/service/EcidClient$Listener;)V

    :cond_12
    const-string v4, "feature_skt"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    if-eqz v20, :cond_13

    invoke-virtual/range {v20 .. v20}, Lcom/android/incallui/Call;->getOutgoingCallMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_13

    if-nez v22, :cond_13

    const/16 v21, 0x1

    :cond_13
    const-string v4, "support_smart_call"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-virtual/range {p3 .. p3}, Lcom/android/incallui/CallList;->getDisconnectingOrDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v16

    if-eqz v16, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v17

    if-eqz v17, :cond_14

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->smartCallInfo:Lcom/android/incallui/smartcall/SmartCallInfo;

    move-object/from16 v24, v0

    if-eqz v24, :cond_14

    invoke-virtual/range {v16 .. v16}, Lcom/android/incallui/Call;->getSmartCallLogInfoUpdated()Z

    move-result v4

    if-nez v4, :cond_14

    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/android/incallui/Call;->setSmartCallLogInfoUpdated(Z)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v4

    move-object/from16 v0, v24

    iget-object v6, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->name:Ljava/lang/String;

    if-eqz v6, :cond_25

    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->name:Ljava/lang/String;

    :goto_5
    move-object/from16 v0, v24

    iget-object v6, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationTypeCode:Ljava/lang/String;

    if-eqz v6, :cond_26

    move-object/from16 v0, v24

    iget-object v6, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationTypeCode:Ljava/lang/String;

    :goto_6
    move-object/from16 v0, v24

    iget-object v7, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationCategoryCode:Ljava/lang/String;

    if-eqz v7, :cond_27

    move-object/from16 v0, v24

    iget-object v7, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationCategoryCode:Ljava/lang/String;

    :goto_7
    move-object/from16 v0, v24

    iget-object v8, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->imageUrl:Ljava/lang/String;

    if-eqz v8, :cond_28

    move-object/from16 v0, v24

    iget-object v8, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->imageUrl:Ljava/lang/String;

    :goto_8
    move-object/from16 v0, v24

    iget-object v9, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->contentProviderName:Ljava/lang/String;

    if-eqz v9, :cond_29

    move-object/from16 v0, v24

    iget-object v9, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->contentProviderName:Ljava/lang/String;

    :goto_9
    move-object/from16 v0, v24

    iget-object v10, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->contentProviderImageUrl:Ljava/lang/String;

    if-eqz v10, :cond_2a

    move-object/from16 v0, v24

    iget-object v10, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->contentProviderImageUrl:Ljava/lang/String;

    :goto_a
    move-object/from16 v0, v24

    iget-object v11, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->contentProviderUrl:Ljava/lang/String;

    if-eqz v11, :cond_2b

    move-object/from16 v0, v24

    iget-object v11, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->contentProviderUrl:Ljava/lang/String;

    :goto_b
    move-object/from16 v0, v24

    iget-object v12, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationCategoryName:Ljava/lang/String;

    if-eqz v12, :cond_2c

    move-object/from16 v0, v24

    iget-object v12, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationCategoryName:Ljava/lang/String;

    :goto_c
    invoke-virtual/range {v4 .. v12}, Lcom/android/incallui/TelecomAdapter;->setSmartCallInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/incallui/CallCardPresenter;->shouldShowCallSubject(Lcom/android/incallui/Call;)Z

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2, v4}, Lcom/android/incallui/CallCardPresenter;->shouldRefreshPrimaryInfo(ZLcom/android/incallui/CallCardUi;Z)Z

    move-result v4

    if-eqz v4, :cond_16

    if-eqz v19, :cond_15

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6}, Lcom/android/incallui/CallCardPresenter;->maybeShowProgressSpinner(II)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v4, v6, v0}, Lcom/android/incallui/CallList;->removeCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    :cond_15
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v6}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v4, v6, v0}, Lcom/android/incallui/CallList;->addCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/4 v8, 0x4

    if-ne v4, v8, :cond_2d

    const/4 v4, 0x1

    :goto_d
    invoke-static {v6, v7, v4}, Lcom/android/incallui/ContactInfoCache;->buildCacheEntryFromCall(Landroid/content/Context;Lcom/android/incallui/Call;Z)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryDisplayInfo()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6}, Lcom/android/incallui/CallCardPresenter;->maybeStartSearch(Lcom/android/incallui/Call;Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/incallui/CallCardPresenter;->maybeClearSessionModificationState(Lcom/android/incallui/Call;)V

    const-string v4, "ecid_enable"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-static {v4}, Lcom/android/incallui/service/EcidClient;->onCallStateChange(Lcom/android/incallui/Call;)V

    :cond_16
    if-eqz v19, :cond_17

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-nez v4, :cond_17

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6}, Lcom/android/incallui/CallCardPresenter;->maybeShowProgressSpinner(II)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v4, v6, v0}, Lcom/android/incallui/CallList;->removeCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    :cond_17
    const-string v4, "feature_ktt"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v4, :cond_18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    move-object/from16 v0, v26

    invoke-interface {v0, v4}, Lcom/android/incallui/CallCardUi;->setCallCharge(I)V

    :cond_18
    const-string v4, "feature_dcm"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isExistsSuguden()Z

    move-result v4

    if-eqz v4, :cond_19

    if-nez v21, :cond_19

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    if-eq v0, v1, :cond_19

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v4, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryDisplayInfo()V

    :cond_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    if-nez v4, :cond_2e

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->updateSecondaryDisplayInfo()V

    :cond_1a
    :goto_e
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->isPrimaryCallActive()Z

    move-result v4

    if-nez v4, :cond_1b

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->isPrimaryCallOnHold()Z

    move-result v4

    if-nez v4, :cond_1b

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->isPrimaryCallDisconnecting()Z

    move-result v4

    if-eqz v4, :cond_30

    :cond_1b
    const-string v4, "Starting the calltime timer"

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mCallTimer:Lcom/android/incallui/CallTimer;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v6, v7}, Lcom/android/incallui/CallTimer;->start(J)Z

    :goto_f
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v4

    if-eqz v4, :cond_1d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v4, :cond_1d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/4 v6, 0x6

    if-eq v4, v6, :cond_1c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/4 v6, 0x4

    if-ne v4, v6, :cond_1d

    :cond_1c
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v15

    if-eqz v15, :cond_1d

    const-wide/16 v6, 0x0

    invoke-virtual {v15, v6, v7}, Lcom/android/incallui/InCallActivity;->setCallElapsedTime(J)V

    :cond_1d
    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v4, :cond_31

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryCallState()V

    :goto_10
    const-string v4, "yellowpage_callerid_info"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v16

    if-eqz v16, :cond_1e

    invoke-virtual/range {v16 .. v16}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v6, 0xd

    if-eq v4, v6, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v17

    if-eqz v17, :cond_1e

    move-object/from16 v0, v17

    iget-boolean v4, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isYellowPage:Z

    move-object/from16 v0, v17

    iget-boolean v6, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    move-object/from16 v0, v17

    iget-object v7, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->yellowPageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6, v7}, Lcom/android/incallui/CallCardPresenter;->setYellowPageName(ZZLjava/lang/String;)V

    :cond_1e
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->maybeShowManageConferenceCallButton()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/incallui/CallCardPresenter;->shouldShowEndCallButton(Lcom/android/incallui/Call;I)Z

    move-result v6

    const/4 v4, 0x4

    if-eq v5, v4, :cond_32

    const/4 v4, 0x1

    :goto_11
    move-object/from16 v0, v26

    invoke-interface {v0, v6, v4}, Lcom/android/incallui/CallCardUi;->setEndCallButtonEnabled(ZZ)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/incallui/CallCardPresenter;->maybeSendAccessibilityEvent(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Z)V

    invoke-interface/range {v26 .. v26}, Lcom/android/incallui/CallCardUi;->needToShowMenu()Z

    move-result v4

    move-object/from16 v0, v26

    invoke-interface {v0, v4}, Lcom/android/incallui/CallCardUi;->showMenu(Z)V

    const-string v4, "tablet_device"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v18

    if-eqz v18, :cond_1f

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/incallui/CallList;->isNotUpdatingCall(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1f

    invoke-interface/range {v26 .. v26}, Lcom/android/incallui/CallCardUi;->needToShowVolumeButton()Z

    move-result v4

    move-object/from16 v0, v26

    invoke-interface {v0, v4}, Lcom/android/incallui/CallCardUi;->showVolumeButton(Z)V

    :cond_1f
    const-string v4, "phone_number_locator"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v4, :cond_21

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getPhoneNumberLocator()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-interface {v0, v4}, Lcom/android/incallui/CallCardUi;->setPrimaryPhoneNumberLocator(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-static {v5}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v4

    if-nez v4, :cond_20

    const/16 v4, 0x9

    if-eq v5, v4, :cond_20

    const/16 v4, 0xa

    if-ne v5, v4, :cond_21

    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryDisplayInfo()V

    :cond_21
    invoke-interface/range {v26 .. v26}, Lcom/android/incallui/CallCardUi;->updateDisplayChildCallChanged()V

    const/4 v4, 0x4

    if-ne v5, v4, :cond_33

    const/4 v4, 0x1

    :goto_12
    move-object/from16 v0, v26

    invoke-interface {v0, v4}, Lcom/android/incallui/CallCardUi;->manageMultiTouchStub(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v4, :cond_22

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-static {v4}, Lcom/android/incallui/util/CallTypeUtils;->isPSDomain(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-static {}, Lcom/android/incallui/util/SecModifyCallAdapter;->getInstance()Lcom/android/incallui/util/SecModifyCallAdapter;

    move-result-object v4

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/incallui/util/SecModifyCallAdapter;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    :cond_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v4, :cond_23

    const/16 v4, 0x9

    if-eq v5, v4, :cond_24

    :cond_23
    const/16 v4, 0xa

    if-ne v5, v4, :cond_0

    :cond_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/incallui/Call;->setMessageVoiceFromVideo(I)V

    goto/16 :goto_0

    :cond_25
    const-string v5, ""

    goto/16 :goto_5

    :cond_26
    const-string v6, ""

    goto/16 :goto_6

    :cond_27
    const-string v7, ""

    goto/16 :goto_7

    :cond_28
    const-string v8, ""

    goto/16 :goto_8

    :cond_29
    const-string v9, ""

    goto/16 :goto_9

    :cond_2a
    const-string v10, ""

    goto/16 :goto_a

    :cond_2b
    const-string v11, ""

    goto/16 :goto_b

    :cond_2c
    const-string v12, ""

    goto/16 :goto_c

    :cond_2d
    const/4 v4, 0x0

    goto/16 :goto_d

    :cond_2e
    if-eqz v23, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/4 v8, 0x4

    if-ne v4, v8, :cond_2f

    const/4 v4, 0x1

    :goto_13
    invoke-static {v6, v7, v4}, Lcom/android/incallui/ContactInfoCache;->buildCacheEntryFromCall(Landroid/content/Context;Lcom/android/incallui/Call;Z)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->updateSecondaryDisplayInfo()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6}, Lcom/android/incallui/CallCardPresenter;->maybeStartSearch(Lcom/android/incallui/Call;Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/incallui/CallCardPresenter;->maybeClearSessionModificationState(Lcom/android/incallui/Call;)V

    const-string v4, "ecid_enable"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-static {v4}, Lcom/android/incallui/service/EcidClient;->onCallStateChange(Lcom/android/incallui/Call;)V

    goto/16 :goto_e

    :cond_2f
    const/4 v4, 0x0

    goto :goto_13

    :cond_30
    const-string v4, "Canceling the calltime timer"

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mCallTimer:Lcom/android/incallui/CallTimer;

    invoke-virtual {v4}, Lcom/android/incallui/CallTimer;->cancel()V

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    move-object/from16 v0, v26

    invoke-interface {v0, v4, v6, v7}, Lcom/android/incallui/CallCardUi;->setPrimaryCallElapsedTime(ZJ)V

    goto/16 :goto_f

    :cond_31
    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v8, Landroid/telecom/DisconnectCause;

    const/4 v4, 0x0

    invoke-direct {v8, v4}, Landroid/telecom/DisconnectCause;-><init>(I)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v4, v26

    invoke-interface/range {v4 .. v14}, Lcom/android/incallui/CallCardUi;->setCallState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZZZ)V

    const/4 v4, 0x0

    move-object/from16 v0, v26

    invoke-interface {v0, v4}, Lcom/android/incallui/CallCardUi;->showHdAudioIndicator(Z)V

    goto/16 :goto_10

    :cond_32
    const/4 v4, 0x0

    goto/16 :goto_11

    :cond_33
    const/4 v4, 0x0

    goto/16 :goto_12
.end method

.method public onSupportedAudioMode(I)V
    .locals 0

    return-void
.end method

.method public onUiReady(Lcom/android/incallui/CallCardUi;)V
    .locals 2

    const-string v0, "onUiReady()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiReady(Lcom/android/incallui/Ui;)V

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mContactsPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mContactsPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    const-string v1, "android.contacts.DISPLAY_ORDER"

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/preference/ContactsPreferences;->refreshValue(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryDisplayInfo()V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->updateSecondaryDisplayInfo()V

    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListenerToFirst(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addInCallEventListener(Lcom/android/incallui/InCallPresenter$InCallEventListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addUpdateContactListener(Lcom/android/incallui/InCallPresenter$UpdateContactListener;)V

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsContactManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->addListener(Lcom/android/incallui/coreapps/CoreAppsContactManager$UpdateCoreAppsContactListener;)V

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/AudioModeProvider;->addListener(Lcom/android/incallui/AudioModeProvider$AudioModeListener;)V

    const-string v0, "support_smart_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "addListener"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallController;->getInstance()Lcom/android/incallui/smartcall/SmartCallController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/smartcall/SmartCallController;->addListener(Lcom/android/incallui/smartcall/SmartCallController$SmartCallEventListener;)V

    :cond_3
    const-string v0, "ims_support_multimedia_caller_id"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->updatePhotoringState()V

    :cond_4
    invoke-static {}, Lcom/android/incallui/CallOrgInfoController;->getInstance()Lcom/android/incallui/CallOrgInfoController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/CallOrgInfoController;->addListener(Lcom/android/incallui/CallOrgInfoController$SecCallOrgInfoListener;)V

    return-void
.end method

.method public bridge synthetic onUiReady(Lcom/android/incallui/Ui;)V
    .locals 0

    check-cast p1, Lcom/android/incallui/CallCardUi;

    invoke-virtual {p0, p1}, Lcom/android/incallui/CallCardPresenter;->onUiReady(Lcom/android/incallui/CallCardUi;)V

    return-void
.end method

.method public onUiResume()V
    .locals 1

    const-string v0, "onUiResume()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onUiUnready(Lcom/android/incallui/CallCardUi;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "onUiUnready()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiUnready(Lcom/android/incallui/Ui;)V

    const-string v0, "support_smart_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "removeListener"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallController;->getInstance()Lcom/android/incallui/smartcall/SmartCallController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/smartcall/SmartCallController;->removeListener(Lcom/android/incallui/smartcall/SmartCallController$SmartCallEventListener;)V

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeInCallEventListener(Lcom/android/incallui/InCallPresenter$InCallEventListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeUpdateContactListener(Lcom/android/incallui/InCallPresenter$UpdateContactListener;)V

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/android/incallui/CallList;->removeCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mDistanceHelper:Lcom/android/incallui/DistanceHelper;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mDistanceHelper:Lcom/android/incallui/DistanceHelper;

    invoke-virtual {v0}, Lcom/android/incallui/DistanceHelper;->cleanUp()V

    :cond_2
    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsContactManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->removeListener(Lcom/android/incallui/coreapps/CoreAppsContactManager$UpdateCoreAppsContactListener;)V

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/AudioModeProvider;->removeListener(Lcom/android/incallui/AudioModeProvider$AudioModeListener;)V

    invoke-static {}, Lcom/android/incallui/CallOrgInfoController;->getInstance()Lcom/android/incallui/CallOrgInfoController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/CallOrgInfoController;->removeListener(Lcom/android/incallui/CallOrgInfoController$SecCallOrgInfoListener;)V

    iput-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    iput-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iput-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    iput-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    return-void
.end method

.method public bridge synthetic onUiUnready(Lcom/android/incallui/Ui;)V
    .locals 0

    check-cast p1, Lcom/android/incallui/CallCardUi;

    invoke-virtual {p0, p1}, Lcom/android/incallui/CallCardPresenter;->onUiUnready(Lcom/android/incallui/CallCardUi;)V

    return-void
.end method

.method public onUpdateCoreAppsContact()V
    .locals 4

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/android/incallui/ContactInfoCache;->buildCacheEntryFromCall(Landroid/content/Context;Lcom/android/incallui/Call;Z)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryDisplayInfo()V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public secondaryInfoClicked()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    if-nez v0, :cond_0

    const-string v0, "Secondary info clicked but no secondary call."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Swapping call to foreground: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->unholdCall(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCallCardVisible(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardUi;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/incallui/CallCardUi;->setCallCardVisible(Z)V

    :cond_0
    return-void
.end method

.method public updateCallTime()V
    .locals 18

    const-string v7, "support_tphone"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTPhoneMode()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v7

    if-nez v7, :cond_1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/incallui/CallCardPresenter;->mCallTimer:Lcom/android/incallui/CallTimer;

    invoke-virtual {v7}, Lcom/android/incallui/CallTimer;->cancel()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v7, v14, v15}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v7

    if-nez v7, :cond_2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/incallui/CallCardPresenter;->mCallTimer:Lcom/android/incallui/CallTimer;

    invoke-virtual {v7}, Lcom/android/incallui/CallTimer;->cancel()V

    goto :goto_0

    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->isPrimaryCallActive()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->isPrimaryCallOnHold()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v7

    check-cast v7, Lcom/android/incallui/CallCardUi;

    const/4 v14, 0x0

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-interface {v7, v14, v0, v1}, Lcom/android/incallui/CallCardUi;->setPrimaryCallElapsedTime(ZJ)V

    const-string v7, "vzw_volte_ui"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v7

    check-cast v7, Lcom/android/incallui/CallCardUi;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface {v7, v14, v15}, Lcom/android/incallui/CallCardUi;->setSecondaryCallElapsedTime(ZLjava/lang/String;)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/incallui/CallCardPresenter;->mCallTimer:Lcom/android/incallui/CallTimer;

    invoke-virtual {v7}, Lcom/android/incallui/CallTimer;->cancel()V

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v7}, Lcom/android/incallui/Call;->getConnectTimeMillis()J

    move-result-wide v4

    const-string v7, "ctc_call_time_duration"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/CallList;->getCdmaEarliestCallForTime()Lcom/android/incallui/Call;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/android/incallui/Call;->getConnectTimeMillis()J

    move-result-wide v4

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long v8, v14, v4

    const-wide/32 v14, 0x15752a00

    cmp-long v7, v8, v14

    if-lez v7, :cond_6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateCallTime sys_"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v14, " start_"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_6
    const-wide/16 v14, 0x0

    cmp-long v7, v4, v14

    if-lez v7, :cond_8

    const-wide/16 v14, 0x0

    cmp-long v7, v8, v14

    if-lez v7, :cond_8

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2, v8, v9}, Lcom/android/incallui/InCallActivity;->setCallElapsedTime(J)V

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v7

    check-cast v7, Lcom/android/incallui/CallCardUi;

    const/4 v14, 0x1

    invoke-interface {v7, v14, v8, v9}, Lcom/android/incallui/CallCardUi;->setPrimaryCallElapsedTime(ZJ)V

    :cond_8
    const-string v7, "vzw_volte_ui"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    if-eqz v7, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v7

    if-eqz v7, :cond_0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-virtual {v7}, Lcom/android/incallui/Call;->getConnectTimeMillis()J

    move-result-wide v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long v12, v14, v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v7

    check-cast v7, Lcom/android/incallui/CallCardUi;

    const/4 v14, 0x1

    invoke-interface {v7, v14, v12, v13}, Lcom/android/incallui/CallCardUi;->setSecondaryCallElapsedTime(ZJ)V

    goto/16 :goto_0
.end method

.method public updateEri()V
    .locals 2

    const-string v1, "updateERI"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->getCallCardUi()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0}, Lcom/android/incallui/CallCardUi;->updateEri()V

    goto :goto_0
.end method

.method public updatePhotoForLinkedin(Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;)V
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePhoto callId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;->callId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public updatePrimaryDisplayInfo()V
    .locals 31

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    const-string v4, "updatePrimaryDisplayInfo called but ui is null!"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardUi;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-nez v3, :cond_2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v2 .. v10}, Lcom/android/incallui/CallCardUi;->setPrimary(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZZ)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->isOffhook()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->isIncomingRejectedCall()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->isIncomingMissedCall()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/util/CallTypeUtils;->isIncomingAcceptOrRejectByOtherDevice(Lcom/android/incallui/Call;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Lcom/android/incallui/Call;->hasProperty(I)Z

    move-result v9

    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isIMSConferenceCall()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v22

    if-eqz v22, :cond_4

    invoke-static/range {v22 .. v22}, Lcom/android/incallui/util/SecCallExtraUtils;->getReceivedCall(Lcom/android/incallui/Call;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v6, 0x4

    if-ne v3, v6, :cond_7

    const/4 v3, 0x1

    :goto_1
    invoke-static {v4, v5, v3}, Lcom/android/incallui/ContactInfoCache;->buildCacheEntryFromCall(Landroid/content/Context;Lcom/android/incallui/Call;Z)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v3}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v3

    if-eqz v3, :cond_8

    sget-object v3, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Update primary display info for conference call."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v5}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/incallui/CallCardPresenter;->getConferenceString(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    const/16 v8, 0x80

    invoke-virtual {v7, v8}, Lcom/android/incallui/Call;->can(I)Z

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-interface/range {v2 .. v9}, Lcom/android/incallui/CallCardUi;->setPrimary(Ljava/lang/String;Ljava/lang/String;ZZZLcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/CallCardPresenter;->mEmergencyCallListener:Lcom/android/incallui/CallCardPresenter$EmergencyCallListener;

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v3}, Lcom/android/incallui/Call;->isEmergencyCall()Z

    move-result v27

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/CallCardPresenter;->mEmergencyCallListener:Lcom/android/incallui/CallCardPresenter$EmergencyCallListener;

    check-cast v2, Lcom/android/incallui/BaseFragment;

    move/from16 v0, v27

    invoke-interface {v3, v2, v0}, Lcom/android/incallui/CallCardPresenter$EmergencyCallListener;->onCallUpdated(Lcom/android/incallui/BaseFragment;Z)V

    :cond_6
    const-string v3, "ecid_enable"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v23

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getCoverScreen()Lcom/android/incallui/accessory/CoverScreen;

    move-result-object v30

    if-eqz v30, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v3

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v4

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    invoke-virtual {v0, v3, v4, v1}, Lcom/android/incallui/accessory/CoverScreen;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    goto/16 :goto_0

    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v3, :cond_17

    sget-object v3, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Update primary display info for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/incallui/CallCardPresenter;->getNameForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getChildNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    const/16 v26, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getLastForwardedNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    const/16 v28, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/incallui/CallCardPresenter;->shouldShowCallSubject(Lcom/android/incallui/Call;)Z

    move-result v25

    if-eqz v25, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getCallSubject()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/incallui/CallCardUi;->setCallSubject(Ljava/lang/String;)V

    :goto_5
    if-eqz v25, :cond_11

    const/4 v11, 0x0

    :goto_6
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isHideCallerInfo()Z

    move-result v3

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v3, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v12, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/util/CallTypeUtils;->isSrvccConference(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    sget-object v3, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    const-string v4, "updateSecondaryDisplayInfo() srvcc"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "Conference call"

    :cond_a
    sget-object v3, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", number: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v0, v28

    invoke-interface {v2, v0}, Lcom/android/incallui/CallCardUi;->showForwardIndicator(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->maybeShowHdAudioIcon()V

    if-eqz v12, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v3, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    const/4 v13, 0x1

    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-wide v4, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->userType:J

    const-wide/16 v6, 0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_15

    const/16 v29, 0x1

    :goto_8
    const-string v3, "ecid_enable"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "feature_att"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v3, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-nez v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v3, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isVoiceMail:Z

    if-nez v3, :cond_b

    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-static {v3}, Lcom/android/incallui/service/EcidClient;->getCityId(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/incallui/CallCardUi;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    :cond_b
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    const/16 v4, 0x80

    invoke-virtual {v3, v4}, Lcom/android/incallui/Call;->can(I)Z

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-object/from16 v16, v0

    if-nez v9, :cond_c

    if-eqz v29, :cond_16

    :cond_c
    const/16 v17, 0x1

    :goto_9
    move-object v10, v2

    invoke-interface/range {v10 .. v17}, Lcom/android/incallui/CallCardUi;->setPrimary(Ljava/lang/String;Ljava/lang/String;ZZZLcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->updateContactInteractions()V

    const-string v3, "ecid_enable"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "feature_vzw"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string v3, "feature_spr"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v3, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isVoiceMail:Z

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-static {v3}, Lcom/android/incallui/service/EcidClient;->getCityId(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/CallCardUi;

    move-object/from16 v0, v24

    invoke-interface {v3, v0}, Lcom/android/incallui/CallCardUi;->setPrimaryCityId(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v3, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-nez v3, :cond_5

    if-eqz v13, :cond_5

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/CallCardUi;

    const-string v4, ""

    invoke-interface {v3, v4}, Lcom/android/incallui/CallCardUi;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_e
    const/16 v26, 0x0

    goto/16 :goto_3

    :cond_f
    const/16 v28, 0x0

    goto/16 :goto_4

    :cond_10
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/incallui/CallCardUi;->setCallSubject(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_11
    if-eqz v26, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f090465

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v7}, Lcom/android/incallui/Call;->getChildNumber()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_6

    :cond_12
    if-eqz v28, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getLastForwardedNumber()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_6

    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/incallui/CallCardPresenter;->getNumberForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_6

    :cond_14
    const/4 v13, 0x0

    goto/16 :goto_7

    :cond_15
    const/16 v29, 0x0

    goto/16 :goto_8

    :cond_16
    const/16 v17, 0x0

    goto/16 :goto_9

    :cond_17
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v14, v2

    invoke-interface/range {v14 .. v21}, Lcom/android/incallui/CallCardUi;->setPrimary(Ljava/lang/String;Ljava/lang/String;ZZZLcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    goto/16 :goto_2
.end method
