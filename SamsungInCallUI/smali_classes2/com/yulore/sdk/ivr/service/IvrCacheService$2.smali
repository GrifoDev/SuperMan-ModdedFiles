.class Lcom/yulore/sdk/ivr/service/IvrCacheService$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yulore/sdk/ivr/service/IvrCacheService;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/yulore/sdk/ivr/service/IvrCacheService;


# direct methods
.method constructor <init>(Lcom/yulore/sdk/ivr/service/IvrCacheService;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService$2;->b:Lcom/yulore/sdk/ivr/service/IvrCacheService;

    iput-object p2, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v1, 0x0

    const/16 v7, 0x4e20

    const/16 v6, 0xc

    const/4 v5, 0x0

    const-string v0, "YuloreIVR"

    const-string v2, " start request data from server "

    invoke-static {v0, v2}, Lcom/yulore/a/a/e/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService$2;->b:Lcom/yulore/sdk/ivr/service/IvrCacheService;

    invoke-virtual {v0}, Lcom/yulore/sdk/ivr/service/IvrCacheService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/yulore/sdk/ivr/e/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/yulore/a/a/b/b;

    invoke-direct {v2}, Lcom/yulore/a/a/b/b;-><init>()V

    const-string v3, "https://apis-samsung.dianhua.cn/vivr/checkIvrZipVer.php"

    const-string v4, "?apikey="

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/yulore/sdk/ivr/e/a;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "&version="

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService$2;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "&device_num="

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v0, " "

    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/yulore/a/a/b/b;->a:Ljava/lang/String;

    iput v7, v2, Lcom/yulore/a/a/b/b;->e:I

    iput v7, v2, Lcom/yulore/a/a/b/b;->d:I

    iget-object v0, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService$2;->b:Lcom/yulore/sdk/ivr/service/IvrCacheService;

    invoke-virtual {v0}, Lcom/yulore/sdk/ivr/service/IvrCacheService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, v2, Lcom/yulore/a/a/b/b;->b:Landroid/content/Context;

    const-string v0, "YuloreIVR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " required url = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/yulore/a/a/b/b;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/yulore/a/a/e/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {v2}, Lcom/yulore/a/a/b/a;->a(Lcom/yulore/a/a/b/b;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "YuloreIVR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " response form server = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/yulore/a/a/e/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    new-instance v2, Lcom/yulore/sdk/ivr/d/b;

    invoke-direct {v2}, Lcom/yulore/sdk/ivr/d/b;-><init>()V

    invoke-virtual {v2, v0}, Lcom/yulore/sdk/ivr/d/b;->a(Ljava/lang/String;)Lcom/yulore/sdk/ivr/model/c;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/yulore/sdk/ivr/model/c;->a()I

    move-result v0

    iget-object v2, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService$2;->b:Lcom/yulore/sdk/ivr/service/IvrCacheService;

    invoke-static {v2}, Lcom/yulore/sdk/ivr/service/IvrCacheService;->a(Lcom/yulore/sdk/ivr/service/IvrCacheService;)Lcom/yulore/a/a/e/e;

    move-result-object v2

    const-string v3, "version"

    invoke-virtual {v2, v3, v5}, Lcom/yulore/a/a/e/e;->a(Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService$2;->b:Lcom/yulore/sdk/ivr/service/IvrCacheService;

    invoke-static {v0}, Lcom/yulore/sdk/ivr/service/IvrCacheService;->d(Lcom/yulore/sdk/ivr/service/IvrCacheService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_2
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v2, "YuloreIVR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " error msg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v0, :cond_2

    const-string v0, " null"

    :goto_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/yulore/a/a/e/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService$2;->b:Lcom/yulore/sdk/ivr/service/IvrCacheService;

    invoke-static {v0}, Lcom/yulore/sdk/ivr/service/IvrCacheService;->d(Lcom/yulore/sdk/ivr/service/IvrCacheService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const-string v2, "YuloreIVR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " error msg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v0, :cond_3

    const-string v0, " null"

    :goto_4
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/yulore/a/a/e/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService$2;->b:Lcom/yulore/sdk/ivr/service/IvrCacheService;

    invoke-static {v0}, Lcom/yulore/sdk/ivr/service/IvrCacheService;->d(Lcom/yulore/sdk/ivr/service/IvrCacheService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Lcom/yulore/sdk/ivr/model/c;->a()I

    move-result v0

    iget-object v2, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService$2;->b:Lcom/yulore/sdk/ivr/service/IvrCacheService;

    invoke-static {v2}, Lcom/yulore/sdk/ivr/service/IvrCacheService;->a(Lcom/yulore/sdk/ivr/service/IvrCacheService;)Lcom/yulore/a/a/e/e;

    move-result-object v2

    const-string v3, "version"

    invoke-virtual {v2, v3, v5}, Lcom/yulore/a/a/e/e;->a(Ljava/lang/String;I)I

    move-result v2

    if-gt v0, v2, :cond_5

    iget-object v0, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService$2;->b:Lcom/yulore/sdk/ivr/service/IvrCacheService;

    invoke-static {v0}, Lcom/yulore/sdk/ivr/service/IvrCacheService;->a(Lcom/yulore/sdk/ivr/service/IvrCacheService;)Lcom/yulore/a/a/e/e;

    move-result-object v0

    const-string v2, "version"

    invoke-virtual {v0, v2, v5}, Lcom/yulore/a/a/e/e;->a(Ljava/lang/String;I)I

    move-result v0

    rem-int/lit8 v0, v0, 0x7

    if-nez v0, :cond_1

    :cond_5
    iget-object v0, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService$2;->b:Lcom/yulore/sdk/ivr/service/IvrCacheService;

    invoke-static {v0, v1}, Lcom/yulore/sdk/ivr/service/IvrCacheService;->a(Lcom/yulore/sdk/ivr/service/IvrCacheService;Lcom/yulore/sdk/ivr/model/c;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService$2;->b:Lcom/yulore/sdk/ivr/service/IvrCacheService;

    invoke-static {v0}, Lcom/yulore/sdk/ivr/service/IvrCacheService;->d(Lcom/yulore/sdk/ivr/service/IvrCacheService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    :cond_6
    iget-object v0, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService$2;->b:Lcom/yulore/sdk/ivr/service/IvrCacheService;

    invoke-static {v0}, Lcom/yulore/sdk/ivr/service/IvrCacheService;->d(Lcom/yulore/sdk/ivr/service/IvrCacheService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    :cond_7
    iget-object v0, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService$2;->b:Lcom/yulore/sdk/ivr/service/IvrCacheService;

    invoke-static {v0}, Lcom/yulore/sdk/ivr/service/IvrCacheService;->d(Lcom/yulore/sdk/ivr/service/IvrCacheService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_2
.end method
