.class public Lcom/cmdm/control/bean/PicLable;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "PicLable"
.end annotation


# instance fields
.field public isSelect:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "isSelect"
    .end annotation
.end field

.field public lableDec:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "lableDec"
    .end annotation
.end field

.field public lableId:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "lableId"
    .end annotation
.end field

.field public lableUrl:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "lableUrl"
    .end annotation
.end field

.field public previewList:Lcom/cmdm/control/bean/PreviewList;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "previewList"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSelectStatus()Z
    .locals 2

    iget-object v0, p0, Lcom/cmdm/control/bean/PicLable;->isSelect:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/bean/PicLable;->isSelect:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/bean/PicLable;->isSelect:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSelectStatus(Ljava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    iput-object v0, p0, Lcom/cmdm/control/bean/PicLable;->isSelect:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string v0, "0"

    iput-object v0, p0, Lcom/cmdm/control/bean/PicLable;->isSelect:Ljava/lang/String;

    goto :goto_0
.end method
