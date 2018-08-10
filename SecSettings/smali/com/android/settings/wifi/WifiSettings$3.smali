.class Lcom/android/settings/wifi/WifiSettings$3;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/wifi/ListAnimationController$OnEventListener;


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

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$3;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddNetworkPressed()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$3;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings;->onAddNetworkPressed()V

    return-void
.end method

.method public onItemClick(Lcom/samsung/android/settingslib/wifi/AccessPointPreference;)V
    .locals 5

    invoke-static {}, Lcom/android/settings/wifi/WifiSettings;->-get0()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "WifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onItemClick - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    const/4 v0, 0x0

    instance-of v2, p1, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    if-eqz v2, :cond_2

    move-object v1, p1

    check-cast v1, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    invoke-virtual {p1}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v0

    :cond_1
    :goto_0
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings$3;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v2, v1}, Lcom/android/settings/wifi/WifiSettings;->onAccessPointPreferenceClick(Landroid/preference/Preference;)Z

    :goto_1
    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings$3;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {v2, v0}, Lcom/android/settings/wifi/WifiSettings;->-wrap6(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settingslib/wifi/AccessPoint;)Lcom/android/settings/wifi/LongPressAccessPointPreference;

    move-result-object v1

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    if-nez v0, :cond_4

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings$3;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v2, p1}, Lcom/android/settings/wifi/WifiSettings;->onPassPointPreferenceClick(Landroid/preference/Preference;)V

    goto :goto_1

    :cond_4
    const-string/jumbo v2, "WifiSettings"

    const-string/jumbo v3, "no matched any accesspoint"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
