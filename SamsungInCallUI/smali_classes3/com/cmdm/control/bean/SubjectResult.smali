.class public Lcom/cmdm/control/bean/SubjectResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "SubjectResult"
.end annotation


# instance fields
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

.field public subjectList:Lcom/cmdm/control/bean/SubjectList;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "subjectList"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/cmdm/control/bean/SubjectList;

    invoke-direct {v0}, Lcom/cmdm/control/bean/SubjectList;-><init>()V

    iput-object v0, p0, Lcom/cmdm/control/bean/SubjectResult;->subjectList:Lcom/cmdm/control/bean/SubjectList;

    .line 23
    return-void
.end method


# virtual methods
.method public getOffset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/cmdm/control/bean/SubjectResult;->offset:Ljava/lang/String;

    return-object v0
.end method

.method public getRange()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/cmdm/control/bean/SubjectResult;->range:Ljava/lang/String;

    return-object v0
.end method

.method public getSubjectList()Lcom/cmdm/control/bean/SubjectList;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/cmdm/control/bean/SubjectResult;->subjectList:Lcom/cmdm/control/bean/SubjectList;

    return-object v0
.end method

.method public setOffset(Ljava/lang/String;)V
    .locals 0
    .param p1, "offset"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/cmdm/control/bean/SubjectResult;->offset:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setRange(Ljava/lang/String;)V
    .locals 0
    .param p1, "range"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/cmdm/control/bean/SubjectResult;->range:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setSubjectList(Lcom/cmdm/control/bean/SubjectList;)V
    .locals 0
    .param p1, "subjectList"    # Lcom/cmdm/control/bean/SubjectList;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/cmdm/control/bean/SubjectResult;->subjectList:Lcom/cmdm/control/bean/SubjectList;

    .line 84
    return-void
.end method
