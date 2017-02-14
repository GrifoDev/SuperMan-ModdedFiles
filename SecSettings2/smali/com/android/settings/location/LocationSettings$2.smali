.class Lcom/android/settings/location/LocationSettings$2;
.super Ljava/lang/Object;
.source "LocationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/location/LocationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/location/LocationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/location/LocationSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/location/LocationSettings$2;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/settings/location/LocationSettings$2;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v1}, Lcom/android/settings/location/LocationSettings;->-get5(Lcom/android/settings/location/LocationSettings;)Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/location/LocationSettings$2;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v1}, Lcom/android/settings/location/LocationSettings;->-get7(Lcom/android/settings/location/LocationSettings;)Landroid/os/UserManager;

    move-result-object v3

    const-string/jumbo v4, "no_share_location"

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    iget-object v5, p0, Lcom/android/settings/location/LocationSettings$2;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v5}, Lcom/android/settings/location/LocationSettings;->-get4(Lcom/android/settings/location/LocationSettings;)Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v3, v4, v1, v5}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    iget-object v1, p0, Lcom/android/settings/location/LocationSettings$2;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v1}, Lcom/android/settings/location/LocationSettings;->-get5(Lcom/android/settings/location/LocationSettings;)Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-result-object v3

    if-eqz v0, :cond_1

    const v1, 0x7f0b18ae

    :goto_1
    invoke-virtual {v3, v1}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setSummary(I)V

    return v2

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    const v1, 0x7f0b18af

    goto :goto_1
.end method
