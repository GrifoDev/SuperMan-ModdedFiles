.class Lcom/samsung/a/a/a/a/b$2;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/a/a/a/a/b;->a()V
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

    iput-object p1, p0, Lcom/samsung/a/a/a/a/b$2;->a:Lcom/samsung/a/a/a/a/b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "receive BR"

    invoke-static {v0}, Lcom/samsung/a/a/a/a/h/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/a/a/a/a/b$2;->a:Lcom/samsung/a/a/a/a/b;

    invoke-static {v0}, Lcom/samsung/a/a/a/a/b;->a(Lcom/samsung/a/a/a/a/b;)V

    return-void
.end method
