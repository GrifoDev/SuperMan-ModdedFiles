.class public Lcom/cmdm/control/bean/GainIntegralLogResult;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "GainIntegralLogResult"
.end annotation


# instance fields
.field public gainIntegralLogList:Lcom/cmdm/control/bean/GainIntegralLogList;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "gainIntegralLogList"
    .end annotation
.end field

.field public pageNum:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "pageNum"
    .end annotation
.end field

.field public pageSize:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "pageSize"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGainIntegralLogList()Lcom/cmdm/control/bean/GainIntegralLogList;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/GainIntegralLogResult;->gainIntegralLogList:Lcom/cmdm/control/bean/GainIntegralLogList;

    return-object v0
.end method

.method public getPageNum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/GainIntegralLogResult;->pageNum:Ljava/lang/String;

    return-object v0
.end method

.method public getPageSize()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/GainIntegralLogResult;->pageSize:Ljava/lang/String;

    return-object v0
.end method

.method public setGainIntegralLogList(Lcom/cmdm/control/bean/GainIntegralLogList;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/GainIntegralLogResult;->gainIntegralLogList:Lcom/cmdm/control/bean/GainIntegralLogList;

    return-void
.end method

.method public setPageNum(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/GainIntegralLogResult;->pageNum:Ljava/lang/String;

    return-void
.end method

.method public setPageSize(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/GainIntegralLogResult;->pageSize:Ljava/lang/String;

    return-void
.end method
