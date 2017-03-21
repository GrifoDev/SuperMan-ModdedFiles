.class public Lcom/android/settings/deviceinfo/StorageWizardReady;
.super Lcom/android/settings/deviceinfo/StorageWizardBase;
.source "StorageWizardReady.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->onCreate(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardReady;->mDisk:Landroid/os/storage/DiskInfo;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardReady;->finish()V

    return-void

    :cond_0
    const v2, 0x7f0402a8

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/StorageWizardReady;->setContentView(I)V

    new-array v2, v4, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardReady;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const v3, 0x7f0b12e3

    invoke-virtual {p0, v3, v2}, Lcom/android/settings/deviceinfo/StorageWizardReady;->setHeaderText(I[Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/android/settings/deviceinfo/StorageWizardReady;->findFirstVolume(I)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/StorageWizardReady;->findFirstVolume(I)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/StorageWizardReady;->setIllustrationType(I)V

    new-array v2, v4, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardReady;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const v3, 0x7f0b12e4

    invoke-virtual {p0, v3, v2}, Lcom/android/settings/deviceinfo/StorageWizardReady;->setBodyText(I[Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardReady;->getNextButton()Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f0b0419

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    return-void

    :cond_2
    if-eqz v0, :cond_1

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/StorageWizardReady;->setIllustrationType(I)V

    new-array v2, v4, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardReady;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const v3, 0x7f0b12e5

    invoke-virtual {p0, v3, v2}, Lcom/android/settings/deviceinfo/StorageWizardReady;->setBodyText(I[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onNavigateNext()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardReady;->finishAffinity()V

    return-void
.end method
