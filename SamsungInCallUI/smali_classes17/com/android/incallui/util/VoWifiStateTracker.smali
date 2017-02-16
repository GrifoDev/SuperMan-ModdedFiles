.class public Lcom/android/incallui/util/VoWifiStateTracker;
.super Ljava/lang/Object;
.source "VoWifiStateTracker.java"


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

.field private mIsStatusUpdate:Z

.field private mIsWfcRegistered:Z

.field private mWfcListener:Lcom/android/incallui/util/VoWifiStateTracker$VoWifiStateListener;

.field private mWfcObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string v0, "com.oem.smartwifisupport.vowifi_pref_registration_state"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/util/VoWifiStateTracker;->WFC_REGISTRATION_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lcom/android/incallui/util/VoWifiStateTracker$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/util/VoWifiStateTracker$1;-><init>(Lcom/android/incallui/util/VoWifiStateTracker;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/incallui/util/VoWifiStateTracker;->mWfcObserver:Landroid/database/ContentObserver;

    .line 80
    iput-object p1, p0, Lcom/android/incallui/util/VoWifiStateTracker;->mContext:Landroid/content/Context;

    .line 81
    invoke-direct {p0}, Lcom/android/incallui/util/VoWifiStateTracker;->getVowifiPackageName()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/util/VoWifiStateTracker;->mIsStatusUpdate:Z

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/util/VoWifiStateTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/util/VoWifiStateTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/android/incallui/util/VoWifiStateTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/util/VoWifiStateTracker;)Lcom/android/incallui/util/VoWifiStateTracker$VoWifiStateListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/util/VoWifiStateTracker;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/incallui/util/VoWifiStateTracker;->mWfcListener:Lcom/android/incallui/util/VoWifiStateTracker$VoWifiStateListener;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/incallui/util/VoWifiStateTracker;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    sget-object v0, Lcom/android/incallui/util/VoWifiStateTracker;->sIntance:Lcom/android/incallui/util/VoWifiStateTracker;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lcom/android/incallui/util/VoWifiStateTracker;

    invoke-direct {v0, p0}, Lcom/android/incallui/util/VoWifiStateTracker;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/incallui/util/VoWifiStateTracker;->sIntance:Lcom/android/incallui/util/VoWifiStateTracker;

    .line 94
    :cond_0
    sget-object v0, Lcom/android/incallui/util/VoWifiStateTracker;->sIntance:Lcom/android/incallui/util/VoWifiStateTracker;

    return-object v0
.end method

.method private getVowifiPackageName()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 139
    iget-object v4, p0, Lcom/android/incallui/util/VoWifiStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 140
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_0

    .line 142
    :try_start_0
    const-string v4, "com.oem.smartwifisupport"

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 143
    .local v0, "appState":I
    const/4 v3, 0x1

    .line 148
    .end local v0    # "appState":I
    :cond_0
    :goto_0
    return v3

    .line 144
    :catch_0
    move-exception v1

    .line 145
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 132
    const-string v0, "VoWifiStateTracker"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return-void
.end method


# virtual methods
.method public isKinetoVowifiExist()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/android/incallui/util/VoWifiStateTracker;->mIsStatusUpdate:Z

    return v0
.end method

.method public isVoWiFiRegistered()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 103
    iget-object v3, p0, Lcom/android/incallui/util/VoWifiStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "com.oem.smartwifisupport.vowifi_pref_registration_state"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 104
    .local v0, "wfcEnabled":I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public registerForWfcRegistrationStatus(Lcom/android/incallui/util/VoWifiStateTracker$VoWifiStateListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/android/incallui/util/VoWifiStateTracker$VoWifiStateListener;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/incallui/util/VoWifiStateTracker;->mWfcListener:Lcom/android/incallui/util/VoWifiStateTracker$VoWifiStateListener;

    .line 112
    iget-object v1, p0, Lcom/android/incallui/util/VoWifiStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 113
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/incallui/util/VoWifiStateTracker;->WFC_REGISTRATION_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/incallui/util/VoWifiStateTracker;->mWfcObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 114
    const-string v1, "registerForWfcRegistrationStatus() "

    invoke-direct {p0, v1}, Lcom/android/incallui/util/VoWifiStateTracker;->log(Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public unregisterForWfcRegistrationStatus()V
    .locals 2

    .prologue
    .line 121
    iget-object v1, p0, Lcom/android/incallui/util/VoWifiStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 122
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/incallui/util/VoWifiStateTracker;->mWfcObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 123
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/incallui/util/VoWifiStateTracker;->mWfcListener:Lcom/android/incallui/util/VoWifiStateTracker$VoWifiStateListener;

    .line 124
    const-string v1, "unregisterForWfcRegistrationStatus() "

    invoke-direct {p0, v1}, Lcom/android/incallui/util/VoWifiStateTracker;->log(Ljava/lang/String;)V

    .line 125
    return-void
.end method
