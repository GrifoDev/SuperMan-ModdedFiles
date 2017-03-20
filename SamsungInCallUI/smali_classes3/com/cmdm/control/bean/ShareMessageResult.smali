.class public Lcom/cmdm/control/bean/ShareMessageResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "ShareMessageResult"
.end annotation


# instance fields
.field public resultCode:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "resultCode"
    .end annotation
.end field

.field public resultText:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "resultText"
    .end annotation
.end field

.field public shareMessage:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "shareMessage"
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
.method public getResultCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/cmdm/control/bean/ShareMessageResult;->resultCode:Ljava/lang/String;

    return-object v0
.end method

.method public getResultText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/cmdm/control/bean/ShareMessageResult;->resultText:Ljava/lang/String;

    return-object v0
.end method

.method public getShareMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/cmdm/control/bean/ShareMessageResult;->shareMessage:Ljava/lang/String;

    return-object v0
.end method

.method public setResultCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "resultCode"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/cmdm/control/bean/ShareMessageResult;->resultCode:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setResultText(Ljava/lang/String;)V
    .locals 0
    .param p1, "resultText"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/cmdm/control/bean/ShareMessageResult;->resultText:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setShareMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "shareMessage"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/cmdm/control/bean/ShareMessageResult;->shareMessage:Ljava/lang/String;

    .line 48
    return-void
.end method
