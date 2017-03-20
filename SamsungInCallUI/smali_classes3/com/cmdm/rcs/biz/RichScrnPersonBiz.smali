.class public Lcom/cmdm/rcs/biz/RichScrnPersonBiz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field eO:Lcom/cmdm/rcs/logic/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmdm/rcs/biz/RichScrnPersonBiz;->eO:Lcom/cmdm/rcs/logic/a;

    .line 27
    new-instance v0, Lcom/cmdm/rcs/logic/a;

    invoke-direct {v0, p1}, Lcom/cmdm/rcs/logic/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cmdm/rcs/biz/RichScrnPersonBiz;->eO:Lcom/cmdm/rcs/logic/a;

    .line 28
    return-void
.end method


# virtual methods
.method public ClearRichScrnLocalCache(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 2
    .param p1, "PhoneEvent"    # Ljava/lang/String;

    .prologue
    .line 108
    iget-object v1, p0, Lcom/cmdm/rcs/biz/RichScrnPersonBiz;->eO:Lcom/cmdm/rcs/logic/a;

    .line 109
    invoke-virtual {v1, p1}, Lcom/cmdm/rcs/logic/a;->ClearRichScrnLocalCache(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    .line 110
    .local v0, "result":Lcom/cmdm/control/util/client/ResultEntity;
    return-object v0
.end method

.method public CollectRichScrnObj(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 2
    .param p1, "sourceType"    # Ljava/lang/String;
    .param p2, "cid"    # Ljava/lang/String;

    .prologue
    .line 150
    iget-object v1, p0, Lcom/cmdm/rcs/biz/RichScrnPersonBiz;->eO:Lcom/cmdm/rcs/logic/a;

    invoke-virtual {v1, p1, p2}, Lcom/cmdm/rcs/logic/a;->CollectRichScrnObj(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    .line 152
    .local v0, "result":Lcom/cmdm/control/util/client/ResultEntity;
    return-object v0
.end method

.method public DownloadHomeLocRules(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 2
    .param p1, "PhoneEvent"    # Ljava/lang/String;

    .prologue
    .line 121
    iget-object v1, p0, Lcom/cmdm/rcs/biz/RichScrnPersonBiz;->eO:Lcom/cmdm/rcs/logic/a;

    .line 122
    invoke-virtual {v1, p1}, Lcom/cmdm/rcs/logic/a;->DownloadHomeLocRules(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    .line 123
    .local v0, "result":Lcom/cmdm/control/util/client/ResultEntity;
    return-object v0
.end method

.method public DownloadRichScrnObj(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 2
    .param p1, "missdn"    # Ljava/lang/String;
    .param p2, "PhoneEvent"    # Ljava/lang/String;

    .prologue
    .line 95
    iget-object v1, p0, Lcom/cmdm/rcs/biz/RichScrnPersonBiz;->eO:Lcom/cmdm/rcs/logic/a;

    invoke-virtual {v1, p1, p2}, Lcom/cmdm/rcs/logic/a;->DownloadRichScrnObj(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    .line 97
    .local v0, "result":Lcom/cmdm/control/util/client/ResultEntity;
    return-object v0
.end method

.method public GetRichScrnObj(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 2
    .param p1, "missdn"    # Ljava/lang/String;
    .param p2, "PhoneEvent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/rcs/bean/RichScrnShowingObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v1, p0, Lcom/cmdm/rcs/biz/RichScrnPersonBiz;->eO:Lcom/cmdm/rcs/logic/a;

    .line 80
    invoke-virtual {v1, p1, p2}, Lcom/cmdm/rcs/logic/a;->GetRichScrnObj(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 81
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/rcs/bean/RichScrnShowingObject;>;"
    return-object v0
.end method

.method public RichScrnCMCCSSOLogin(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 2
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "sourceId"    # Ljava/lang/String;

    .prologue
    .line 165
    iget-object v1, p0, Lcom/cmdm/rcs/biz/RichScrnPersonBiz;->eO:Lcom/cmdm/rcs/logic/a;

    invoke-virtual {v1, p1, p2}, Lcom/cmdm/rcs/logic/a;->RichScrnCMCCSSOLogin(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    .line 166
    .local v0, "result":Lcom/cmdm/control/util/client/ResultEntity;
    return-object v0
.end method

.method public RichScrnChangeNetWork()Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/cmdm/rcs/biz/RichScrnPersonBiz;->eO:Lcom/cmdm/rcs/logic/a;

    invoke-virtual {v0}, Lcom/cmdm/rcs/logic/a;->RichScrnChangeNetWork()Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public SetOwnerMsisdn(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 2
    .param p1, "OwnerMsisdn"    # Ljava/lang/String;

    .prologue
    .line 135
    iget-object v1, p0, Lcom/cmdm/rcs/biz/RichScrnPersonBiz;->eO:Lcom/cmdm/rcs/logic/a;

    invoke-virtual {v1, p1}, Lcom/cmdm/rcs/logic/a;->SetOwnerMsisdn(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    .line 136
    .local v0, "result":Lcom/cmdm/control/util/client/ResultEntity;
    return-object v0
.end method

.method public init(I)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 2
    .param p1, "cacheSize"    # I

    .prologue
    .line 39
    iget-object v1, p0, Lcom/cmdm/rcs/biz/RichScrnPersonBiz;->eO:Lcom/cmdm/rcs/logic/a;

    invoke-virtual {v1, p1}, Lcom/cmdm/rcs/logic/a;->init(I)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    .line 40
    .local v0, "result":Lcom/cmdm/control/util/client/ResultEntity;
    return-object v0
.end method
