.class public Lcom/android/incallui/util/VoWifiStateTracker;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/util/VoWifiStateTracker$VoWifiStateListener;
    }
.end annotation


# static fields
.field public static final CSC_SPR_FEATURE_KINETO_VOWIFI:Ljava/lang/String; = "CscFeature_Common_EnableSprintExtension"

.field private static final LOG_TAG:Ljava/lang/String; = "VoWifiStateTracker"

.field public static final VOWIFI_ROVEIN_STATE_PREF:Ljava/lang/String; = "com.oem.smartwifisupport.vowifi_pref_registration_state"

.field public static final WFC_APP_PACKAGE_NAME:Ljava/lang/String; = "com.oem.smartwifisupport"

.field public static final WFC_REGISTRATION_URI:Landroid/net/Uri;

.field private static sIntance:Lcom/android/incallui/util/VoWifiStateTracker;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsKinetoExist:Z

.field private mWfcListener:Lcom/android/incallui/util/VoWifiStateTracker$VoWifiStateListener;

.field private mWfcObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.oem.smartwifisupport.vowifi_pref_registration_state"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/util/VoWifiStateTracker;->WFC_REGISTRATION_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/incallui/util/VoWifiStateTracker$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/util/VoWifiStateTracker$1;-><init>(Lcom/android/incallui/util/VoWifiStateTracker;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/incallui/util/VoWifiStateTracker;->mWfcObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/android/incallui/util/VoWifiStateTracker;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/incallui/util/VoWifiStateTracker;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/util/VoWifiStateTracker;->mContext:Landroid/content/Context;

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/util/VoWifiStateTracker;->isVowifiPackageExist()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/util/VoWifiStateTracker;->mIsKinetoExist:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/util/VoWifiStateTracker;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/util/VoWifiStateTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/util/VoWifiStateTracker;)Lcom/android/incallui/util/VoWifiStateTracker$VoWifiStateListener;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/util/VoWifiStateTracker;->mWfcListener:Lcom/android/incallui/util/VoWifiStateTracker$VoWifiStateListener;

    return-object v0
.end method

.method public static getInstance()Lcom/android/incallui/util/VoWifiStateTracker;
    .locals 2

    sget-object v0, Lcom/android/incallui/util/VoWifiStateTracker;->sIntance:Lcom/android/incallui/util/VoWifiStateTracker;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/util/VoWifiStateTracker;

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/incallui/util/VoWifiStateTracker;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/incallui/util/VoWifiStateTracker;->sIntance:Lcom/android/incallui/util/VoWifiStateTracker;

    :cond_0
    sget-object v0, Lcom/android/incallui/util/VoWifiStateTracker;->sIntance:Lcom/android/incallui/util/VoWifiStateTracker;

    return-object v0
.end method

.method private isVowifiPackageExist()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/incallui/util/VoWifiStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v2, "com.oem.smartwifisupport"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "VoWifiStateTracker"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public isKinetoVowifiExist()Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/util/VoWifiStateTracker;->mIsKinetoExist:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVoWiFiRegistered()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/incallui/util/VoWifiStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "com.oem.smartwifisupport.vowifi_pref_registration_state"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public registerForWfcRegistrationStatus(Lcom/android/incallui/util/VoWifiStateTracker$VoWifiStateListener;)V
    .locals 4

    iput-object p1, p0, Lcom/android/incallui/util/VoWifiStateTracker;->mWfcListener:Lcom/android/incallui/util/VoWifiStateTracker$VoWifiStateListener;

    iget-object v0, p0, Lcom/android/incallui/util/VoWifiStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/util/VoWifiStateTracker;->WFC_REGISTRATION_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/incallui/util/VoWifiStateTracker;->mWfcObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v0, "registerForWfcRegistrationStatus() "

    invoke-direct {p0, v0}, Lcom/android/incallui/util/VoWifiStateTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method public unregisterForWfcRegistrationStatus()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/util/VoWifiStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/util/VoWifiStateTracker;->mWfcObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/util/VoWifiStateTracker;->mWfcListener:Lcom/android/incallui/util/VoWifiStateTracker$VoWifiStateListener;

    const-string v0, "unregisterForWfcRegistrationStatus() "

    invoke-direct {p0, v0}, Lcom/android/incallui/util/VoWifiStateTracker;->log(Ljava/lang/String;)V

    return-void
.end method
