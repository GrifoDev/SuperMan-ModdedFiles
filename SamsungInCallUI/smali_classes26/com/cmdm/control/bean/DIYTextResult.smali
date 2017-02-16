.class public Lcom/cmdm/control/bean/DIYTextResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "DiyResult"
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

.field public textDiy:Lcom/cmdm/control/bean/TextDiy;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "textDiy"
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
    .line 45
    iget-object v0, p0, Lcom/cmdm/control/bean/DIYTextResult;->resultCode:Ljava/lang/String;

    return-object v0
.end method

.method public getResultText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/cmdm/control/bean/DIYTextResult;->resultText:Ljava/lang/String;

    return-object v0
.end method

.method public getTextDiy()Lcom/cmdm/control/bean/TextDiy;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cmdm/control/bean/DIYTextResult;->textDiy:Lcom/cmdm/control/bean/TextDiy;

    return-object v0
.end method

.method public setResultCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "resultCode"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/cmdm/control/bean/DIYTextResult;->resultCode:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setResultText(Ljava/lang/String;)V
    .locals 0
    .param p1, "resultText"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/cmdm/control/bean/DIYTextResult;->resultText:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setTextDiy(Lcom/cmdm/control/bean/TextDiy;)V
    .locals 0
    .param p1, "textDiy"    # Lcom/cmdm/control/bean/TextDiy;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/cmdm/control/bean/DIYTextResult;->textDiy:Lcom/cmdm/control/bean/TextDiy;

    .line 81
    return-void
.end method
