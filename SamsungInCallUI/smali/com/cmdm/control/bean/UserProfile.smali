.class public Lcom/cmdm/control/bean/UserProfile;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "UserProfile"
.end annotation


# instance fields
.field public avatarAuditFlag:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "avatarAuditFlag"
    .end annotation
.end field

.field public avatarHiFi:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "AvatarHiFi"
    .end annotation
.end field

.field public avatarID:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "AvatarID"
    .end annotation
.end field

.field public avatarThumb:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "AvatarThumb"
    .end annotation
.end field

.field public birthday:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "Birthday"
    .end annotation
.end field

.field public email:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "Email"
    .end annotation
.end field

.field public gender:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "Gender"
    .end annotation
.end field

.field public lableList:Lcom/cmdm/control/bean/LableList;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "lableList"
    .end annotation
.end field

.field public nameAuditFlag:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "nameAuditFlag"
    .end annotation
.end field

.field public nickname:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "Nickname"
    .end annotation
.end field

.field public orderedDate:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "OrderedDate"
    .end annotation
.end field

.field public whatsup:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "Whatsup"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/cmdm/control/bean/LableList;

    invoke-direct {v0}, Lcom/cmdm/control/bean/LableList;-><init>()V

    iput-object v0, p0, Lcom/cmdm/control/bean/UserProfile;->lableList:Lcom/cmdm/control/bean/LableList;

    return-void
.end method


# virtual methods
.method public getAvatarHiFi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/UserProfile;->avatarHiFi:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatarID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/UserProfile;->avatarID:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatarThumb()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/UserProfile;->avatarThumb:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthday()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/UserProfile;->birthday:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/UserProfile;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/UserProfile;->gender:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/cmdm/control/bean/UserProfile;->nickname:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/bean/UserProfile;->nickname:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/bean/UserProfile;->nickname:Ljava/lang/String;

    invoke-static {v0}, Lcom/cmdm/control/util/encry/Base64Code;->decodedBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmdm/control/util/client/Setting;->getDefaultSpecialString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getOrderedDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/UserProfile;->orderedDate:Ljava/lang/String;

    return-object v0
.end method

.method public getWhatsup()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/cmdm/control/bean/UserProfile;->whatsup:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/bean/UserProfile;->whatsup:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/bean/UserProfile;->whatsup:Ljava/lang/String;

    invoke-static {v0}, Lcom/cmdm/control/util/encry/Base64Code;->decodedBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmdm/control/util/client/Setting;->getDefaultSpecialString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public hasAvatarAuditFlag()Z
    .locals 2

    iget-object v0, p0, Lcom/cmdm/control/bean/UserProfile;->avatarAuditFlag:Ljava/lang/String;

    invoke-static {v0}, Lcom/cmdm/control/util/StringUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/bean/UserProfile;->avatarAuditFlag:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hasNameAuditFlag()Z
    .locals 2

    iget-object v0, p0, Lcom/cmdm/control/bean/UserProfile;->nameAuditFlag:Ljava/lang/String;

    invoke-static {v0}, Lcom/cmdm/control/util/StringUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/bean/UserProfile;->nameAuditFlag:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setAvatarHiFi(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/UserProfile;->avatarHiFi:Ljava/lang/String;

    return-void
.end method

.method public setAvatarID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/UserProfile;->avatarID:Ljava/lang/String;

    return-void
.end method

.method public setAvatarThumb(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/UserProfile;->avatarThumb:Ljava/lang/String;

    return-void
.end method

.method public setBirthday(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/UserProfile;->birthday:Ljava/lang/String;

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/UserProfile;->email:Ljava/lang/String;

    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/UserProfile;->gender:Ljava/lang/String;

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/UserProfile;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setOrderedDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/UserProfile;->orderedDate:Ljava/lang/String;

    return-void
.end method

.method public setWhatsup(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/UserProfile;->whatsup:Ljava/lang/String;

    return-void
.end method
