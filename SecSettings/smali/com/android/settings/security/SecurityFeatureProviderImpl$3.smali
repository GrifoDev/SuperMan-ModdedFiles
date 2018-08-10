.class Lcom/android/settings/security/SecurityFeatureProviderImpl$3;
.super Ljava/lang/Object;
.source "SecurityFeatureProviderImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/security/SecurityFeatureProviderImpl;->updatePreferencesToRunOnWorkerThread(Landroid/content/Context;Landroid/support/v7/preference/PreferenceScreen;Lcom/android/settingslib/drawer/DashboardCategory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/security/SecurityFeatureProviderImpl;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$matchingPref:Landroid/support/v7/preference/Preference;

.field final synthetic val$summary:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/security/SecurityFeatureProviderImpl;Landroid/support/v7/preference/Preference;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/security/SecurityFeatureProviderImpl$3;->this$0:Lcom/android/settings/security/SecurityFeatureProviderImpl;

    iput-object p2, p0, Lcom/android/settings/security/SecurityFeatureProviderImpl$3;->val$matchingPref:Landroid/support/v7/preference/Preference;

    iput-object p3, p0, Lcom/android/settings/security/SecurityFeatureProviderImpl$3;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/settings/security/SecurityFeatureProviderImpl$3;->val$summary:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/security/SecurityFeatureProviderImpl$3;->val$matchingPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/security/SecurityFeatureProviderImpl$3;->val$context:Landroid/content/Context;

    const v2, 0x7f120b09

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/security/SecurityFeatureProviderImpl$3;->val$summary:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/security/SecurityFeatureProviderImpl$3;->val$matchingPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0}, Landroid/support/v7/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/security/SecurityFeatureProviderImpl$3;->val$matchingPref:Landroid/support/v7/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/security/SecurityFeatureProviderImpl$3;->val$summary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/security/SecurityFeatureProviderImpl$3;->val$summary:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/security/SecurityFeatureProviderImpl$3;->val$matchingPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1}, Landroid/support/v7/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/security/SecurityFeatureProviderImpl$3;->val$matchingPref:Landroid/support/v7/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/security/SecurityFeatureProviderImpl$3;->val$summary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
