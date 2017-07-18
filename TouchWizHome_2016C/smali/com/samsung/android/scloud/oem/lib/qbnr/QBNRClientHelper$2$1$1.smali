.class Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1$1;
.super Ljava/lang/Object;
.source "QBNRClientHelper.java"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1$1;->this$2:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Z)V
    .locals 4

    const-string v1, "QBNRClientHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BACKUP, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1$1;->this$2:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;

    iget-object v3, v3, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;->val$name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", complete - isSuccess : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1$1;->this$2:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;

    iget-object v1, v1, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;->this$1:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2;

    iget-object v1, v1, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2;->this$0:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->access$602(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;Z)Z

    iget-object v1, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1$1;->this$2:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;

    iget-object v1, v1, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;->this$1:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2;

    iget-object v1, v1, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2;->this$0:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;

    invoke-static {v1, p1}, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->access$702(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;Z)Z

    iget-object v1, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1$1;->this$2:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;

    iget-object v1, v1, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1$1;->this$2:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;

    iget-object v2, v2, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;->val$observingUri:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1$1;->this$2:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;

    iget-object v1, v1, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;->val$file:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1$1;->this$2:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;

    iget-object v1, v1, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;->val$file:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public onProgress(JJ)V
    .locals 3

    const-string v0, "QBNRClientHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgress -  proc : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/scloud/oem/lib/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1$1;->this$2:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;->this$1:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2;

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2;->this$0:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->access$402(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;J)J

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1$1;->this$2:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;->this$1:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2;

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2;->this$0:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;

    invoke-static {v0, p3, p4}, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->access$502(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;J)J

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1$1;->this$2:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1$1;->this$2:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;

    iget-object v1, v1, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;->val$observingUri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method
