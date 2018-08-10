.class Lcom/android/settings/WifiCallingSettings$2;
.super Ljava/lang/Object;
.source "WifiCallingSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/WifiCallingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/WifiCallingSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/WifiCallingSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/WifiCallingSettings$2;->this$0:Lcom/android/settings/WifiCallingSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/android/settings/WifiCallingSettings$2;->this$0:Lcom/android/settings/WifiCallingSettings;

    invoke-virtual {v2}, Lcom/android/settings/WifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/WifiCallingSettings;->-wrap0(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "EXTRA_LAUNCH_CARRIER_APP"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/WifiCallingSettings$2;->this$0:Lcom/android/settings/WifiCallingSettings;

    invoke-virtual {v2, v0}, Lcom/android/settings/WifiCallingSettings;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return v3
.end method
