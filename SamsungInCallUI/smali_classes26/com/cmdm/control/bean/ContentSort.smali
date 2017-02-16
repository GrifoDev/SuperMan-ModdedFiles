.class public Lcom/cmdm/control/bean/ContentSort;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmdm/control/bean/ContentSort;->Z:Z

    .line 25
    return-void
.end method


# virtual methods
.method public getContentCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/cmdm/control/bean/ContentSort;->contentCount:Ljava/lang/String;

    return-object v0
.end method

.method public getExistSubSort()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/cmdm/control/bean/ContentSort;->existSubSort:Ljava/lang/String;

    return-object v0
.end method

.method public getSortDec()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/cmdm/control/bean/ContentSort;->sortDec:Ljava/lang/String;

    return-object v0
.end method

.method public getSortId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/cmdm/control/bean/ContentSort;->sortId:Ljava/lang/String;

    return-object v0
.end method

.method public getSortImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/cmdm/control/bean/ContentSort;->sortImage:Ljava/lang/String;

    return-object v0
.end method

.method public getSortName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/cmdm/control/bean/ContentSort;->sortName:Ljava/lang/String;

    return-object v0
.end method

.method public getSubContentSortList()Lcom/cmdm/control/bean/SubContentSortList;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/cmdm/control/bean/ContentSort;->subContentSortList:Lcom/cmdm/control/bean/SubContentSortList;

    return-object v0
.end method

.method public isSelect()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/cmdm/control/bean/ContentSort;->Z:Z

    return v0
.end method

.method public setContentCount(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentCount"    # Ljava/lang/String;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/cmdm/control/bean/ContentSort;->contentCount:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public setExistSubSort(Ljava/lang/String;)V
    .locals 0
    .param p1, "existSubSort"    # Ljava/lang/String;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/cmdm/control/bean/ContentSort;->existSubSort:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setSelect(Z)V
    .locals 0
    .param p1, "isSelect"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/cmdm/control/bean/ContentSort;->Z:Z

    .line 88
    return-void
.end method

.method public setSortDec(Ljava/lang/String;)V
    .locals 0
    .param p1, "sortDec"    # Ljava/lang/String;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/cmdm/control/bean/ContentSort;->sortDec:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public setSortId(Ljava/lang/String;)V
    .locals 0
    .param p1, "sortId"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/cmdm/control/bean/ContentSort;->sortId:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setSortImage(Ljava/lang/String;)V
    .locals 0
    .param p1, "sortImage"    # Ljava/lang/String;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/cmdm/control/bean/ContentSort;->sortImage:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public setSortName(Ljava/lang/String;)V
    .locals 0
    .param p1, "sortName"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/cmdm/control/bean/ContentSort;->sortName:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setSubContentSortList(Lcom/cmdm/control/bean/SubContentSortList;)V
    .locals 0
    .param p1, "subContentSortList"    # Lcom/cmdm/control/bean/SubContentSortList;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/cmdm/control/bean/ContentSort;->subContentSortList:Lcom/cmdm/control/bean/SubContentSortList;

    .line 193
    return-void
.end method
