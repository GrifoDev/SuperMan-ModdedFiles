.class public Lcom/cmdm/control/bean/AddContactResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "AddContactResult"
.end annotation


# instance fields
.field public errorMobile:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "errorMobile"
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
.method public getErrorMobile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cmdm/control/bean/AddContactResult;->errorMobile:Ljava/lang/String;

    return-object v0
.end method

.method public getResultCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/cmdm/control/bean/AddContactResult;->resultCode:Ljava/lang/String;

    return-object v0
.end method

.method public getResultText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/cmdm/control/bean/AddContactResult;->resultText:Ljava/lang/String;

    return-object v0
.end method

.method public setErrorMobile(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorMobile"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/cmdm/control/bean/AddContactResult;->errorMobile:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setResultCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "resultCode"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/cmdm/control/bean/AddContactResult;->resultCode:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setResultText(Ljava/lang/String;)V
    .locals 0
    .param p1, "resultText"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/cmdm/control/bean/AddContactResult;->resultText:Ljava/lang/String;

    .line 67
    return-void
.end method
