.class public Lcom/cmdm/control/bean/NewCRSProfileList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "CrsProfileList"
.end annotation


# instance fields
.field public offset:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "offset"
    .end annotation
.end field

.field public picList:Lcom/cmdm/control/bean/PicList;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "picList"
    .end annotation
.end field

.field public range:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "range"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/cmdm/control/bean/PicList;

    invoke-direct {v0}, Lcom/cmdm/control/bean/PicList;-><init>()V

    iput-object v0, p0, Lcom/cmdm/control/bean/NewCRSProfileList;->picList:Lcom/cmdm/control/bean/PicList;

    return-void
.end method


# virtual methods
.method public getOffset()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/NewCRSProfileList;->offset:Ljava/lang/String;

    return-object v0
.end method

.method public getPicList()Lcom/cmdm/control/bean/PicList;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/NewCRSProfileList;->picList:Lcom/cmdm/control/bean/PicList;

    return-object v0
.end method

.method public getRange()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/NewCRSProfileList;->range:Ljava/lang/String;

    return-object v0
.end method

.method public setOffset(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/NewCRSProfileList;->offset:Ljava/lang/String;

    return-void
.end method

.method public setPicList(Lcom/cmdm/control/bean/PicList;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/NewCRSProfileList;->picList:Lcom/cmdm/control/bean/PicList;

    return-void
.end method

.method public setRange(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/NewCRSProfileList;->range:Ljava/lang/String;

    return-void
.end method
