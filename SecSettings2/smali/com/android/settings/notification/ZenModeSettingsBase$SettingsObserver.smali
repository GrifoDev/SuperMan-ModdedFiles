.class final Lcom/android/settings/notification/ZenModeSettingsBase$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "ZenModeSettingsBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/ZenModeSettingsBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

.field private final ZEN_MODE_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/settings/notification/ZenModeSettingsBase;


# direct methods
.method private constructor <init>(Lcom/android/settings/notification/ZenModeSettingsBase;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeSettingsBase$SettingsObserver;->this$0:Lcom/android/settings/notification/ZenModeSettingsBase;

    invoke-static {p1}, Lcom/android/settings/notification/ZenModeSettingsBase;->-get0(Lcom/android/settings/notification/ZenModeSettingsBase;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string/jumbo v0, "zen_mode"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeSettingsBase$SettingsObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    const-string/jumbo v0, "zen_mode_config_etag"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeSettingsBase$SettingsObserver;->ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/notification/ZenModeSettingsBase;Lcom/android/settings/notification/ZenModeSettingsBase$SettingsObserver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/ZenModeSettingsBase$SettingsObserver;-><init>(Lcom/android/settings/notification/ZenModeSettingsBase;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettingsBase$SettingsObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettingsBase$SettingsObserver;->this$0:Lcom/android/settings/notification/ZenModeSettingsBase;

    invoke-static {v0, v1}, Lcom/android/settings/notification/ZenModeSettingsBase;->-wrap1(Lcom/android/settings/notification/ZenModeSettingsBase;Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettingsBase$SettingsObserver;->ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettingsBase$SettingsObserver;->this$0:Lcom/android/settings/notification/ZenModeSettingsBase;

    invoke-virtual {v0, v1, v1}, Lcom/android/settings/notification/ZenModeSettingsBase;->maybeRefreshRules(ZZ)V

    :cond_1
    return-void
.end method

.method public register()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettingsBase$SettingsObserver;->this$0:Lcom/android/settings/notification/ZenModeSettingsBase;

    invoke-static {v0}, Lcom/android/settings/notification/ZenModeSettingsBase;->-wrap0(Lcom/android/settings/notification/ZenModeSettingsBase;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettingsBase$SettingsObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettingsBase$SettingsObserver;->this$0:Lcom/android/settings/notification/ZenModeSettingsBase;

    invoke-static {v0}, Lcom/android/settings/notification/ZenModeSettingsBase;->-wrap0(Lcom/android/settings/notification/ZenModeSettingsBase;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettingsBase$SettingsObserver;->ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public unregister()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettingsBase$SettingsObserver;->this$0:Lcom/android/settings/notification/ZenModeSettingsBase;

    invoke-static {v0}, Lcom/android/settings/notification/ZenModeSettingsBase;->-wrap0(Lcom/android/settings/notification/ZenModeSettingsBase;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
