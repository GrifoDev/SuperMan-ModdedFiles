.class public Lcom/android/settings/deviceinfo/StorageWizardInit;
.super Lcom/android/settings/deviceinfo/StorageWizardBase;
.source "StorageWizardInit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/StorageWizardInit$1;
    }
.end annotation


# instance fields
.field private mIsPermittedToAdopt:Z

.field private mRadioExternal:Landroid/widget/RadioButton;

.field private mRadioInternal:Landroid/widget/RadioButton;

.field private final mRadioListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method static synthetic -get0(Lcom/android/settings/deviceinfo/StorageWizardInit;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->mRadioExternal:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/deviceinfo/StorageWizardInit;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->mRadioInternal:Landroid/widget/RadioButton;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;-><init>()V

    new-instance v0, Lcom/android/settings/deviceinfo/StorageWizardInit$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/StorageWizardInit$1;-><init>(Lcom/android/settings/deviceinfo/StorageWizardInit;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->mRadioListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->mDisk:Landroid/os/storage/DiskInfo;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardInit;->finish()V

    return-void

    :cond_0
    const v0, 0x7f0402a9

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardInit;->setContentView(I)V

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->mIsPermittedToAdopt:Z

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageWizardInit;->setIllustrationType(I)V

    new-array v0, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const v3, 0x7f0b12ce

    invoke-virtual {p0, v3, v0}, Lcom/android/settings/deviceinfo/StorageWizardInit;->setHeaderText(I[Ljava/lang/String;)V

    const v0, 0x7f11065e

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardInit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->mRadioExternal:Landroid/widget/RadioButton;

    const v0, 0x7f110660

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardInit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->mRadioInternal:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->mRadioExternal:Landroid/widget/RadioButton;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->mRadioListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->mRadioInternal:Landroid/widget/RadioButton;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->mRadioListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f11065f

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardInit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->mRadioExternal:Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->getCompoundPaddingLeft()I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->mRadioExternal:Landroid/widget/RadioButton;

    invoke-virtual {v4}, Landroid/widget/RadioButton;->getCompoundPaddingRight()I

    move-result v4

    invoke-virtual {v0, v3, v1, v4, v1}, Landroid/view/View;->setPadding(IIII)V

    const v0, 0x7f110661

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardInit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->mRadioExternal:Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->getCompoundPaddingLeft()I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->mRadioExternal:Landroid/widget/RadioButton;

    invoke-virtual {v4}, Landroid/widget/RadioButton;->getCompoundPaddingRight()I

    move-result v4

    invoke-virtual {v0, v3, v1, v4, v1}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardInit;->getNextButton()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isAdoptable()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->mRadioExternal:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardInit;->onNavigateNext()V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardInit;->finish()V

    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->mIsPermittedToAdopt:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->mRadioInternal:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    :cond_2
    return-void

    :cond_3
    move v0, v2

    goto/16 :goto_0

    :cond_4
    move v0, v1

    goto/16 :goto_0
.end method

.method public onNavigateNext()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->mRadioExternal:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->mVolume:Landroid/os/storage/VolumeInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->mStorage:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/os/storage/StorageManager;->setVolumeInited(Ljava/lang/String;Z)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/deviceinfo/StorageWizardReady;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "android.os.storage.extra.DISK_ID"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardInit;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "android.os.storage.extra.DISK_ID"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "format_private"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardInit;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->mRadioInternal:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "android.os.storage.extra.DISK_ID"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "format_private"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardInit;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
