.class Lcom/cmcc/sso/sdk/auth/AuthnHelper$4;
.super Ljava/lang/Object;
.source "AuthnHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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

.field private final synthetic val$values:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/cmcc/sso/sdk/auth/AuthnHelper;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper$4;->this$0:Lcom/cmcc/sso/sdk/auth/AuthnHelper;

    iput-object p2, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper$4;->val$values:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    iget-object v1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper$4;->this$0:Lcom/cmcc/sso/sdk/auth/AuthnHelper;

    invoke-static {p2}, Lcom/cmcc/sso/service/ISsoService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cmcc/sso/service/ISsoService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->access$3(Lcom/cmcc/sso/sdk/auth/AuthnHelper;Lcom/cmcc/sso/service/ISsoService;)V

    if-nez v2, :cond_0

    const-string v1, "com.cmcc.sso.service.SsoService get token, mIService = null."

    invoke-static {v1}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper$4;->this$0:Lcom/cmcc/sso/sdk/auth/AuthnHelper;

    invoke-static {v1}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->access$4(Lcom/cmcc/sso/sdk/auth/AuthnHelper;)Lcom/cmcc/sso/service/ISsoService;

    move-result-object v1

    iget-object v2, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper$4;->val$values:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper$4;->this$0:Lcom/cmcc/sso/sdk/auth/AuthnHelper;

    invoke-static {v3}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->access$5(Lcom/cmcc/sso/sdk/auth/AuthnHelper;)Lcom/cmcc/sso/service/IPCCallback;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/cmcc/sso/service/ISsoService;->callback(Landroid/os/Bundle;Lcom/cmcc/sso/service/IPCCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper$4;->this$0:Lcom/cmcc/sso/sdk/auth/AuthnHelper;

    const v1, 0x18e71

    invoke-static {v1}, Lcom/cmcc/sso/sdk/auth/AuthnResult;->getResult(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->access$2(Lcom/cmcc/sso/sdk/auth/AuthnHelper;Lorg/json/JSONObject;)V

    return-void
.end method
