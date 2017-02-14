.class Lcom/samsung/context/sdk/samsunganalytics/a/a$6;
.super Landroid/content/BroadcastReceiver;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/context/sdk/samsunganalytics/a/a;->j()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/context/sdk/samsunganalytics/a/a;


# direct methods
.method constructor <init>(Lcom/samsung/context/sdk/samsunganalytics/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/a$6;->a:Lcom/samsung/context/sdk/samsunganalytics/a/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const/4 v0, 0x0

    const-string/jumbo v1, "DID"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "Get CF id"

    invoke-static {v2}, Lcom/samsung/context/sdk/samsunganalytics/a/h/a;->d(Ljava/lang/String;)V

    :goto_0
    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/a$6;->a:Lcom/samsung/context/sdk/samsunganalytics/a/a;

    invoke-static {v2, v1, v0}, Lcom/samsung/context/sdk/samsunganalytics/a/a;->a(Lcom/samsung/context/sdk/samsunganalytics/a/a;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/a$6;->a:Lcom/samsung/context/sdk/samsunganalytics/a/a;

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/a;->d(Lcom/samsung/context/sdk/samsunganalytics/a/a;)Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/a$6;->a:Lcom/samsung/context/sdk/samsunganalytics/a/a;

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/a;->e(Lcom/samsung/context/sdk/samsunganalytics/a/a;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    const-string/jumbo v2, "Get CF id empty"

    invoke-static {v2}, Lcom/samsung/context/sdk/samsunganalytics/a/h/a;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
