.class Lcom/android/settings/security/SecurityFeatureProviderImpl$2;
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

.field final synthetic val$icon:Landroid/util/Pair;

.field final synthetic val$matchingPref:Landroid/support/v7/preference/Preference;


# direct methods
.method constructor <init>(Lcom/android/settings/security/SecurityFeatureProviderImpl;Landroid/support/v7/preference/Preference;Landroid/content/Context;Landroid/util/Pair;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/security/SecurityFeatureProviderImpl$2;->this$0:Lcom/android/settings/security/SecurityFeatureProviderImpl;

    iput-object p2, p0, Lcom/android/settings/security/SecurityFeatureProviderImpl$2;->val$matchingPref:Landroid/support/v7/preference/Preference;

    iput-object p3, p0, Lcom/android/settings/security/SecurityFeatureProviderImpl$2;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/settings/security/SecurityFeatureProviderImpl$2;->val$icon:Landroid/util/Pair;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/security/SecurityFeatureProviderImpl$2;->val$matchingPref:Landroid/support/v7/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/security/SecurityFeatureProviderImpl$2;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v1, p0, Lcom/android/settings/security/SecurityFeatureProviderImpl$2;->val$icon:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    iget-object v1, p0, Lcom/android/settings/security/SecurityFeatureProviderImpl$2;->val$icon:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v4, p0, Lcom/android/settings/security/SecurityFeatureProviderImpl$2;->val$context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
