.class Lcom/samsung/android/settings/GeneralDeviceSettings$5;
.super Ljava/lang/Object;
.source "GeneralDeviceSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/GeneralDeviceSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/GeneralDeviceSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$5;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    const/4 v2, 0x0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$5;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/GeneralDeviceSettings;->showReportDiagnosticinfoDialog()V

    :goto_0
    return v2

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$5;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/GeneralDeviceSettings;->-get0(Lcom/samsung/android/settings/GeneralDeviceSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$5;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    invoke-static {v1, v2}, Lcom/samsung/android/settings/GeneralDeviceSettings;->-wrap0(Lcom/samsung/android/settings/GeneralDeviceSettings;Z)V

    goto :goto_0
.end method
