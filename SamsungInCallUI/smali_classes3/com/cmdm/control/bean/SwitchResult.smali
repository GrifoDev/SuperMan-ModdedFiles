.class public Lcom/cmdm/control/bean/SwitchResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "SwitchResult"
.end annotation


# instance fields
.field public contentSwitch:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "contentSwitch"
    .end annotation
.end field

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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentSwitch()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/cmdm/control/bean/SwitchResult;->contentSwitch:Ljava/lang/String;

    return-object v0
.end method

.method public getResultCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/cmdm/control/bean/SwitchResult;->resultCode:Ljava/lang/String;

    return-object v0
.end method

.method public getResultText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/cmdm/control/bean/SwitchResult;->resultText:Ljava/lang/String;

    return-object v0
.end method

.method public setContentSwitch(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentSwitch"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/cmdm/control/bean/SwitchResult;->contentSwitch:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setResultCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "resultCode"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/cmdm/control/bean/SwitchResult;->resultCode:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setResultText(Ljava/lang/String;)V
    .locals 0
    .param p1, "resultText"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/cmdm/control/bean/SwitchResult;->resultText:Ljava/lang/String;

    .line 68
    return-void
.end method
