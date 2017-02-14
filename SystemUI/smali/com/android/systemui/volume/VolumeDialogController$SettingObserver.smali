.class final Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;
.super Landroid/database/ContentObserver;
.source "VolumeDialogController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeDialogController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingObserver"
.end annotation


# instance fields
.field private final SERVICE_URI:Landroid/net/Uri;

.field private final ZEN_MODE_CONFIG_URI:Landroid/net/Uri;

.field private final ZEN_MODE_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/VolumeDialogController;Landroid/os/Handler;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string/jumbo v0, "volume_controller_service_component"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;->SERVICE_URI:Landroid/net/Uri;

    const-string/jumbo v0, "zen_mode"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    const-string/jumbo v0, "zen_mode_config_etag"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;->ZEN_MODE_CONFIG_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public init()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogController;->-get3(Lcom/android/systemui/volume/VolumeDialogController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;->SERVICE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogController;->-get3(Lcom/android/systemui/volume/VolumeDialogController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogController;->-get3(Lcom/android/systemui/volume/VolumeDialogController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;->ZEN_MODE_CONFIG_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;->SERVICE_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 5

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;->SERVICE_URI:Landroid/net/Uri;

    invoke-virtual {v3, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialogController;->-get3(Lcom/android/systemui/volume/VolumeDialogController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "volume_controller_service_component"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialogController;->-get2(Lcom/android/systemui/volume/VolumeDialogController;)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialogController;->-get2(Lcom/android/systemui/volume/VolumeDialogController;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialogController;->-get5(Lcom/android/systemui/volume/VolumeDialogController;)Z

    move-result v3

    if-ne v1, v3, :cond_1

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-virtual {v3}, Lcom/android/systemui/volume/VolumeDialogController;->register()V

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v3, v1}, Lcom/android/systemui/volume/VolumeDialogController;->-set1(Lcom/android/systemui/volume/VolumeDialogController;Z)Z

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v3, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialogController;->-wrap7(Lcom/android/systemui/volume/VolumeDialogController;)Z

    move-result v0

    :cond_4
    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialogController;->-get1(Lcom/android/systemui/volume/VolumeDialogController;)Lcom/android/systemui/volume/VolumeDialogController$C;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialogController;->-get10(Lcom/android/systemui/volume/VolumeDialogController;)Lcom/android/systemui/volume/VolumeDialogController$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/volume/VolumeDialogController$C;->onStateChanged(Lcom/android/systemui/volume/VolumeDialogController$State;)V

    :cond_5
    return-void
.end method
