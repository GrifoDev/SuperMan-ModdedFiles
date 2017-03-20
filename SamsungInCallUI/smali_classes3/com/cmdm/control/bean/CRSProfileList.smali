.class public Lcom/cmdm/control/bean/CRSProfileList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "CRSProfileList"
.end annotation


# instance fields
.field public crsProfileList:Ljava/util/ArrayList;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamImplicit;
        itemFieldName = "CRSProfile"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/CRSProfile;",
            ">;"
        }
    .end annotation
.end field

.field public listFlag:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "listFlag"
    .end annotation
.end field

.field public offset:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAsAttribute;
    .end annotation
.end field

.field public range:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAsAttribute;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCrsProfileList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/CRSProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/cmdm/control/bean/CRSProfileList;->crsProfileList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getListFlag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/cmdm/control/bean/CRSProfileList;->listFlag:Ljava/lang/String;

    return-object v0
.end method

.method public getOffset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/cmdm/control/bean/CRSProfileList;->offset:Ljava/lang/String;

    return-object v0
.end method

.method public getRange()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/cmdm/control/bean/CRSProfileList;->range:Ljava/lang/String;

    return-object v0
.end method

.method public setCrsProfileList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/CRSProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "crsProfileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/CRSProfile;>;"
    iput-object p1, p0, Lcom/cmdm/control/bean/CRSProfileList;->crsProfileList:Ljava/util/ArrayList;

    .line 64
    return-void
.end method

.method public setListFlag(Ljava/lang/String;)V
    .locals 0
    .param p1, "listFlag"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/cmdm/control/bean/CRSProfileList;->listFlag:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setOffset(Ljava/lang/String;)V
    .locals 0
    .param p1, "offset"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/cmdm/control/bean/CRSProfileList;->offset:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setRange(Ljava/lang/String;)V
    .locals 0
    .param p1, "range"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/cmdm/control/bean/CRSProfileList;->range:Ljava/lang/String;

    .line 94
    return-void
.end method
