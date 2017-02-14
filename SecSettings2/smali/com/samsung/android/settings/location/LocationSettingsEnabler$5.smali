.class Lcom/samsung/android/settings/location/LocationSettingsEnabler$5;
.super Ljava/lang/Object;
.source "LocationSettingsEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/location/LocationSettingsEnabler;->onLocationOptionChange(Ljava/lang/Object;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/location/LocationSettingsEnabler;

.field final synthetic val$object:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/location/LocationSettingsEnabler;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler$5;->this$0:Lcom/samsung/android/settings/location/LocationSettingsEnabler;

    iput-object p2, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler$5;->val$object:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler$5;->val$object:Ljava/lang/Object;

    instance-of v0, v0, Landroid/preference/Preference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler$5;->this$0:Lcom/samsung/android/settings/location/LocationSettingsEnabler;

    invoke-static {v0}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->-get2(Lcom/samsung/android/settings/location/LocationSettingsEnabler;)Landroid/preference/SwitchPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler$5;->this$0:Lcom/samsung/android/settings/location/LocationSettingsEnabler;

    invoke-static {v0}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->-get2(Lcom/samsung/android/settings/location/LocationSettingsEnabler;)Landroid/preference/SwitchPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler$5;->this$0:Lcom/samsung/android/settings/location/LocationSettingsEnabler;

    invoke-static {v0}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->-get1(Lcom/samsung/android/settings/location/LocationSettingsEnabler;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method
