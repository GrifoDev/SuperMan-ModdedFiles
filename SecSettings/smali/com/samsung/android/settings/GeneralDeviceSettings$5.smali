.class Lcom/samsung/android/settings/GeneralDeviceSettings$5;
.super Ljava/lang/Object;
.source "GeneralDeviceSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


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
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    const/4 v4, 0x0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$5;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/GeneralDeviceSettings;->showReportDiagnosticinfoDialog()V

    :goto_0
    return v4

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$5;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/GeneralDeviceSettings;->-get0(Lcom/samsung/android/settings/GeneralDeviceSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$5;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    invoke-static {v1, v4}, Lcom/samsung/android/settings/GeneralDeviceSettings;->-wrap1(Lcom/samsung/android/settings/GeneralDeviceSettings;Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$5;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$5;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b026d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v1, v2, v4}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;II)V

    goto :goto_0
.end method
