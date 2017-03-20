.class public Lcom/cmdm/control/bean/RepositoryInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "RepositoryInfo"
.end annotation


# instance fields
.field public buddiesSettings:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "BuddiesSettings"
    .end annotation
.end field

.field public buyLimit:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "buyLimit"
    .end annotation
.end field

.field public diyAvailability:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "DiyAvailability"
    .end annotation
.end field

.field public giftLimit:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "giftLimit"
    .end annotation
.end field

.field public keepLimit:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "keepLimit"
    .end annotation
.end field

.field public myDiy:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "MyDiy"
    .end annotation
.end field

.field public myFavorite:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "MyFavorite"
    .end annotation
.end field

.field public myGifts:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "MyGifts"
    .end annotation
.end field

.field public myPaids:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "MyPaids"
    .end annotation
.end field

.field public mySettings:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "MySettings"
    .end annotation
.end field

.field public txtBoxCollectCount:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "txtBoxCollectCount"
    .end annotation
.end field

.field public txtBoxCollectLimitCount:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "txtBoxCollectLimitCount"
    .end annotation
.end field

.field public txtBoxSettingsCount:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "txtBoxSettingsCount"
    .end annotation
.end field

.field public txtCollectCount:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "txtCollectCount"
    .end annotation
.end field

.field public txtCollectLimitCount:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "txtCollectLimitCount"
    .end annotation
.end field

.field public txtDiyLimitCount:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "txtDiyLimitCount"
    .end annotation
.end field

.field public txtDiyPaids:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "txtDiyPaids"
    .end annotation
.end field

.field public txtPaids:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "txtPaids"
    .end annotation
.end field

.field public txtSettingsCount:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "txtSettingsCount"
    .end annotation
.end field

.field public videoFavorite:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "videoFavorite"
    .end annotation
.end field

.field public videoPaids:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "videoPaids"
    .end annotation
.end field

.field public videoSettings:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "videoSettings"
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
.method public getBuddiesSettings()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/cmdm/control/bean/RepositoryInfo;->buddiesSettings:Ljava/lang/String;

    return-object v0
.end method

.method public getBuyLimit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/cmdm/control/bean/RepositoryInfo;->buyLimit:Ljava/lang/String;

    return-object v0
.end method

.method public getDiyAvailability()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/cmdm/control/bean/RepositoryInfo;->diyAvailability:Ljava/lang/String;

    return-object v0
.end method

.method public getGiftLimit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/cmdm/control/bean/RepositoryInfo;->giftLimit:Ljava/lang/String;

    return-object v0
.end method

.method public getKeepLimit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/cmdm/control/bean/RepositoryInfo;->keepLimit:Ljava/lang/String;

    return-object v0
.end method

.method public getMyDiy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/cmdm/control/bean/RepositoryInfo;->myDiy:Ljava/lang/String;

    return-object v0
.end method

.method public getMyFavorite()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/cmdm/control/bean/RepositoryInfo;->myFavorite:Ljava/lang/String;

    return-object v0
.end method

.method public getMyGifts()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/cmdm/control/bean/RepositoryInfo;->myGifts:Ljava/lang/String;

    return-object v0
.end method

.method public getMyPaids()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/cmdm/control/bean/RepositoryInfo;->myPaids:Ljava/lang/String;

    return-object v0
.end method

.method public getMySettings()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/cmdm/control/bean/RepositoryInfo;->mySettings:Ljava/lang/String;

    return-object v0
.end method

.method public getTxtBoxCollectCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/cmdm/control/bean/RepositoryInfo;->txtBoxCollectCount:Ljava/lang/String;

    return-object v0
.end method

.method public getTxtBoxCollectLimitCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/cmdm/control/bean/RepositoryInfo;->txtBoxCollectLimitCount:Ljava/lang/String;

    return-object v0
.end method

.method public getTxtBoxSettingsCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/cmdm/control/bean/RepositoryInfo;->txtBoxSettingsCount:Ljava/lang/String;

    return-object v0
.end method

.method public getTxtCollectCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/cmdm/control/bean/RepositoryInfo;->txtCollectCount:Ljava/lang/String;

    return-object v0
