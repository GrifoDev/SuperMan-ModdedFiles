.class Lcom/samsung/android/settings/location/LocationSettingsEnabler$1;
.super Landroid/database/ContentObserver;
.source "LocationSettingsEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/location/LocationSettingsEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/location/LocationSettingsEnabler;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/location/LocationSettingsEnabler;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler$1;->this$0:Lcom/samsung/android/settings/location/LocationSettingsEnabler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler$1;->this$0:Lcom/samsung/android/settings/location/LocationSettingsEnabler;

    invoke-static {v2}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->-get0(Lcom/samsung/android/settings/location/LocationSettingsEnabler;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "location_mode"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler$1;->this$0:Lcom/samsung/android/settings/location/LocationSettingsEnabler;

    invoke-static {v2}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->-get1(Lcom/samsung/android/settings/location/LocationSettingsEnabler;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler$1;->this$0:Lcom/samsung/android/settings/location/LocationSettingsEnabler;

    invoke-static {v2}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->-get1(Lcom/samsung/android/settings/location/LocationSettingsEnabler;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler$1;->this$0:Lcom/samsung/android/settings/location/LocationSettingsEnabler;

    invoke-static {v2, v1}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->-wrap0(Lcom/samsung/android/settings/location/LocationSettingsEnabler;I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
