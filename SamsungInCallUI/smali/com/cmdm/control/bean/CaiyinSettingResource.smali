.class public Lcom/cmdm/control/bean/CaiyinSettingResource;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "caiyinSettingResource"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x24c2071f524356c5L


# instance fields
.field public commentCount:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "commentCount"
    .end annotation
.end field

.field public content:Lcom/cmdm/control/bean/Content;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "content"
    .end annotation
.end field

.field public crsProfile:Lcom/cmdm/control/bean/CRSProfile;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "crsProfile"
    .end annotation
.end field

.field public displayObject:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "displayObject"
    .end annotation
.end field

.field public friendUid:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "friendUid"
    .end annotation
.end field

.field public goodFlag:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "goodFlag"
    .end annotation
.end field

.field public goodFriendName:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "goodFriendName"
    .end annotation
.end field

.field public goodFriendUid:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "goodFriendUid"
    .end annotation
.end field

.field public greeting:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "greeting"
    .end annotation
.end field

.field public isPicCorpUser:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "isPicCorpUser"
    .end annotation
.end field

.field public isTop:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "isTop"
    .end annotation
.end field

.field public lastGoodFriendUrl:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "lastGoodFriendUrl"
    .end annotation
.end field

.field public picId:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "picId"
    .end annotation
.end field

.field public praiseCount:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "praiseCount"
    .end annotation
.end field

.field public praiseList:Lcom/cmdm/control/bean/PraiseList;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "praiseList"
    .end annotation
.end field

.field public settingDate:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "settingDate"
    .end annotation
.end field

.field public settingDescribe:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "settingDescribe"
    .end annotation
.end field

.field public settingId:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "settingId"
    .end annotation
.end field

.field public settingType:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "settingType"
    .end annotation
.end field

.field public tagList:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "tagList"
    .end annotation
.end field

.field public textId:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "textId"
    .end annotation
.end field

.field public userInfo:Lcom/cmdm/control/bean/UserInfo;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "userInfo"
    .end annotation
.end field

.field public workTimeSet:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "workTimeSet"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/cmdm/control/bean/PraiseList;

    invoke-direct {v0}, Lcom/cmdm/control/bean/PraiseList;-><init>()V

    iput-object v0, p0, Lcom/cmdm/control/bean/CaiyinSettingResource;->praiseList:Lcom/cmdm/control/bean/PraiseList;

    new-instance v0, Lcom/cmdm/control/bean/UserInfo;

    invoke-direct {v0}, Lcom/cmdm/control/bean/UserInfo;-><init>()V

    iput-object v0, p0, Lcom/cmdm/control/bean/CaiyinSettingResource;->userInfo:Lcom/cmdm/control/bean/UserInfo;

    return-void
.end method


# virtual methods
.method public getContactInfo(Landroid/content/Context;)Lcom/cmdm/control/bean/ContactInfo;
    .locals 2

    new-instance v0, Lcom/cmdm/control/biz/q;

    invoke-direct {v0, p1}, Lcom/cmdm/control/biz/q;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/cmdm/control/bean/CaiyinSettingResource;->friendUid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cmdm/control/biz/q;->ah(Ljava/lang/String;)Lcom/cmdm/control/bean/ContactInfo;

    move-result-object v0

    return-object v0
.end method

.method public getContent()Lcom/cmdm/control/bean/Content;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/CaiyinSettingResource;->content:Lcom/cmdm/control/bean/Content;

    return-object v0
.end method

.method public getCrsProfile()Lcom/cmdm/control/bean/CRSProfile;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/CaiyinSettingResource;->crsProfile:Lcom/cmdm/control/bean/CRSProfile;

    return-object v0
.end method

.method public getDisplayObject()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/CaiyinSettingResource;->displayObject:Ljava/lang/String;

    return-object v0
.end method

.method public getFriendUid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/CaiyinSettingResource;->friendUid:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodFlag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/CaiyinSettingResource;->goodFlag:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodFriendName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/CaiyinSettingResource;->goodFriendName:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodFriendUid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/CaiyinSettingResource;->goodFriendUid:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodPraiseFriendsName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/cmdm/control/bean/CaiyinSettingResource;->getGoodFriendUid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/cmdm/control/bean/CaiyinSettingResource;->getGoodFriendUid()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/cmdm/control/bean/CaiyinSettingResource;->getGoodFriendUid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/cmdm/control/bean/CaiyinSettingResource;->getGoodFriendUid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    if-lt v1, v3, :cond_1

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1, p1}, Lcom/cmdm/control/util/mobile/CallNumberHandleUtils;->getContactName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    array-length v2, v0

    if-ne v2, v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\u8d5e\u4e86\u6211"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\u7b49"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u4eba\u8d5e\u4e86\u6211"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGreeting()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/CaiyinSettingResource;->greeting:Ljava/lang/String;

    return-object v0
