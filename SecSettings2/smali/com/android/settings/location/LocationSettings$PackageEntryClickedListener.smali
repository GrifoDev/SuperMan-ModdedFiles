.class Lcom/android/settings/location/LocationSettings$PackageEntryClickedListener;
.super Ljava/lang/Object;
.source "LocationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/location/LocationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageEntryClickedListener"
.end annotation


# instance fields
.field private mPackage:Ljava/lang/String;

.field private mUserHandle:Landroid/os/UserHandle;

.field final synthetic this$0:Lcom/android/settings/location/LocationSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/location/LocationSettings;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/location/LocationSettings$PackageEntryClickedListener;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/settings/location/LocationSettings$PackageEntryClickedListener;->mPackage:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/location/LocationSettings$PackageEntryClickedListener;->mUserHandle:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "package"

    iget-object v1, p0, Lcom/android/settings/location/LocationSettings$PackageEntryClickedListener;->mPackage:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/location/LocationSettings$PackageEntryClickedListener;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-virtual {v0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/android/settings/location/LocationSettings$PackageEntryClickedListener;->mUserHandle:Landroid/os/UserHandle;

    const v3, 0x7f0b13d9

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/SettingsActivity;->startPreferencePanelAsUser(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/os/UserHandle;)V

    const/4 v0, 0x1

    return v0
.end method
