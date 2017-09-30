.class public Lcom/cmdm/control/bean/ContentSort;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "ContentSort"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x24c2b0cf0f3186c6L


# instance fields
.field private Z:Z

.field public contentCount:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "contentCount"
    .end annotation
.end field

.field public existSubSort:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "existSubSort"
    .end annotation
.end field

.field public sortDec:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "sortDec"
    .end annotation
.end field

.field public sortId:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "sortId"
    .end annotation
.end field

.field public sortImage:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "sortImage"
    .end annotation
.end field

.field public sortName:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "sortName"
    .end annotation
.end field

.field public subContentSortList:Lcom/cmdm/control/bean/SubContentSortList;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "subContentSortList"
    .end annotation
.end field

.field public subTagList:Lcom/cmdm/control/bean/SubTagList;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "subTagList"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmdm/control/bean/ContentSort;->Z:Z

    return-void
.end method


# virtual methods
.method public getContentCount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/ContentSort;->contentCount:Ljava/lang/String;

    return-object v0
.end method

.method public getExistSubSort()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/ContentSort;->existSubSort:Ljava/lang/String;

    return-object v0
.end method

.method public getSortDec()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/ContentSort;->sortDec:Ljava/lang/String;

    return-object v0
.end method

.method public getSortId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/ContentSort;->sortId:Ljava/lang/String;

    return-object v0
.end method

.method public getSortImage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/ContentSort;->sortImage:Ljava/lang/String;

    return-object v0
.end method

.method public getSortName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/ContentSort;->sortName:Ljava/lang/String;

    return-object v0
.end method

.method public getSubContentSortList()Lcom/cmdm/control/bean/SubContentSortList;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/ContentSort;->subContentSortList:Lcom/cmdm/control/bean/SubContentSortList;

    return-object v0
.end method

.method public isSelect()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cmdm/control/bean/ContentSort;->Z:Z

    return v0
.end method

.method public setContentCount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/ContentSort;->contentCount:Ljava/lang/String;

    return-void
.end method

.method public setExistSubSort(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/ContentSort;->existSubSort:Ljava/lang/String;

    return-void
.end method

.method public setSelect(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cmdm/control/bean/ContentSort;->Z:Z

    return-void
.end method

.method public setSortDec(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/ContentSort;->sortDec:Ljava/lang/String;

    return-void
.end method

.method public setSortId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/ContentSort;->sortId:Ljava/lang/String;

    return-void
.end method

.method public setSortImage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/ContentSort;->sortImage:Ljava/lang/String;

    return-void
.end method

.method public setSortName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/ContentSort;->sortName:Ljava/lang/String;

    return-void
.end method

.method public setSubContentSortList(Lcom/cmdm/control/bean/SubContentSortList;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/ContentSort;->subContentSortList:Lcom/cmdm/control/bean/SubContentSortList;

    return-void
.end method
