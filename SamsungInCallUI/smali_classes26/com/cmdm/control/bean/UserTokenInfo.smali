.class public Lcom/cmdm/control/bean/UserTokenInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "UserTokenInfo"
.end annotation


# instance fields
.field public acessToken:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "acessToken"
    .end annotation
.end field

.field public andid:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "andid"
    .end annotation
.end field

.field public email:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "email"
    .end annotation
.end field

.field public loginidtype:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "loginidtype"
    .end annotation
.end field

.field public msisdn:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "msisdn"
    .end annotation
.end field

.field public passid:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "passid"
    .end annotation
.end field

.field public usessionid:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "usessionid"
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
.method public getAcessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/cmdm/control/bean/UserTokenInfo;->acessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getAndid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/cmdm/control/bean/UserTokenInfo;->andid:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/cmdm/control/bean/UserTokenInfo;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginidtype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/cmdm/control/bean/UserTokenInfo;->loginidtype:Ljava/lang/String;

    return-object v0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/cmdm/control/bean/UserTokenInfo;->msisdn:Ljava/lang/String;

    return-object v0
.end method

.method public getPassid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/cmdm/control/bean/UserTokenInfo;->passid:Ljava/lang/String;

    return-object v0
.end method

.method public getUsessionid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/cmdm/control/bean/UserTokenInfo;->usessionid:Ljava/lang/String;

    return-object v0
.end method

.method public setAcessToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "acessToken"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/cmdm/control/bean/UserTokenInfo;->acessToken:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setAndid(Ljava/lang/String;)V
    .locals 0
    .param p1, "andid"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/cmdm/control/bean/UserTokenInfo;->andid:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/cmdm/control/bean/UserTokenInfo;->email:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setLoginidtype(Ljava/lang/String;)V
    .locals 0
    .param p1, "loginidtype"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/cmdm/control/bean/UserTokenInfo;->loginidtype:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setMsisdn(Ljava/lang/String;)V
    .locals 0
    .param p1, "msisdn"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/cmdm/control/bean/UserTokenInfo;->msisdn:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setPassid(Ljava/lang/String;)V
    .locals 0
    .param p1, "passid"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/cmdm/control/bean/UserTokenInfo;->passid:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setUsessionid(Ljava/lang/String;)V
    .locals 0
    .param p1, "usessionid"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/cmdm/control/bean/UserTokenInfo;->usessionid:Ljava/lang/String;

    .line 81
    return-void
.end method