.end method

.method public getTxtCollectLimitCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/cmdm/control/bean/RepositoryInfo;->txtCollectLimitCount:Ljava/lang/String;

    return-object v0
.end method

.method public getTxtDiyLimitCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/cmdm/control/bean/RepositoryInfo;->txtDiyLimitCount:Ljava/lang/String;

    return-object v0
.end method

.method public getTxtDiyPaids()Ljava/lang/String;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/cmdm/control/bean/RepositoryInfo;->txtDiyPaids:Ljava/lang/String;

    return-object v0
.end method

.method public getTxtPaids()Ljava/lang/String;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/cmdm/control/bean/RepositoryInfo;->txtPaids:Ljava/lang/String;

    return-object v0
.end method

.method public getTxtSettingsCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/cmdm/control/bean/RepositoryInfo;->txtSettingsCount:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoFavorite()Ljava/lang/String;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/cmdm/control/bean/RepositoryInfo;->videoFavorite:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoPaids()Ljava/lang/String;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/cmdm/control/bean/RepositoryInfo;->videoPaids:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoSettings()Ljava/lang/String;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/cmdm/control/bean/RepositoryInfo;->videoSettings:Ljava/lang/String;

    return-object v0
.end method

.method public setBuddiesSettings(Ljava/lang/String;)V
    .locals 0
    .param p1, "buddiesSettings"    # Ljava/lang/String;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/cmdm/control/bean/RepositoryInfo;->buddiesSettings:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public setBuyLimit(Ljava/lang/String;)V
    .locals 0
    .param p1, "buyLimit"    # Ljava/lang/String;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/cmdm/control/bean/RepositoryInfo;->buyLimit:Ljava/lang/String;

    .line 254
    return-void
.end method

.method public setDiyAvailability(Ljava/lang/String;)V
    .locals 0
    .param p1, "diyAvailability"    # Ljava/lang/String;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/cmdm/control/bean/RepositoryInfo;->diyAvailability:Ljava/lang/String;

    .line 240
    return-void
.end method

.method public setGiftLimit(Ljava/lang/String;)V
    .locals 0
    .param p1, "giftLimit"    # Ljava/lang/String;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/cmdm/control/bean/RepositoryInfo;->giftLimit:Ljava/lang/String;

    .line 268
    return-void
.end method

.method public setKeepLimit(Ljava/lang/String;)V
    .locals 0
    .param p1, "keepLimit"    # Ljava/lang/String;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/cmdm/control/bean/RepositoryInfo;->keepLimit:Ljava/lang/String;

    .line 282
    return-void
.end method

.method public setMyDiy(Ljava/lang/String;)V
    .locals 0
    .param p1, "myDiy"    # Ljava/lang/String;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/cmdm/control/bean/RepositoryInfo;->myDiy:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public setMyFavorite(Ljava/lang/String;)V
    .locals 0
    .param p1, "myFavorite"    # Ljava/lang/String;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/cmdm/control/bean/RepositoryInfo;->myFavorite:Ljava/lang/String;

    .line 225
    return-void
.end method

.method public setMyGifts(Ljava/lang/String;)V
    .locals 0
    .param p1, "myGifts"    # Ljava/lang/String;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/cmdm/control/bean/RepositoryInfo;->myGifts:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public setMyPaids(Ljava/lang/String;)V
    .locals 0
    .param p1, "myPaids"    # Ljava/lang/String;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/cmdm/control/bean/RepositoryInfo;->myPaids:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public setMySettings(Ljava/lang/String;)V
    .locals 0
    .param p1, "mySettings"    # Ljava/lang/String;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/cmdm/control/bean/RepositoryInfo;->mySettings:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setTxtBoxCollectCount(Ljava/lang/String;)V
    .locals 0
    .param p1, "txtBoxCollectCount"    # Ljava/lang/String;

    .prologue
    .line 337
    iput-object p1, p0, Lcom/cmdm/control/bean/RepositoryInfo;->txtBoxCollectCount:Ljava/lang/String;

    .line 338
    return-void
