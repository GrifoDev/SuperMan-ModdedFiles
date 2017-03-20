.class public Lcom/cmdm/control/bean/CaiyinSettingResource;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    new-instance v0, Lcom/cmdm/control/bean/PraiseList;

    invoke-direct {v0}, Lcom/cmdm/control/bean/PraiseList;-><init>()V

    iput-object v0, p0, Lcom/cmdm/control/bean/CaiyinSettingResource;->praiseList:Lcom/cmdm/control/bean/PraiseList;

    .line 147
    new-instance v0, Lcom/cmdm/control/bean/UserInfo;

    invoke-direct {v0}, Lcom/cmdm/control/bean/UserInfo;-><init>()V

    iput-object v0, p0, Lcom/cmdm/control/bean/CaiyinSettingResource;->userInfo:Lcom/cmdm/control/bean/UserInfo;

    .line 28
    return-void
.end method


# virtual methods
.method public getContactInfo(Landroid/content/Context;)Lcom/cmdm/control/bean/ContactInfo;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 434
    new-instance v0, Lcom/cmdm/control/biz/q;

    invoke-direct {v0, p1}, Lcom/cmdm/control/biz/q;-><init>(Landroid/content/Context;)V

    .line 435
    .local v0, "biz":Lcom/cmdm/control/biz/q;
    iget-object v2, p0, Lcom/cmdm/control/bean/CaiyinSettingResource;->friendUid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/cmdm/control/biz/q;->ah(Ljava/lang/String;)Lcom/cmdm/control/bean/ContactInfo;

    move-result-object v1

    .line 436
    .local v1, "ci":Lcom/cmdm/control/bean/ContactInfo;
    return-object v1
.end method

.method public getContent()Lcom/cmdm/control/bean/Content;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/cmdm/control/bean/CaiyinSettingResource;->content:Lcom/cmdm/control/bean/Content;

    return-object v0
.end method

.method public getCrsProfile()Lcom/cmdm/control/bean/CRSProfile;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/cmdm/control/bean/CaiyinSettingResource;->crsProfile:Lcom/cmdm/control/bean/CRSProfile;

    return-object v0
.end method

.method public getDisplayObject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/cmdm/control/bean/CaiyinSettingResource;->displayObject:Ljava/lang/String;

    return-object v0
.end method

.method public getFriendUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/cmdm/control/bean/CaiyinSettingResource;->friendUid:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodFlag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/cmdm/control/bean/CaiyinSettingResource;->goodFlag:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodFriendName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/cmdm/control/bean/CaiyinSettingResource;->goodFriendName:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodFriendUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/cmdm/control/bean/CaiyinSettingResource;->goodFriendUid:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodPraiseFriendsName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 372
    invoke-virtual {p0}, Lcom/cmdm/control/bean/CaiyinSettingResource;->getGoodFriendUid()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/cmdm/control/bean/CaiyinSettingResource;->getGoodFriendUid()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 373
    invoke-virtual {p0}, Lcom/cmdm/control/bean/CaiyinSettingResource;->getGoodFriendUid()Ljava/lang/String;

    move-result-object v2

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 374
    invoke-virtual {p0}, Lcom/cmdm/control/bean/CaiyinSettingResource;->getGoodFriendUid()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\|"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 375
    .local v0, "a":[Ljava/lang/String;
    if-eqz v0, :cond_1

    array-length v2, v0

    if-lt v2, v4, :cond_1

    .line 376
    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2, p1}, Lcom/cmdm/control/util/mobile/CallNumberHandleUtils;->getContactName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 378
    .local v1, "name":Ljava/lang/String;
    array-length v2, v0

    if-ne v2, v4, :cond_0

    .line 379
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\u8d5e\u4e86\u6211"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 385
    .end local v0    # "a":[Ljava/lang/String;
    .end local v1    # "name":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 381
    .restart local v0    # "a":[Ljava/lang/String;
    .restart local v1    # "name":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\u7b49"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u4eba\u8d5e\u4e86\u6211"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 385
    .end local v0    # "a":[Ljava/lang/String;
    .end local v1    # "name":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getGreeting()Ljava/lang/String;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/cmdm/control/bean/CaiyinSettingResource;->greeting:Ljava/lang/String;

    return-object v0
.end method

.method public getLastGoodFriendUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/cmdm/control/bean/CaiyinSettingResource;->lastGoodFriendUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPicId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/cmdm/control/bean/CaiyinSettingResource;->picId:Ljava/lang/String;

    return-object v0
.end method

.method public getSettingDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/cmdm/control/bean/CaiyinSettingResource;->settingDate:Ljava/lang/String;

    return-object v0
.end method

.method public getSettingDescribe()Ljava/lang/String;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/cmdm/control/bean/CaiyinSettingResource;->settingDescribe:Ljava/lang/String;

    return-object v0
.end method

