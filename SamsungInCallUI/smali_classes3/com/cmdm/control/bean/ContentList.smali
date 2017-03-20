.class public Lcom/cmdm/control/bean/ContentList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "ContentList"
.end annotation


# instance fields
.field public contentList:Ljava/util/ArrayList;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamImplicit;
        itemFieldName = "content"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/Content;",
            ">;"
        }
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
.method public getContentList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/Content;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/cmdm/control/bean/ContentList;->contentList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setContentList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/Content;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "contentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/Content;>;"
    iput-object p1, p0, Lcom/cmdm/control/bean/ContentList;->contentList:Ljava/util/ArrayList;

    .line 43
    return-void
.end method
