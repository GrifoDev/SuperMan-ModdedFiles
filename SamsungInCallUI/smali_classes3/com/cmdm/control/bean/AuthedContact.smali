.class public Lcom/cmdm/control/bean/AuthedContact;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "AuthedContact"
.end annotation


# instance fields
.field public phoneContactList:Ljava/util/List;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamImplicit;
        itemFieldName = "Contact"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cmdm/control/bean/Contact;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPhoneContactList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cmdm/control/bean/Contact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/cmdm/control/bean/AuthedContact;->phoneContactList:Ljava/util/List;

    return-object v0
.end method

.method public setPhoneContactList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cmdm/control/bean/Contact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, "phoneContactList":Ljava/util/List;, "Ljava/util/List<Lcom/cmdm/control/bean/Contact;>;"
    iput-object p1, p0, Lcom/cmdm/control/bean/AuthedContact;->phoneContactList:Ljava/util/List;

    .line 38
    return-void
.end method
