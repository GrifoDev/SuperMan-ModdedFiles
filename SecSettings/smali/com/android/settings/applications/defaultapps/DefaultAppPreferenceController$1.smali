.class Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController$1;
.super Ljava/lang/Object;
.source "DefaultAppPreferenceController.java"

# interfaces
.implements Lcom/samsung/android/settings/SecGearPreference$OnGearClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->mayUpdateGearIcon(Lcom/android/settings/applications/defaultapps/DefaultAppInfo;Landroid/support/v7/preference/Preference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;

.field final synthetic val$settingIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController$1;->this$0:Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;

    iput-object p2, p0, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController$1;->val$settingIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGearClick(Lcom/samsung/android/settings/SecGearPreference;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController$1;->this$0:Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;

    invoke-static {v0}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->-get0(Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController$1;->val$settingIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController$1;->this$0:Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->loggingSettingsIcon()V

    return-void
.end method
