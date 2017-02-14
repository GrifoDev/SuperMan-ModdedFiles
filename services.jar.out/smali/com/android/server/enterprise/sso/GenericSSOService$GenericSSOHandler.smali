.class final Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;
.super Landroid/os/Handler;
.source "GenericSSOService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/sso/GenericSSOService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GenericSSOHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/sso/GenericSSOService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/sso/GenericSSOService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 42

    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v37, v0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v13

    const/4 v11, 0x0

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    :try_start_0
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback;

    move-object v11, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    move/from16 v0, v37

    invoke-static {v2, v0, v13}, Lcom/android/server/enterprise/sso/GenericSSOService;->-wrap1(Lcom/android/server/enterprise/sso/GenericSSOService;ILandroid/os/Bundle;)Lcom/samsung/android/knox/sso/common/TokenInfo;

    move-result-object v34

    if-eqz v11, :cond_0

    if-eqz v34, :cond_1

    move-object/from16 v0, v34

    invoke-interface {v11, v0}, Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback;->tokenInfoSuccess(Lcom/samsung/android/knox/sso/common/TokenInfo;)V

    const-string/jumbo v2, "GenericSSOService"

    const-string/jumbo v4, "In handleMessage: Getting a token successfully"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v16

    const-string/jumbo v2, "GenericSSOService"

    const-string/jumbo v4, "In handleMessage: RemoteException"

    move-object/from16 v0, v16

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :try_start_1
    invoke-interface {v11, v2}, Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback;->onFail(I)V

    const-string/jumbo v2, "GenericSSOService"

    const-string/jumbo v4, "In handleMessage: Failed to get a token"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :pswitch_2
    :try_start_2
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback;

    move-object v11, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    move/from16 v0, v37

    invoke-virtual {v2, v0, v13}, Lcom/android/server/enterprise/sso/GenericSSOService;->acquireUserInfo(ILandroid/os/Bundle;)Lcom/samsung/android/knox/sso/common/UserInfo;

    move-result-object v39

    if-eqz v11, :cond_0

    if-eqz v39, :cond_2

    move-object/from16 v0, v39

    invoke-interface {v11, v0}, Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback;->userInfoSuccess(Lcom/samsung/android/knox/sso/common/UserInfo;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v16

    const-string/jumbo v2, "GenericSSOService"

    const-string/jumbo v4, "In handleMessage: RemoteException"

    move-object/from16 v0, v16

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    :try_start_3
    invoke-interface {v11, v2}, Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback;->onFail(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :pswitch_3
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v26

    const-string/jumbo v2, "application_policy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/enterprise/application/ApplicationPolicy;

    if-eqz v10, :cond_4

    invoke-virtual {v12}, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;->getAuthenticatorPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2, v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_4

    sget-boolean v2, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "GenericSSOService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "In handleMessage: Installing application in container "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->-get5()Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    move-result-object v2

    invoke-virtual {v12}, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;->getAuthenticatorPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v7}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->installPackageInContainer(Ljava/lang/String;I)I

    :cond_4
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 v30, -0x1

    const/16 v25, 0x0

    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3, v8, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-virtual {v12}, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;->getSSOConfigFile()[B

    move-result-object v2

    if-eqz v2, :cond_8

    sget-boolean v2, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_5

    const-string/jumbo v2, "GenericSSOService"

    const-string/jumbo v4, "In handleMessage: Calling configureSSOByFile2"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    invoke-virtual {v12}, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;->getSSOConfigFile()[B

    move-result-object v4

    invoke-static {v2, v3, v4, v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->-wrap2(Lcom/android/server/enterprise/sso/GenericSSOService;Lcom/samsung/android/knox/ContextInfo;[BI)I

    move-result v30

    const/16 v25, 0x1

    :goto_1
    if-gez v30, :cond_6

    const-string/jumbo v2, "GenericSSOService"

    const-string/jumbo v4, "In handleMessage: Enrollment is failed."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    if-nez v25, :cond_0

    if-nez v30, :cond_0

    invoke-virtual {v12}, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;->getWhiteListPackages()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_7

    const-string/jumbo v2, "GenericSSOService"

    const-string/jumbo v4, "In handleMessage: getWhiteListPackages is not null"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    invoke-virtual {v12}, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;->getWhiteListPackages()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->addWhiteListPackages2(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;I)I

    move-result v30

    if-gez v30, :cond_0

    const-string/jumbo v2, "GenericSSOService"

    const-string/jumbo v4, "In handleMessage: Add whitelist failed. Unenrolling."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    invoke-virtual {v12}, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;->getAuthenticatorPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->unenrollSSOVendor2(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)I

    goto/16 :goto_0

    :cond_8
    sget-boolean v2, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_9

    const-string/jumbo v2, "GenericSSOService"

    const-string/jumbo v4, "In handleMessage: Calling enrollSSOVendor2"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    invoke-virtual {v12}, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;->getAuthenticatorPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12}, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;->getAuthenticatorPkgSignature()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12}, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;->getAuthenticatorConfig()Landroid/os/Bundle;

    move-result-object v6

    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->-wrap3(Lcom/android/server/enterprise/sso/GenericSSOService;Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)I

    move-result v30

    goto :goto_1

    :pswitch_4
    const/16 v23, 0x0

    :try_start_4
    new-instance v41, Ljava/util/ArrayList;

    invoke-direct/range {v41 .. v41}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    invoke-static {v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->-get4(Lcom/android/server/enterprise/sso/GenericSSOService;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v4, "user"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/os/UserManager;

    if-eqz v35, :cond_a

    const/4 v2, 0x1

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v41

    :cond_a
    if-eqz v41, :cond_d

    invoke-interface/range {v41 .. v41}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_d

    invoke-interface/range {v41 .. v41}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v40

    :cond_b
    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v38

    iget v15, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v0, v37

    if-eq v15, v0, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    invoke-static {v2, v15}, Lcom/android/server/enterprise/sso/GenericSSOService;->-wrap0(Lcom/android/server/enterprise/sso/GenericSSOService;I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v14

    const/16 v22, 0x0

    const/16 v28, 0x0

    if-eqz v14, :cond_b

    invoke-static {v14}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->-wrap1(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v22

    if-eqz v22, :cond_b

    sget-boolean v2, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_c

    const-string/jumbo v2, "GenericSSOService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "In handleMessage: Enrolled vendor exists"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const/16 v23, 0x1

    :cond_d
    if-nez v23, :cond_0

    const/16 v24, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v32

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    invoke-static {v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->-wrap4(Lcom/android/server/enterprise/sso/GenericSSOService;)V

    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->-get6()Ljava/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/KeyStore;->getType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "timakeystore"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string/jumbo v9, "GenericSSOService"

    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->-get6()Ljava/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->-get6()Ljava/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    const-string/jumbo v2, "GenericSSOService"

    const-string/jumbo v4, "In handleMessage: SecretKey is deleted from TIMAKeystore"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_2
    invoke-static/range {v32 .. v33}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/security/KeyStoreException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    :catch_2
    move-exception v19

    const-string/jumbo v2, "GenericSSOService"

    const-string/jumbo v4, "In handleMessage: SecurityException"

    move-object/from16 v0, v19

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_f
    :try_start_5
    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->-get6()Ljava/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/KeyStore;->getType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "androidkeystore"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string/jumbo v9, "KnoxSSOKey"

    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->-get6()Ljava/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->-get6()Ljava/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    new-instance v24, Ljava/io/File;

    const-string/jumbo v2, "/data/system/KnoxSSO_SCKF"

    move-object/from16 v0, v24

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->delete()Z

    sget-boolean v2, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_e

    const-string/jumbo v2, "GenericSSOService"

    const-string/jumbo v4, "In handleMessage: KeyPair is deleted from AndroidKeyStore, and SecretKey file is deleted"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/security/KeyStoreException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_2

    :catch_3
    move-exception v21

    const-string/jumbo v2, "GenericSSOService"

    const-string/jumbo v4, "In handleMessage: NoSuchAlgorithmException"

    move-object/from16 v0, v21

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :catch_4
    move-exception v18

    const-string/jumbo v2, "GenericSSOService"

    const-string/jumbo v4, "In handleMessage: Exception"

    move-object/from16 v0, v18

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :catch_5
    move-exception v17

    const-string/jumbo v2, "GenericSSOService"

    const-string/jumbo v4, "In handleMessage: IOException"

    move-object/from16 v0, v17

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :catch_6
    move-exception v20

    const-string/jumbo v2, "GenericSSOService"

    const-string/jumbo v4, "In handleMessage: KeyStoreException"

    move-object/from16 v0, v20

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :pswitch_5
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v31, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Ljava/lang/String;

    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->-get5()Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    move-result-object v2

    move/from16 v0, v37

    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getEnterpriseIdAuthenticator(I)Ljava/lang/String;

    move-result-object v29

    sget-boolean v2, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_10

    const-string/jumbo v2, "GenericSSOService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "In setunenroll:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    if-eqz v29, :cond_0

    move-object/from16 v0, v29

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    invoke-static {v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->-get4(Lcom/android/server/enterprise/sso/GenericSSOService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    invoke-static {v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->-get0(Lcom/android/server/enterprise/sso/GenericSSOService;)Ljava/lang/String;

    move-result-object v4

    move/from16 v0, v31

    move/from16 v1, v37

    invoke-static {v2, v4, v0, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
