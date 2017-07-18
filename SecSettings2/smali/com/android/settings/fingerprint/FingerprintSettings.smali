.class public Lcom/android/settings/fingerprint/FingerprintSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "FingerprintSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/SettingsActivity$onEditButtonClicked;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fingerprint/FingerprintSettings$1;,
        Lcom/android/settings/fingerprint/FingerprintSettings$2;,
        Lcom/android/settings/fingerprint/FingerprintSettings$3;,
        Lcom/android/settings/fingerprint/FingerprintSettings$4;,
        Lcom/android/settings/fingerprint/FingerprintSettings$5;,
        Lcom/android/settings/fingerprint/FingerprintSettings$6;,
        Lcom/android/settings/fingerprint/FingerprintSettings$7;,
        Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;,
        Lcom/android/settings/fingerprint/FingerprintSettings$ItemLongClickListener;,
        Lcom/android/settings/fingerprint/FingerprintSettings$Survey;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-settings-fingerprint-FingerprintSettings$SurveySwitchesValues:[I

.field private static final ENABLE_SURVEY_MODE:Ljava/lang/String;

.field private static isKeepEnrollSession:Z

.field private static mEdit_TextView:Landroid/widget/TextView;

.field protected static mFragment:Landroid/app/Fragment;

.field private static mListView:Landroid/widget/ListView;


# instance fields
.field TwFingerprintultiSelectedListener:Landroid/widget/AdapterView$SemOnMultiSelectedListener;

.field private colorId_identifiedId:I

.field private focusEditButtonRunnable:Ljava/lang/Runnable;

.field private isRunRegister:Z

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation
.end field

.field private mAuthCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

.field private mEnrolledFingerCount:I

.field private mFingerprintCancel:Landroid/os/CancellationSignal;

.field private final mFingerprintLockoutReset:Ljava/lang/Runnable;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field final mH:Landroid/os/Handler;

.field private final mHandler:Landroid/os/Handler;

.field private mHuntipBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mIdentifyFingerprint:Z

.field private mInFingerprintLockout:Z

.field private mIsAfw:Z

.field private mIsInMultiWindowMode:Z

.field private mIsMultiWindowModeChanged:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOptionsMenu:Landroid/view/Menu;

.field private mRegisterCategory:Landroid/preference/PreferenceCategory;

.field private mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

.field private mSamsungAccount:Landroid/preference/SwitchPreference;

.field private mSamsungAccountContext:Landroid/content/Context;

.field private mScreenLock:Landroid/preference/SwitchPreference;

.field mSharedPreferences:Landroid/content/SharedPreferences;

.field private mToken:[B

.field private mUserId:I

.field private mWebSignIn:Landroid/preference/SwitchPreference;

.field private notificationManager:Landroid/app/NotificationManager;

.field private origin_color_identifiedId:Landroid/content/res/ColorStateList;

.field private origin_typeface:Landroid/graphics/Typeface;

.field private retryFingerprintRunnable:Ljava/lang/Runnable;

.field private skipHuntip:Z

.field private through_onpreferencechange:Z

.field private twselectionChecklist:[Z


# direct methods
.method static synthetic -get0(Lcom/android/settings/fingerprint/FingerprintSettings;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get1()Landroid/widget/TextView;
    .locals 1

    sget-object v0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEdit_TextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/fingerprint/FingerprintSettings;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/settings/fingerprint/FingerprintSettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4()Landroid/widget/ListView;
    .locals 1

    sget-object v0, Lcom/android/settings/fingerprint/FingerprintSettings;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/settings/fingerprint/FingerprintSettings;)Landroid/app/NotificationManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->notificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/settings/fingerprint/FingerprintSettings;)[Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->twselectionChecklist:[Z

    return-object v0
.end method

.method private static synthetic -getcom-android-settings-fingerprint-FingerprintSettings$SurveySwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/settings/fingerprint/FingerprintSettings;->-com-android-settings-fingerprint-FingerprintSettings$SurveySwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/fingerprint/FingerprintSettings;->-com-android-settings-fingerprint-FingerprintSettings$SurveySwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettings$Survey;->values()[Lcom/android/settings/fingerprint/FingerprintSettings$Survey;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/settings/fingerprint/FingerprintSettings$Survey;->FINGERPRINT_LOCK_DISABLE:Lcom/android/settings/fingerprint/FingerprintSettings$Survey;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerprintSettings$Survey;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/settings/fingerprint/FingerprintSettings$Survey;->FINGERPRINT_LOCK_ENABLE:Lcom/android/settings/fingerprint/FingerprintSettings$Survey;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerprintSettings$Survey;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/settings/fingerprint/FingerprintSettings$Survey;->FINGERPRINT_LOCK_ENTRY_UNLOCK:Lcom/android/settings/fingerprint/FingerprintSettings$Survey;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerprintSettings$Survey;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/settings/fingerprint/FingerprintSettings$Survey;->IDENTIFY:Lcom/android/settings/fingerprint/FingerprintSettings$Survey;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerprintSettings$Survey;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/settings/fingerprint/FingerprintSettings$Survey;->RENAME:Lcom/android/settings/fingerprint/FingerprintSettings$Survey;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerprintSettings$Survey;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/settings/fingerprint/FingerprintSettings$Survey;->SAMSUNGPAY_LINK:Lcom/android/settings/fingerprint/FingerprintSettings$Survey;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerprintSettings$Survey;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    sput-object v0, Lcom/android/settings/fingerprint/FingerprintSettings;->-com-android-settings-fingerprint-FingerprintSettings$SurveySwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    sput-object p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEdit_TextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic -set1(Lcom/android/settings/fingerprint/FingerprintSettings;Landroid/os/CancellationSignal;)Landroid/os/CancellationSignal;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintCancel:Landroid/os/CancellationSignal;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/settings/fingerprint/FingerprintSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mInFingerprintLockout:Z

    return p1
.end method

.method static synthetic -set3(Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0

    sput-object p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mListView:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic -set4(Lcom/android/settings/fingerprint/FingerprintSettings;Lcom/android/settings/fingerprint/FingerPrintRenameDialog;)Lcom/android/settings/fingerprint/FingerPrintRenameDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/fingerprint/FingerprintSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->registerAuthenticate()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/fingerprint/FingerprintSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->retryFingerprint()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/fingerprint/FingerprintSettings;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintSettings;->runRegister(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings/fingerprint/FingerprintSettings;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/fingerprint/FingerprintSettings;->setTwselectionChecklist(ZI)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/settings/fingerprint/FingerprintSettings;I[Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/fingerprint/FingerprintSettings;->startSelectListUI(I[Z)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/settings/fingerprint/FingerprintSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->unregisterFingerprintHuntipReceiver()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/settings/fingerprint/FingerprintSettings;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/fingerprint/FingerprintSettings;->updateIdentifiedFinger(ZI)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/settings/fingerprint/FingerprintSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->updatePreferences()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/settings/fingerprint/FingerprintSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintSettings;->updateTwMultiSelected(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/fingerprint/FingerprintSettings;->ENABLE_SURVEY_MODE:Ljava/lang/String;

    sput-object v2, Lcom/android/settings/fingerprint/FingerprintSettings;->mListView:Landroid/widget/ListView;

    sput-object v2, Lcom/android/settings/fingerprint/FingerprintSettings;->mEdit_TextView:Landroid/widget/TextView;

    sput-object v2, Lcom/android/settings/fingerprint/FingerprintSettings;->mFragment:Landroid/app/Fragment;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/fingerprint/FingerprintSettings;->isKeepEnrollSession:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettings_Utils;->getMaxFingerEnroll()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->twselectionChecklist:[Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->colorId_identifiedId:I

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->origin_color_identifiedId:Landroid/content/res/ColorStateList;

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->origin_typeface:Landroid/graphics/Typeface;

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mOptionsMenu:Landroid/view/Menu;

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->notificationManager:Landroid/app/NotificationManager;

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->through_onpreferencechange:Z

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->skipHuntip:Z

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mH:Landroid/os/Handler;

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIdentifyFingerprint:Z

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->isRunRegister:Z

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsAfw:Z

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsInMultiWindowMode:Z

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsMultiWindowModeChanged:Z

    new-instance v0, Lcom/android/settings/fingerprint/FingerprintSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintSettings$1;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mAuthCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    new-instance v0, Lcom/android/settings/fingerprint/FingerprintSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintSettings$2;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/fingerprint/FingerprintSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintSettings$3;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->retryFingerprintRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/settings/fingerprint/FingerprintSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintSettings$4;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->focusEditButtonRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/settings/fingerprint/FingerprintSettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintSettings$5;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->TwFingerprintultiSelectedListener:Landroid/widget/AdapterView$SemOnMultiSelectedListener;

    new-instance v0, Lcom/android/settings/fingerprint/FingerprintSettings$6;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintSettings$6;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mHuntipBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/fingerprint/FingerprintSettings$7;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintSettings$7;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintLockoutReset:Ljava/lang/Runnable;

    return-void
.end method

.method private addFingerprintItemPreferences(Landroid/preference/PreferenceGroup;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRegisterCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4}, Landroid/preference/PreferenceCategory;->removeAll()V

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    if-eqz v4, :cond_0

    iput-object v7, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    :cond_0
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v4, v5}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iput v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    const/4 v0, 0x0

    :goto_0
    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-ge v0, v4, :cond_2

    move v2, v0

    :goto_1
    if-lez v2, :cond_1

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    add-int/lit8 v5, v2, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v4}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v5

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v4}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v4

    if-le v5, v4, :cond_1

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    add-int/lit8 v6, v2, -0x1

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/fingerprint/Fingerprint;

    invoke-interface {v5, v6, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    add-int/lit8 v5, v2, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_3

    const-string/jumbo v4, "FpstFingerprintSettings"

    const-string/jumbo v5, "addFingerprintItemPreferences : Sort Error"

    invoke-static {v4, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v7, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v4, v5}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iput v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    :cond_3
    const-string/jumbo v4, "FpstFingerprintSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "addFingerprintItemPreferences : mEnrolledFingerCount["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    if-eqz v4, :cond_5

    const/4 v0, 0x0

    :goto_2
    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-ge v0, v4, :cond_4

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/Fingerprint;

    const-string/jumbo v4, "FpstFingerprintSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "addFingerprintItemPreferences : fid["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "], Name["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "], Gid["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_3
    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-ge v0, v4, :cond_6

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/Fingerprint;

    new-instance v3, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;

    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings;Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v4

    invoke-static {v4}, Lcom/android/settings/fingerprint/FingerprintSettings;->genKey(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v1}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->setFingerprint(Landroid/hardware/fingerprint/Fingerprint;)V

    const v4, 0x7f040101

    invoke-virtual {v3, v4}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->setLayoutResource(I)V

    invoke-virtual {v3, v8}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->setPersistent(Z)V

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRegisterCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    invoke-virtual {v3, p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    iput v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    const-string/jumbo v4, "FpstFingerprintSettings"

    const-string/jumbo v5, "addFingerprintItemPreferences : mFingerprintManager.getEnrolledFingerprints() return null 2"

    invoke-static {v4, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_4
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->updateAddPreference()V

    return-void

    :cond_7
    iput v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    const-string/jumbo v4, "FpstFingerprintSettings"

    const-string/jumbo v5, "addFingerprintItemPreferences : mFingerprintManager.getEnrolledFingerprints() return null 1"

    invoke-static {v4, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method private cancelAndSessionEnd()V
    .locals 2

    const-string/jumbo v0, "FpstFingerprintSettings"

    const-string/jumbo v1, "cancelAndSessionEnd() "

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->stopFingerprint()V

    sget-boolean v0, Lcom/android/settings/fingerprint/FingerprintSettings;->isKeepEnrollSession:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/fingerprint/FingerprintSettings;->isKeepEnrollSession:Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->postEnroll()I

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->finishFingerprintSettings()V

    goto :goto_0
.end method

.method private checkMobileKeyboard()Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    const-string/jumbo v1, "FpstFingerprintSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkMobileKeyboard. return : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", isAdded() :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->isAdded()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "FpstFingerprintSettings"

    const-string/jumbo v2, "createPreferenceHierarchy : remove all"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f080075

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v1, p0}, Lcom/android/settings/SettingsActivity;->setOnEditPressedListener(Lcom/android/settings/SettingsActivity$onEditButtonClicked;)V

    :goto_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->setFingerprintPreference()V

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSettings;->addFingerprintItemPreferences(Landroid/preference/PreferenceGroup;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->updateEditbtn()V

    return-object v0

    :cond_2
    const v1, 0x7f080074

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->addPreferencesFromResource(I)V

    goto :goto_0
.end method

.method private static genKey(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "key_fingerprint_item_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFingerprintSamsungAccountVerification()Z
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "fingerprint_used_samsungaccount"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "FpstFingerprintSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getFingerprintSamsungAccountVerification :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getFingerprintVerification()Z
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isEnabledSamsungPass(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    if-eqz v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "fingerprint_webpass"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "FpstFingerprintSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getFingerprintVerification :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    return v3
.end method

.method protected static getFragment()Landroid/app/Fragment;
    .locals 1

    sget-object v0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFragment:Landroid/app/Fragment;

    return-object v0
.end method

.method private getIndexForRegisteration()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method private getLoggingExtraValue(Z)Ljava/lang/String;
    .locals 5

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v1

    const-string/jumbo v0, ""

    if-eqz p1, :cond_0

    const-string/jumbo v0, "Fingerprint"

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    const/16 v4, 0x10

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Iris"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string/jumbo v2, "FpstFingerprintSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "passwordQuality : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch v1, :sswitch_data_0

    :goto_0
    const-string/jumbo v2, "FpstFingerprintSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "extraValue : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :sswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "PIN"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Password"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Pattern"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "DirectionLock"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_3
        0x10000 -> :sswitch_2
        0x20000 -> :sswitch_0
        0x30000 -> :sswitch_0
        0x40000 -> :sswitch_1
        0x50000 -> :sswitch_1
        0x60000 -> :sswitch_1
    .end sparse-switch
.end method

.method private isFingerprintDisabled()Z
    .locals 10

    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    const-string/jumbo v6, "device_policy"

    invoke-virtual {p0, v6}, Lcom/android/settings/fingerprint/FingerprintSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    const-string/jumbo v5, "FpstFingerprintSettings"

    const-string/jumbo v6, "isFingerprintDisabled :  dpm is NULL"

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_0
    invoke-virtual {v0, v9}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I

    move-result v6

    and-int/lit8 v6, v6, 0x20

    if-eqz v6, :cond_2

    const/4 v2, 0x1

    :goto_0
    new-array v4, v5, [Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string/jumbo v7, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string/jumbo v8, "isBiometricAuthenticationEnabled"

    invoke-static {v6, v7, v8, v4}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v9}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v6

    if-lez v6, :cond_1

    if-nez v1, :cond_1

    const-string/jumbo v6, "FpstFingerprintSettings"

    const-string/jumbo v7, "isBiometricAuthenticationEnabled == Utils.EDM_FALSE"

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    :cond_1
    if-nez v3, :cond_3

    :goto_1
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    move v2, v5

    goto :goto_1
.end method

.method private isSamsungAccountSignedIn(Landroid/content/Context;)Z
    .locals 5

    const/4 v4, 0x0

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string/jumbo v2, "com.osp.app.signin"

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    array-length v2, v1

    if-lez v2, :cond_0

    const-string/jumbo v2, "FpstFingerprintSettings"

    const-string/jumbo v3, "isHaveSA() - true"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2

    :cond_0
    const-string/jumbo v2, "FpstFingerprintSettings"

    const-string/jumbo v3, "isHaveSA() - false"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method private registerAuthenticate()V
    .locals 8

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v0, v2}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "FpstFingerprintSettings"

    const-string/jumbo v1, "registerAuthenticate : Skip"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, -0x1

    invoke-direct {p0, v3, v0}, Lcom/android/settings/fingerprint/FingerprintSettings;->updateIdentifiedFinger(ZI)V

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mInFingerprintLockout:Z

    if-nez v0, :cond_2

    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintCancel:Landroid/os/CancellationSignal;

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "privileged_attr"

    const/4 v2, 0x2

    invoke-virtual {v7, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintCancel:Landroid/os/CancellationSignal;

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mAuthCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    iget v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    move-object v5, v1

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;)V

    :cond_2
    return-void
.end method

.method private registerFingerprintHuntipReceiver()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "com.samsung.android.intent.action.FINGERPRINT_AUTH_HUNTIP_CLOSE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.samsung.systemui.statusbar.EXPANDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mHuntipBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private renameFingerPrint(ILjava/lang/CharSequence;)V
    .locals 3

    const-string/jumbo v0, "FpstFingerprintSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "renameFingerPrint : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "FpstFingerprintSettings"

    const-string/jumbo v1, "renameFingerPrint not null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    invoke-direct {v0, p1, p2}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;-><init>(ILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    new-instance v1, Lcom/android/settings/fingerprint/FingerprintSettings$11;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerprintSettings$11;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->setConfirmationDialogFragmentListener(Lcom/android/settings/fingerprint/FingerPrintRenameDialog$ConfirmationDialogFragmentListener;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "dialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    sget-object v0, Lcom/android/settings/fingerprint/FingerprintSettings$Survey;->RENAME:Lcom/android/settings/fingerprint/FingerprintSettings$Survey;

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSettings;->sendSurvey(Lcom/android/settings/fingerprint/FingerprintSettings$Survey;)V

    return-void
.end method

.method private retryFingerprint()V
    .locals 4

    const-string/jumbo v0, "FpstFingerprintSettings"

    const-string/jumbo v1, "retryFingerprint"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->retryFingerprintRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private runRegister(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->checkMobileKeyboard()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->showToastMsg()V

    :goto_0
    return-void

    :cond_0
    iget-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsInMultiWindowMode:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0b06e8

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.android.settings"

    const-string/jumbo v4, "com.android.settings.fingerprint.RegisterFingerprint"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "fingerIndex"

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getIndexForRegisteration()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v3, "previousStage"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "identifyFingerprint"

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIdentifyFingerprint:Z

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v3, 0x20000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mToken:[B

    if-eqz v3, :cond_2

    const-string/jumbo v3, "hw_auth_token"

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mToken:[B

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    :cond_2
    iget-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->isRunRegister:Z

    if-eqz v3, :cond_3

    const-string/jumbo v3, "FpstFingerprintSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "runRegister already called : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->isRunRegister:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->isRunRegister:Z

    const-string/jumbo v3, "FpstFingerprintSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "runRegister called : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->isRunRegister:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-lez v3, :cond_4

    const/16 v3, 0x3e9

    invoke-direct {p0, v1, v3}, Lcom/android/settings/fingerprint/FingerprintSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_4
    const/16 v3, 0x3e8

    :try_start_1
    invoke-direct {p0, v1, v3}, Lcom/android/settings/fingerprint/FingerprintSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private setFingerPrintOnSAConfirmed(Landroid/content/Context;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "fingerprint_samsungaccount_confirmed"

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    const-string/jumbo v1, "FpstFingerprintSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setFingerPrintOnSamsungAccountConfirmed:result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private setFingerprintLock()V
    .locals 8

    const/4 v0, 0x5

    const-string/jumbo v1, "FpstFingerprintSettings"

    const-string/jumbo v2, "setFingerprintLock"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->setFingerprintScreenLockEnable()V

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.samsung.settings.SECURITY_WARNING_CLEAR"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "screen-lock enabled : fingerprint"

    iget v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    const/4 v2, 0x1

    move v1, v0

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private setFingerprintPreference()V
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    const-string/jumbo v7, "register_category"

    invoke-virtual {p0, v7}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceCategory;

    iput-object v7, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRegisterCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "device_provisioned"

    invoke-static {v7, v8, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/preference/PreferenceManager;->setStorageDeviceProtected()V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v7, "support_web_signin"

    invoke-virtual {p0, v7}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    iput-object v7, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mWebSignIn:Landroid/preference/SwitchPreference;

    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mWebSignIn:Landroid/preference/SwitchPreference;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mWebSignIn:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string/jumbo v8, "com.sec.android.app.sbrowser"

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isEnabledSamsungPass(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget v7, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    if-nez v7, :cond_1

    :cond_0
    const-string/jumbo v7, "feature_category"

    invoke-virtual {p0, v7}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceGroup;

    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mWebSignIn:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    const-string/jumbo v7, "support_samsung_account"

    invoke-virtual {p0, v7}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    iput-object v7, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_2
    const-string/jumbo v7, "alipay_payment"

    invoke-virtual {p0, v7}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string/jumbo v8, "com.eg.android.AlipayGphone"

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_3
    const-string/jumbo v7, "feature_category"

    invoke-virtual {p0, v7}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceGroup;

    invoke-virtual {v7, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    const-string/jumbo v7, "samsung_pay"

    invoke-virtual {p0, v7}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string/jumbo v8, "com.samsung.android.spay"

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_b

    const-string/jumbo v7, "FpstFingerprintSettings"

    const-string/jumbo v8, "Remove the SamsungPay"

    invoke-static {v7, v8}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "feature_category"

    invoke-virtual {p0, v7}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceGroup;

    invoke-virtual {v7, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_5
    :goto_0
    const-string/jumbo v7, "samsung_pass"

    invoke-virtual {p0, v7}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isEnabledSamsungPass(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget v7, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    if-eqz v7, :cond_c

    :cond_6
    const-string/jumbo v7, "FpstFingerprintSettings"

    const-string/jumbo v8, "Remove the SamsungPass"

    invoke-static {v7, v8}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "feature_category"

    invoke-virtual {p0, v7}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceGroup;

    invoke-virtual {v7, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_7
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_d

    const-string/jumbo v7, "set_screen_lock"

    invoke-virtual {p0, v7}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    iput-object v7, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mScreenLock:Landroid/preference/SwitchPreference;

    const-string/jumbo v7, "unlock_category"

    invoke-virtual {p0, v7}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceGroup;

    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mScreenLock:Landroid/preference/SwitchPreference;

    if-eqz v7, :cond_8

    if-eqz v5, :cond_8

    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mScreenLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_8
    :goto_2
    if-eq v2, v12, :cond_9

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRegisterCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_9
    iget-boolean v7, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsAfw:Z

    if-eqz v7, :cond_a

    const-string/jumbo v7, "FpstFingerprintSettings"

    const-string/jumbo v8, "Remove all feature and unlock category"

    invoke-static {v7, v8}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    const-string/jumbo v8, "feature_category"

    invoke-virtual {p0, v8}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    const-string/jumbo v8, "unlock_category"

    invoke-virtual {p0, v8}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_a
    return-void

    :cond_b
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string/jumbo v8, "com.samsung.android.spay"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    const-string/jumbo v7, "0.0.00"

    iget-object v8, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string/jumbo v7, "FpstFingerprintSettings"

    const-string/jumbo v8, "Remove the SamsungPay. Stub application isntalled"

    invoke-static {v7, v8}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "feature_category"

    invoke-virtual {p0, v7}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceGroup;

    invoke-virtual {v7, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v7, "FpstFingerprintSettings"

    const-string/jumbo v8, "Getting information of SamsungPay make the Exception!"

    invoke-static {v7, v8}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b06d8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v12, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b06d7

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_d
    const-string/jumbo v7, "set_screen_lock"

    invoke-virtual {p0, v7}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    iput-object v7, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mScreenLock:Landroid/preference/SwitchPreference;

    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mScreenLock:Landroid/preference/SwitchPreference;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mScreenLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_2
.end method

.method private setFingerprintScreenLockDisable()V
    .locals 4

    const-string/jumbo v0, "FpstFingerprintSettings"

    const-string/jumbo v1, "setFingerprintScreenLockDisable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Lcom/android/settings/Utils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    return-void
.end method

.method private setFingerprintScreenLockEnable()V
    .locals 5

    const-string/jumbo v1, "FpstFingerprintSettings"

    const-string/jumbo v2, "setFingerprintScreenLockEnable"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    const/4 v4, 0x1

    invoke-static {v1, v2, v4, v3}, Lcom/android/settings/Utils;->setBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.intent.action.FINGERPRINT_LOCK_SET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setFingerprintVerification(Z)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isEnabledSamsungPass(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    if-eqz v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "fingerprint_webpass"

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v0, "FpstFingerprintSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFingerprintVerification: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private setTwselectionChecklist(ZI)V
    .locals 4

    const/4 v1, 0x0

    if-gez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettings_Utils;->getMaxFingerEnroll()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->twselectionChecklist:[Z

    aput-boolean p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-ge p2, v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->twselectionChecklist:[Z

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->twselectionChecklist:[Z

    aget-boolean v3, v3, p2

    if-eqz v3, :cond_2

    :goto_1
    aput-boolean v1, v2, p2

    :cond_1
    :goto_2
    return-void

    :cond_2
    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const-string/jumbo v1, "FpstFingerprintSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setTwselectionChecklist, postion error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private setUseFingerprintForSA(Landroid/content/Context;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "fingerprint_used_samsungaccount"

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    const-string/jumbo v1, "FpstFingerprintSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setFingerPrintOnSamsungAccountUsed:result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private showHuntipForFingerprintIdentification()V
    .locals 14

    const v13, 0x7f02010b

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v8, "pref_huntip"

    invoke-interface {v7, v8, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string/jumbo v7, "FpstFingerprintSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "showHuntipForFingerprintIdentification [mEnrolledFingerCount, isFirstHuntip] : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget v7, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-lez v7, :cond_0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->skipHuntip:Z

    if-nez v7, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string/jumbo v8, "pref_huntip"

    invoke-interface {v7, v8, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v7

    if-eqz v7, :cond_1

    const-string/jumbo v7, "notification"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    iput-object v7, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->notificationManager:Landroid/app/NotificationManager;

    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f0400f4

    invoke-direct {v1, v7, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    new-instance v7, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v8, v13}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    invoke-virtual {v7, v13}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/support/v4/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    const v8, 0x7f0b06df

    invoke-virtual {p0, v8}, Lcom/android/settings/fingerprint/FingerprintSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    const v8, 0x7f0b06e0

    invoke-virtual {p0, v8}, Lcom/android/settings/fingerprint/FingerprintSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    new-array v8, v10, [J

    invoke-virtual {v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v9, "com.samsung.android.intent.action.FINGERPRINT_AUTH_HUNTIP_CLOSE"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v10, v8, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    iput-object v1, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->registerFingerprintHuntipReceiver()V

    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->notificationManager:Landroid/app/NotificationManager;

    const/16 v8, 0x64

    invoke-virtual {v7, v8, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mH:Landroid/os/Handler;

    new-instance v8, Lcom/android/settings/fingerprint/FingerprintSettings$8;

    invoke-direct {v8, p0}, Lcom/android/settings/fingerprint/FingerprintSettings$8;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings;)V

    const-wide/16 v10, 0x2710

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f040100

    invoke-virtual {v7, v8, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f11037c

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    new-instance v7, Lcom/android/settings/fingerprint/FingerprintSettings$9;

    invoke-direct {v7, p0, v5, v6}, Lcom/android/settings/fingerprint/FingerprintSettings$9;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings;Landroid/widget/ListView;Landroid/view/View;)V

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    if-eqz v5, :cond_0

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v7, "FpstFingerprintSettings"

    const-string/jumbo v8, "showHuntipForFingerprintIdentification : SettingsActivity is null, Skip Huntip, will try again"

    invoke-static {v7, v8}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iput-boolean v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->skipHuntip:Z

    const-string/jumbo v7, "FpstFingerprintSettings"

    const-string/jumbo v8, "showHuntipForFingerprintIdentification : skipHuntip is true, Skip Huntip, will try again"

    invoke-static {v7, v8}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showToastMsg()V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const v3, 0x7f0b066d

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f0b0701

    invoke-virtual {p0, v3, v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private startActivityForResultWrapper(Landroid/content/Intent;I)V
    .locals 4

    const-string/jumbo v1, "FpstFingerprintSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startActivityForResultWrapper:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "isAfw"

    iget-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsAfw:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/fingerprint/FingerprintSettings;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/settings/fingerprint/FingerprintSettings;->isKeepEnrollSession:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private startActivityWrapper(Landroid/content/Intent;)V
    .locals 4

    const-string/jumbo v1, "FpstFingerprintSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startActivityWrapper:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "isAfw"

    iget-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsAfw:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/settings/fingerprint/FingerprintSettings;->isKeepEnrollSession:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private startActivityWrapperWithSessionClose(Landroid/content/Intent;)V
    .locals 4

    const-string/jumbo v1, "FpstFingerprintSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startActivityWrapperWithSessionClose:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "isAfw"

    iget-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsAfw:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/settings/fingerprint/FingerprintSettings;->isKeepEnrollSession:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private startSelectListUI(I[Z)V
    .locals 8

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/fingerprint/FingerprintSettings;->isKeepEnrollSession:Z

    const-string/jumbo v0, "FpstFingerprintSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startSelectListUI : fId["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "], twChecklist["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "selected_id"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "isAfw"

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsAfw:Z

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "android.intent.extra.USER_ID"

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p2, :cond_0

    const-string/jumbo v0, "twmultiselected_id"

    invoke-virtual {v2, v0, p2}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    :cond_0
    const-string/jumbo v0, "FpstFingerprintSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isTablet : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/settings/SettingsActivity;->getSettingsActivityContext()Landroid/content/Context;

    move-result-object v7

    if-nez v7, :cond_1

    return-void

    :cond_1
    move-object v0, v7

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-string/jumbo v1, "com.android.settings.fingerprint.FingerprintSettings_MultiSelect"

    const v3, 0x7f0b066d

    const/4 v4, 0x0

    const/16 v6, 0x3ef

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.android.settings.fingerprint.FingerprintSettings_MultiSelect"

    const/16 v4, 0x3ef

    const v5, 0x7f0b066d

    const/4 v6, 0x0

    move-object v3, p0

    invoke-static/range {v0 .. v6}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private stopFingerprint()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintCancel:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintCancel:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->retryFingerprintRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->focusEditButtonRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintCancel:Landroid/os/CancellationSignal;

    return-void

    :cond_1
    const-string/jumbo v0, "FpstFingerprintSettings"

    const-string/jumbo v1, "stopFingerprint cancel()"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintCancel:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    goto :goto_0
.end method

.method private unregisterFingerprintHuntipReceiver()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mHuntipBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mHuntipBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method private updateAddPreference()V
    .locals 11

    const/4 v6, 0x1

    const/4 v7, 0x0

    :try_start_0
    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettings_Utils;->getMaxFingerEnroll()I

    move-result v8

    if-ge v5, v8, :cond_0

    new-instance v3, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const-string/jumbo v5, "key_fingerprint_add"

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    const v5, 0x7f0b06b9

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setTitle(I)V

    const v5, 0x7f040102

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setLayoutResource(I)V

    const v5, 0x7f040106

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRegisterCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v5, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string/jumbo v8, "keyguard"

    invoke-virtual {v5, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-lez v5, :cond_1

    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v2, v5}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_1
    :goto_0
    const-string/jumbo v5, "FpstFingerprintSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateAddPreference [mEnrolledFingerCount] = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mWebSignIn:Landroid/preference/SwitchPreference;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mWebSignIn:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getFingerprintVerification()Z

    move-result v8

    invoke-virtual {v5, v8}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_2
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    if-eqz v5, :cond_3

    const-string/jumbo v8, "FpstFingerprintSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "SAMSUNGACCOUNT updateRegisterPreference setChecked : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v10, "fingerprint_used_samsungaccount"

    invoke-static {v5, v10, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_6

    move v5, v6

    :goto_2
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-direct {p0, v5}, Lcom/android/settings/fingerprint/FingerprintSettings;->isSamsungAccountSignedIn(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getFingerprintSamsungAccountVerification()Z

    move-result v5

    if-eqz v5, :cond_7

    :try_start_1
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v8, 0x1

    invoke-direct {p0, v5, v8}, Lcom/android/settings/fingerprint/FingerprintSettings;->setUseFingerprintForSA(Landroid/content/Context;I)Z

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v8, 0x1

    invoke-direct {p0, v5, v8}, Lcom/android/settings/fingerprint/FingerprintSettings;->setFingerPrintOnSAConfirmed(Landroid/content/Context;I)Z

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Landroid/preference/SwitchPreference;->setChecked(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_3
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mScreenLock:Landroid/preference/SwitchPreference;

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_4
    :goto_4
    return-void

    :cond_5
    :try_start_2
    new-instance v4, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const-string/jumbo v5, "change_reset_password"

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    const v5, 0x7f0b06b4

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(I)V

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRegisterCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v5, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    const-string/jumbo v5, "FpstFingerprintSettings"

    const-string/jumbo v8, "updateAddPreference [add Change Reset Password]"

    invoke-static {v5, v8}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v5, "FpstFingerprintSettings"

    const-string/jumbo v8, "updateAddPreference : IllegalStateException"

    invoke-static {v5, v8}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_1

    :cond_6
    move v5, v7

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_7
    :try_start_3
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-direct {p0, v5, v8}, Lcom/android/settings/fingerprint/FingerprintSettings;->setUseFingerprintForSA(Landroid/content/Context;I)Z

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-direct {p0, v5, v8}, Lcom/android/settings/fingerprint/FingerprintSettings;->setFingerPrintOnSAConfirmed(Landroid/content/Context;I)Z

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/preference/SwitchPreference;->setChecked(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_8
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->isFingerprintDisabled()Z

    move-result v5

    if-eqz v5, :cond_9

    const-string/jumbo v5, "FpstFingerprintSettings"

    const-string/jumbo v6, "Screen lock switch disable!"

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mScreenLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v7}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mScreenLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v7}, Lcom/android/settings/Utils;->setFingerprintScreenLockVerification(Landroid/content/Context;Z)V

    goto :goto_4

    :cond_9
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mScreenLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v5, v6, v8}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v5

    if-ne v5, v6, :cond_a

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mScreenLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->setFingerprintScreenLockVerification(Landroid/content/Context;Z)V

    goto/16 :goto_4

    :cond_a
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mScreenLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v7}, Lcom/android/settings/Utils;->setFingerprintScreenLockVerification(Landroid/content/Context;Z)V

    goto/16 :goto_4
.end method

.method private updateEditbtn()V
    .locals 6

    const/4 v3, 0x0

    const-string/jumbo v1, "FpstFingerprintSettings"

    const-string/jumbo v2, "updateEditbtn"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "show_button_background"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRegisterCategory:Landroid/preference/PreferenceCategory;

    const v2, 0x7f0400f5

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setLayoutResource(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mH:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->focusEditButtonRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x96

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "FpstFingerprintSettings"

    const-string/jumbo v2, "skip update Edit BG catetory"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private declared-synchronized updateIdentifiedFinger(ZI)V
    .locals 11

    monitor-enter p0

    const/4 v4, 0x0

    :goto_0
    :try_start_0
    iget v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-ge v4, v8, :cond_5

    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v8}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v2

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->genKey(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;

    invoke-virtual {v3}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->getView()Landroid/view/View;

    move-result-object v7

    const/4 v6, 0x0

    if-eqz v7, :cond_0

    const v8, 0x1020016

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    :cond_0
    if-eqz v6, :cond_3

    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->origin_color_identifiedId:Landroid/content/res/ColorStateList;

    if-nez v8, :cond_1

    invoke-virtual {v6}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->origin_color_identifiedId:Landroid/content/res/ColorStateList;

    :cond_1
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->origin_typeface:Landroid/graphics/Typeface;

    if-nez v8, :cond_2

    invoke-virtual {v6}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->origin_typeface:Landroid/graphics/Typeface;

    :cond_2
    if-eqz p1, :cond_4

    if-ne p2, v2, :cond_3

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v6, v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->colorId_identifiedId:I

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    const-string/jumbo v8, "FpstFingerprintSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateIdentifiedFinger identified["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "]["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "]["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_4
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->origin_typeface:Landroid/graphics/Typeface;

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->origin_color_identifiedId:Landroid/content/res/ColorStateList;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    const-string/jumbo v8, "FpstFingerprintSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateIdentifiedFinger["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "]["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "]["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v8, "FpstFingerprintSettings"

    const-string/jumbo v9, "updateIdentifiedFinger : IllegalStateException"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    :goto_2
    monitor-exit p0

    return-void

    :catch_1
    move-exception v1

    :try_start_2
    const-string/jumbo v8, "FpstFingerprintSettings"

    const-string/jumbo v9, "updateIdentifiedFinger : Exception"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method private updateOptionsMenu(Landroid/view/Menu;)V
    .locals 9

    const v8, 0x7f0b0430

    const/4 v7, 0x2

    const v6, 0x7f0b0422

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_0

    const-string/jumbo v1, "FpstFingerprintSettings"

    const-string/jumbo v2, "updateOptionsMenu : menu is Null. Skip update"

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "FpstFingerprintSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateOptionsMenu : enrolledFingerprintNum["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "USA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-nez v1, :cond_2

    invoke-interface {p1, v4, v5, v4, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-interface {p1, v4, v5, v4, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportOnlineHelpMenu(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_4
    invoke-interface {p1, v4, v7, v4, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportOnlineHelpMenu(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_6
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1, v4, v5, v4, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    invoke-interface {p1, v4, v7, v4, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    :cond_7
    invoke-interface {p1, v4, v7, v4, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    :cond_8
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1, v4, v5, v4, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0
.end method

.method private updatePreferences()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->retryFingerprint()V

    return-void
.end method

.method private updateTwMultiSelected(I)V
    .locals 3

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/settings/fingerprint/FingerprintSettings;->setTwselectionChecklist(ZI)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "FpstFingerprintSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateTwMultiSelected : postion error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public editKeyPressed()V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->startSelectListUI(I[Z)V

    return-void
.end method

.method protected finishFingerprintSettings()V
    .locals 2

    const-string/jumbo v0, "FpstFingerprintSettings"

    const-string/jumbo v1, "finishFingerprintSettings()"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->cancelRenameDialog()V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method protected getHelpResource()I
    .locals 1

    const v0, 0x7f0b18b0

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x31

    return v0
.end method

.method protected handleError(ILjava/lang/CharSequence;)V
    .locals 6

    const/4 v4, 0x0

    const-string/jumbo v1, "FpstFingerprintSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleError errMsgId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", msg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintCancel:Landroid/os/CancellationSignal;

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    :cond_1
    return-void

    :pswitch_1
    return-void

    :pswitch_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mInFingerprintLockout:Z

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintLockoutReset:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintLockoutReset:Ljava/lang/Runnable;

    const-wide/16 v4, 0x7530

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 16

    invoke-super/range {p0 .. p3}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const-string/jumbo v11, "FpstFingerprintSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "=====onActivityResult requestCode : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " resultCode : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    const/4 v11, -0x1

    move/from16 v0, p2

    if-ne v0, v11, :cond_2

    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/android/settings/fingerprint/FingerprintSettings;->setUseFingerprintForSA(Landroid/content/Context;I)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/android/settings/fingerprint/FingerprintSettings;->setFingerPrintOnSAConfirmed(Landroid/content/Context;I)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getFingerprintSamsungAccountVerification()Z

    move-result v12

    invoke-virtual {v11, v12}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    const-string/jumbo v12, "FpstFingerprintSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "SAMSUNGACCOUNT_EXISTING_REQUEST RESULT_OK setChecked : "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v14, "fingerprint_used_samsungaccount"

    const/4 v15, 0x0

    invoke-static {v11, v14, v15}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    const/4 v14, 0x1

    if-ne v11, v14, :cond_1

    const/4 v11, 0x1

    :goto_1
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    const/4 v11, 0x0

    goto :goto_1

    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/android/settings/fingerprint/FingerprintSettings;->setUseFingerprintForSA(Landroid/content/Context;I)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/android/settings/fingerprint/FingerprintSettings;->setFingerPrintOnSAConfirmed(Landroid/content/Context;I)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getFingerprintSamsungAccountVerification()Z

    move-result v12

    invoke-virtual {v11, v12}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    const-string/jumbo v12, "FpstFingerprintSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "SAMSUNGACCOUNT_EXISTING_REQUEST RESULT_NOK setChecked : "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v14, "fingerprint_used_samsungaccount"

    const/4 v15, 0x0

    invoke-static {v11, v14, v15}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    const/4 v14, 0x1

    if-ne v11, v14, :cond_3

    const/4 v11, 0x1

    :goto_2
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_3
    const/4 v11, 0x0

    goto :goto_2

    :sswitch_1
    const/4 v11, -0x1

    move/from16 v0, p2

    if-eq v0, v11, :cond_4

    const/4 v11, 0x1

    move/from16 v0, p2

    if-ne v0, v11, :cond_6

    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/android/settings/fingerprint/FingerprintSettings;->setUseFingerprintForSA(Landroid/content/Context;I)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/android/settings/fingerprint/FingerprintSettings;->setFingerPrintOnSAConfirmed(Landroid/content/Context;I)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getFingerprintSamsungAccountVerification()Z

    move-result v12

    invoke-virtual {v11, v12}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    const-string/jumbo v12, "FpstFingerprintSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "SAMSUNGACCOUNT_REQUEST RESULT_OK setChecked : "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v14, "fingerprint_used_samsungaccount"

    const/4 v15, 0x0

    invoke-static {v11, v14, v15}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    const/4 v14, 0x1

    if-ne v11, v14, :cond_5

    const/4 v11, 0x1

    :goto_3
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_5
    const/4 v11, 0x0

    goto :goto_3

    :cond_6
    :try_start_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/android/settings/fingerprint/FingerprintSettings;->setUseFingerprintForSA(Landroid/content/Context;I)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/android/settings/fingerprint/FingerprintSettings;->setFingerPrintOnSAConfirmed(Landroid/content/Context;I)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getFingerprintSamsungAccountVerification()Z

    move-result v12

    invoke-virtual {v11, v12}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    const-string/jumbo v12, "FpstFingerprintSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "SAMSUNGACCOUNT_REQUEST RESULT_NOK setChecked : "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v14, "fingerprint_used_samsungaccount"

    const/4 v15, 0x0

    invoke-static {v11, v14, v15}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    const/4 v14, 0x1

    if-ne v11, v14, :cond_7

    const/4 v11, 0x1

    :goto_4
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_7
    const/4 v11, 0x0

    goto :goto_4

    :sswitch_2
    if-eqz p3, :cond_8

    const-string/jumbo v11, "hw_auth_token"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/settings/fingerprint/FingerprintSettings;->mToken:[B

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/settings/fingerprint/FingerprintSettings;->isRunRegister:Z

    if-eqz v11, :cond_9

    const-string/jumbo v11, "FpstFingerprintSettings"

    const-string/jumbo v12, "reset runRegister"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/settings/fingerprint/FingerprintSettings;->isRunRegister:Z

    :cond_9
    const/4 v11, -0x1

    move/from16 v0, p2

    if-eq v0, v11, :cond_a

    const/4 v11, 0x1

    move/from16 v0, p2

    if-ne v0, v11, :cond_12

    :cond_a
    const/4 v5, 0x0

    if-eqz p3, :cond_b

    :try_start_4
    const-string/jumbo v11, "previousStage"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_b
    const-string/jumbo v11, "support_web_signin"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    const-string/jumbo v11, "FpstFingerprintSettings"

    const-string/jumbo v12, "previos stage is WebSingin"

    invoke-static {v11, v12}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/settings/fingerprint/FingerprintSettings;->setFingerprintVerification(Z)V

    :cond_c
    const-string/jumbo v11, "samsung_pay"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    const-string/jumbo v11, "FpstFingerprintSettings"

    const-string/jumbo v12, "Fingerprint registered successfully! Launch the SamsungPay"

    invoke-static {v11, v12}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v11, Lcom/android/settings/fingerprint/FingerprintSettings$Survey;->SAMSUNGPAY_LINK:Lcom/android/settings/fingerprint/FingerprintSettings$Survey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/settings/fingerprint/FingerprintSettings;->sendSurvey(Lcom/android/settings/fingerprint/FingerprintSettings$Survey;)V

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v11, "com.samsung.android.spay"

    const-string/jumbo v12, "com.samsung.android.spay.ui.SpayMainActivity"

    invoke-virtual {v4, v11, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v11, "previousStage"

    const-string/jumbo v12, "FingerprintSettings"

    invoke-virtual {v4, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/settings/fingerprint/FingerprintSettings;->startActivityWrapperWithSessionClose(Landroid/content/Intent;)V

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/settings/fingerprint/FingerprintSettings;->skipHuntip:Z

    :cond_d
    const-string/jumbo v11, "alipay_payment"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    const-string/jumbo v11, "FpstFingerprintSettings"

    const-string/jumbo v12, "Fingerprint registered successfully! Launch the AliPay"

    invoke-static {v11, v12}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v10, "alipays://platformapi/startapp?appId=20000082&isToRegisterFingerprint=YES"

    const-string/jumbo v11, "android.intent.action.VIEW"

    invoke-virtual {v4, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/settings/fingerprint/FingerprintSettings;->startActivityWrapperWithSessionClose(Landroid/content/Intent;)V

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/settings/fingerprint/FingerprintSettings;->skipHuntip:Z

    :cond_e
    const-string/jumbo v11, "support_samsung_account"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/settings/fingerprint/FingerprintSettings;->skipHuntip:Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/settings/fingerprint/FingerprintSettings;->isSamsungAccountSignedIn(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_11

    const-string/jumbo v11, "FpstFingerprintSettings"

    const-string/jumbo v12, "SamsungAccountSignedIn is False."

    invoke-static {v11, v12}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-static {v11}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    const-string/jumbo v11, "com.osp.app.signin"

    invoke-virtual {v6, v11}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v9

    array-length v8, v9

    if-nez v8, :cond_10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v11, "com.osp.app.signin.action.ADD_SAMSUNG_ACCOUNT"

    invoke-direct {v4, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v11, "mypackage"

    invoke-virtual {v4, v11, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v11, "OSP_VER"

    const-string/jumbo v12, "OSP_02"

    invoke-virtual {v4, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v11, "MODE"

    const-string/jumbo v12, "ADD_ACCOUNT"

    invoke-virtual {v4, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v11, "Is_From_SA_Verify"

    const/4 v12, 0x1

    invoke-virtual {v4, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v11, 0x66

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v11}, Lcom/android/settings/fingerprint/FingerprintSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_f
    :goto_5
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v11, 0x3e8

    move/from16 v0, p1

    if-ne v0, v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/fingerprint/FingerprintSettings;->mOptionsMenu:Landroid/view/Menu;

    if-eqz v11, :cond_0

    const-string/jumbo v11, "FpstFingerprintSettings"

    const-string/jumbo v12, "updateOptionsMenu after FIRSTFINGER_REQUEST_CODE"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/fingerprint/FingerprintSettings;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v11}, Landroid/view/Menu;->clear()V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/fingerprint/FingerprintSettings;->mOptionsMenu:Landroid/view/Menu;

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/settings/fingerprint/FingerprintSettings;->updateOptionsMenu(Landroid/view/Menu;)V

    goto/16 :goto_0

    :cond_10
    :try_start_5
    const-string/jumbo v11, "FpstFingerprintSettings"

    const-string/jumbo v12, "returnvalue_sa is not 0"

    invoke-static {v11, v12}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    move-exception v2

    const-string/jumbo v11, "FpstFingerprintSettings"

    const-string/jumbo v12, "data is null!!"

    invoke-static {v11, v12}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_11
    :try_start_6
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v11, "com.msc.action.samsungaccount.CONFIRM_PASSWORD_POPUP"

    invoke-direct {v4, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v11, "client_id"

    const-string/jumbo v12, "s5d189ajvs"

    invoke-virtual {v4, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v11, "client_secret"

    const-string/jumbo v12, "E8781246E4A0F6E9E213178CC003DE6A"

    invoke-virtual {v4, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v11, "Is_From_SA_Verify"

    const/4 v12, 0x1

    invoke-virtual {v4, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v11, 0x65

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v11}, Lcom/android/settings/fingerprint/FingerprintSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_5

    :cond_12
    if-nez p2, :cond_13

    if-eqz p3, :cond_0

    const-string/jumbo v11, "enrollResult"

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/4 v11, 0x1

    if-ne v3, v11, :cond_0

    const/4 v11, 0x0

    sput-boolean v11, Lcom/android/settings/fingerprint/FingerprintSettings;->isKeepEnrollSession:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->cancelAndSessionEnd()V

    goto/16 :goto_0

    :cond_13
    :try_start_7
    const-string/jumbo v11, "FpstFingerprintSettings"

    const-string/jumbo v12, "SAMSUNGACCOUNT : there is no case"

    invoke-static {v11, v12}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/android/settings/fingerprint/FingerprintSettings;->setUseFingerprintForSA(Landroid/content/Context;I)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/android/settings/fingerprint/FingerprintSettings;->setFingerPrintOnSAConfirmed(Landroid/content/Context;I)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getFingerprintSamsungAccountVerification()Z

    move-result v12

    invoke-virtual {v11, v12}, Landroid/preference/SwitchPreference;->setChecked(Z)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :sswitch_3
    const/4 v11, -0x1

    move/from16 v0, p2

    if-ne v0, v11, :cond_14

    const-string/jumbo v11, "FpstFingerprintSettings"

    const-string/jumbo v12, "onActivityResult ChooseLockGeneric Granted"

    invoke-static {v11, v12}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_0

    const-string/jumbo v11, "hw_auth_token"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/settings/fingerprint/FingerprintSettings;->mToken:[B

    goto/16 :goto_0

    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->finish()V

    goto/16 :goto_0

    :sswitch_4
    if-eqz p3, :cond_15

    const-string/jumbo v11, "hw_auth_token"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/settings/fingerprint/FingerprintSettings;->mToken:[B

    :cond_15
    const/4 v11, -0x1

    move/from16 v0, p2

    if-ne v0, v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/fingerprint/FingerprintSettings;->mScreenLock:Landroid/preference/SwitchPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings/Utils;->getFingerprintScreenLockVerification(Landroid/content/Context;)Z

    move-result v12

    invoke-virtual {v11, v12}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_0

    :sswitch_5
    const-string/jumbo v11, "FpstFingerprintSettings"

    const-string/jumbo v12, "activity. FINGERPRINT_MULTI_SELECT"

    invoke-static {v11, v12}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    if-eqz p3, :cond_0

    const-string/jumbo v11, "cancelsession"

    const-string/jumbo v12, "reason"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v11, 0x0

    sput-boolean v11, Lcom/android/settings/fingerprint/FingerprintSettings;->isKeepEnrollSession:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->cancelAndSessionEnd()V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_0
        0x66 -> :sswitch_1
        0xc9 -> :sswitch_3
        0x3e8 -> :sswitch_2
        0x3e9 -> :sswitch_2
        0x3ee -> :sswitch_4
        0x3ef -> :sswitch_5
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const-string/jumbo v0, "FpstFingerprintSettings"

    const-string/jumbo v1, "=====onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v3, "FpstFingerprintSettings"

    const-string/jumbo v4, "=====onCreate()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFragment:Landroid/app/Fragment;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v3, "tokenFromLock"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    const-string/jumbo v3, "identifyFingerprint"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIdentifyFingerprint:Z

    const-string/jumbo v3, "isAfw"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsAfw:Z

    const-string/jumbo v3, "android.intent.extra.USER_ID"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsInMultiWindowMode:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsMultiWindowModeChanged:Z

    const-string/jumbo v3, "FpstFingerprintSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mIsAfw : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsAfw:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "FpstFingerprintSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mUserId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_0

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mToken:[B

    :cond_0
    if-eqz p1, :cond_1

    const-string/jumbo v3, "hw_auth_token"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mToken:[B

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v3, "fingerprint"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v3, v4}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0x7f080075

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v3, p0}, Lcom/android/settings/SettingsActivity;->setOnEditPressedListener(Lcom/android/settings/SettingsActivity$onEditButtonClicked;)V

    :goto_0
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintSettings;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0150

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->colorId_identifiedId:I

    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sput-object v6, Lcom/android/settings/fingerprint/FingerprintSettings;->mListView:Landroid/widget/ListView;

    sput-object v6, Lcom/android/settings/fingerprint/FingerprintSettings;->mEdit_TextView:Landroid/widget/TextView;

    return-void

    :cond_2
    const v3, 0x7f080074

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintSettings;->addPreferencesFromResource(I)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const-string/jumbo v0, "FpstFingerprintSettings"

    const-string/jumbo v1, "=====onCreateOptionsMenu"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mOptionsMenu:Landroid/view/Menu;

    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintSettings;->updateOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onDestroy()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroy()V

    const-string/jumbo v1, "FpstFingerprintSettings"

    const-string/jumbo v2, "=====onDestroy()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->isRunRegister:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "FpstFingerprintSettings"

    const-string/jumbo v2, "reset runRegister"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->isRunRegister:Z

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/SettingsActivity;->setOnEditPressedListener(Lcom/android/settings/SettingsActivity$onEditButtonClicked;)V

    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsMultiWindowModeChanged:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->postEnroll()I

    move-result v0

    if-gez v0, :cond_2

    const-string/jumbo v1, "FpstFingerprintSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "postEnroll failed: result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 3

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onMultiWindowModeChanged(Z)V

    const-string/jumbo v0, "FpstFingerprintSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMultiWindowModeChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsInMultiWindowMode:Z

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const/4 v1, 0x0

    return v1

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportOnlineHelpMenu(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "helphub:appid"

    const-string/jumbo v2, "finger_scanner"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSettings;->startActivityWrapper(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "helphub:section"

    const-string/jumbo v2, "fingerprints"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSettings;->startActivityWrapper(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->startSelectListUI(I[Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    const-string/jumbo v1, "FpstFingerprintSettings"

    const-string/jumbo v2, "=====onPause()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->notificationManager:Landroid/app/NotificationManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->notificationManager:Landroid/app/NotificationManager;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f1104a1

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary;

    if-eqz v1, :cond_1

    const-string/jumbo v1, "FpstFingerprintSettings"

    const-string/jumbo v2, "Top of fragment is searchResultsSummary"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->cancelAndSessionEnd()V

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsInMultiWindowMode:Z

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v2

    if-eq v1, v2, :cond_3

    const-string/jumbo v1, "FpstFingerprintSettings"

    const-string/jumbo v2, "multi-window mode changed : skip cancelAndSessionEnd"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsMultiWindowModeChanged:Z

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->cancelAndSessionEnd()V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10

    const/16 v6, 0x3e8

    const/4 v7, 0x0

    const-string/jumbo v8, "FpstFingerprintSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "=====onPreferenceChange : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v5, p2

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "fingerprint_enable_keyguard_toggle"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_0
    return v4

    :cond_0
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mWebSignIn:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v5}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v9, 0x7f1001d4

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    move-object v5, p2

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v6

    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v8, v9, v5}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    move-object v5, p2

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->startDisclaimerFromWebSignin()Z

    move-result v5

    return v5

    :cond_1
    move v5, v7

    goto :goto_1

    :cond_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/settings/fingerprint/FingerprintSettings;->setFingerprintVerification(Z)V

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v5}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v9, 0x7f1001d5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    move-object v5, p2

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    :goto_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v8, v9, v5}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->through_onpreferencechange:Z

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->startDisclaimerFromSamsungAccount()Z

    move-result v5

    return v5

    :cond_4
    move v6, v7

    goto :goto_2

    :cond_5
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/android/settings/fingerprint/FingerprintSettings;->setUseFingerprintForSA(Landroid/content/Context;I)Z

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/android/settings/fingerprint/FingerprintSettings;->setFingerPrintOnSAConfirmed(Landroid/content/Context;I)Z

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getFingerprintSamsungAccountVerification()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    const-string/jumbo v5, "FpstFingerprintSettings"

    const-string/jumbo v6, "SAMSUNGACCOUNT value is false "

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_6
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mScreenLock:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v5}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v5, v8}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v3

    const-string/jumbo v5, "FpstFingerprintSettings"

    const-string/jumbo v8, "passwordQuality : passwordQuality"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v9, 0x7f1001d6

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    move-object v5, p2

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_7

    :goto_3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v8, v9, v5}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    move-object v5, p2

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_8

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->setFingerprintScreenLockDisable()V

    sget-object v5, Lcom/android/settings/fingerprint/FingerprintSettings$Survey;->FINGERPRINT_LOCK_DISABLE:Lcom/android/settings/fingerprint/FingerprintSettings$Survey;

    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/FingerprintSettings;->sendSurvey(Lcom/android/settings/fingerprint/FingerprintSettings$Survey;)V

    goto/16 :goto_0

    :cond_7
    move v6, v7

    goto :goto_3

    :cond_8
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v5

    if-eqz v5, :cond_a

    const/16 v5, 0x1000

    if-ne v3, v5, :cond_9

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isDirectionLockSupportFingerprint(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_a

    :cond_9
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v5, v6}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->setFingerprintLock()V

    sget-object v5, Lcom/android/settings/fingerprint/FingerprintSettings$Survey;->FINGERPRINT_LOCK_ENABLE:Lcom/android/settings/fingerprint/FingerprintSettings$Survey;

    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/FingerprintSettings;->sendSurvey(Lcom/android/settings/fingerprint/FingerprintSettings$Survey;)V

    sget-object v5, Lcom/android/settings/fingerprint/FingerprintSettings$Survey;->FINGERPRINT_LOCK_ENTRY_UNLOCK:Lcom/android/settings/fingerprint/FingerprintSettings$Survey;

    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/FingerprintSettings;->sendSurvey(Lcom/android/settings/fingerprint/FingerprintSettings$Survey;)V

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v5, "FpstFingerprintSettings"

    const-string/jumbo v6, "Launch the FingerprintLockSettings"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v5, "com.android.settings"

    const-string/jumbo v6, "com.android.settings.fingerprint.FingerprintLockSettings"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "previousStage"

    const-string/jumbo v6, "fingerprint_settings_set_screen_lock"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "fingerprintlockEnable"

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {v2, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string/jumbo v5, "hw_auth_token"

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mToken:[B

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string/jumbo v5, "identifyFingerprint"

    iget-boolean v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIdentifyFingerprint:Z

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v5, 0x3ee

    invoke-direct {p0, v2, v5}, Lcom/android/settings/fingerprint/FingerprintSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V

    return v7

    :cond_b
    const-string/jumbo v5, "FpstFingerprintSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unknown key:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10

    const/4 v9, 0x0

    const-string/jumbo v6, "FpstFingerprintSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "=====onPreferenceTreeClick"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/4 v4, 0x1

    instance-of v6, p2, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;

    if-eqz v6, :cond_0

    move-object v1, p2

    check-cast v1, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->getFingerprint()Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v6

    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/settings/fingerprint/FingerprintSettings;->renameFingerPrint(ILjava/lang/CharSequence;)V

    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v6

    return v6

    :cond_0
    const-string/jumbo v6, "key_fingerprint_add"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->stopFingerprint()V

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/settings/fingerprint/FingerprintSettings$10;

    invoke-direct {v7, p0}, Lcom/android/settings/fingerprint/FingerprintSettings$10;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings;)V

    const-wide/16 v8, 0x1f4

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f1001d3

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    :cond_1
    :goto_0
    return v4

    :cond_2
    const-string/jumbo v6, "change_reset_password"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string/jumbo v6, "previousStage"

    const-string/jumbo v7, "FingerprintSettings_changepassword"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "com.android.settings"

    const-string/jumbo v7, "com.android.settings.fingerprint.FingerprintPassword"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v6, 0x3ea

    invoke-direct {p0, v3, v6}, Lcom/android/settings/fingerprint/FingerprintSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_3
    const-string/jumbo v6, "support_samsung_account"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-boolean v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->through_onpreferencechange:Z

    if-nez v6, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->startDisclaimerFromSamsungAccount()Z

    move-result v6

    return v6

    :cond_4
    const-string/jumbo v6, "alipay_payment"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-nez v6, :cond_9

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->checkMobileKeyboard()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->showToastMsg()V

    goto :goto_0

    :cond_5
    const-string/jumbo v6, "samsung_pay"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-nez v6, :cond_b

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->checkMobileKeyboard()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->showToastMsg()V

    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_6
    const-string/jumbo v6, "samsung_pass"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "com.samsung.android.samsungpass.ACTION_USE_BIOMETRIC"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "biometricType"

    invoke-virtual {v3, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0, v3}, Lcom/android/settings/fingerprint/FingerprintSettings;->startActivityWrapperWithSessionClose(Landroid/content/Intent;)V

    goto :goto_0

    :cond_7
    iput-boolean v9, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->through_onpreferencechange:Z

    goto :goto_0

    :cond_8
    const-string/jumbo v6, "FpstFingerprintSettings"

    const-string/jumbo v7, "There is no registered fingerprint"

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "alipay_payment"

    invoke-direct {p0, v6}, Lcom/android/settings/fingerprint/FingerprintSettings;->runRegister(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v6, "FpstFingerprintSettings"

    const-string/jumbo v7, "There is Registered Fingerprint. Launch the AliPay"

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "alipays://platformapi/startapp?appId=20000082&isToRegisterFingerprint=YES"

    const-string/jumbo v6, "android.intent.action.VIEW"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-direct {p0, v3}, Lcom/android/settings/fingerprint/FingerprintSettings;->startActivityWrapperWithSessionClose(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v6, "FpstFingerprintSettings"

    const-string/jumbo v7, "There is no registered fingerprint"

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "samsung_pay"

    invoke-direct {p0, v6}, Lcom/android/settings/fingerprint/FingerprintSettings;->runRegister(Ljava/lang/String;)V

    goto :goto_1

    :cond_b
    const-string/jumbo v6, "FpstFingerprintSettings"

    const-string/jumbo v7, "There is Registered Fingerprint. Launch the SamsungPay"

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Lcom/android/settings/fingerprint/FingerprintSettings$Survey;->SAMSUNGPAY_LINK:Lcom/android/settings/fingerprint/FingerprintSettings$Survey;

    invoke-virtual {p0, v6}, Lcom/android/settings/fingerprint/FingerprintSettings;->sendSurvey(Lcom/android/settings/fingerprint/FingerprintSettings$Survey;)V

    const-string/jumbo v6, "com.samsung.android.spay"

    const-string/jumbo v7, "com.samsung.android.spay.ui.SpayMainActivity"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "previousStage"

    const-string/jumbo v7, "FingerprintSettings"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v3}, Lcom/android/settings/fingerprint/FingerprintSettings;->startActivityWrapperWithSessionClose(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    const-string/jumbo v0, "FpstFingerprintSettings"

    const-string/jumbo v1, "=====onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->updatePreferences()V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mWebSignIn:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mWebSignIn:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getFingerprintVerification()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getFingerprintSamsungAccountVerification()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mScreenLock:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mToken:[B

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    sput-object v0, Lcom/android/settings/fingerprint/FingerprintSettings;->mListView:Landroid/widget/ListView;

    sget-object v0, Lcom/android/settings/fingerprint/FingerprintSettings;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/settings/fingerprint/FingerprintSettings;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/settings/fingerprint/FingerprintSettings$ItemLongClickListener;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerprintSettings$ItemLongClickListener;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    sget-object v0, Lcom/android/settings/fingerprint/FingerprintSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->semSetDragBlockEnabled(Z)V

    sget-object v0, Lcom/android/settings/fingerprint/FingerprintSettings;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->TwFingerprintultiSelectedListener:Landroid/widget/AdapterView$SemOnMultiSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->semSetOnMultiSelectedListener(Landroid/widget/AdapterView$SemOnMultiSelectedListener;)V

    :cond_4
    const/4 v0, -0x1

    invoke-direct {p0, v4, v0}, Lcom/android/settings/fingerprint/FingerprintSettings;->updateIdentifiedFinger(ZI)V

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->showHuntipForFingerprintIdentification()V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mToken:[B

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isEnrollSession()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_5
    :goto_2
    return-void

    :cond_6
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->isFingerprintDisabled()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, "FpstFingerprintSettings"

    const-string/jumbo v1, "Screen lock switch disable!"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mScreenLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mScreenLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/android/settings/Utils;->setFingerprintScreenLockVerification(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mScreenLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v0

    if-ne v0, v3, :cond_8

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mScreenLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/android/settings/Utils;->setFingerprintScreenLockVerification(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mScreenLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/android/settings/Utils;->setFingerprintScreenLockVerification(Landroid/content/Context;Z)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "FpstFingerprintSettings"

    const-string/jumbo v1, "Enroll session close."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mToken:[B

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->postEnroll()I

    goto/16 :goto_1

    :cond_a
    const-string/jumbo v0, "FpstFingerprintSettings"

    const-string/jumbo v1, "Session closed! Token must be null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mToken:[B

    goto :goto_2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "hw_auth_token"

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mToken:[B

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const-string/jumbo v0, "FpstFingerprintSettings"

    const-string/jumbo v1, "onViewCreated()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected sendSurvey(Lcom/android/settings/fingerprint/FingerprintSettings$Survey;)V
    .locals 4

    const-string/jumbo v2, "TRUE"

    sget-object v3, Lcom/android/settings/fingerprint/FingerprintSettings;->ENABLE_SURVEY_MODE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettings;->-getcom-android-settings-fingerprint-FingerprintSettings$SurveySwitchesValues()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/settings/fingerprint/FingerprintSettings$Survey;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_0
    const-string/jumbo v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void

    :pswitch_0
    const-string/jumbo v2, "app_id"

    const-string/jumbo v3, "com.samsung.android.fingerprint.service"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "feature"

    const-string/jumbo v3, "FPRN"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "FpstFingerprintSettings"

    const-string/jumbo v3, "renameFingerPrint sendSurveyLog - appId : com.samsung.android.fingerprint.service, Feature : FPRN, extra : null, value : null"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    const-string/jumbo v2, "app_id"

    const-string/jumbo v3, "com.samsung.android.fingerprint.service"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "feature"

    const-string/jumbo v3, "FPLI"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "FpstFingerprintSettings"

    const-string/jumbo v3, "identifyFingerprint sendSurveyLog - appId : com.samsung.android.fingerprint.service, Feature : FPLI, extra : null, value : null"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    const-string/jumbo v2, "app_id"

    const-string/jumbo v3, "com.samsung.android.fingerprint.service"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "feature"

    const-string/jumbo v3, "FPSP"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "FpstFingerprintSettings"

    const-string/jumbo v3, "SamsungPay_Link sendSurveyLog - appId : com.samsung.android.fingerprint.service, Feature : FPSP, extra : null, value : null"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_3
    const-string/jumbo v2, "app_id"

    const-string/jumbo v3, "com.android.settings"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "feature"

    const-string/jumbo v3, "LOSC"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "extra"

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/settings/fingerprint/FingerprintSettings;->getLoggingExtraValue(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4
    const-string/jumbo v2, "app_id"

    const-string/jumbo v3, "com.android.settings"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "feature"

    const-string/jumbo v3, "LOSC"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "extra"

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/settings/fingerprint/FingerprintSettings;->getLoggingExtraValue(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_5
    const-string/jumbo v2, "app_id"

    const-string/jumbo v3, "com.samsung.android.fingerprint.service"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "feature"

    const-string/jumbo v3, "FPLE"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "extra"

    const-string/jumbo v3, "FingerprintSettingsUnlock"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public startDisclaimerFromSamsungAccount()Z
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string/jumbo v5, "FpstFingerprintSettings"

    const-string/jumbo v6, "startDisclaimerFromSamsungAccount"

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-nez v5, :cond_1

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->checkMobileKeyboard()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->showToastMsg()V

    :goto_0
    return v7

    :cond_0
    const-string/jumbo v5, "support_samsung_account"

    invoke-direct {p0, v5}, Lcom/android/settings/fingerprint/FingerprintSettings;->runRegister(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-direct {p0, v5}, Lcom/android/settings/fingerprint/FingerprintSettings;->isSamsungAccountSignedIn(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string/jumbo v5, "com.osp.app.signin"

    invoke-virtual {v1, v5}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v4

    array-length v3, v4

    if-nez v3, :cond_2

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v5, "com.osp.app.signin.action.ADD_SAMSUNG_ACCOUNT"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "mypackage"

    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "OSP_VER"

    const-string/jumbo v6, "OSP_02"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "MODE"

    const-string/jumbo v6, "ADD_ACCOUNT"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "Is_From_SA_Verify"

    invoke-virtual {v0, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v5, 0x66

    invoke-direct {p0, v0, v5}, Lcom/android/settings/fingerprint/FingerprintSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V

    :goto_1
    return v8

    :cond_2
    const-string/jumbo v5, "FpstFingerprintSettings"

    const-string/jumbo v6, "returnvalue_sa is not 0"

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v5, "com.msc.action.samsungaccount.CONFIRM_PASSWORD_POPUP"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "client_id"

    const-string/jumbo v6, "s5d189ajvs"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "client_secret"

    const-string/jumbo v6, "E8781246E4A0F6E9E213178CC003DE6A"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "Is_From_SA_Verify"

    invoke-virtual {v0, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v5, 0x65

    invoke-direct {p0, v0, v5}, Lcom/android/settings/fingerprint/FingerprintSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V

    goto :goto_1
.end method

.method public startDisclaimerFromWebSignin()Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "FpstFingerprintSettings"

    const-string/jumbo v1, "startDisclaimerFromWebSignin"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->checkMobileKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->showToastMsg()V

    :goto_0
    return v2

    :cond_0
    const-string/jumbo v0, "support_web_signin"

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSettings;->runRegister(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v3}, Lcom/android/settings/fingerprint/FingerprintSettings;->setFingerprintVerification(Z)V

    return v3
.end method
