.class public Lcom/cmdm/control/bean/BlacklistInfo;
.super Ljava/lang/Object;


# instance fields
.field private h:Ljava/lang/Boolean;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/cmdm/control/bean/BlacklistInfo;->h:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public getBlacklistname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/BlacklistInfo;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getBlacklistnum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/BlacklistInfo;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getIsCheck()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/BlacklistInfo;->h:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/BlacklistInfo;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setBlacklistname(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/BlacklistInfo;->i:Ljava/lang/String;

    return-void
.end method

.method public setBlacklistnum(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/BlacklistInfo;->j:Ljava/lang/String;

    return-void
.end method

.method public setIsCheck(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/BlacklistInfo;->h:Ljava/lang/Boolean;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/BlacklistInfo;->type:Ljava/lang/String;

    return-void
.end method
