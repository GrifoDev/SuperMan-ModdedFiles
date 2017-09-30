.class Lcom/yulore/sdk/ivr/service/IvrCacheService$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulore/sdk/ivr/service/IvrCacheService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yulore/sdk/ivr/service/IvrCacheService;


# direct methods
.method constructor <init>(Lcom/yulore/sdk/ivr/service/IvrCacheService;)V
    .locals 0

    iput-object p1, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService$1;->a:Lcom/yulore/sdk/ivr/service/IvrCacheService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService$1;->a:Lcom/yulore/sdk/ivr/service/IvrCacheService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yulore/sdk/ivr/service/IvrCacheService;->a(Lcom/yulore/sdk/ivr/service/IvrCacheService;Z)Z

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v0, "YuloreIVR"

    const-string v1, " Server response successfully , Start parsing data"

    invoke-static {v0, v1}, Lcom/yulore/a/a/e/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService$1;->a:Lcom/yulore/sdk/ivr/service/IvrCacheService;

    invoke-static {v0}, Lcom/yulore/sdk/ivr/service/IvrCacheService;->a(Lcom/yulore/sdk/ivr/service/IvrCacheService;)Lcom/yulore/a/a/e/e;

    move-result-object v0

    const-string v1, "last_update_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/yulore/a/a/e/e;->a(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService$1;->a:Lcom/yulore/sdk/ivr/service/IvrCacheService;

    invoke-static {v0}, Lcom/yulore/sdk/ivr/service/IvrCacheService;->b(Lcom/yulore/sdk/ivr/service/IvrCacheService;)Lcom/yulore/sdk/ivr/service/IvrCacheService$a;

    move-result-object v0

    sget-object v1, Lcom/yulore/sdk/ivr/service/IvrCacheService$a;->a:Lcom/yulore/sdk/ivr/service/IvrCacheService$a;

    if-ne v0, v1, :cond_3

    const-string v0, "YuloreIVR"

    const-string v1, " delete all old data except zip file "

    invoke-static {v0, v1}, Lcom/yulore/a/a/e/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService$1;->a:Lcom/yulore/sdk/ivr/service/IvrCacheService;

    invoke-static {v0}, Lcom/yulore/sdk/ivr/service/IvrCacheService;->c(Lcom/yulore/sdk/ivr/service/IvrCacheService;)Lcom/yulore/sdk/ivr/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yulore/sdk/ivr/a/a;->c()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService$1;->a:Lcom/yulore/sdk/ivr/service/IvrCacheService;

    invoke-static {v0}, Lcom/yulore/sdk/ivr/service/IvrCacheService;->c(Lcom/yulore/sdk/ivr/service/IvrCacheService;)Lcom/yulore/sdk/ivr/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yulore/sdk/ivr/a/a;->c()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService$1;->a:Lcom/yulore/sdk/ivr/service/IvrCacheService;

    invoke-static {v0}, Lcom/yulore/sdk/ivr/service/IvrCacheService;->c(Lcom/yulore/sdk/ivr/service/IvrCacheService;)Lcom/yulore/sdk/ivr/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yulore/sdk/ivr/a/a;->c()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_2
    iget-object v0, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService$1;->a:Lcom/yulore/sdk/ivr/service/IvrCacheService;

    invoke-static {v0}, Lcom/yulore/sdk/ivr/service/IvrCacheService;->c(Lcom/yulore/sdk/ivr/service/IvrCacheService;)Lcom/yulore/sdk/ivr/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yulore/sdk/ivr/a/a;->c()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/yulore/a/a/e/c;->d(Ljava/io/File;)V

    :cond_3
    iget-object v0, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService$1;->a:Lcom/yulore/sdk/ivr/service/IvrCacheService;

    const-string v1, "ivr.zip"

    invoke-static {v0, v1}, Lcom/yulore/sdk/ivr/service/IvrCacheService;->a(Lcom/yulore/sdk/ivr/service/IvrCacheService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService$1;->a:Lcom/yulore/sdk/ivr/service/IvrCacheService;

    invoke-static {v0}, Lcom/yulore/sdk/ivr/service/IvrCacheService;->b(Lcom/yulore/sdk/ivr/service/IvrCacheService;)Lcom/yulore/sdk/ivr/service/IvrCacheService$a;

    move-result-object v0

    sget-object v1, Lcom/yulore/sdk/ivr/service/IvrCacheService$a;->b:Lcom/yulore/sdk/ivr/service/IvrCacheService$a;

    if-ne v0, v1, :cond_0

    const-string v0, "YuloreIVR"

    const-string v1, " Delete some data file by server discarded "

    invoke-static {v0, v1}, Lcom/yulore/a/a/e/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService$1;->a:Lcom/yulore/sdk/ivr/service/IvrCacheService;

    invoke-static {v0}, Lcom/yulore/sdk/ivr/service/IvrCacheService;->c(Lcom/yulore/sdk/ivr/service/IvrCacheService;)Lcom/yulore/sdk/ivr/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yulore/sdk/ivr/a/a;->c()Ljava/io/File;

    move-result-object v0

    const-string v1, "delete.json"

    invoke-static {v0, v1}, Lcom/yulore/a/a/e/c;->a(Ljava/io/File;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1
    const-string v0, "YuloreIVR"

    const-string v1, " download offline data packet failed , please try again later "

    invoke-static {v0, v1}, Lcom/yulore/a/a/e/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    const-string v0, "YuloreIVR"

    const-string v1, " do not need to update "

    invoke-static {v0, v1}, Lcom/yulore/a/a/e/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3
    const-string v0, "YuloreIVR"

    const-string v1, " analytical exception or server is not response, please try again later "

    invoke-static {v0, v1}, Lcom/yulore/a/a/e/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4
    const-string v0, "YuloreIVR"

    const-string v1, " json string is empty, please try again later "

    invoke-static {v0, v1}, Lcom/yulore/a/a/e/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
