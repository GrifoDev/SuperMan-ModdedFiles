.class public Lcom/cmdm/control/bean/CxContact;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "cxContact"
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

.field public phone:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "Phone"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "phone"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p0, p1}, Lcom/cmdm/control/bean/CxContact;->setPhone(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "contactMobile"    # Ljava/lang/String;
    .param p2, "contactName"    # Ljava/lang/String;
    .param p3, "groupName"    # Ljava/lang/String;
    .param p4, "groupId"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p0, p1}, Lcom/cmdm/control/bean/CxContact;->setContactMobile(Ljava/lang/String;)V

    .line 22
    invoke-static {p2}, Lcom/cmdm/control/util/encry/Base64Code;->encodedBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cmdm/control/bean/CxContact;->setContactName(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0, p4}, Lcom/cmdm/control/bean/CxContact;->setGroupId(Ljava/lang/String;)V

    .line 24
    invoke-static {p3}, Lcom/cmdm/control/util/encry/Base64Code;->encodedBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cmdm/control/bean/CxContact;->setGroupName(Ljava/lang/String;)V

    .line 25
    return-void
.end method


# virtual methods
.method public getContactFlag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/cmdm/control/bean/CxContact;->contactFlag:Ljava/lang/String;

    return-object v0
.end method

.method public getContactMobile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/cmdm/control/bean/CxContact;->contactMobile:Ljava/lang/String;

    return-object v0
.end method

.method public getContactName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/cmdm/control/bean/CxContact;->contactName:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/cmdm/control/bean/CxContact;->groupId:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/cmdm/control/bean/CxContact;->groupName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/cmdm/control/bean/CxContact;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public setContactFlag(Ljava/lang/String;)V
    .locals 0
    .param p1, "contactFlag"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/cmdm/control/bean/CxContact;->contactFlag:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setContactMobile(Ljava/lang/String;)V
    .locals 0
    .param p1, "contactMobile"    # Ljava/lang/String;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/cmdm/control/bean/CxContact;->contactMobile:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setContactName(Ljava/lang/String;)V
    .locals 0
    .param p1, "contactName"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/cmdm/control/bean/CxContact;->contactName:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setGroupId(Ljava/lang/String;)V
    .locals 0
    .param p1, "groupId"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/cmdm/control/bean/CxContact;->groupId:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setGroupName(Ljava/lang/String;)V
    .locals 0
    .param p1, "groupName"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/cmdm/control/bean/CxContact;->groupName:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0
    .param p1, "phone"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/cmdm/control/bean/CxContact;->phone:Ljava/lang/String;

    .line 51
    return-void
.end method
