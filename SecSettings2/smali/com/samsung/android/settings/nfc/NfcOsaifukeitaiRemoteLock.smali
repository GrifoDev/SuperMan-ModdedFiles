.class public Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiRemoteLock;
.super Landroid/app/Fragment;
.source "NfcOsaifukeitaiRemoteLock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiRemoteLock$1;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiRemoteLock$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiRemoteLock$1;-><init>(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiRemoteLock;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiRemoteLock;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private startPasswardManager()V
    .locals 5

    const/4 v4, 0x1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "jp.softbank.mb.passwordmanager"

    const-string/jumbo v3, "jp.softbank.mb.passwordmanager.Pwdmanager"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "FuncCode"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "ResultString"

    const-string/jumbo v3, "NfcOsaifukeitaiRemoteLock"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiRemoteLock;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string/jumbo v0, "[NfcOsaifukeitaiRemoteLock]"

    const-string/jumbo v1, "[S] onActivityCreated"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "[NfcOsaifukeitaiRemoteLock]"

    const-string/jumbo v1, "[E] onActivityCreated"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    if-ne p2, v2, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "jp.softbank.mb.flcrlap"

    const-string/jumbo v3, "jp.softbank.mb.flcrlap.FelicaLockerActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiRemoteLock;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiRemoteLock;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiRemoteLock;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiRemoteLock;->mActivity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiRemoteLock;->startPasswardManager()V

    const-string/jumbo v0, "[NfcOsaifukeitaiRemoteLock]"

    const-string/jumbo v1, "[E] onCreate"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f04019e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiRemoteLock;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiRemoteLock;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    return-void
.end method
