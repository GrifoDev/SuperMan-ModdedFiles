.class public Lcom/cmdm/control/bean/RichScrnSettingObject;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ah:Ljava/lang/String;

.field public cRSProfile:Lcom/cmdm/control/bean/CRSProfile;

.field public contentId:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public greeting:Ljava/lang/String;

.field public settedDate:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/cmdm/control/bean/RichScrnSettingObject;->contentId:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/cmdm/control/bean/RichScrnSettingObject;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getGreeting()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/cmdm/control/bean/RichScrnSettingObject;->greeting:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalThumUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/cmdm/control/bean/RichScrnSettingObject;->ah:Ljava/lang/String;

    return-object v0
.end method

.method public getSettedDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/cmdm/control/bean/RichScrnSettingObject;->settedDate:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/cmdm/control/bean/RichScrnSettingObject;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getcRSProfile()Lcom/cmdm/control/bean/CRSProfile;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/cmdm/control/bean/RichScrnSettingObject;->cRSProfile:Lcom/cmdm/control/bean/CRSProfile;

    return-object v0
.end method

.method public setContentId(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentId"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/cmdm/control/bean/RichScrnSettingObject;->contentId:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/cmdm/control/bean/RichScrnSettingObject;->description:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setGreeting(Ljava/lang/String;)V
    .locals 0
    .param p1, "greeting"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/cmdm/control/bean/RichScrnSettingObject;->greeting:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setLocalThumUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "localThumUrl"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/cmdm/control/bean/RichScrnSettingObject;->ah:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setSettedDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "settedDate"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/cmdm/control/bean/RichScrnSettingObject;->settedDate:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/cmdm/control/bean/RichScrnSettingObject;->type:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setcRSProfile(Lcom/cmdm/control/bean/CRSProfile;)V
    .locals 0
    .param p1, "cRSProfile"    # Lcom/cmdm/control/bean/CRSProfile;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/cmdm/control/bean/RichScrnSettingObject;->cRSProfile:Lcom/cmdm/control/bean/CRSProfile;

    .line 56
    return-void
.end method
