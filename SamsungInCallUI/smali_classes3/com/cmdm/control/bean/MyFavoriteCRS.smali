.class public Lcom/cmdm/control/bean/MyFavoriteCRS;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "MyFavoriteCRS"
.end annotation


# instance fields
.field public contentId:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "ContentId"
    .end annotation
.end field

.field public crsProfile:Lcom/cmdm/control/bean/CRSProfile;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "CRSProfile"
    .end annotation
.end field

.field public favoriteDate:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "FavoriteDate"
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
.method public getContentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/cmdm/control/bean/MyFavoriteCRS;->contentId:Ljava/lang/String;

    return-object v0
.end method

.method public getCrsProfile()Lcom/cmdm/control/bean/CRSProfile;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/cmdm/control/bean/MyFavoriteCRS;->crsProfile:Lcom/cmdm/control/bean/CRSProfile;

    return-object v0
.end method

.method public getFavoriteDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/cmdm/control/bean/MyFavoriteCRS;->favoriteDate:Ljava/lang/String;

    return-object v0
.end method

.method public setContentId(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentId"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/cmdm/control/bean/MyFavoriteCRS;->contentId:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setCrsProfile(Lcom/cmdm/control/bean/CRSProfile;)V
    .locals 0
    .param p1, "crsProfile"    # Lcom/cmdm/control/bean/CRSProfile;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/cmdm/control/bean/MyFavoriteCRS;->crsProfile:Lcom/cmdm/control/bean/CRSProfile;

    .line 76
    return-void
.end method

.method public setFavoriteDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "favoriteDate"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/cmdm/control/bean/MyFavoriteCRS;->favoriteDate:Ljava/lang/String;

    .line 62
    return-void
.end method
