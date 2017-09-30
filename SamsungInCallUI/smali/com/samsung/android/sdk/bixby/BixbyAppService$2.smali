.class Lcom/samsung/android/sdk/bixby/BixbyAppService$2;
.super Lcom/samsung/android/a/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/bixby/BixbyAppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/sdk/bixby/BixbyAppService;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/bixby/BixbyAppService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService$2;->a:Lcom/samsung/android/sdk/bixby/BixbyAppService;

    invoke-direct {p0}, Lcom/samsung/android/a/a/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/a/a/b;)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BixbyAppService setCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService$2;->a:Lcom/samsung/android/sdk/bixby/BixbyAppService;

    invoke-static {v0}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->b(Lcom/samsung/android/sdk/bixby/BixbyAppService;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unauthorized access detected!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService$2;->a:Lcom/samsung/android/sdk/bixby/BixbyAppService;

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->a(Lcom/samsung/android/sdk/bixby/BixbyAppService;Lcom/samsung/android/a/a/b;)Lcom/samsung/android/a/a/b;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BixbyAppService Command From EM: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService$2;->a:Lcom/samsung/android/sdk/bixby/BixbyAppService;

    invoke-static {v0}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->b(Lcom/samsung/android/sdk/bixby/BixbyAppService;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unauthorized access detected!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService$2;->a:Lcom/samsung/android/sdk/bixby/BixbyAppService;

    invoke-static {v0}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->c(Lcom/samsung/android/sdk/bixby/BixbyAppService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sdk/bixby/b;

    invoke-direct {v1, p1}, Lcom/samsung/android/sdk/bixby/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
