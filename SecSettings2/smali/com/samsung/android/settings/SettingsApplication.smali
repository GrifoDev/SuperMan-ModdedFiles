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
.field private mExecutorMediator:Lcom/samsung/android/app/executor/ExecutorMediator;

.field private mStartStateListener:Lcom/samsung/android/app/executor/ExecutorMediator$StartStateListener;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/SettingsApplication;)Lcom/samsung/android/app/executor/ExecutorMediator;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/SettingsApplication;->mExecutorMediator:Lcom/samsung/android/app/executor/ExecutorMediator;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const-string/jumbo v0, "Settings"

    const-string/jumbo v1, "1.0"

    invoke-static {v0, v1}, Lcom/samsung/android/app/executor/ExecutorMediator;->createInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/executor/ExecutorMediator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/SettingsApplication;->mExecutorMediator:Lcom/samsung/android/app/executor/ExecutorMediator;

    new-instance v0, Lcom/samsung/android/settings/SettingsApplication$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/SettingsApplication$1;-><init>(Lcom/samsung/android/settings/SettingsApplication;)V

    iput-object v0, p0, Lcom/samsung/android/settings/SettingsApplication;->mStartStateListener:Lcom/samsung/android/app/executor/ExecutorMediator$StartStateListener;

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    sget-object v4, Lcom/android/settings/Utils;->GSIM_ENABLE_FEATURE:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "0.1"

    sget-object v5, Lcom/android/settings/Utils;->GSIM_ENABLE_FEATURE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-direct {v4}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;-><init>()V

    const-string/jumbo v5, "759-399-5199102"

    invoke-virtual {v4, v5}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->setTrackingId(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    move-result-object v4

    sget-object v5, Lcom/android/settings/Utils;->GSIM_ENABLE_FEATURE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->setVersion(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->enableAutoDeviceId()Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->setConfiguration(Landroid/app/Application;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportBixby()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/SettingsApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string/jumbo v4, "isExecutorServiceEnabled"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/SettingsApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/samsung/android/settings/SettingsApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/samsung/android/app/executor/ExecutorService;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0, v7, v6}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v4, "isExecutorServiceEnabled"

    invoke-interface {v1, v4, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/SettingsApplication;->mExecutorMediator:Lcom/samsung/android/app/executor/ExecutorMediator;

    iget-object v5, p0, Lcom/samsung/android/settings/SettingsApplication;->mStartStateListener:Lcom/samsung/android/app/executor/ExecutorMediator$StartStateListener;

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/executor/ExecutorMediator;->setStartStateListener(Lcom/samsung/android/app/executor/ExecutorMediator$StartStateListener;)V

    :cond_2
    return-void
.end method
