.class Lcom/android/settings/DeviceInfoSettings$7;
.super Ljava/lang/Object;
.source "DeviceInfoSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DeviceInfoSettings;->InitSecTopAddtionalPreferences()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DeviceInfoSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DeviceInfoSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/DeviceInfoSettings$7;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DeviceInfoSettings$7;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v0}, Lcom/android/settings/DeviceInfoSettings;->-get2(Lcom/android/settings/DeviceInfoSettings;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/DeviceInfoSettings$7;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v0}, Lcom/android/settings/DeviceInfoSettings;->-get2(Lcom/android/settings/DeviceInfoSettings;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/DeviceInfoSettings$7;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-virtual {v0}, Lcom/android/settings/DeviceInfoSettings;->showOnlineHelpDialog()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
