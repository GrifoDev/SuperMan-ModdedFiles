.class public Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;
.super Lcom/android/settings/deviceinfo/StorageWizardBase;
.source "StorageWizardFormatConfirm.java"


# instance fields
.field private mFormatPrivate:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->mDisk:Landroid/os/storage/DiskInfo;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->finish()V

    return-void

    :cond_0
    const v0, 0x7f0402a9

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "format_private"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->mFormatPrivate:Z

    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->mFormatPrivate:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->setIllustrationType(I)V

    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->mFormatPrivate:Z

    if-eqz v0, :cond_2

    new-array v0, v4, [Ljava/lang/String;

    const v3, 0x7f0b13ee

    invoke-virtual {p0, v3, v0}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->setHeaderText(I[Ljava/lang/String;)V

    new-array v0, v2, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const v1, 0x7f0b13ef

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->setBodyText(I[Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->getNextButton()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0b13f2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->getNextButton()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0d0248

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    new-array v0, v4, [Ljava/lang/String;

    const v3, 0x7f0b13f0

    invoke-virtual {p0, v3, v0}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->setHeaderText(I[Ljava/lang/String;)V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v4

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v1}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const v1, 0x7f0b13f1

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->setBodyText(I[Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onNavigateNext()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "android.os.storage.extra.DISK_ID"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "format_private"

    iget-boolean v2, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->mFormatPrivate:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "forget_uuid"

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "forget_uuid"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->finishAffinity()V

    return-void
.end method
