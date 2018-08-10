.class Lcom/samsung/android/settings/SecurityPolicySettings$3;
.super Ljava/lang/Object;
.source "SecurityPolicySettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/SecurityPolicySettings;->initWifiOnlyPreference()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/SecurityPolicySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/SecurityPolicySettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/SecurityPolicySettings$3;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    const-string/jumbo v1, "SecuritySettings"

    const-string/jumbo v2, "pressed wifionly key"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/SecurityPolicySettings$3;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/SecurityPolicySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$3;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b03ad

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/settings/SecurityPolicySettings$3;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/SecurityPolicySettings;->-wrap0(Lcom/samsung/android/settings/SecurityPolicySettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "use_wifi_only_db"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/SecurityPolicySettings$3;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/SecurityPolicySettings;->-get3(Lcom/samsung/android/settings/SecurityPolicySettings;)Lcom/android/settings/SecDropDownPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$3;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v2, v0}, Lcom/samsung/android/settings/SecurityPolicySettings;->-wrap1(Lcom/samsung/android/settings/SecurityPolicySettings;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/SecDropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    return v1
.end method
