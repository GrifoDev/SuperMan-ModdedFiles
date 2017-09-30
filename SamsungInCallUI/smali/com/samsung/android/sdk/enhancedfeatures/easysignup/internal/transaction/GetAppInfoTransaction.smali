.class public Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetAppInfoTransaction;
.super Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/BaseTransaction;

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TokenValue;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountAppInfoListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/BaseTransaction;-><init>(Landroid/content/Context;)V

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetAppInfoTransaction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetAppInfoTransaction;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAppInfo(Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountAppInfoListener;)V
    .locals 4

    const/4 v3, -0x1

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetAppInfoTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountAppInfoListener;

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetAppInfoTransaction;->checkAuthentication(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetAppInfoTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountAppInfoListener;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetAppInfoTransaction;->notifyError(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/BaseListener;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "getAppInfo. empty msisdn."

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetAppInfoTransaction;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetAppInfoTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountAppInfoListener;

    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetAppInfoTransaction;->notifyError(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/BaseListener;I)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpAuthManager;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpAuthManager;-><init>()V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10e

    invoke-virtual {v0, v1, p1, v2, p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpAuthManager;->getAppInfo(Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/sdk/ssf/SsfListener;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Its seems SSF SDK error"

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetAppInfoTransaction;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetAppInfoTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountAppInfoListener;

    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetAppInfoTransaction;->notifyError(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/BaseListener;I)V

    goto :goto_0
.end method

.method public onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V
    .locals 21

    const/16 v3, 0xc8

    move-object/from16 v0, p3

    iget v4, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    if-ne v3, v4, :cond_d

    if-eqz p2, :cond_c

    move-object/from16 v0, p2

    instance-of v3, v0, Lcom/samsung/android/sdk/ssf/account/io/GetAppRespInfo;

    if-eqz v3, :cond_c

    check-cast p2, Lcom/samsung/android/sdk/ssf/account/io/GetAppRespInfo;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/samsung/android/sdk/ssf/account/io/GetAppRespInfo;->duids:[Lcom/samsung/android/sdk/ssf/account/io/GetAppRespInfo$DuidInfo;

    if-eqz v3, :cond_0

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/samsung/android/sdk/ssf/account/io/GetAppRespInfo;->duids:[Lcom/samsung/android/sdk/ssf/account/io/GetAppRespInfo$DuidInfo;

    array-length v3, v3

    if-nez v3, :cond_2

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetAppInfoTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountAppInfoListener;

    move-object/from16 v0, p3

    iget v4, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetAppInfoTransaction;->notifyError(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/BaseListener;I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/samsung/android/sdk/ssf/account/io/GetAppRespInfo;->duids:[Lcom/samsung/android/sdk/ssf/account/io/GetAppRespInfo$DuidInfo;

    array-length v13, v12

    const/4 v3, 0x0

    move v10, v3

    :goto_1
    if-ge v10, v13, :cond_b

    aget-object v14, v12, v10

    new-instance v3, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountAppInfo$DeviceInfo;

    iget-object v4, v14, Lcom/samsung/android/sdk/ssf/account/io/GetAppRespInfo$DuidInfo;->duid:Ljava/lang/String;

    iget v5, v14, Lcom/samsung/android/sdk/ssf/account/io/GetAppRespInfo$DuidInfo;->st:I

    iget-object v6, v14, Lcom/samsung/android/sdk/ssf/account/io/GetAppRespInfo$DuidInfo;->device_type_value:Ljava/lang/String;

    iget-object v7, v14, Lcom/samsung/android/sdk/ssf/account/io/GetAppRespInfo$DuidInfo;->model_number:Ljava/lang/String;

    iget v8, v14, Lcom/samsung/android/sdk/ssf/account/io/GetAppRespInfo$DuidInfo;->device_idx:I

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountAppInfo$DeviceInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;)V

    iget-object v4, v14, Lcom/samsung/android/sdk/ssf/account/io/GetAppRespInfo$DuidInfo;->apps:[Lcom/samsung/android/sdk/ssf/account/io/GetAppRespInfo$AppInfo;

    if-eqz v4, :cond_3

    iget-object v4, v14, Lcom/samsung/android/sdk/ssf/account/io/GetAppRespInfo$DuidInfo;->apps:[Lcom/samsung/android/sdk/ssf/account/io/GetAppRespInfo$AppInfo;

    array-length v4, v4

    if-nez v4, :cond_4

    :cond_3
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v3, v10, 0x1

    move v10, v3

    goto :goto_1

    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, v14, Lcom/samsung/android/sdk/ssf/account/io/GetAppRespInfo$DuidInfo;->apps:[Lcom/samsung/android/sdk/ssf/account/io/GetAppRespInfo$AppInfo;

    array-length v8, v7

    const/4 v4, 0x0

    move v5, v4

    :goto_3
    if-ge v5, v8, :cond_a

    aget-object v9, v7, v5

    new-instance v14, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountAppInfo$AppInfo;

    iget-object v4, v9, Lcom/samsung/android/sdk/ssf/account/io/GetAppRespInfo$AppInfo;->appid:Ljava/lang/String;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v14, v4, v15, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountAppInfo$AppInfo;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountAppInfo$PkgInfo;)V

    iget-object v4, v9, Lcom/samsung/android/sdk/ssf/account/io/GetAppRespInfo$AppInfo;->services:[Lcom/samsung/android/sdk/ssf/account/io/GetAppRespInfo$ServiceInfo;

    if-eqz v4, :cond_7

    iget-object v4, v9, Lcom/samsung/android/sdk/ssf/account/io/GetAppRespInfo$AppInfo;->services:[Lcom/samsung/android/sdk/ssf/account/io/GetAppRespInfo$ServiceInfo;

    array-length v4, v4

    if-lez v4, :cond_7

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v9, Lcom/samsung/android/sdk/ssf/account/io/GetAppRespInfo$AppInfo;->services:[Lcom/samsung/android/sdk/ssf/account/io/GetAppRespInfo$ServiceInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    const/4 v4, 0x0

    :goto_4
    move/from16 v0, v17

    if-ge v4, v0, :cond_6

    aget-object v18, v16, v4

    if-eqz v18, :cond_5

    new-instance v19, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountAppInfo$ServiceInfo;

    move-object/from16 v0, v18

    iget v0, v0, Lcom/samsung/android/sdk/ssf/account/io/GetAppRespInfo$ServiceInfo;->sid:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/samsung/android/sdk/ssf/account/io/GetAppRespInfo$ServiceInfo;->st:I

    move/from16 v18, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountAppInfo$ServiceInfo;-><init>(II)V

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual {v14, v15}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountAppInfo$AppInfo;->setServiceInfoList(Ljava/util/ArrayList;)V

    :cond_7
    iget-object v4, v9, Lcom/samsung/android/sdk/ssf/account/io/GetAppRespInfo$AppInfo;->resources:[Ljava/lang/String;

    if-eqz v4, :cond_8

    iget-object v4, v9, Lcom/samsung/android/sdk/ssf/account/io/GetAppRespInfo$AppInfo;->resources:[Ljava/lang/String;

    array-length v4, v4

    if-lez v4, :cond_8

    iget-object v4, v9, Lcom/samsung/android/sdk/ssf/account/io/GetAppRespInfo$AppInfo;->resources:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v14, v4}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountAppInfo$AppInfo;->setResourceList(Ljava/util/ArrayList;)V

    :cond_8
    iget-object v4, v9, Lcom/samsung/android/sdk/ssf/account/io/GetAppRespInfo$AppInfo;->pkg:Lcom/samsung/android/sdk/ssf/account/io/GetAppRespInfo$PkgInfo;

    if-eqz v4, :cond_9

    new-instance v4, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountAppInfo$PkgInfo;

    iget-object v15, v9, Lcom/samsung/android/sdk/ssf/account/io/GetAppRespInfo$AppInfo;->pkg:Lcom/samsung/android/sdk/ssf/account/io/GetAppRespInfo$PkgInfo;

    iget-object v15, v15, Lcom/samsung/android/sdk/ssf/account/io/GetAppRespInfo$PkgInfo;->pv:Ljava/lang/String;

    iget-object v0, v9, Lcom/samsung/android/sdk/ssf/account/io/GetAppRespInfo$AppInfo;->pkg:Lcom/samsung/android/sdk/ssf/account/io/GetAppRespInfo$PkgInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/account/io/GetAppRespInfo$PkgInfo;->vc:Ljava/lang/String;

    move-object/from16 v16, v0

    iget-object v0, v9, Lcom/samsung/android/sdk/ssf/account/io/GetAppRespInfo$AppInfo;->pkg:Lcom/samsung/android/sdk/ssf/account/io/GetAppRespInfo$PkgInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/account/io/GetAppRespInfo$PkgInfo;->os:Ljava/lang/String;

    move-object/from16 v17, v0

    iget-object v9, v9, Lcom/samsung/android/sdk/ssf/account/io/GetAppRespInfo$AppInfo;->pkg:Lcom/samsung/android/sdk/ssf/account/io/GetAppRespInfo$PkgInfo;

    iget-object v9, v9, Lcom/samsung/android/sdk/ssf/account/io/GetAppRespInfo$PkgInfo;->ov:Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v4, v15, v0, v1, v9}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountAppInfo$PkgInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v4}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountAppInfo$AppInfo;->setPackageInfo(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountAppInfo$PkgInfo;)V

    :cond_9
    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto/16 :goto_3

    :cond_a
    invoke-virtual {v3, v6}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountAppInfo$DeviceInfo;->setAppInfoList(Ljava/util/ArrayList;)V

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_b
    new-instance v3, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountAppInfo;

    invoke-direct {v3, v11}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountAppInfo;-><init>(Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetAppInfoTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountAppInfoListener;

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetAppInfoTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountAppInfoListener;

    invoke-interface {v4, v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountAppInfoListener;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountAppInfo;)V

    goto/16 :goto_0

    :cond_c
    const-string v3, "get OK but no response"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetAppInfoTransaction;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetAppInfoTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountAppInfoListener;

    const/16 v4, 0x2af8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetAppInfoTransaction;->notifyError(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/BaseListener;I)V

    goto/16 :goto_0

    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetAppInfoTransaction;->TAG:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-static {v0, v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->logErrorResponse(Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetAppInfoTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountAppInfoListener;

    move-object/from16 v0, p3

    iget v4, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetAppInfoTransaction;->notifyError(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/BaseListener;I)V

    goto/16 :goto_0
.end method
