.class public Lcom/cmdm/control/bean/VedioDiyResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "VedioDiyResult"
.end annotation


# instance fields
.field public code:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "code"
    .end annotation
.end field

.field public myDiyVideo:Lcom/cmdm/control/bean/MyDiyVideo;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "myDiyVideo"
    .end annotation
.end field

.field public text:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "text"
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
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/cmdm/control/bean/VedioDiyResult;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getMyDiyVideo()Lcom/cmdm/control/bean/MyDiyVideo;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/cmdm/control/bean/VedioDiyResult;->myDiyVideo:Lcom/cmdm/control/bean/MyDiyVideo;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/cmdm/control/bean/VedioDiyResult;->text:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/cmdm/control/bean/VedioDiyResult;->code:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setMyDiyVideo(Lcom/cmdm/control/bean/MyDiyVideo;)V
    .locals 0
    .param p1, "myDiyVideo"    # Lcom/cmdm/control/bean/MyDiyVideo;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/cmdm/control/bean/VedioDiyResult;->myDiyVideo:Lcom/cmdm/control/bean/MyDiyVideo;

    .line 57
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/cmdm/control/bean/VedioDiyResult;->text:Ljava/lang/String;

    .line 49
    return-void
.end method
