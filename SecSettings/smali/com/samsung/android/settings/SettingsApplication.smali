.class public Lcom/samsung/android/settings/SettingsApplication;
.super Landroid/app/Application;
.source "SettingsApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/SettingsApplication$1;
    }
.end annotation


# instance fields
.field private mExecutorMediator:Lcom/samsung/android/sdk/bixby/BixbyApi;

.field private mStartStateListener:Lcom/samsung/android/sdk/bixby/BixbyApi$StartStateListener;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/SettingsApplication;)Lcom/samsung/android/sdk/bixby/BixbyApi;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/SettingsApplication;->mExecutorMediator:Lcom/samsung/android/sdk/bixby/BixbyApi;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/SettingsApplication;->mExecutorMediator:Lcom/samsung/android/sdk/bixby/BixbyApi;

    new-instance v0, Lcom/samsung/android/settings/SettingsApplication$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/SettingsApplication$1;-><init>(Lcom/samsung/android/settings/SettingsApplication;)V

    iput-object v0, p0, Lcom/samsung/android/settings/SettingsApplication;->mStartStateListener:Lcom/samsung/android/sdk/bixby/BixbyApi$StartStateListener;

    return-void
.end method

.method private checkFotaBadgeCountOnBackground()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/settings/SettingsApplication$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/SettingsApplication$2;-><init>(Lcom/samsung/android/settings/SettingsApplication;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-direct {v0}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;-><init>()V

    const-string/jumbo v1, "759-399-5199102"

    invoke-virtual {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->setTrackingId(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/SettingsApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->getSepPlatformVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->setVersion(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->enableAutoDeviceId()Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->setConfiguration(Landroid/app/Application;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportBixby()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Bixby_SmartView"

    const-string/jumbo v1, "BixbyApi.createInstance"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/SettingsApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "Settings"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/SettingsApplication;->mExecutorMediator:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v0, p0, Lcom/samsung/android/settings/SettingsApplication;->mExecutorMediator:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v1, p0, Lcom/samsung/android/settings/SettingsApplication;->mStartStateListener:Lcom/samsung/android/sdk/bixby/BixbyApi$StartStateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setStartStateListener(Lcom/samsung/android/sdk/bixby/BixbyApi$StartStateListener;)V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/SettingsApplication;->checkFotaBadgeCountOnBackground()V

    return-void
.end method
