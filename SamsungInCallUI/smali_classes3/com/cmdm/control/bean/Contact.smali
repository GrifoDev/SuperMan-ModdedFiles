.class public Lcom/cmdm/control/bean/Contact;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "Contact"
.end annotation


# instance fields
.field public avatarHiFi:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "AvatarHiFi"
    .end annotation
.end field

.field public avatarThmub:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "AvatarThumb"
    .end annotation
.end field

.field public contactPortrait:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "contactPortrait"
    .end annotation
.end field

.field public nickname:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "Nickname"
    .end annotation
.end field

.field public ordered:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "Ordered"
    .end annotation
.end field

.field public phone:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "Phone"
    .end annotation
.end field

.field public relationship:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "Relationship"
    .end annotation
.end field

.field public whatsup:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "Whatsup"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvatarHiFi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/cmdm/control/bean/Contact;->avatarHiFi:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatarThmub()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/cmdm/control/bean/Contact;->avatarThmub:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/cmdm/control/bean/Contact;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getOrdered()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/cmdm/control/bean/Contact;->ordered:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/cmdm/control/bean/Contact;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getRelationship()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/cmdm/control/bean/Contact;->relationship:Ljava/lang/String;

    return-object v0
.end method

.method public getWhatsup()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/cmdm/control/bean/Contact;->whatsup:Ljava/lang/String;

    return-object v0
.end method

.method public setAvatarHiFi(Ljava/lang/String;)V
    .locals 0
    .param p1, "avatarHiFi"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/cmdm/control/bean/Contact;->avatarHiFi:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setAvatarThmub(Ljava/lang/String;)V
    .locals 0
    .param p1, "avatarThmub"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/cmdm/control/bean/Contact;->avatarThmub:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0
    .param p1, "nickname"    # Ljava/lang/String;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/cmdm/control/bean/Contact;->nickname:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setOrdered(Ljava/lang/String;)V
    .locals 0
    .param p1, "ordered"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/cmdm/control/bean/Contact;->ordered:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0
    .param p1, "phone"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/cmdm/control/bean/Contact;->phone:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setRelationship(Ljava/lang/String;)V
    .locals 0
    .param p1, "relationship"    # Ljava/lang/String;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/cmdm/control/bean/Contact;->relationship:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public setWhatsup(Ljava/lang/String;)V
    .locals 0
    .param p1, "whatsup"    # Ljava/lang/String;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/cmdm/control/bean/Contact;->whatsup:Ljava/lang/String;

    .line 139
    return-void
.end method
