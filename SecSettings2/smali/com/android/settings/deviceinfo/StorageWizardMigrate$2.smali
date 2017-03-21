.class Lcom/android/settings/deviceinfo/StorageWizardMigrate$2;
.super Lcom/android/settings/deviceinfo/MigrateEstimateTask;
.source "StorageWizardMigrate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/StorageWizardMigrate;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/StorageWizardMigrate;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/StorageWizardMigrate;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrate$2;->this$0:Lcom/android/settings/deviceinfo/StorageWizardMigrate;

    invoke-direct {p0, p2}, Lcom/android/settings/deviceinfo/MigrateEstimateTask;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onPostExecute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrate$2;->this$0:Lcom/android/settings/deviceinfo/StorageWizardMigrate;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrate$2;->this$0:Lcom/android/settings/deviceinfo/StorageWizardMigrate;

    iget-object v2, v2, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const v2, 0x7f0b12db

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->setBodyText(I[Ljava/lang/String;)V

    return-void
.end method
