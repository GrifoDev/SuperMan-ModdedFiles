.class Lcom/android/settings/location/LocationSettings$9;
.super Ljava/lang/Object;
.source "LocationSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/location/LocationSettings;->changeManagedProfileLocationAccessStatus(Z)V
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

    iput-object p1, p0, Lcom/android/settings/location/LocationSettings$9;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    iget-object v1, p0, Lcom/android/settings/location/LocationSettings$9;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v1}, Lcom/android/settings/location/LocationSettings;->-get6(Lcom/android/settings/location/LocationSettings;)Lcom/android/settingslib/RestrictedSwitchPreference;

    move-result-object v1

    if-ne p1, v1, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/location/LocationSettings$9;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v1}, Lcom/android/settings/location/LocationSettings;->-get8(Lcom/android/settings/location/LocationSettings;)Landroid/os/UserManager;

    move-result-object v1

    const-string/jumbo v2, "no_share_location"

    xor-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lcom/android/settings/location/LocationSettings$9;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v4}, Lcom/android/settings/location/LocationSettings;->-get5(Lcom/android/settings/location/LocationSettings;)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    iget-object v1, p0, Lcom/android/settings/location/LocationSettings$9;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v1}, Lcom/android/settings/location/LocationSettings;->-get6(Lcom/android/settings/location/LocationSettings;)Lcom/android/settingslib/RestrictedSwitchPreference;

    move-result-object v2

    if-eqz v0, :cond_1

    const v1, 0x7f121b3e

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setSummary(I)V

    :cond_0
    const/4 v1, 0x1

    return v1

    :cond_1
    const v1, 0x7f121b3d

    goto :goto_0
.end method
