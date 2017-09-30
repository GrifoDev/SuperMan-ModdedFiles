.class public Lcom/cmdm/control/bean/SubjectResult;
.super Ljava/lang/Object;


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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/cmdm/control/bean/SubjectList;

    invoke-direct {v0}, Lcom/cmdm/control/bean/SubjectList;-><init>()V

    iput-object v0, p0, Lcom/cmdm/control/bean/SubjectResult;->subjectList:Lcom/cmdm/control/bean/SubjectList;

    return-void
.end method


# virtual methods
.method public getOffset()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/SubjectResult;->offset:Ljava/lang/String;

    return-object v0
.end method

.method public getRange()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/SubjectResult;->range:Ljava/lang/String;

    return-object v0
.end method

.method public getSubjectList()Lcom/cmdm/control/bean/SubjectList;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/SubjectResult;->subjectList:Lcom/cmdm/control/bean/SubjectList;

    return-object v0
.end method

.method public setOffset(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/SubjectResult;->offset:Ljava/lang/String;

    return-void
.end method

.method public setRange(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/SubjectResult;->range:Ljava/lang/String;

    return-void
.end method

.method public setSubjectList(Lcom/cmdm/control/bean/SubjectList;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/SubjectResult;->subjectList:Lcom/cmdm/control/bean/SubjectList;

    return-void
.end method
