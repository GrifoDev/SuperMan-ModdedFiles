.class public Lcom/cmdm/control/bean/SubContentSort;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "SubContentSort"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x718255447738e1a1L


# instance fields
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/cmdm/control/bean/SubContentSort;->contentCount:Ljava/lang/String;

    return-object v0
.end method

.method public getExistSubSort()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/cmdm/control/bean/SubContentSort;->existSubSort:Ljava/lang/String;

    return-object v0
.end method

.method public getSortDec()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/cmdm/control/bean/SubContentSort;->sortDec:Ljava/lang/String;

    return-object v0
.end method

.method public getSortId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cmdm/control/bean/SubContentSort;->sortId:Ljava/lang/String;

    return-object v0
.end method

.method public getSortImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/cmdm/control/bean/SubContentSort;->sortImage:Ljava/lang/String;

    return-object v0
.end method

.method public getSortName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/cmdm/control/bean/SubContentSort;->sortName:Ljava/lang/String;

    return-object v0
.end method

.method public setContentCount(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentCount"    # Ljava/lang/String;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/cmdm/control/bean/SubContentSort;->contentCount:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setExistSubSort(Ljava/lang/String;)V
    .locals 0
    .param p1, "existSubSort"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/cmdm/control/bean/SubContentSort;->existSubSort:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setSortDec(Ljava/lang/String;)V
    .locals 0
    .param p1, "sortDec"    # Ljava/lang/String;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/cmdm/control/bean/SubContentSort;->sortDec:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setSortId(Ljava/lang/String;)V
    .locals 0
    .param p1, "sortId"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/cmdm/control/bean/SubContentSort;->sortId:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setSortImage(Ljava/lang/String;)V
    .locals 0
    .param p1, "sortImage"    # Ljava/lang/String;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/cmdm/control/bean/SubContentSort;->sortImage:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public setSortName(Ljava/lang/String;)V
    .locals 0
    .param p1, "sortName"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/cmdm/control/bean/SubContentSort;->sortName:Ljava/lang/String;

    .line 97
    return-void
.end method
