.class public Lcom/android/settings/CryptDecryptSettings;
.super Lcom/android/settings/InstrumentedFragment;
.source "CryptDecryptSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/CryptDecryptSettings$1;,
        Lcom/android/settings/CryptDecryptSettings$2;
    }
.end annotation


# instance fields
.field private mContentView:Landroid/view/View;

.field private mInitiateButton:Landroid/widget/Button;

.field private mInitiateListener:Landroid/view/View$OnClickListener;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field mOdeProp:Lcom/android/settings/EFSProperties$ODEProperties;

.field private mParent:Landroid/app/Activity;

.field private mThis:Landroid/app/Fragment;


# direct methods
.method static synthetic -wrap0(Lcom/android/settings/CryptDecryptSettings;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/CryptDecryptSettings;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/InstrumentedFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/CryptDecryptSettings;->mOdeProp:Lcom/android/settings/EFSProperties$ODEProperties;

    new-instance v0, Lcom/android/settings/CryptDecryptSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptDecryptSettings$1;-><init>(Lcom/android/settings/CryptDecryptSettings;)V

    iput-object v0, p0, Lcom/android/settings/CryptDecryptSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/CryptDecryptSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptDecryptSettings$2;-><init>(Lcom/android/settings/CryptDecryptSettings;)V

    iput-object v0, p0, Lcom/android/settings/CryptDecryptSettings;->mInitiateListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/android/settings/CryptDecryptSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    iget-object v2, p0, Lcom/android/settings/CryptDecryptSettings;->mParent:Landroid/app/Activity;

    invoke-direct {v0, v2, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    iget-object v2, p0, Lcom/android/settings/CryptDecryptSettings;->mOdeProp:Lcom/android/settings/EFSProperties$ODEProperties;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/CryptDecryptSettings;->mOdeProp:Lcom/android/settings/EFSProperties$ODEProperties;

    iget v2, v2, Lcom/android/settings/EFSProperties$ODEProperties;->enabledUCSInODE:I

    if-ne v2, v5, :cond_0

    const-string/jumbo v2, "CryptDecrypt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isUcsOdeEnabled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/CryptDecryptSettings;->mOdeProp:Lcom/android/settings/EFSProperties$ODEProperties;

    iget v4, v4, Lcom/android/settings/EFSProperties$ODEProperties;->enabledUCSInODE:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, p1, v6, v6, v5}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivityforUCMODE(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    return v2

    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, ""

    invoke-direct {p0, v5, v2}, Lcom/android/settings/CryptDecryptSettings;->showFinalConfirmation(ILjava/lang/String;)V

    return v5

    :cond_1
    const v2, 0x7f0b0636

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, p1, v2, v5}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Z)Z

    move-result v2

    return v2
.end method

.method private showFinalConfirmation(ILjava/lang/String;)V
    .locals 0

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/CryptDecryptSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v2, "device_policy"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v3}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryption(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v3, -0x1

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/InstrumentedFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v2, 0x37

    if-eq p1, v2, :cond_0

    return-void

    :cond_0
    if-ne p2, v3, :cond_1

    if-eqz p3, :cond_1

    const-string/jumbo v2, "type"

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v2, "password"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, v1, v0}, Lcom/android/settings/CryptDecryptSettings;->showFinalConfirmation(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedFragment;->onAttach(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/android/settings/CryptDecryptSettings;->mParent:Landroid/app/Activity;

    iput-object p0, p0, Lcom/android/settings/CryptDecryptSettings;->mThis:Landroid/app/Fragment;

    const-string/jumbo v0, "CryptDecrypt"

    const-string/jumbo v1, "onAttach"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/CryptDecryptSettings;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/InstrumentedFragment;->onPause()V

    invoke-virtual {p0}, Lcom/android/settings/CryptDecryptSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/CryptDecryptSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/InstrumentedFragment;->onResume()V

    invoke-static {}, Lcom/android/settings/EFSProperties;->loadODEConfig()Lcom/android/settings/EFSProperties$ODEProperties;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/CryptDecryptSettings;->mOdeProp:Lcom/android/settings/EFSProperties$ODEProperties;

    invoke-virtual {p0}, Lcom/android/settings/CryptDecryptSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/CryptDecryptSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/CryptDecryptSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/CryptDecryptSettings;->mInitiateButton:Landroid/widget/Button;

    const v1, 0x7f0b05f4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    return-void
.end method
