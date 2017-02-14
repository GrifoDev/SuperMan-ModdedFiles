.class public Lcom/samsung/android/settings/KnoxChooseLockTwoFactor;
.super Lcom/android/settings/SettingsActivity;
.source "KnoxChooseLockTwoFactor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;
    }
.end annotation


# static fields
.field private static mDisplayKnoxName:Ljava/lang/String;


# instance fields
.field private intent:Landroid/content/Intent;

.field private isFromKnoxSetupWizard:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor;->mDisplayKnoxName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor;->isFromKnoxSetupWizard:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor;->intent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 5

    new-instance v1, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string/jumbo v3, ":settings:show_fragment"

    const-class v4, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/settings/Utils;->isFullScreenSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v3, v3, 0x400

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    const-string/jumbo v3, ":android:no_headers"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v1
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1

    const-class v0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor;->intent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor;->intent:Landroid/content/Intent;

    const-string/jumbo v1, "displayKnoxName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor;->mDisplayKnoxName:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor;->intent:Landroid/content/Intent;

    const-string/jumbo v1, "fromSetupwizard"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor;->isFromKnoxSetupWizard:Z

    iget-boolean v0, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor;->isFromKnoxSetupWizard:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor;->mDisplayKnoxName:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/settings/InnerMultiLinePreference;->setKnoxName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor;->finish()V

    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
