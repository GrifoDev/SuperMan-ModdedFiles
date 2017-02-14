.class Lcom/cmdm/control/logic/k$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmdm/control/logic/k;->Y(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic co:Lcom/cmdm/control/logic/k;

.field private final synthetic cq:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cmdm/control/logic/k;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/logic/k$3;->co:Lcom/cmdm/control/logic/k;

    iput-object p2, p0, Lcom/cmdm/control/logic/k$3;->cq:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    invoke-static {}, Landroid/os/Looper;->prepare()V

    :try_start_0
    iget-object v8, p0, Lcom/cmdm/control/logic/k$3;->co:Lcom/cmdm/control/logic/k;

    iget-object v9, p0, Lcom/cmdm/control/logic/k$3;->cq:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/cmdm/control/logic/k;->aI(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lcom/cmdm/control/util/client/ResultUtil;->isSuccessed()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v7}, Lcom/cmdm/control/util/client/ResultUtil;->getAttachObj()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cmdm/control/bean/DisplayResult;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/cmdm/control/bean/DisplayResult;->getSettingList()Lcom/cmdm/control/bean/SettingList;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v5}, Lcom/cmdm/control/bean/DisplayResult;->getSettingList()Lcom/cmdm/control/bean/SettingList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/cmdm/control/bean/SettingList;->getDisplaySettingInfoList()Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v5}, Lcom/cmdm/control/bean/DisplayResult;->getSettingList()Lcom/cmdm/control/bean/SettingList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/cmdm/control/bean/SettingList;->getDisplaySettingInfoList()Ljava/util/ArrayList;

    move-result-object v6

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v0, v8, :cond_2

    :cond_0
    iget-object v8, p0, Lcom/cmdm/control/logic/k$3;->co:Lcom/cmdm/control/logic/k;

    iget-object v9, p0, Lcom/cmdm/control/logic/k$3;->cq:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/cmdm/control/logic/k;->aG(Ljava/lang/String;)V

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_1

    iget-object v8, p0, Lcom/cmdm/control/logic/k$3;->co:Lcom/cmdm/control/logic/k;

    invoke-virtual {v8, v3}, Lcom/cmdm/control/logic/k;->w(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :cond_2
    :try_start_1
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cmdm/control/bean/DisplaySettingInfo;

    invoke-virtual {v8}, Lcom/cmdm/control/bean/DisplaySettingInfo;->getSettingContentType()Lcom/cmdm/control/bean/SettingContentType;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cmdm/control/bean/DisplaySettingInfo;

    invoke-virtual {v8}, Lcom/cmdm/control/bean/DisplaySettingInfo;->getSettingContentType()Lcom/cmdm/control/bean/SettingContentType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/cmdm/control/bean/SettingContentType;->getDefaultFlag()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cmdm/control/bean/DisplaySettingInfo;

    invoke-virtual {v8}, Lcom/cmdm/control/bean/DisplaySettingInfo;->getSettingContentType()Lcom/cmdm/control/bean/SettingContentType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/cmdm/control/bean/SettingContentType;->getDefaultFlag()Ljava/lang/String;

    move-result-object v8

    const-string v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v8

    if-eqz v8, :cond_4

    :try_start_2
    new-instance v2, Lcom/cmdm/control/download/b;

    invoke-direct {v2}, Lcom/cmdm/control/download/b;-><init>()V

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cmdm/control/bean/DisplaySettingInfo;

    invoke-virtual {v8}, Lcom/cmdm/control/bean/DisplaySettingInfo;->getSettingContentType()Lcom/cmdm/control/bean/SettingContentType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/cmdm/control/bean/SettingContentType;->getUrl()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cmdm/control/bean/DisplaySettingInfo;

    invoke-virtual {v8}, Lcom/cmdm/control/bean/DisplaySettingInfo;->getSettingContentType()Lcom/cmdm/control/bean/SettingContentType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/cmdm/control/bean/SettingContentType;->getUrl()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cmdm/control/bean/DisplaySettingInfo;

    invoke-virtual {v8}, Lcom/cmdm/control/bean/DisplaySettingInfo;->getSettingContentType()Lcom/cmdm/control/bean/SettingContentType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/cmdm/control/bean/SettingContentType;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/cmdm/control/download/b;->aB(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_4

    new-instance v4, Lcom/cmdm/control/bean/CaiYinShowingObject;

    invoke-direct {v4}, Lcom/cmdm/control/bean/CaiYinShowingObject;-><init>()V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cmdm/control/bean/DisplaySettingInfo;

    invoke-virtual {v8}, Lcom/cmdm/control/bean/DisplaySettingInfo;->getSettingContentType()Lcom/cmdm/control/bean/SettingContentType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/cmdm/control/bean/SettingContentType;->getCid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setCid(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cmdm/control/bean/DisplaySettingInfo;

    invoke-virtual {v8}, Lcom/cmdm/control/bean/DisplaySettingInfo;->getDateType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setDateType(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cmdm/control/bean/DisplaySettingInfo;

    invoke-virtual {v8}, Lcom/cmdm/control/bean/DisplaySettingInfo;->getGreeting()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setGreeting(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/cmdm/control/logic/k$3;->cq:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setMissdn(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/cmdm/control/logic/k$3;->co:Lcom/cmdm/control/logic/k;

    iget-object v8, v8, Lcom/cmdm/control/logic/k;->cj:Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-virtual {v8}, Lcom/cmdm/control/bean/CaiXiangSetting;->getPhone_num()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setUid(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cmdm/control/bean/DisplaySettingInfo;

    invoke-virtual {v8}, Lcom/cmdm/control/bean/DisplaySettingInfo;->getSettingContentType()Lcom/cmdm/control/bean/SettingContentType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/cmdm/control/bean/SettingContentType;->getPosterUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setPosterUrl(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cmdm/control/bean/DisplaySettingInfo;

    invoke-virtual {v8}, Lcom/cmdm/control/bean/DisplaySettingInfo;->getPriority()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setPriority(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cmdm/control/bean/DisplaySettingInfo;

    invoke-virtual {v8}, Lcom/cmdm/control/bean/DisplaySettingInfo;->getSettingEndDate()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setSettingEndDate(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cmdm/control/bean/DisplaySettingInfo;

    invoke-virtual {v8}, Lcom/cmdm/control/bean/DisplaySettingInfo;->getSettingEndTime()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setSettingEndTime(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cmdm/control/bean/DisplaySettingInfo;

    invoke-virtual {v8}, Lcom/cmdm/control/bean/DisplaySettingInfo;->getSettingId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setSettingId(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cmdm/control/bean/DisplaySettingInfo;

    invoke-virtual {v8}, Lcom/cmdm/control/bean/DisplaySettingInfo;->getSettingStartDate()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setSettingStartDate(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cmdm/control/bean/DisplaySettingInfo;

    invoke-virtual {v8}, Lcom/cmdm/control/bean/DisplaySettingInfo;->getSettingStartTime()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setSettingStartTime(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cmdm/control/bean/DisplaySettingInfo;

    invoke-virtual {v8}, Lcom/cmdm/control/bean/DisplaySettingInfo;->getSettingWeek()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setSettingWeek(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cmdm/control/bean/DisplaySettingInfo;

    invoke-virtual {v8}, Lcom/cmdm/control/bean/DisplaySettingInfo;->getTiming()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setTiming(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cmdm/control/bean/DisplaySettingInfo;

    invoke-virtual {v8}, Lcom/cmdm/control/bean/DisplaySettingInfo;->getSettingContentType()Lcom/cmdm/control/bean/SettingContentType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/cmdm/control/bean/SettingContentType;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setUrl(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v8

    goto/16 :goto_1

    :catch_1
    move-exception v8

    goto :goto_2
.end method
