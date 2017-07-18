.class Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$2;
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

    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$2;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleServiceAction(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$2;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    invoke-static {v1}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$000(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "BACKUP_PREPARE, v: 1.8.0"

    invoke-static {v1, v2}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "backup"

    invoke-static {v1}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$402(Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$2;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    invoke-static {v1, p1, p2}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$500(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$2;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    invoke-static {v1}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$200(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;->backupPrepare(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$2;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    invoke-static {v1}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$000(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BACKUP_PREPARE, r: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$2;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    invoke-static {v1}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$600(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "is_success"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$2;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    invoke-static {v1}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$600(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1
.end method
