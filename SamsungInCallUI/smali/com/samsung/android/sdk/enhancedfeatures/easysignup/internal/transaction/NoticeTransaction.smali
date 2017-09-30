.class public Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/NoticeTransaction;
.super Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/BaseTransaction;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountNoticeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/BaseTransaction;-><init>(Landroid/content/Context;)V

    const-string v0, "NoticeTransaction"

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/NoticeTransaction;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public callNoticeList(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountNoticeListener;Landroid/content/Intent;)V
    .locals 7

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/NoticeTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountNoticeListener;

    const-string v0, "app_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "app_version"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "language"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "country_code"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pv : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lang : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " country : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NoticeTransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpNoticeManager;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpNoticeManager;-><init>()V

    const/16 v1, 0x104

    move-object v2, p0

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpNoticeManager;->callNoticeList(ILcom/samsung/android/sdk/ssf/SsfListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V
    .locals 6

    const/16 v0, 0xc8

    iget v1, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    if-ne v0, v1, :cond_3

    if-eqz p2, :cond_2

    instance-of v0, p2, Lcom/samsung/android/sdk/ssf/account/io/NoticeResponse;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountNoticeInfo;

    invoke-direct {v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountNoticeInfo;-><init>()V

    check-cast p2, Lcom/samsung/android/sdk/ssf/account/io/NoticeResponse;

    iget v0, p2, Lcom/samsung/android/sdk/ssf/account/io/NoticeResponse;->count:I

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountNoticeInfo;->setCount(I)V

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountNoticeInfo;->getCount()I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p2, Lcom/samsung/android/sdk/ssf/account/io/NoticeResponse;->notices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/account/io/NoticeInfo;

    new-instance v4, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountNoticeInfo$NoticeResponseInfo;

    invoke-direct {v4}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountNoticeInfo$NoticeResponseInfo;-><init>()V

    iget-object v5, v0, Lcom/samsung/android/sdk/ssf/account/io/NoticeInfo;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountNoticeInfo$NoticeResponseInfo;->setId(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/samsung/android/sdk/ssf/account/io/NoticeInfo;->startdate:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountNoticeInfo$NoticeResponseInfo;->setStartdate(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/samsung/android/sdk/ssf/account/io/NoticeInfo;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountNoticeInfo$NoticeResponseInfo;->setTitle(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/samsung/android/sdk/ssf/account/io/NoticeInfo;->linkurl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountNoticeInfo$NoticeResponseInfo;->setLinkUrl(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/account/io/NoticeInfo;->level:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountNoticeInfo$NoticeResponseInfo;->setLevel(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountNoticeInfo;->setNotices(Ljava/util/List;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/NoticeTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountNoticeListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountNoticeListener;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountNoticeInfo;)V

    :goto_1
    return-void

    :cond_2
    const-string v0, "get OK but no response"

    const-string v1, "NoticeTransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/NoticeTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountNoticeListener;

    const/16 v1, 0x2af8

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/NoticeTransaction;->notifyError(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/BaseListener;I)V

    goto :goto_1

    :cond_3
    const-string v0, "NoticeTransaction"

    invoke-static {p3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->logErrorResponse(Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/NoticeTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountNoticeListener;

    iget v1, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/NoticeTransaction;->notifyError(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/BaseListener;I)V

    goto :goto_1
.end method
