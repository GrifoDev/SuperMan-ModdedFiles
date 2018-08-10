.class public Lcom/android/settings/SetupWizardUtils;
.super Ljava/lang/Object;
.source "SetupWizardUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 3

    const-string/jumbo v0, "theme"

    const-string/jumbo v1, "theme"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "useImmersiveMode"

    const-string/jumbo v1, "useImmersiveMode"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void
.end method

.method public static getTheme(Landroid/content/Intent;)I
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/setupwizardlib/util/WizardManagerHelper;->isLightTheme(Landroid/content/Intent;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f130180

    return v0

    :cond_0
    const v0, 0x7f13017f

    return v0
.end method

.method public static getTransparentTheme(Landroid/content/Intent;)I
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/setupwizardlib/util/WizardManagerHelper;->isLightTheme(Landroid/content/Intent;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f130181

    return v0

    :cond_0
    const v0, 0x7f130182

    return v0
.end method
