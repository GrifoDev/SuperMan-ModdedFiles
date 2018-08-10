.class final Lcom/samsung/android/settings/notification/SoundSettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "SoundSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/SoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final DEFAULT_VOLUME_URI:Landroid/net/Uri;

.field private final ZEN_MODE_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/samsung/android/settings/notification/SoundSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/notification/SoundSettings;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SoundSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string/jumbo v0, "adjust_media_volume_only"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings$SettingsObserver;->DEFAULT_VOLUME_URI:Landroid/net/Uri;

    const-string/jumbo v0, "zen_mode"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings$SettingsObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 6

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SoundSettings;->-wrap0(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundSettings$SettingsObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SoundSettings;->-wrap5(Lcom/samsung/android/settings/notification/SoundSettings;)V

    :cond_0
    :goto_0
    invoke-static {}, Lcom/samsung/android/settings/notification/SoundSettings;->-get0()[Lcom/android/settings/notification/SettingPref;

    move-result-object v2

    array-length v4, v2

    :goto_1
    if-ge v3, v4, :cond_4

    aget-object v1, v2, v3

    invoke-virtual {v1}, Lcom/android/settings/notification/SettingPref;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SoundSettings;->-get2(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/SettingPref;->update(Landroid/content/Context;)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundSettings$SettingsObserver;->DEFAULT_VOLUME_URI:Landroid/net/Uri;

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SoundSettings;->-get16(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/media/SemSoundAssistantManager;

    move-result-object v4

    const-string/jumbo v2, "adjust_media_volume_only"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    invoke-virtual {v4, v2}, Lcom/samsung/android/media/SemSoundAssistantManager;->setVolumeKeyMode(I)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public register(Z)V
    .locals 7

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SoundSettings;->-wrap0(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundSettings$SettingsObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-static {}, Lcom/samsung/android/settings/notification/SoundSettings;->-get0()[Lcom/android/settings/notification/SettingPref;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v1, v4, v2

    invoke-virtual {v1}, Lcom/android/settings/notification/SettingPref;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v0, v6, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    return-void
.end method
