.class public Lcom/cmdm/control/bean/GainIntegralLogResult;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGainIntegralLogList()Lcom/cmdm/control/bean/GainIntegralLogList;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/cmdm/control/bean/GainIntegralLogResult;->gainIntegralLogList:Lcom/cmdm/control/bean/GainIntegralLogList;

    return-object v0
.end method

.method public getPageNum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/cmdm/control/bean/GainIntegralLogResult;->pageNum:Ljava/lang/String;

    return-object v0
.end method

.method public getPageSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/cmdm/control/bean/GainIntegralLogResult;->pageSize:Ljava/lang/String;

    return-object v0
.end method

.method public setGainIntegralLogList(Lcom/cmdm/control/bean/GainIntegralLogList;)V
    .locals 0
    .param p1, "gainIntegralLogList"    # Lcom/cmdm/control/bean/GainIntegralLogList;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/cmdm/control/bean/GainIntegralLogResult;->gainIntegralLogList:Lcom/cmdm/control/bean/GainIntegralLogList;

    .line 50
    return-void
.end method

.method public setPageNum(Ljava/lang/String;)V
    .locals 0
    .param p1, "pageNum"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/cmdm/control/bean/GainIntegralLogResult;->pageNum:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setPageSize(Ljava/lang/String;)V
    .locals 0
    .param p1, "pageSize"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/cmdm/control/bean/GainIntegralLogResult;->pageSize:Ljava/lang/String;

    .line 66
    return-void
.end method
