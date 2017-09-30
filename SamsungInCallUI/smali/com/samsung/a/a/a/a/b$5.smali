.class Lcom/samsung/a/a/a/a/b$5;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/a/a/a/a/b;->c()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/a/a/a/a/b;


# direct methods
.method constructor <init>(Lcom/samsung/a/a/a/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/a/a/a/a/b$5;->a:Lcom/samsung/a/a/a/a/b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "DID"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/a/a/a/a/b$5;->a:Lcom/samsung/a/a/a/a/b;

    invoke-static {v0}, Lcom/samsung/a/a/a/a/b;->c(Lcom/samsung/a/a/a/a/b;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    const-string v2, "Get CF id empty"

    invoke-static {v2}, Lcom/samsung/a/a/a/a/h/a;->b(Ljava/lang/String;)V

    :goto_0
    iget-object v2, p0, Lcom/samsung/a/a/a/a/b$5;->a:Lcom/samsung/a/a/a/a/b;

    invoke-static {v2, v1, v0}, Lcom/samsung/a/a/a/a/b;->a(Lcom/samsung/a/a/a/a/b;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/samsung/a/a/a/a/b$5;->a:Lcom/samsung/a/a/a/a/b;

    invoke-static {v0}, Lcom/samsung/a/a/a/a/b;->b(Lcom/samsung/a/a/a/a/b;)Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v2, "Get CF id"

    invoke-static {v2}, Lcom/samsung/a/a/a/a/h/a;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
