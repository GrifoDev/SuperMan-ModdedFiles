.class Lcom/samsung/android/sdk/bixby/BixbyAppService$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/sdk/bixby/a$g;


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

    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService$1;->a:Lcom/samsung/android/sdk/bixby/BixbyAppService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BixbyAppService onResponse "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService$1;->a:Lcom/samsung/android/sdk/bixby/BixbyAppService;

    invoke-static {v0}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->a(Lcom/samsung/android/sdk/bixby/BixbyAppService;)Lcom/samsung/android/a/a/b;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "No Bixby Agent response callback method registered."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService$1;->a:Lcom/samsung/android/sdk/bixby/BixbyAppService;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->a(Lcom/samsung/android/sdk/bixby/BixbyAppService;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to handle response command to Bixby Agent."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to send command to Bixby Agent."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jsonResponse:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService$1;->a:Lcom/samsung/android/sdk/bixby/BixbyAppService;

    invoke-static {v1}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->a(Lcom/samsung/android/sdk/bixby/BixbyAppService;)Lcom/samsung/android/a/a/b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/a/a/b;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
