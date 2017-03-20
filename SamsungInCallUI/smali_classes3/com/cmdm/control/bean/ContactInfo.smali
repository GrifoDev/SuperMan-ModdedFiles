.class public Lcom/cmdm/control/bean/ContactInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/cmdm/control/bean/ContactInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private X:Ljava/lang/String;

.field private Y:Ljava/lang/String;

.field public contactid:Ljava/lang/String;

.field public contactname:Ljava/lang/String;

.field public contactnum:Ljava/lang/String;

.field public defaultcontactnum:Ljava/lang/String;

.field private h:Ljava/lang/Boolean;

.field public photoBit:Landroid/graphics/Bitmap;

.field public photoType:Ljava/lang/String;

.field public photoUri:Ljava/lang/String;

.field public set_time:Ljava/lang/String;

.field public statu:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-string v0, "2"

    iput-object v0, p0, Lcom/cmdm/control/bean/ContactInfo;->type:Ljava/lang/String;

    .line 60
    const-string v0, "0"

    iput-object v0, p0, Lcom/cmdm/control/bean/ContactInfo;->photoType:Ljava/lang/String;

    .line 78
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/cmdm/control/bean/ContactInfo;->h:Ljava/lang/Boolean;

    .line 19
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/cmdm/control/bean/ContactInfo;)I
    .locals 2
    .param p1, "another"    # Lcom/cmdm/control/bean/ContactInfo;

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/cmdm/control/bean/ContactInfo;->getNamePinyin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cmdm/control/bean/ContactInfo;->getNamePinyin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/cmdm/control/bean/ContactInfo;

    invoke-virtual {p0, p1}, Lcom/cmdm/control/bean/ContactInfo;->compareTo(Lcom/cmdm/control/bean/ContactInfo;)I

    move-result v0

    return v0
.end method

.method public getBindingShortNum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/cmdm/control/bean/ContactInfo;->X:Ljava/lang/String;

    return-object v0
.end method

.method public getContactAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/cmdm/control/bean/ContactInfo;->contactnum:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/bean/ContactInfo;->contactnum:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/cmdm/control/bean/ContactInfo;->contactnum:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/cmdm/control/util/mobile/CallNumberHandleUtils;->getNumberType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getIsCheck()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/cmdm/control/bean/ContactInfo;->h:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getNamePinyin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/cmdm/control/bean/ContactInfo;->Y:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/cmdm/control/bean/ContactInfo;->photoUri:Ljava/lang/String;

    return-object v0
.end method

.method public setBindingShortNum(Ljava/lang/String;)V
    .locals 0
    .param p1, "bindingShortNum"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/cmdm/control/bean/ContactInfo;->X:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setIsCheck(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "isCheck"    # Ljava/lang/Boolean;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/cmdm/control/bean/ContactInfo;->h:Ljava/lang/Boolean;

    .line 104
    return-void
.end method

.method public setNamePinyin(Ljava/lang/String;)V
    .locals 1
    .param p1, "contactname"    # Ljava/lang/String;

    .prologue
    .line 89
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/cmdm/control/bean/ContactInfo;->Y:Ljava/lang/String;

    .line 96
    :cond_1
    return-void
.end method

.method public setPhotoUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "photoUri"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/cmdm/control/bean/ContactInfo;->photoUri:Ljava/lang/String;

    .line 76
    return-void
.end method
