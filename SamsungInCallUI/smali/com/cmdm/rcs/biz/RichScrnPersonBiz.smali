.class public Lcom/cmdm/rcs/biz/RichScrnPersonBiz;
.super Ljava/lang/Object;


# instance fields
.field eO:Lcom/cmdm/rcs/logic/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmdm/rcs/biz/RichScrnPersonBiz;->eO:Lcom/cmdm/rcs/logic/a;

    new-instance v0, Lcom/cmdm/rcs/logic/a;

    invoke-direct {v0, p1}, Lcom/cmdm/rcs/logic/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cmdm/rcs/biz/RichScrnPersonBiz;->eO:Lcom/cmdm/rcs/logic/a;

    return-void
.end method


# virtual methods
.method public ClearRichScrnLocalCache(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/rcs/biz/RichScrnPersonBiz;->eO:Lcom/cmdm/rcs/logic/a;

    invoke-virtual {v0, p1}, Lcom/cmdm/rcs/logic/a;->ClearRichScrnLocalCache(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public CollectRichScrnObj(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/rcs/biz/RichScrnPersonBiz;->eO:Lcom/cmdm/rcs/logic/a;

    invoke-virtual {v0, p1, p2}, Lcom/cmdm/rcs/logic/a;->CollectRichScrnObj(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public DownloadHomeLocRules(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/rcs/biz/RichScrnPersonBiz;->eO:Lcom/cmdm/rcs/logic/a;

    invoke-virtual {v0, p1}, Lcom/cmdm/rcs/logic/a;->DownloadHomeLocRules(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public DownloadRichScrnObj(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/rcs/biz/RichScrnPersonBiz;->eO:Lcom/cmdm/rcs/logic/a;

    invoke-virtual {v0, p1, p2}, Lcom/cmdm/rcs/logic/a;->DownloadRichScrnObj(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public GetRichScrnObj(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 1
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

    iget-object v0, p0, Lcom/cmdm/rcs/biz/RichScrnPersonBiz;->eO:Lcom/cmdm/rcs/logic/a;

    invoke-virtual {v0, p1, p2}, Lcom/cmdm/rcs/logic/a;->GetRichScrnObj(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method

.method public RichScrnCMCCSSOLogin(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/rcs/biz/RichScrnPersonBiz;->eO:Lcom/cmdm/rcs/logic/a;

    invoke-virtual {v0, p1, p2}, Lcom/cmdm/rcs/logic/a;->RichScrnCMCCSSOLogin(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public RichScrnChangeNetWork()Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/rcs/biz/RichScrnPersonBiz;->eO:Lcom/cmdm/rcs/logic/a;

    invoke-virtual {v0}, Lcom/cmdm/rcs/logic/a;->RichScrnChangeNetWork()Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public SetOwnerMsisdn(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/rcs/biz/RichScrnPersonBiz;->eO:Lcom/cmdm/rcs/logic/a;

    invoke-virtual {v0, p1}, Lcom/cmdm/rcs/logic/a;->SetOwnerMsisdn(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public init(I)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/rcs/biz/RichScrnPersonBiz;->eO:Lcom/cmdm/rcs/logic/a;

    invoke-virtual {v0, p1}, Lcom/cmdm/rcs/logic/a;->init(I)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method
