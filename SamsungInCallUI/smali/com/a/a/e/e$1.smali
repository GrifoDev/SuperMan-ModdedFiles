.class Lcom/a/a/e/e$1;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/e/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/e/e;


# direct methods
.method constructor <init>(Lcom/a/a/e/e;)V
    .locals 0

    iput-object p1, p0, Lcom/a/a/e/e$1;->a:Lcom/a/a/e/e;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    iget-object v0, p0, Lcom/a/a/e/e$1;->a:Lcom/a/a/e/e;

    invoke-static {v0}, Lcom/a/a/e/e;->a(Lcom/a/a/e/e;)Z

    move-result v0

    iget-object v1, p0, Lcom/a/a/e/e$1;->a:Lcom/a/a/e/e;

    iget-object v2, p0, Lcom/a/a/e/e$1;->a:Lcom/a/a/e/e;

    invoke-static {v2, p1}, Lcom/a/a/e/e;->a(Lcom/a/a/e/e;Landroid/content/Context;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/a/a/e/e;->a(Lcom/a/a/e/e;Z)Z

    iget-object v1, p0, Lcom/a/a/e/e$1;->a:Lcom/a/a/e/e;

    invoke-static {v1}, Lcom/a/a/e/e;->a(Lcom/a/a/e/e;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/a/a/e/e$1;->a:Lcom/a/a/e/e;

    invoke-static {v0}, Lcom/a/a/e/e;->b(Lcom/a/a/e/e;)Lcom/a/a/e/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/e/e$1;->a:Lcom/a/a/e/e;

    invoke-static {v1}, Lcom/a/a/e/e;->a(Lcom/a/a/e/e;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/a/a/e/c$a;->a(Z)V

    :cond_0
    return-void
.end method
