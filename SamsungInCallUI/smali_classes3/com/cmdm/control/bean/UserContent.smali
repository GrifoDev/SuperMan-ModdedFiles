.class public Lcom/cmdm/control/bean/UserContent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "userContent"
.end annotation


# instance fields
.field public userMobile:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "userMobile"
    .end annotation
.end field

.field public userName:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "userName"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/cmdm/control/bean/UserContent;->userName:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public getUserMobile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/cmdm/control/bean/UserContent;->userMobile:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/cmdm/control/bean/UserContent;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public setUserMobile(Ljava/lang/String;)V
    .locals 0
    .param p1, "userMobile"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/cmdm/control/bean/UserContent;->userMobile:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 1
    .param p1, "userName"    # Ljava/lang/String;

    .prologue
    .line 48
    if-nez p1, :cond_0

    .line 49
    const-string p1, ""

    .line 51
    :cond_0
    invoke-static {p1}, Lcom/cmdm/control/util/client/Setting;->getSpecialString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmdm/control/util/encry/Base64Code;->encodedBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmdm/control/bean/UserContent;->userName:Ljava/lang/String;

    .line 52
    return-void
.end method
