.class public Lcom/cmdm/control/bean/ContentBuyStatusResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "ContentBuyStatusResult"
.end annotation


# instance fields
.field public contentStatus:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "contentStatus"
    .end annotation
.end field

.field public isOverFee:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "isOverFee"
    .end annotation
.end field

.field public quotaDes:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "quotaDes"
    .end annotation
.end field

.field public resultText:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "resultText"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/cmdm/control/bean/ContentBuyStatusResult;->contentStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getResultText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/cmdm/control/bean/ContentBuyStatusResult;->resultText:Ljava/lang/String;

    return-object v0
.end method

.method public setContentStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentStatus"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/cmdm/control/bean/ContentBuyStatusResult;->contentStatus:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setResultText(Ljava/lang/String;)V
    .locals 0
    .param p1, "resultText"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/cmdm/control/bean/ContentBuyStatusResult;->resultText:Ljava/lang/String;

    .line 51
    return-void
.end method
