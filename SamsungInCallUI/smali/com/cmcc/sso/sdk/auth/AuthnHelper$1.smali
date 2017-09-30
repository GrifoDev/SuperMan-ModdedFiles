.class Lcom/cmcc/sso/sdk/auth/AuthnHelper$1;
.super Lcom/cmcc/sso/service/IPCCallback$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcc/sso/sdk/auth/AuthnHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cmcc/sso/sdk/auth/AuthnHelper;


# direct methods
.method constructor <init>(Lcom/cmcc/sso/sdk/auth/AuthnHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper$1;->this$0:Lcom/cmcc/sso/sdk/auth/AuthnHelper;

    invoke-direct {p0}, Lcom/cmcc/sso/service/IPCCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "resultCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const v1, 0x18e70

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper$1;->this$0:Lcom/cmcc/sso/sdk/auth/AuthnHelper;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->access$0(Lcom/cmcc/sso/sdk/auth/AuthnHelper;Z)V

    const-string v1, "commandid"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "commandid = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cmcc/sso/sdk/auth/AuthnResult;->getResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper$1;->this$0:Lcom/cmcc/sso/sdk/auth/AuthnHelper;

    invoke-static {v1, v0}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->access$2(Lcom/cmcc/sso/sdk/auth/AuthnHelper;Lorg/json/JSONObject;)V

    return-void

    :pswitch_1
    invoke-static {p1}, Lcom/cmcc/sso/sdk/auth/AuthnResult;->getResultForToken(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper$1;->this$0:Lcom/cmcc/sso/sdk/auth/AuthnHelper;

    const-string v2, "passid"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->access$1(Lcom/cmcc/sso/sdk/auth/AuthnHelper;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    invoke-static {p1}, Lcom/cmcc/sso/sdk/auth/AuthnResult;->getUserList(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    const-string v1, "validcode"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcc/sso/sdk/auth/AuthnResult;->callbackForRandom(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v1, "resultString"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcc/sso/sdk/auth/AuthnResult;->getResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
