.class public Lcom/cmdm/control/bean/SubContentSortList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "SubContentSortList"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x70009c6e93b2262dL


# instance fields
.field public contentSortList:Ljava/util/ArrayList;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamImplicit;
        itemFieldName = "contentSort"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/SubContentSort;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentSortList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/SubContentSort;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/cmdm/control/bean/SubContentSortList;->contentSortList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setContentSortList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/SubContentSort;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "contentSortList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/SubContentSort;>;"
    iput-object p1, p0, Lcom/cmdm/control/bean/SubContentSortList;->contentSortList:Ljava/util/ArrayList;

    .line 50
    return-void
.end method
