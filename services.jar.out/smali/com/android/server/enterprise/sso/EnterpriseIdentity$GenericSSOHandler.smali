.class final Lcom/android/server/enterprise/sso/EnterpriseIdentity$GenericSSOHandler;
.super Landroid/os/Handler;
.source "EnterpriseIdentity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/sso/EnterpriseIdentity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GenericSSOHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/sso/EnterpriseIdentity;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/sso/EnterpriseIdentity;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    if-eqz p1, :cond_0

    iget v8, p1, Landroid/os/Message;->arg1:I

    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :pswitch_0
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;

    invoke-virtual {v5}, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;->getAuthenticatorPkgName()Ljava/lang/String;

    move-result-object v4

    iget-object v9, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    invoke-static {v9, v8, v4}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->-wrap6(Lcom/android/server/enterprise/sso/EnterpriseIdentity;ILjava/lang/String;)Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;

    move-result-object v1

    const-string/jumbo v9, "EnterpriseIdentity"

    const-string/jumbo v10, "In handleMessage: USERAUTHENTICATION"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_1

    const-string/jumbo v9, "EnterpriseIdentity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "In handleMessage: The authenticator value is"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_0
    iget-object v9, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    invoke-virtual {v9, v8}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getUnEnrollSetting(I)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v5}, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;->getRequestConfig()Landroid/os/Bundle;

    move-result-object v9

    invoke-interface {v1, v9}, Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;->pushAuthenticatorConfig(Landroid/os/Bundle;)I

    iget-object v9, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v8}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->setUnEnrollSetting(ZI)V

    :cond_2
    invoke-interface {v1, v5}, Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;->acquireToken(Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;)Lcom/samsung/android/knox/sso/common/TokenInfo;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/samsung/android/knox/sso/common/TokenInfo;->getResponseBundle()Landroid/os/Bundle;

    move-result-object v0

    sget-object v9, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->AUTHENTICATION_STATUS:Ljava/lang/String;

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string/jumbo v9, "EnterpriseIdentity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "In handleMessage: verifyExchangeUserCredentials: status "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v9, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_5_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-static {v9}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;)Z

    move-result v9

    if-nez v9, :cond_3

    const/16 v9, -0x12

    if-ne v7, v9, :cond_3

    const/4 v7, -0x1

    :cond_3
    sparse-switch v7, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_1
    const/4 v3, 0x0

    iget-object v9, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    invoke-static {v9, v8}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->-wrap5(Lcom/android/server/enterprise/sso/EnterpriseIdentity;I)Lcom/samsung/android/knox/SemPersonaInfo;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    invoke-static {v9, v8}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->-wrap5(Lcom/android/server/enterprise/sso/EnterpriseIdentity;I)Lcom/samsung/android/knox/SemPersonaInfo;

    move-result-object v9

    iget-boolean v9, v9, Lcom/samsung/android/knox/SemPersonaInfo;->isSdpMinor:Z

    if-eqz v9, :cond_0

    const/4 v3, 0x1

    iget-object v9, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    const/4 v10, 0x1

    invoke-static {v9, v10, v8}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->-wrap3(Lcom/android/server/enterprise/sso/EnterpriseIdentity;ZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v9, "EnterpriseIdentity"

    const-string/jumbo v10, "In handleMessage: RemoteException"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_4
    :try_start_1
    const-string/jumbo v9, "EnterpriseIdentity"

    const-string/jumbo v10, "In handleMessage: verifyExchangeUserCredentials returns null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x12 -> :sswitch_0
        -0xf -> :sswitch_0
        -0x2 -> :sswitch_1
        -0x1 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method
