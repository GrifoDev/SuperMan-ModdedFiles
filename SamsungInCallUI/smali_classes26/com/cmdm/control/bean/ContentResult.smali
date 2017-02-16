.class public Lcom/cmdm/control/bean/ContentResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "ContentResult"
.end annotation


# instance fields
.field public contentList:Lcom/cmdm/control/bean/ContentList;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "contentList"
    .end annotation
.end field

.field public offset:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "offset"
    .end annotation
.end field

.field public range:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "range"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/cmdm/control/bean/ContentList;

    invoke-direct {v0}, Lcom/cmdm/control/bean/ContentList;-><init>()V

    iput-object v0, p0, Lcom/cmdm/control/bean/ContentResult;->contentList:Lcom/cmdm/control/bean/ContentList;

    .line 23
    return-void
.end method


# virtual methods
.method public getContentList()Lcom/cmdm/control/bean/ContentList;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/cmdm/control/bean/ContentResult;->contentList:Lcom/cmdm/control/bean/ContentList;

    return-object v0
.end method

.method public getOffset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/cmdm/control/bean/ContentResult;->offset:Ljava/lang/String;

    return-object v0
.end method

.method public getRange()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/cmdm/control/bean/ContentResult;->range:Ljava/lang/String;

    return-object v0
.end method

.method public setContentList(Lcom/cmdm/control/bean/ContentList;)V
    .locals 0
    .param p1, "contentList"    # Lcom/cmdm/control/bean/ContentList;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/cmdm/control/bean/ContentResult;->contentList:Lcom/cmdm/control/bean/ContentList;

    .line 62
    return-void
.end method

.method public setOffset(Ljava/lang/String;)V
    .locals 0
    .param p1, "offset"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/cmdm/control/bean/ContentResult;->offset:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setRange(Ljava/lang/String;)V
    .locals 0
    .param p1, "range"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/cmdm/control/bean/ContentResult;->range:Ljava/lang/String;

    .line 85
    return-void
.end method
