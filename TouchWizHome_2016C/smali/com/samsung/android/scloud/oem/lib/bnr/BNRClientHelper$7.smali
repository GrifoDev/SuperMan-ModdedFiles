.class Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$7;
.super Ljava/lang/Object;
.source "BNRClientHelper.java"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$SyncServiceHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->setServiceHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$7;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleServiceAction(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6

    const-string v2, "is_success"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$7;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    invoke-static {v2}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$000(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BACKUP_COMPLETE, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$7;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    invoke-static {v2}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$200(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;

    move-result-object v2

    invoke-interface {v2, p1, v0}, Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;->backupComplete(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/scloud/oem/lib/bnr/BackupMetaManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/scloud/oem/lib/bnr/BackupMetaManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3}, Lcom/samsung/android/scloud/oem/lib/bnr/BackupMetaManager;->setFirstBackup(Ljava/lang/String;Z)V

    invoke-static {p1}, Lcom/samsung/android/scloud/oem/lib/bnr/BackupMetaManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/scloud/oem/lib/bnr/BackupMetaManager;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, p2, v4, v5}, Lcom/samsung/android/scloud/oem/lib/bnr/BackupMetaManager;->setLastBackupTime(Ljava/lang/String;J)V

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$7;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    invoke-static {v2}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$000(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BACKUP_COMPLETE, return: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$7;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    invoke-static {v2}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$600(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "is_success"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$7;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    invoke-static {v2}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$600(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Landroid/os/Bundle;

    move-result-object v2

    return-object v2
.end method
