.class public Lcom/cmdm/control/bean/NewContact;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "contact"
.end annotation


# instance fields
.field public contactFlag:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "contactFlag"
    .end annotation
.end field

.field public contactMobile:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "contactMobile"
    .end annotation
.end field

.field public contactName:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "contactName"
    .end annotation
.end field

.field public contactPortrait:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "contactPortrait"
    .end annotation
.end field

.field public groupId:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "groupId"
    .end annotation
.end field

.field public groupName:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "groupName"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lcom/cmdm/control/bean/NewContact;->groupName:Ljava/lang/String;

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/cmdm/control/bean/NewContact;->groupId:Ljava/lang/String;

    .line 79
    return-void
.end method


# virtual methods
.method public getContactFlag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/cmdm/control/bean/NewContact;->contactFlag:Ljava/lang/String;

    return-object v0
.end method

.method public getContactMobile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/cmdm/control/bean/NewContact;->contactMobile:Ljava/lang/String;

    return-object v0
.end method

.method public getContactName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/cmdm/control/bean/NewContact;->contactName:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/cmdm/control/bean/NewContact;->groupId:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/cmdm/control/bean/NewContact;->groupName:Ljava/lang/String;

    return-object v0
.end method

.method public setContactFlag(Ljava/lang/String;)V
    .locals 0
    .param p1, "contactFlag"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/cmdm/control/bean/NewContact;->contactFlag:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setContactMobile(Ljava/lang/String;)V
    .locals 0
    .param p1, "contactMobile"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/cmdm/control/bean/NewContact;->contactMobile:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setContactName(Ljava/lang/String;)V
    .locals 1
    .param p1, "contactName"    # Ljava/lang/String;

    .prologue
    .line 106
    .line 107
    invoke-static {p1}, Lcom/cmdm/control/util/client/Setting;->getSpecialString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-static {v0}, Lcom/cmdm/control/util/encry/Base64Code;->encodedBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmdm/control/bean/NewContact;->contactName:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setGroupId(Ljava/lang/String;)V
    .locals 1
    .param p1, "groupId"    # Ljava/lang/String;

    .prologue
    .line 95
    if-nez p1, :cond_0

    .line 96
    const-string v0, ""

    iput-object v0, p0, Lcom/cmdm/control/bean/NewContact;->groupName:Ljava/lang/String;

    .line 98
    :cond_0
    iput-object p1, p0, Lcom/cmdm/control/bean/NewContact;->groupId:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setGroupName(Ljava/lang/String;)V
    .locals 1
    .param p1, "groupName"    # Ljava/lang/String;

    .prologue
    .line 82
    if-nez p1, :cond_0

    .line 83
    const-string p1, ""

    .line 86
    :cond_0
    invoke-static {p1}, Lcom/cmdm/control/util/client/Setting;->getSpecialString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-static {v0}, Lcom/cmdm/control/util/encry/Base64Code;->encodedBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmdm/control/bean/NewContact;->groupName:Ljava/lang/String;

    .line 88
    return-void
.end method
