.class public Lcom/android/settings/deviceinfo/StorageWizardMigrate;
.super Lcom/android/settings/deviceinfo/StorageWizardBase;
.source "StorageWizardMigrate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/StorageWizardMigrate$1;
    }
.end annotation


# instance fields
.field private mEstimate:Lcom/android/settings/deviceinfo/MigrateEstimateTask;

.field private mRadioLater:Landroid/widget/RadioButton;

.field private final mRadioListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mRadioNow:Landroid/widget/RadioButton;


# direct methods
.method static synthetic -get0(Lcom/android/settings/deviceinfo/StorageWizardMigrate;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->mRadioLater:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/deviceinfo/StorageWizardMigrate;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->mRadioNow:Landroid/widget/RadioButton;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;-><init>()V

    new-instance v0, Lcom/android/settings/deviceinfo/StorageWizardMigrate$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrate$1;-><init>(Lcom/android/settings/deviceinfo/StorageWizardMigrate;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->mRadioListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->mDisk:Landroid/os/storage/DiskInfo;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->finish()V

    return-void

    :cond_0
    const v0, 0x7f0402ab

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->setContentView(I)V

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->setIllustrationType(I)V

    new-array v0, v1, [Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v1}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const v1, 0x7f0b1406

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->setHeaderText(I[Ljava/lang/String;)V

    new-array v0, v2, [Ljava/lang/String;

    const v1, 0x7f0b13ad

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->setBodyText(I[Ljava/lang/String;)V

    const v0, 0x7f110660

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->mRadioNow:Landroid/widget/RadioButton;

    const v0, 0x7f110661

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->mRadioLater:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->mRadioNow:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->mRadioListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->mRadioLater:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->mRadioListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->getNextButton()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    new-instance v0, Lcom/android/settings/deviceinfo/StorageWizardMigrate$2;

    invoke-direct {v0, p0, p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrate$2;-><init>(Lcom/android/settings/deviceinfo/StorageWizardMigrate;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->mEstimate:Lcom/android/settings/deviceinfo/MigrateEstimateTask;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->mEstimate:Lcom/android/settings/deviceinfo/MigrateEstimateTask;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/MigrateEstimateTask;->copyFrom(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->mEstimate:Lcom/android/settings/deviceinfo/MigrateEstimateTask;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/MigrateEstimateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onNavigateNext()V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->mRadioNow:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "android.os.storage.extra.DISK_ID"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->mEstimate:Lcom/android/settings/deviceinfo/MigrateEstimateTask;

    invoke-virtual {v1, v0}, Lcom/android/settings/deviceinfo/MigrateEstimateTask;->copyTo(Landroid/content/Intent;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->mRadioLater:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/deviceinfo/StorageWizardReady;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "android.os.storage.extra.DISK_ID"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
