.class Lcom/cmcc/sso/sdk/auth/AuthnHelper$3;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcc/sso/sdk/auth/AuthnHelper;->requestService(Landroid/os/Bundle;Lcom/cmcc/sso/service/IPCCallback;)V
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

    iput-object p1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper$3;->this$0:Lcom/cmcc/sso/sdk/auth/AuthnHelper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/cmcc/sso/sdk/util/HttpUtil;->getLatestAPKUri()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper$3;->this$0:Lcom/cmcc/sso/sdk/auth/AuthnHelper;

    const v2, 0x18e72

    invoke-static {v2, v0}, Lcom/cmcc/sso/sdk/auth/AuthnResult;->callbackForUri(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->access$2(Lcom/cmcc/sso/sdk/auth/AuthnHelper;Lorg/json/JSONObject;)V

    return-void
.end method
