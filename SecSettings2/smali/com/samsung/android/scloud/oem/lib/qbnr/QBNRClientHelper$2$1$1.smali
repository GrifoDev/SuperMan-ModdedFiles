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

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$name:Ljava/lang/String;

.field private final synthetic val$observingUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1$1;->this$2:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;

    iput-object p2, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1$1;->val$observingUri:Landroid/net/Uri;

    iput-object p4, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1$1;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Z)V
    .locals 3

    const-string/jumbo v0, "QBNRClientHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "210, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1$1;->val$name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", complete - isSuccess : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1$1;->this$2:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;

    invoke-static {v0}, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;->access$0(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;)Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2;->access$0(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2;)Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->access$6(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;Z)V

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1$1;->this$2:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;

    invoke-static {v0}, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;->access$0(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;)Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2;->access$0(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2;)Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->access$7(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;Z)V

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1$1;->val$observingUri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onProgress(JJ)V
    .locals 3

    const-string/jumbo v0, "QBNRClientHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onProgress -  proc : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/scloud/oem/lib/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1$1;->this$2:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;

    invoke-static {v0}, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;->access$0(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;)Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2;->access$0(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2;)Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->access$4(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;J)V

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1$1;->this$2:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;

    invoke-static {v0}, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;->access$0(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;)Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2;->access$0(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2;)Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;

    move-result-object v0

    invoke-static {v0, p3, p4}, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->access$5(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;J)V

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1$1;->val$observingUri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method
