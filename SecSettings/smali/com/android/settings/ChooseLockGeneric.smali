.class public Lcom/android/settings/ChooseLockGeneric;
.super Lcom/samsung/android/settings/SettingsActivityWrapper;
.source "ChooseLockGeneric.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;,
        Lcom/android/settings/ChooseLockGeneric$InternalActivity;
    }
.end annotation


# static fields
.field private static is3LMActiveAdmin:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/ChooseLockGeneric;->is3LMActiveAdmin:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/SettingsActivityWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 7

    const/4 v6, 0x1

    invoke-static {}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get1()Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get10(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)I

    move-result v5

    invoke-static {p0, v5}, Lcom/android/settings/Utils;->isChangeRequested(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get10(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)I

    move-result v5

    invoke-static {p0, v5}, Lcom/android/settings/Utils;->getPasswordChangeTimeout(Landroid/content/Context;I)I

    move-result v4

    if-gtz v4, :cond_1

    if-ne v2, v6, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get10(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)I

    move-result v5

    invoke-static {p0, v5}, Lcom/android/settings/Utils;->isChangeRequested(Landroid/content/Context;I)I

    move-result v5

    if-ne v5, v6, :cond_3

    xor-int/lit8 v5, v1, 0x1

    if-eqz v5, :cond_3

    invoke-static {v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get10(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)I

    move-result v5

    invoke-static {v3, v5, v4}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-wrap7(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;II)V

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockGeneric;->setResult(I)V

    invoke-super {p0}, Lcom/samsung/android/settings/SettingsActivityWrapper;->finish()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v5, 0x2

    if-lt v2, v5, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    invoke-static {v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get10(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)I

    move-result v5

    invoke-static {p0, v5}, Lcom/android/settings/Utils;->isChangeRequested(Landroid/content/Context;I)I

    move-result v5

    if-lt v5, v6, :cond_4

    if-eqz v1, :cond_4

    invoke-static {v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get10(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)I

    move-result v5

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_4

    return-void

    :cond_4
    invoke-super {p0}, Lcom/samsung/android/settings/SettingsActivityWrapper;->finish()V

    goto :goto_1
.end method

.method getFragmentClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 5

    const/4 v4, 0x1

    new-instance v1, Landroid/content/Intent;

    invoke-super {p0}, Lcom/samsung/android/settings/SettingsActivityWrapper;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string/jumbo v2, ":settings:show_fragment"

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric;->getFragmentClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "android.app.action.SET_NEW_PASSWORD"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "android.app.action.SET_NEW_PARENT_PROFILE_PASSWORD"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string/jumbo v2, ":settings:hide_drawer"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    const-string/jumbo v2, ":android:no_headers"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, ":settings:show_fragment_as_subsetting"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v1
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1

    const-class v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

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

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    invoke-static {}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get1()Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-boolean v2, v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0231

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {p0, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    :cond_0
    :goto_0
    invoke-static {v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get7(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.knox.kss.PASSWORD_RESET"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.samsung.knox.kss"

    const-string/jumbo v4, "com.samsung.knox.kss.KnoxKeyguardReceiver"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v2, "resetResult"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v2, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/ChooseLockGeneric;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric;->finish()V

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SettingsActivityWrapper;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    return v2

    :cond_2
    invoke-static {v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get2(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0205

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {p0, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    const/4 v6, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SettingsActivityWrapper;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    return v3

    :pswitch_0
    invoke-static {}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get1()Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get10(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "persona"

    invoke-virtual {p0, v3}, Lcom/android/settings/ChooseLockGeneric;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/SemPersonaManager;

    :cond_1
    invoke-static {v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get7(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.knox.kss.PASSWORD_RESET"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Landroid/content/ComponentName;

    const-string/jumbo v4, "com.samsung.knox.kss"

    const-string/jumbo v5, "com.samsung.knox.kss.KnoxKeyguardReceiver"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v3, "resetResult"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v3, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/ChooseLockGeneric;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-virtual {p0, v6}, Lcom/android/settings/ChooseLockGeneric;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric;->finish()V

    const/4 v3, 0x1

    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
