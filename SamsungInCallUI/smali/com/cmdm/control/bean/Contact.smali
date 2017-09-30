.class public Lcom/cmdm/control/bean/Contact;
.super Ljava/lang/Object;


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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvatarHiFi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/Contact;->avatarHiFi:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatarThmub()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/Contact;->avatarThmub:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/Contact;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getOrdered()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/Contact;->ordered:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/Contact;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getRelationship()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/Contact;->relationship:Ljava/lang/String;

    return-object v0
.end method

.method public getWhatsup()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/Contact;->whatsup:Ljava/lang/String;

    return-object v0
.end method

.method public setAvatarHiFi(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/Contact;->avatarHiFi:Ljava/lang/String;

    return-void
.end method

.method public setAvatarThmub(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/Contact;->avatarThmub:Ljava/lang/String;

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/Contact;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setOrdered(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/Contact;->ordered:Ljava/lang/String;

    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/Contact;->phone:Ljava/lang/String;

    return-void
.end method

.method public setRelationship(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/Contact;->relationship:Ljava/lang/String;

    return-void
.end method

.method public setWhatsup(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/Contact;->whatsup:Ljava/lang/String;

    return-void
.end method
