.class Lcom/android/server/desktopmode/DesktopModeHwManager$4;
.super Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;
.source "DesktopModeHwManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/DesktopModeHwManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/DesktopModeHwManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$4;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-direct {p0, p2}, Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method onSettingChanged(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$4;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get3(Lcom/android/server/desktopmode/DesktopModeHwManager;)Lcom/android/server/desktopmode/DeviceDisplayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/desktopmode/DeviceDisplayManager;->updateTouchpadScreen()V

    return-void
.end method
