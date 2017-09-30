.class Lcom/b/a/a/a/a$c;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/b/a/a/a/a;


# direct methods
.method private constructor <init>(Lcom/b/a/a/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/b/a/a/a/a$c;->a:Lcom/b/a/a/a/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/a/a/a;Lcom/b/a/a/a/a$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/b/a/a/a/a$c;-><init>(Lcom/b/a/a/a/a;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "com.gsma.services.rcs.action.SERVICE_UP"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/b/a/a/a/a;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RCS service is UP"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/b/a/a/a/a;->a()Lcom/b/a/a/a/a;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/a/a/a;->b(Lcom/b/a/a/a/a;)V

    goto :goto_0
.end method