.end method

.method public setTxtBoxCollectLimitCount(Ljava/lang/String;)V
    .locals 0
    .param p1, "txtBoxCollectLimitCount"    # Ljava/lang/String;

    .prologue
    .line 365
    iput-object p1, p0, Lcom/cmdm/control/bean/RepositoryInfo;->txtBoxCollectLimitCount:Ljava/lang/String;

    .line 366
    return-void
.end method

.method public setTxtBoxSettingsCount(Ljava/lang/String;)V
    .locals 0
    .param p1, "txtBoxSettingsCount"    # Ljava/lang/String;

    .prologue
    .line 295
    iput-object p1, p0, Lcom/cmdm/control/bean/RepositoryInfo;->txtBoxSettingsCount:Ljava/lang/String;

    .line 296
    return-void
.end method

.method public setTxtCollectCount(Ljava/lang/String;)V
    .locals 0
    .param p1, "txtCollectCount"    # Ljava/lang/String;

    .prologue
    .line 323
    iput-object p1, p0, Lcom/cmdm/control/bean/RepositoryInfo;->txtCollectCount:Ljava/lang/String;

    .line 324
    return-void
.end method

.method public setTxtCollectLimitCount(Ljava/lang/String;)V
    .locals 0
    .param p1, "txtCollectLimitCount"    # Ljava/lang/String;

    .prologue
    .line 351
    iput-object p1, p0, Lcom/cmdm/control/bean/RepositoryInfo;->txtCollectLimitCount:Ljava/lang/String;

    .line 352
    return-void
.end method

.method public setTxtDiyLimitCount(Ljava/lang/String;)V
    .locals 0
    .param p1, "txtDiyLimitCount"    # Ljava/lang/String;

    .prologue
    .line 435
    iput-object p1, p0, Lcom/cmdm/control/bean/RepositoryInfo;->txtDiyLimitCount:Ljava/lang/String;

    .line 436
    return-void
.end method

.method public setTxtDiyPaids(Ljava/lang/String;)V
    .locals 0
    .param p1, "txtDiyPaids"    # Ljava/lang/String;

    .prologue
    .line 421
    iput-object p1, p0, Lcom/cmdm/control/bean/RepositoryInfo;->txtDiyPaids:Ljava/lang/String;

    .line 422
    return-void
.end method

.method public setTxtPaids(Ljava/lang/String;)V
    .locals 0
    .param p1, "txtPaids"    # Ljava/lang/String;

    .prologue
    .line 449
    iput-object p1, p0, Lcom/cmdm/control/bean/RepositoryInfo;->txtPaids:Ljava/lang/String;

    .line 450
    return-void
.end method

.method public setTxtSettingsCount(Ljava/lang/String;)V
    .locals 0
    .param p1, "txtSettingsCount"    # Ljava/lang/String;

    .prologue
    .line 309
    iput-object p1, p0, Lcom/cmdm/control/bean/RepositoryInfo;->txtSettingsCount:Ljava/lang/String;

    .line 310
    return-void
.end method

.method public setVideoFavorite(Ljava/lang/String;)V
    .locals 0
    .param p1, "videoFavorite"    # Ljava/lang/String;

    .prologue
    .line 407
    iput-object p1, p0, Lcom/cmdm/control/bean/RepositoryInfo;->videoFavorite:Ljava/lang/String;

    .line 408
    return-void
.end method

.method public setVideoPaids(Ljava/lang/String;)V
    .locals 0
    .param p1, "videoPaids"    # Ljava/lang/String;

    .prologue
    .line 379
    iput-object p1, p0, Lcom/cmdm/control/bean/RepositoryInfo;->videoPaids:Ljava/lang/String;

    .line 380
    return-void
.end method

.method public setVideoSettings(Ljava/lang/String;)V
    .locals 0
    .param p1, "videoSettings"    # Ljava/lang/String;

    .prologue
    .line 393
    iput-object p1, p0, Lcom/cmdm/control/bean/RepositoryInfo;->videoSettings:Ljava/lang/String;

    .line 394
    return-void
.end method
