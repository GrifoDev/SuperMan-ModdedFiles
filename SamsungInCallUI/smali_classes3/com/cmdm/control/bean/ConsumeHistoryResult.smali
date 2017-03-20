.class public Lcom/cmdm/control/bean/ConsumeHistoryResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "ConsumeHistoryResult"
.end annotation


# instance fields
.field public consumeHistoryList:Lcom/cmdm/control/bean/ConsumeHistoryList;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "consumeHistoryList"
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
.method public getConsumeHistoryList()Lcom/cmdm/control/bean/ConsumeHistoryList;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/cmdm/control/bean/ConsumeHistoryResult;->consumeHistoryList:Lcom/cmdm/control/bean/ConsumeHistoryList;

    return-object v0
.end method

.method public getPageNum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/cmdm/control/bean/ConsumeHistoryResult;->pageNum:Ljava/lang/String;

    return-object v0
.end method

.method public getPageSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/cmdm/control/bean/ConsumeHistoryResult;->pageSize:Ljava/lang/String;

    return-object v0
.end method

.method public setConsumeHistoryList(Lcom/cmdm/control/bean/ConsumeHistoryList;)V
    .locals 0
    .param p1, "consumeHistoryList"    # Lcom/cmdm/control/bean/ConsumeHistoryList;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/cmdm/control/bean/ConsumeHistoryResult;->consumeHistoryList:Lcom/cmdm/control/bean/ConsumeHistoryList;

    .line 53
    return-void
.end method

.method public setPageNum(Ljava/lang/String;)V
    .locals 0
    .param p1, "pageNum"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/cmdm/control/bean/ConsumeHistoryResult;->pageNum:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setPageSize(Ljava/lang/String;)V
    .locals 0
    .param p1, "pageSize"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/cmdm/control/bean/ConsumeHistoryResult;->pageSize:Ljava/lang/String;

    .line 69
    return-void
.end method