.end method

.method public getLastGoodFriendUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/CaiyinSettingResource;->lastGoodFriendUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPicId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/CaiyinSettingResource;->picId:Ljava/lang/String;

    return-object v0
.end method

.method public getSettingDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/CaiyinSettingResource;->settingDate:Ljava/lang/String;

    return-object v0
.end method

.method public getSettingDescribe()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/CaiyinSettingResource;->settingDescribe:Ljava/lang/String;

    return-object v0
.end method

.method public getSettingFormDate()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/cmdm/control/bean/CaiyinSettingResource;->settingDate:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cmdm/control/bean/CaiyinSettingResource;->settingDate:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/cmdm/control/bean/CaiyinSettingResource;->settingDate:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cmdm/control/bean/CaiyinSettingResource;->settingDate:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cmdm/control/bean/CaiyinSettingResource;->settingDate:Ljava/lang/String;

    const/4 v3, 0x4

    const/4 v4, 0x6

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cmdm/control/bean/CaiyinSettingResource;->settingDate:Ljava/lang/String;

    const/4 v3, 0x6

    const/16 v4, 0x8

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cmdm/control/bean/CaiyinSettingResource;->settingDate:Ljava/lang/String;

    const/16 v3, 0x8

    const/16 v4, 0xa

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cmdm/control/bean/CaiyinSettingResource;->settingDate:Ljava/lang/String;

    const/16 v3, 0xa

    const/16 v4, 0xc

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cmdm/control/bean/CaiyinSettingResource;->settingDate:Ljava/lang/String;

    const/16 v2, 0xc

    const/16 v3, 0xe

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getSettingId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/CaiyinSettingResource;->settingId:Ljava/lang/String;

    return-object v0
.end method

.method public getSettingType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/CaiyinSettingResource;->settingType:Ljava/lang/String;

    return-object v0
.end method

.method public getTextId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/CaiyinSettingResource;->textId:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Lcom/cmdm/control/bean/Content;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/CaiyinSettingResource;->content:Lcom/cmdm/control/bean/Content;

    return-void
.end method

.method public setCrsProfile(Lcom/cmdm/control/bean/CRSProfile;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/CaiyinSettingResource;->crsProfile:Lcom/cmdm/control/bean/CRSProfile;

    return-void
.end method

.method public setDisplayObject(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/CaiyinSettingResource;->displayObject:Ljava/lang/String;

    return-void
.end method

.method public setFriendUid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/CaiyinSettingResource;->friendUid:Ljava/lang/String;

    return-void
.end method

.method public setGoodFlag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/CaiyinSettingResource;->goodFlag:Ljava/lang/String;

    return-void
.end method

.method public setGoodFriendName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/CaiyinSettingResource;->goodFriendName:Ljava/lang/String;

    return-void
.end method

.method public setGoodFriendUid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/CaiyinSettingResource;->goodFriendUid:Ljava/lang/String;

    return-void
.end method

.method public setGreeting(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/CaiyinSettingResource;->greeting:Ljava/lang/String;

    return-void
.end method

.method public setLastGoodFriendUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/CaiyinSettingResource;->lastGoodFriendUrl:Ljava/lang/String;

    return-void
.end method

.method public setPicId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/CaiyinSettingResource;->picId:Ljava/lang/String;

    return-void
.end method

.method public setSettingDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/CaiyinSettingResource;->settingDate:Ljava/lang/String;

    return-void
.end method

.method public setSettingDescribe(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/CaiyinSettingResource;->settingDescribe:Ljava/lang/String;

    return-void
.end method

.method public setSettingId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/CaiyinSettingResource;->settingId:Ljava/lang/String;

    return-void
.end method

.method public setSettingType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/CaiyinSettingResource;->settingType:Ljava/lang/String;

    return-void
.end method

.method public setTextId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/CaiyinSettingResource;->textId:Ljava/lang/String;

    return-void
.end method
