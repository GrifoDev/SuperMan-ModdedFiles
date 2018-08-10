.class Lcom/android/settings/security/SecurityFeatureProviderImpl$1;
.super Ljava/lang/Object;
.source "SecurityFeatureProviderImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/security/SecurityFeatureProviderImpl;->updatePreferences(Landroid/content/Context;Landroid/support/v7/preference/PreferenceScreen;Lcom/android/settingslib/drawer/DashboardCategory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/security/SecurityFeatureProviderImpl;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$dashboardCategory:Lcom/android/settingslib/drawer/DashboardCategory;

.field final synthetic val$preferenceScreen:Landroid/support/v7/preference/PreferenceScreen;


# direct methods
.method constructor <init>(Lcom/android/settings/security/SecurityFeatureProviderImpl;Landroid/content/Context;Landroid/support/v7/preference/PreferenceScreen;Lcom/android/settingslib/drawer/DashboardCategory;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/security/SecurityFeatureProviderImpl$1;->this$0:Lcom/android/settings/security/SecurityFeatureProviderImpl;

    iput-object p2, p0, Lcom/android/settings/security/SecurityFeatureProviderImpl$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/settings/security/SecurityFeatureProviderImpl$1;->val$preferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

    iput-object p4, p0, Lcom/android/settings/security/SecurityFeatureProviderImpl$1;->val$dashboardCategory:Lcom/android/settingslib/drawer/DashboardCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/security/SecurityFeatureProviderImpl$1;->this$0:Lcom/android/settings/security/SecurityFeatureProviderImpl;

    iget-object v1, p0, Lcom/android/settings/security/SecurityFeatureProviderImpl$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/security/SecurityFeatureProviderImpl$1;->val$preferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/android/settings/security/SecurityFeatureProviderImpl$1;->val$dashboardCategory:Lcom/android/settingslib/drawer/DashboardCategory;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/security/SecurityFeatureProviderImpl;->updatePreferencesToRunOnWorkerThread(Landroid/content/Context;Landroid/support/v7/preference/PreferenceScreen;Lcom/android/settingslib/drawer/DashboardCategory;)V

    return-void
.end method
