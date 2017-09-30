.class public Lcom/cmdm/control/bean/MyFavoriteCRS;
.super Ljava/lang/Object;


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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/MyFavoriteCRS;->contentId:Ljava/lang/String;

    return-object v0
.end method

.method public getCrsProfile()Lcom/cmdm/control/bean/CRSProfile;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/MyFavoriteCRS;->crsProfile:Lcom/cmdm/control/bean/CRSProfile;

    return-object v0
.end method

.method public getFavoriteDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/MyFavoriteCRS;->favoriteDate:Ljava/lang/String;

    return-object v0
.end method

.method public setContentId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/MyFavoriteCRS;->contentId:Ljava/lang/String;

    return-void
.end method

.method public setCrsProfile(Lcom/cmdm/control/bean/CRSProfile;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/MyFavoriteCRS;->crsProfile:Lcom/cmdm/control/bean/CRSProfile;

    return-void
.end method

.method public setFavoriteDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/MyFavoriteCRS;->favoriteDate:Ljava/lang/String;

    return-void
.end method
