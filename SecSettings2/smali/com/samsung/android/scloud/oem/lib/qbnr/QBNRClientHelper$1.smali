.class Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$1;
.super Ljava/lang/Object;
.source "QBNRClientHelper.java"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$SyncServiceHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->setHandlers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$1;->this$0:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleServiceAction(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 9

    const-string/jumbo v6, "QBNRClientHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "100, "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/scloud/oem/lib/bnr/BackupMetaManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/scloud/oem/lib/bnr/BackupMetaManager;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/samsung/android/scloud/oem/lib/bnr/BackupMetaManager;->isFirstBackup(Ljava/lang/String;)Z

    move-result v2

    iget-object v6, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$1;->this$0:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;

    invoke-static {v6}, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->access$0(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;)Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient;

    move-result-object v6

    invoke-interface {v6, p1}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient;->isSupportBackup(Landroid/content/Context;)Z

    move-result v3

    iget-object v6, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$1;->this$0:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;

    invoke-static {v6}, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->access$0(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;)Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient;

    move-result-object v6

    invoke-interface {v6, p1}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient;->isEnableBackup(Landroid/content/Context;)Z

    move-result v1

    iget-object v6, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$1;->this$0:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;

    invoke-static {v6}, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->access$0(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;)Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient;

    move-result-object v6

    invoke-interface {v6, p1}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient;->getLabel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$1;->this$0:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;

    invoke-static {v6}, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->access$0(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;)Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient;

    move-result-object v6

    invoke-interface {v6, p1}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v6, "support_backup"

    invoke-virtual {v5, v6, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v6, "name"

    invoke-virtual {v5, v6, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "is_enable_backup"

    invoke-virtual {v5, v6, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v6, "is_first_backup"

    invoke-virtual {v5, v6, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v6, "label"

    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "description"

    invoke-virtual {v5, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "category"

    iget-object v7, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$1;->this$0:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;

    invoke-static {v7}, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->access$1(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "contents_id"

    iget-object v7, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$1;->this$0:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;

    invoke-static {v7}, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->access$2(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "QBNRClientHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "100, "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$1;->this$0:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;

    invoke-static {v8}, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->access$2(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$1;->this$0:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;

    invoke-static {v8}, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->access$1(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/scloud/oem/lib/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5
.end method
