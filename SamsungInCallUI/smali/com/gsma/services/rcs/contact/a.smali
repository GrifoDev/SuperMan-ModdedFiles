.class public final Lcom/gsma/services/rcs/contact/a;
.super Lcom/gsma/services/rcs/RcsService;


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field private d:Lcom/gsma/services/rcs/contact/b;

.field private e:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/gsma/services/rcs/contact/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/contact/a;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/gsma/services/rcs/f;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/gsma/services/rcs/RcsService;-><init>(Landroid/content/Context;Lcom/gsma/services/rcs/f;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gsma/services/rcs/contact/a;->d:Lcom/gsma/services/rcs/contact/b;

    new-instance v0, Lcom/gsma/services/rcs/contact/a$1;

    invoke-direct {v0, p0}, Lcom/gsma/services/rcs/contact/a$1;-><init>(Lcom/gsma/services/rcs/contact/a;)V

    iput-object v0, p0, Lcom/gsma/services/rcs/contact/a;->e:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic a(Lcom/gsma/services/rcs/contact/a;)Lcom/gsma/services/rcs/f;
    .locals 1

    iget-object v0, p0, Lcom/gsma/services/rcs/contact/a;->b:Lcom/gsma/services/rcs/f;

    return-object v0
.end method

.method static synthetic b(Lcom/gsma/services/rcs/contact/a;)Lcom/gsma/services/rcs/f;
    .locals 1

    iget-object v0, p0, Lcom/gsma/services/rcs/contact/a;->b:Lcom/gsma/services/rcs/f;

    return-object v0
.end method

.method static synthetic c(Lcom/gsma/services/rcs/contact/a;)Lcom/gsma/services/rcs/f;
    .locals 1

    iget-object v0, p0, Lcom/gsma/services/rcs/contact/a;->b:Lcom/gsma/services/rcs/f;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/gsma/services/rcs/contact/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/gsma/services/rcs/contact/a;)Lcom/gsma/services/rcs/f;
    .locals 1

    iget-object v0, p0, Lcom/gsma/services/rcs/contact/a;->b:Lcom/gsma/services/rcs/f;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/gsma/services/rcs/contact/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/gsma/services/rcs/d;->a(Landroid/content/Context;)Lcom/gsma/services/rcs/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gsma/services/rcs/d;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/gsma/services/rcs/d;->b()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/gsma/services/rcs/contact/a;->c:Ljava/lang/String;

    const-string v1, "TAPI is not available or not activated!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/gsma/services/rcs/contact/a;->a:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/gsma/services/rcs/contact/b;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.sec.imsservice"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/gsma/services/rcs/contact/a;->e:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    sget-object v1, Lcom/gsma/services/rcs/contact/a;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connected = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected a(Landroid/os/IInterface;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/gsma/services/rcs/RcsService;->a(Landroid/os/IInterface;)V

    check-cast p1, Lcom/gsma/services/rcs/contact/b;

    iput-object p1, p0, Lcom/gsma/services/rcs/contact/a;->d:Lcom/gsma/services/rcs/contact/b;

    return-void
.end method

.method public b()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/contact/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/gsma/services/rcs/contact/a;->e:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    sget-object v0, Lcom/gsma/services/rcs/contact/a;->c:Ljava/lang/String;

    const-string v1, "disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method
