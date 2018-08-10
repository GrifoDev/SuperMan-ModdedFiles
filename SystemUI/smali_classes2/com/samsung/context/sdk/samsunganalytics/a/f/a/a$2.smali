.class Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a$2;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;


# direct methods
.method constructor <init>(Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a$2;->a:Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a$2;->a:Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;

    invoke-static {v5, v6}, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;->b(Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;Z)Z

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v0, :cond_2

    :cond_0
    const-string/jumbo v5, "DLC Sender"

    const-string/jumbo v6, "dlc register reply fail"

    invoke-static {v5, v6}, Lcom/samsung/context/sdk/samsunganalytics/a/h/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string/jumbo v5, "DLC Sender"

    const-string/jumbo v6, "dlc register reply fail"

    invoke-static {v5, v6}, Lcom/samsung/context/sdk/samsunganalytics/a/h/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    if-eqz v1, :cond_0

    iget-object v5, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a$2;->a:Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;

    invoke-static {v5}, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;->d(Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    :goto_0
    return-void

    :cond_3
    const-string/jumbo v5, "EXTRA_STR"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "EXTRA_RESULT_CODE"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "register DLC result:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "DLC Sender"

    invoke-static {v6, v5}, Lcom/samsung/context/sdk/samsunganalytics/a/h/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz v3, :cond_4

    const-string/jumbo v5, "EXTRA_STR_ACTION"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a$2;->a:Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;

    invoke-static {v5, v4}, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;->a(Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "register DLC result fail:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "DLC Sender"

    invoke-static {v6, v5}, Lcom/samsung/context/sdk/samsunganalytics/a/h/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
