.class Lcom/gsma/services/rcs/sharing/image/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/sharing/image/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gsma/services/rcs/sharing/image/d;


# direct methods
.method constructor <init>(Lcom/gsma/services/rcs/sharing/image/d;)V
    .locals 0

    iput-object p1, p0, Lcom/gsma/services/rcs/sharing/image/d$1;->a:Lcom/gsma/services/rcs/sharing/image/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/image/d$1;->a:Lcom/gsma/services/rcs/sharing/image/d;

    invoke-static {p2}, Lcom/gsma/services/rcs/sharing/image/c$a;->a(Landroid/os/IBinder;)Lcom/gsma/services/rcs/sharing/image/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gsma/services/rcs/sharing/image/d;->a(Landroid/os/IInterface;)V

    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/image/d$1;->a:Lcom/gsma/services/rcs/sharing/image/d;

    invoke-static {v0}, Lcom/gsma/services/rcs/sharing/image/d;->a(Lcom/gsma/services/rcs/sharing/image/d;)Lcom/gsma/services/rcs/f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/image/d$1;->a:Lcom/gsma/services/rcs/sharing/image/d;

    invoke-static {v0}, Lcom/gsma/services/rcs/sharing/image/d;->b(Lcom/gsma/services/rcs/sharing/image/d;)Lcom/gsma/services/rcs/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/gsma/services/rcs/f;->onServiceConnected()V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/image/d$1;->a:Lcom/gsma/services/rcs/sharing/image/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gsma/services/rcs/sharing/image/d;->a(Landroid/os/IInterface;)V

    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/image/d$1;->a:Lcom/gsma/services/rcs/sharing/image/d;

    invoke-static {v0}, Lcom/gsma/services/rcs/sharing/image/d;->c(Lcom/gsma/services/rcs/sharing/image/d;)Lcom/gsma/services/rcs/f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/image/d$1;->a:Lcom/gsma/services/rcs/sharing/image/d;

    invoke-static {v0}, Lcom/gsma/services/rcs/sharing/image/d;->d(Lcom/gsma/services/rcs/sharing/image/d;)Lcom/gsma/services/rcs/f;

    move-result-object v0

    sget-object v1, Lcom/gsma/services/rcs/f$a;->c:Lcom/gsma/services/rcs/f$a;

    invoke-interface {v0, v1}, Lcom/gsma/services/rcs/f;->onServiceDisconnected(Lcom/gsma/services/rcs/f$a;)V

    :cond_0
    return-void
.end method
