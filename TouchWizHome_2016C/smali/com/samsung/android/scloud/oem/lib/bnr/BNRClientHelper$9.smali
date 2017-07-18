.class Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$9;
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

    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$9;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleServiceAction(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 9

    const-string v6, "file_descriptor"

    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$9;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    invoke-static {v6}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$000(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RESTORE_ITEM, c: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$9;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    invoke-static {v6, v0, v4}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$800(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;Landroid/os/ParcelFileDescriptor;Ljava/util/List;)V

    iget-object v6, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$9;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    invoke-static {v6}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$200(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;

    move-result-object v6

    invoke-interface {v6, p1, v4, v2}, Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;->restoreItem(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v3

    iget-object v6, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$9;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    invoke-static {v6}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$000(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RESTORE_ITEM, return: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$9;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    const/4 v8, 0x0

    invoke-static {v7, p1, p2, v8, v1}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$900(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v6, "is_success"

    invoke-virtual {v5, v6, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v7, "inserted_id_list"

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    return-object v5
.end method
