.class public Lcom/cmdm/control/bean/ContentSortResult;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "ContentSortResult"
.end annotation


# instance fields
.field public contentSortList:Lcom/cmdm/control/bean/ContentSortList;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "contentSortList"
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
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOffset()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/ContentSortResult;->offset:Ljava/lang/String;

    return-object v0
.end method

.method public getRange()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/ContentSortResult;->range:Ljava/lang/String;

    return-object v0
.end method

.method public getmContentSortTypeList()Lcom/cmdm/control/bean/ContentSortList;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/ContentSortResult;->contentSortList:Lcom/cmdm/control/bean/ContentSortList;

    return-object v0
.end method

.method public setOffset(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/ContentSortResult;->offset:Ljava/lang/String;

    return-void
.end method

.method public setRange(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/ContentSortResult;->range:Ljava/lang/String;

    return-void
.end method

.method public setmContentSortTypeList(Lcom/cmdm/control/bean/ContentSortList;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/ContentSortResult;->contentSortList:Lcom/cmdm/control/bean/ContentSortList;

    return-void
.end method
