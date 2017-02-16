.class public Lcom/cmdm/control/bean/TextDiy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "TextDiy"
.end annotation


# instance fields
.field public content:Lcom/cmdm/control/bean/Content;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "content"
    .end annotation
.end field

.field public diyDate:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "diyDate"
    .end annotation
.end field

.field public diyPrice:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "diyPrice"
    .end annotation
.end field

.field public diyStatus:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "diyStatus"
    .end annotation
.end field

.field public diyTextId:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "diyTextId"
    .end annotation
.end field

.field public isChecked:Z

.field public isExpand:Z

.field public isOpen:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "isOpen"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Lcom/cmdm/control/bean/Content;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/cmdm/control/bean/TextDiy;->content:Lcom/cmdm/control/bean/Content;

    return-object v0
.end method

.method public getDiyDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/cmdm/control/bean/TextDiy;->diyDate:Ljava/lang/String;

    return-object v0
.end method

.method public getDiyPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/cmdm/control/bean/TextDiy;->diyPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getDiyStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/cmdm/control/bean/TextDiy;->diyStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getDiyTextId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/cmdm/control/bean/TextDiy;->diyTextId:Ljava/lang/String;

    return-object v0
.end method

.method public getIsOpen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/cmdm/control/bean/TextDiy;->isOpen:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Lcom/cmdm/control/bean/Content;)V
    .locals 0
    .param p1, "content"    # Lcom/cmdm/control/bean/Content;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/cmdm/control/bean/TextDiy;->content:Lcom/cmdm/control/bean/Content;

    .line 146
    return-void
.end method

.method public setDiyDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "diyDate"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/cmdm/control/bean/TextDiy;->diyDate:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setDiyPrice(Ljava/lang/String;)V
    .locals 0
    .param p1, "diyPrice"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/cmdm/control/bean/TextDiy;->diyPrice:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setDiyStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "diyStatus"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/cmdm/control/bean/TextDiy;->diyStatus:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setDiyTextId(Ljava/lang/String;)V
    .locals 0
    .param p1, "diyTextId"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/cmdm/control/bean/TextDiy;->diyTextId:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setIsOpen(Ljava/lang/String;)V
    .locals 0
    .param p1, "isOpen"    # Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/cmdm/control/bean/TextDiy;->isOpen:Ljava/lang/String;

    .line 132
    return-void
.end method
