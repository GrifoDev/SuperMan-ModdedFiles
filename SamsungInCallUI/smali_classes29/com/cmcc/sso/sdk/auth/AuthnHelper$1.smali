.class Lcom/cmcc/sso/sdk/auth/AuthnHelper$1;
.super Lcom/cmcc/sso/service/IPCCallback$Stub;
.source "AuthnHelper.java"


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

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper$1;->this$0:Lcom/cmcc/sso/sdk/auth/AuthnHelper;

    .line 1047
    invoke-direct {p0}, Lcom/cmcc/sso/service/IPCCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1052
    const/4 v1, 0x0

    .line 1054
    .local v1, "jsonobj":Lorg/json/JSONObject;
    const-string v3, "resultCode"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1056
    .local v2, "resultCode":I
    const v3, 0x18e70

    if-ne v3, v2, :cond_0

    .line 1058
    iget-object v3, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper$1;->this$0:Lcom/cmcc/sso/sdk/auth/AuthnHelper;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->access$0(Lcom/cmcc/sso/sdk/auth/AuthnHelper;Z)V

    .line 1060
    const-string v3, "commandid"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1062
    .local v0, "commandId":I
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "commandid = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    .line 1064
    packed-switch v0, :pswitch_data_0

    .line 1090
    :pswitch_0
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/cmcc/sso/sdk/auth/AuthnResult;->getResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1099
    .end local v0    # "commandId":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    .line 1101
    iget-object v3, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper$1;->this$0:Lcom/cmcc/sso/sdk/auth/AuthnHelper;

    # invokes: Lcom/cmcc/sso/sdk/auth/AuthnHelper;->callbackToApp(Lorg/json/JSONObject;)V
    invoke-static {v3, v1}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->access$2(Lcom/cmcc/sso/sdk/auth/AuthnHelper;Lorg/json/JSONObject;)V

    .line 1102
    return-void

    .line 1072
    .restart local v0    # "commandId":I
    :pswitch_1
    invoke-static {p1}, Lcom/cmcc/sso/sdk/auth/AuthnResult;->getResultForToken(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1073
    iget-object v3, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper$1;->this$0:Lcom/cmcc/sso/sdk/auth/AuthnHelper;

    const-string v4, "passid"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->access$1(Lcom/cmcc/sso/sdk/auth/AuthnHelper;Ljava/lang/String;)V

    goto :goto_0

    .line 1079
    :pswitch_2
    invoke-static {p1}, Lcom/cmcc/sso/sdk/auth/AuthnResult;->getUserList(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1080
    goto :goto_0

    .line 1084
    :pswitch_3
    const-string v3, "validcode"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmcc/sso/sdk/auth/AuthnResult;->callbackForRandom(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1085
    goto :goto_0

    .line 1096
    .end local v0    # "commandId":I
    :cond_0
    const-string v3, "resultString"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmcc/sso/sdk/auth/AuthnResult;->getResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_0

    .line 1064
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
