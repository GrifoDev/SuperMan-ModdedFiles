.class Lcom/android/settings/wifi/WifiSettings$5;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Lcom/android/settings/wifi/WifiEnabler$IWifiEnablerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$5;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwitchChanged(Z)V
    .locals 3

    const-string/jumbo v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "enabler changed - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$5;->this$0:Lcom/android/settings/wifi/WifiSettings;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->onWifiStateChanged(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$5;->this$0:Lcom/android/settings/wifi/WifiSettings;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->onWifiStateChanged(I)V

    goto :goto_0
.end method