.method public getSettingFormDate()Ljava/lang/String;
    .locals 5

    .prologue
    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 257
    .local v0, "set":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/cmdm/control/bean/CaiyinSettingResource;->settingDate:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cmdm/control/bean/CaiyinSettingResource;->settingDate:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 258
    iget-object v1, p0, Lcom/cmdm/control/bean/CaiyinSettingResource;->settingDate:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 260
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

    .line 261
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

    .line 262
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

    .line 263
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

    .line 264
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

    .line 265
    iget-object v1, p0, Lcom/cmdm/control/bean/CaiyinSettingResource;->settingDate:Ljava/lang/String;

    const/16 v2, 0xc

    const/16 v3, 0xe

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 266
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getSettingId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/cmdm/control/bean/CaiyinSettingResource;->settingId:Ljava/lang/String;

    return-object v0
.end method

.method public getSettingType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/cmdm/control/bean/CaiyinSettingResource;->settingType:Ljava/lang/String;

    return-object v0
.end method

.method public getTextId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/cmdm/control/bean/CaiyinSettingResource;->textId:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Lcom/cmdm/control/bean/Content;)V
    .locals 0
    .param p1, "content"    # Lcom/cmdm/control/bean/Content;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/cmdm/control/bean/CaiyinSettingResource;->content:Lcom/cmdm/control/bean/Content;

    .line 246
    return-void
.end method

.method public setCrsProfile(Lcom/cmdm/control/bean/CRSProfile;)V
    .locals 0
    .param p1, "crsProfile"    # Lcom/cmdm/control/bean/CRSProfile;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/cmdm/control/bean/CaiyinSettingResource;->crsProfile:Lcom/cmdm/control/bean/CRSProfile;

    .line 231
    return-void
.end method

.method public setDisplayObject(Ljava/lang/String;)V
    .locals 0
    .param p1, "displayObject"    # Ljava/lang/String;

    .prologue
    .line 323
    iput-object p1, p0, Lcom/cmdm/control/bean/CaiyinSettingResource;->displayObject:Ljava/lang/String;

    .line 324
    return-void
.end method

.method public setFriendUid(Ljava/lang/String;)V
    .locals 0
    .param p1, "friendUid"    # Ljava/lang/String;

    .prologue
    .line 308
    iput-object p1, p0, Lcom/cmdm/control/bean/CaiyinSettingResource;->friendUid:Ljava/lang/String;

    .line 309
    return-void
.end method

.method public setGoodFlag(Ljava/lang/String;)V
    .locals 0
    .param p1, "goodFlag"    # Ljava/lang/String;

    .prologue
    .line 415
    iput-object p1, p0, Lcom/cmdm/control/bean/CaiyinSettingResource;->goodFlag:Ljava/lang/String;

    .line 416
    return-void
.end method

.method public setGoodFriendName(Ljava/lang/String;)V
    .locals 0
    .param p1, "goodFriendName"    # Ljava/lang/String;

    .prologue
    .line 368
    iput-object p1, p0, Lcom/cmdm/control/bean/CaiyinSettingResource;->goodFriendName:Ljava/lang/String;

    .line 369
    return-void
.end method

.method public setGoodFriendUid(Ljava/lang/String;)V
    .locals 0
    .param p1, "goodFriendUid"    # Ljava/lang/String;

    .prologue
    .line 400
    iput-object p1, p0, Lcom/cmdm/control/bean/CaiyinSettingResource;->goodFriendUid:Ljava/lang/String;

    .line 401
    return-void
.end method

.method public setGreeting(Ljava/lang/String;)V
    .locals 0
    .param p1, "greeting"    # Ljava/lang/String;

    .prologue
    .line 430
    iput-object p1, p0, Lcom/cmdm/control/bean/CaiyinSettingResource;->greeting:Ljava/lang/String;

    .line 431
    return-void
.end method

.method public setLastGoodFriendUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "lastGoodFriendUrl"    # Ljava/lang/String;

    .prologue
    .line 353
    iput-object p1, p0, Lcom/cmdm/control/bean/CaiyinSettingResource;->lastGoodFriendUrl:Ljava/lang/String;

    .line 354
    return-void
.end method

.method public setPicId(Ljava/lang/String;)V
    .locals 0
    .param p1, "picId"    # Ljava/lang/String;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/cmdm/control/bean/CaiyinSettingResource;->picId:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public setSettingDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "settingDate"    # Ljava/lang/String;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/cmdm/control/bean/CaiyinSettingResource;->settingDate:Ljava/lang/String;

    .line 279
    return-void
.end method

.method public setSettingDescribe(Ljava/lang/String;)V
    .locals 0
    .param p1, "settingDescribe"    # Ljava/lang/String;

    .prologue
    .line 338
    iput-object p1, p0, Lcom/cmdm/control/bean/CaiyinSettingResource;->settingDescribe:Ljava/lang/String;

    .line 339
    return-void
.end method

.method public setSettingId(Ljava/lang/String;)V
    .locals 0
    .param p1, "settingId"    # Ljava/lang/String;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/cmdm/control/bean/CaiyinSettingResource;->settingId:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public setSettingType(Ljava/lang/String;)V
    .locals 0
    .param p1, "settingType"    # Ljava/lang/String;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/cmdm/control/bean/CaiyinSettingResource;->settingType:Ljava/lang/String;

    .line 294
    return-void
.end method

.method public setTextId(Ljava/lang/String;)V
    .locals 0
    .param p1, "textId"    # Ljava/lang/String;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/cmdm/control/bean/CaiyinSettingResource;->textId:Ljava/lang/String;

    .line 216
    return-void
.end method
