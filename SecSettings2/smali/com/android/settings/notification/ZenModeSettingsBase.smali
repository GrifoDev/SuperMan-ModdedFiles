.class public abstract Lcom/android/settings/notification/ZenModeSettingsBase;
.super Lcom/samsung/android/settings/SecRestrictedSettingsFragment;
.source "ZenModeSettingsBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/ZenModeSettingsBase$SettingsObserver;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z


# instance fields
.field protected mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field protected mRules:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/AutomaticZenRule;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSettingsObserver:Lcom/android/settings/notification/ZenModeSettingsBase$SettingsObserver;

.field protected mZenMode:I


# direct methods
.method static synthetic -get0(Lcom/android/settings/notification/ZenModeSettingsBase;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettingsBase;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/notification/ZenModeSettingsBase;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/notification/ZenModeSettingsBase;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/ZenModeSettingsBase;->updateZenMode(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "ZenModeSettings"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/notification/ZenModeSettingsBase;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string/jumbo v0, "no_adjust_volume"

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeSettingsBase;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/notification/ZenModeSettingsBase$SettingsObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/notification/ZenModeSettingsBase$SettingsObserver;-><init>(Lcom/android/settings/notification/ZenModeSettingsBase;Lcom/android/settings/notification/ZenModeSettingsBase$SettingsObserver;)V

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeSettingsBase;->mSettingsObserver:Lcom/android/settings/notification/ZenModeSettingsBase$SettingsObserver;

    return-void
.end method

.method private getZenModeRules()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/AutomaticZenRule;",
            ">;>;"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettingsBase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationManager;->getAutomaticZenRules()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method private updateZenMode(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "zen_mode"

    iget v3, p0, Lcom/android/settings/notification/ZenModeSettingsBase;->mZenMode:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget v1, p0, Lcom/android/settings/notification/ZenModeSettingsBase;->mZenMode:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iput v0, p0, Lcom/android/settings/notification/ZenModeSettingsBase;->mZenMode:I

    sget-boolean v1, Lcom/android/settings/notification/ZenModeSettingsBase;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "ZenModeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateZenMode mZenMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/notification/ZenModeSettingsBase;->mZenMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;->onZenModeChanged()V

    :cond_2
    return-void
.end method


# virtual methods
.method protected addZenRule(Landroid/app/AutomaticZenRule;)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    const/4 v3, 0x1

    :try_start_0
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeSettingsBase;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/app/NotificationManager;->addAutomaticZenRule(Landroid/app/AutomaticZenRule;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/notification/ZenModeSettingsBase;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/NotificationManager;->getAutomaticZenRule(Ljava/lang/String;)Landroid/app/AutomaticZenRule;

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_0
    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/notification/ZenModeSettingsBase;->maybeRefreshRules(ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    return-object v5
.end method

.method protected maybeRefreshRules(ZZ)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;->getZenModeRules()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeSettingsBase;->mRules:Ljava/util/Set;

    sget-boolean v0, Lcom/android/settings/notification/ZenModeSettingsBase;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ZenModeSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Refreshed mRules="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeSettingsBase;->mRules:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;->onZenModeConfigChanged()V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeSettingsBase;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/settings/notification/ZenModeSettingsBase;->updateZenMode(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/notification/ZenModeSettingsBase;->maybeRefreshRules(ZZ)V

    sget-boolean v0, Lcom/android/settings/notification/ZenModeSettingsBase;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ZenModeSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Loaded mRules="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeSettingsBase;->mRules:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettingsBase;->mSettingsObserver:Lcom/android/settings/notification/ZenModeSettingsBase$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/notification/ZenModeSettingsBase$SettingsObserver;->unregister()V

    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x1

    invoke-super {p0}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->onResume()V

    invoke-direct {p0, v0}, Lcom/android/settings/notification/ZenModeSettingsBase;->updateZenMode(Z)V

    invoke-virtual {p0, v0, v0}, Lcom/android/settings/notification/ZenModeSettingsBase;->maybeRefreshRules(ZZ)V

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettingsBase;->mSettingsObserver:Lcom/android/settings/notification/ZenModeSettingsBase$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/notification/ZenModeSettingsBase$SettingsObserver;->register()V

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;->isUiRestrictedByOnlyAdmin()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;->finish()V

    :cond_1
    return-void
.end method

.method protected abstract onZenModeChanged()V
.end method

.method protected abstract onZenModeConfigChanged()V
.end method

.method protected removeZenRule(Ljava/lang/String;)Z
    .locals 2

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettingsBase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/NotificationManager;->removeAutomaticZenRule(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/notification/ZenModeSettingsBase;->maybeRefreshRules(ZZ)V

    return v0
.end method

.method protected setZenMode(ILandroid/net/Uri;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettingsBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    const-string/jumbo v1, "ZenModeSettings"

    invoke-virtual {v0, p1, p2, v1}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method protected setZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z
    .locals 2

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettingsBase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/app/NotificationManager;->updateAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/notification/ZenModeSettingsBase;->maybeRefreshRules(ZZ)V

    return v0
.end method
