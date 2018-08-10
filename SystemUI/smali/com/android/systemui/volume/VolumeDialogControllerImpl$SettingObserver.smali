.class final Lcom/android/systemui/volume/VolumeDialogControllerImpl$SettingObserver;
.super Landroid/database/ContentObserver;
.source "VolumeDialogControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeDialogControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingObserver"
.end annotation


# instance fields
.field private final ZEN_MODE_CONFIG_URI:Landroid/net/Uri;

.field private final ZEN_MODE_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;Landroid/os/Handler;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$SettingObserver;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string/jumbo v0, "zen_mode"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$SettingObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    const-string/jumbo v0, "zen_mode_config_etag"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$SettingObserver;->ZEN_MODE_CONFIG_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public init()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$SettingObserver;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-get2(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$SettingObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$SettingObserver;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-get2(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$SettingObserver;->ZEN_MODE_CONFIG_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$SettingObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$SettingObserver;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-wrap7(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Z

    move-result v0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$SettingObserver;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-get1(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$SettingObserver;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-get9(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Lcom/android/systemui/plugins/VolumeDialogController$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onStateChanged(Lcom/android/systemui/plugins/VolumeDialogController$State;)V

    :cond_1
    return-void
.end method
