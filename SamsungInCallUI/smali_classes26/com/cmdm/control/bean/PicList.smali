.class public Lcom/cmdm/control/bean/PicList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "picList"
.end annotation


# instance fields
.field public picList:Ljava/util/ArrayList;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamImplicit;
        itemFieldName = "crsProfile"
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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPicList()Ljava/util/ArrayList;
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

    iget-object v0, p0, Lcom/cmdm/control/bean/PicList;->picList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setPicList(Ljava/util/ArrayList;)V
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

    iput-object p1, p0, Lcom/cmdm/control/bean/PicList;->picList:Ljava/util/ArrayList;

    return-void
.end method
