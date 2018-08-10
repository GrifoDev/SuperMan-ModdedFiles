.class public Lcom/android/settings/development/DevelopmentSettingsEnabler;
.super Ljava/lang/Object;
.source "DevelopmentSettingsEnabler.java"

# interfaces
.implements Lcom/android/settings/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/core/lifecycle/events/OnResume;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDevelopmentPreferences:Landroid/content/SharedPreferences;

.field private mLastEnabledState:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/development/DevelopmentSettingsEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "development"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsEnabler;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p0}, Lcom/android/settings/core/lifecycle/Lifecycle;->addObserver(Lcom/android/settings/core/lifecycle/LifecycleObserver;)Lcom/android/settings/core/lifecycle/LifecycleObserver;

    :cond_0
    return-void
.end method

.method public static enableDevelopmentSettings(Landroid/content/Context;Landroid/content/SharedPreferences;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "show"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "development_settings_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public disableDevelopmentSettings()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsEnabler;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "show"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "development_settings_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iput-boolean v2, p0, Lcom/android/settings/development/DevelopmentSettingsEnabler;->mLastEnabledState:Z

    return-void
.end method

.method public enableDevelopmentSettings()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsEnabler;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    invoke-static {v0, v1}, Lcom/android/settings/development/DevelopmentSettingsEnabler;->enableDevelopmentSettings(Landroid/content/Context;Landroid/content/SharedPreferences;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/development/DevelopmentSettingsEnabler;->mLastEnabledState:Z

    return-void
.end method

.method public getLastEnabledState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/development/DevelopmentSettingsEnabler;->mLastEnabledState:Z

    return v0
.end method

.method public onResume()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "development_settings_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/settings/development/DevelopmentSettingsEnabler;->mLastEnabledState:Z

    return-void
.end method
