.class Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$6;
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

    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$6;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleServiceAction(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7

    iget-object v4, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$6;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    invoke-static {v4}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$000(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GET_FILE_PATH, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$400()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "path"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "external"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$6;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    invoke-static {v4}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$000(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GET_FILE_PATH, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/scloud/oem/lib/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$6;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    invoke-static {v4}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$200(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$400()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, p1, v2, v0, v5}, Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;->getFilePath(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$6;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    invoke-static {v4}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$000(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GET_FILE_PATH, r: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/scloud/oem/lib/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "is_success"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "real_path"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v3

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$6;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    invoke-static {v4}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$000(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "GET_FILE_PATH, value is incorrect, return err"

    invoke-static {v4, v5}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "is_success"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0
.end method
