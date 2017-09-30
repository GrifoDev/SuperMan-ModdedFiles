.class public Lcom/cmdm/control/bean/SubjectList;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "SubjectList"
.end annotation


# instance fields
.field public subjectList:Ljava/util/ArrayList;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamImplicit;
        itemFieldName = "subject"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/Subject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSubjectList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/Subject;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/bean/SubjectList;->subjectList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setSubjectList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/Subject;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cmdm/control/bean/SubjectList;->subjectList:Ljava/util/ArrayList;

    return-void
.end method
