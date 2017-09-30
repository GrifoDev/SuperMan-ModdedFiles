.class public Lcom/cmdm/control/bean/DIYTextResult;
.super Ljava/lang/Object;


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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResultCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/DIYTextResult;->resultCode:Ljava/lang/String;

    return-object v0
.end method

.method public getResultText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/DIYTextResult;->resultText:Ljava/lang/String;

    return-object v0
.end method

.method public getTextDiy()Lcom/cmdm/control/bean/TextDiy;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/DIYTextResult;->textDiy:Lcom/cmdm/control/bean/TextDiy;

    return-object v0
.end method

.method public setResultCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/DIYTextResult;->resultCode:Ljava/lang/String;

    return-void
.end method

.method public setResultText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/DIYTextResult;->resultText:Ljava/lang/String;

    return-void
.end method

.method public setTextDiy(Lcom/cmdm/control/bean/TextDiy;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/DIYTextResult;->textDiy:Lcom/cmdm/control/bean/TextDiy;

    return-void
.end method
