.class public Lcom/samsung/android/cover/CoverState;
.super Ljava/lang/Object;
.source "CoverState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cover/CoverState$1;
    }
.end annotation


# static fields
.field public static final COLOR_BLACK:I = 0x1

.field public static final COLOR_BLUE:I = 0x5

.field public static final COLOR_BLUSH_PINK:I = 0x8

.field public static final COLOR_BRONZE:I = 0xe

.field public static final COLOR_CARBON_METAL:I = 0x6

.field public static final COLOR_CHARCOAL:I = 0xa

.field public static final COLOR_CHARCOAL_GRAY:I = 0xa

.field public static final COLOR_CLASSIC_WHITE:I = 0x2

.field public static final COLOR_DEFAULT:I = 0x0

.field public static final COLOR_GOLD:I = 0x7

.field public static final COLOR_GRAYISH_BLUE:I = 0x9

.field public static final COLOR_GREEN:I = 0xb

.field public static final COLOR_INDIGO_BLUE:I = 0x5

.field public static final COLOR_JET_BLACK:I = 0x1

.field public static final COLOR_MAGENTA:I = 0x3

.field public static final COLOR_MINT:I = 0x9

.field public static final COLOR_MINT_BLUE:I = 0x9

.field public static final COLOR_MUSTARD_YELLOW:I = 0xc

.field public static final COLOR_NAVY:I = 0x4

.field public static final COLOR_NFC_SMART_COVER:I = 0xff

.field public static final COLOR_OATMEAL:I = 0xc

.field public static final COLOR_OATMEAL_BEIGE:I = 0xc

.field public static final COLOR_ORANGE:I = 0xd

.field public static final COLOR_PEAKCOCK_GREEN:I = 0xb

.field public static final COLOR_PEARL_WHITE:I = 0x2

.field public static final COLOR_PINK:I = 0x8

.field public static final COLOR_PLUM:I = 0x3

.field public static final COLOR_PLUM_RED:I = 0x3

.field public static final COLOR_ROSE_GOLD:I = 0x7

.field public static final COLOR_SILVER:I = 0x6

.field public static final COLOR_SOFT_PINK:I = 0x8

.field public static final COLOR_WHITE:I = 0x2

.field public static final COLOR_WILD_ORANGE:I = 0xd

.field public static final COLOR_YELLOW:I = 0xc

.field public static final COVER_ATTACHED:Z = true

.field public static final COVER_DETACHED:Z = false

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/cover/CoverState;",
            ">;"
        }
    .end annotation
.end field

.field public static final MODEL_DEFAULT:I = 0x0

.field public static final MODEL_TB:I = 0x3

.field public static final MODEL_TR:I = 0x2

.field public static final SWITCH_STATE_COVER_CLOSE:Z = false

.field public static final SWITCH_STATE_COVER_OPEN:Z = true

.field private static final TAG:Ljava/lang/String; = "CoverState"

.field public static final TYPE_BRAND_MONBLANC_COVER:I = 0x64

.field public static final TYPE_CLEAR_COVER:I = 0x8

.field public static final TYPE_FLIP_COVER:I = 0x0

.field public static final TYPE_HEALTH_COVER:I = 0x4

.field public static final TYPE_KEYBOARD_KOR_COVER:I = 0x9

.field public static final TYPE_KEYBOARD_US_COVER:I = 0xa

.field public static final TYPE_LED_COVER:I = 0x7

.field public static final TYPE_NEON_COVER:I = 0xb

.field public static final TYPE_NFC_SMART_COVER:I = 0xff

.field public static final TYPE_NONE:I = 0x2

.field public static final TYPE_SVIEW_CHARGER_COVER:I = 0x3

.field public static final TYPE_SVIEW_COVER:I = 0x1

.field public static final TYPE_S_CHARGER_COVER:I = 0x5

.field public static final TYPE_S_VIEW_WALLET_COVER:I = 0x6


# instance fields
.field public attached:Z

.field public color:I

.field public fakeCover:Z

.field public heightPixel:I

.field public model:I

.field public serialNumber:Ljava/lang/String;

.field public smartCoverAppUri:Ljava/lang/String;

.field public smartCoverCookie:[B

.field public switchState:Z

.field public type:I

.field public widthPixel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 532
    new-instance v0, Lcom/samsung/android/cover/CoverState$1;

    invoke-direct {v0}, Lcom/samsung/android/cover/CoverState$1;-><init>()V

    sput-object v0, Lcom/samsung/android/cover/CoverState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 346
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 347
    iput v1, p0, Lcom/samsung/android/cover/CoverState;->color:I

    .line 348
    iput v1, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    .line 349
    iput v1, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    .line 350
    iput-boolean v1, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    .line 351
    iput v1, p0, Lcom/samsung/android/cover/CoverState;->model:I

    .line 354
    iput-object v2, p0, Lcom/samsung/android/cover/CoverState;->serialNumber:Ljava/lang/String;

    .line 355
    iput-object v2, p0, Lcom/samsung/android/cover/CoverState;->smartCoverCookie:[B

    .line 356
    iput-object v2, p0, Lcom/samsung/android/cover/CoverState;->serialNumber:Ljava/lang/String;

    .line 357
    iput-boolean v1, p0, Lcom/samsung/android/cover/CoverState;->fakeCover:Z

    .line 344
    return-void
.end method

.method public constructor <init>(III)V
    .locals 2
    .param p1, "defaultType"    # I
    .param p2, "defaultWidthPixel"    # I
    .param p3, "defaultHeightPixel"    # I

    .prologue
    const/4 v1, 0x0

    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 370
    iput p1, p0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 371
    iput v1, p0, Lcom/samsung/android/cover/CoverState;->color:I

    .line 372
    iput p2, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    .line 373
    iput p3, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    .line 374
    iput-boolean v1, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    .line 375
    iput v1, p0, Lcom/samsung/android/cover/CoverState;->model:I

    .line 368
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 446
    invoke-direct {p0, p1}, Lcom/samsung/android/cover/CoverState;->readFromParcel(Landroid/os/Parcel;)V

    .line 445
    return-void
.end method

.method public constructor <init>(ZIIII)V
    .locals 1
    .param p1, "switchState"    # Z
    .param p2, "type"    # I
    .param p3, "color"    # I
    .param p4, "widthPixel"    # I
    .param p5, "heightPixel"    # I

    .prologue
    const/4 v0, 0x0

    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    iput-boolean p1, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 389
    iput p2, p0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 390
    iput p3, p0, Lcom/samsung/android/cover/CoverState;->color:I

    .line 391
    iput p4, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    .line 392
    iput p5, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    .line 393
    iput-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    .line 394
    iput v0, p0, Lcom/samsung/android/cover/CoverState;->model:I

    .line 387
    return-void
.end method

.method public constructor <init>(ZIIIIZ)V
    .locals 1
    .param p1, "switchState"    # Z
    .param p2, "type"    # I
    .param p3, "color"    # I
    .param p4, "widthPixel"    # I
    .param p5, "heightPixel"    # I
    .param p6, "attached"    # Z

    .prologue
    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 407
    iput-boolean p1, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 408
    iput p2, p0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 409
    iput p3, p0, Lcom/samsung/android/cover/CoverState;->color:I

    .line 410
    iput p4, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    .line 411
    iput p5, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    .line 412
    iput-boolean p6, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    .line 413
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->model:I

    .line 406
    return-void
.end method

.method public constructor <init>(ZIIIIZI)V
    .locals 0
    .param p1, "switchState"    # Z
    .param p2, "type"    # I
    .param p3, "color"    # I
    .param p4, "widthPixel"    # I
    .param p5, "heightPixel"    # I
    .param p6, "attached"    # Z
    .param p7, "model"    # I

    .prologue
    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 417
    iput-boolean p1, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 418
    iput p2, p0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 419
    iput p3, p0, Lcom/samsung/android/cover/CoverState;->color:I

    .line 420
    iput p4, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    .line 421
    iput p5, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    .line 422
    iput-boolean p6, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    .line 423
    iput p7, p0, Lcom/samsung/android/cover/CoverState;->model:I

    .line 416
    return-void
.end method

.method public constructor <init>(ZIIZILjava/lang/String;[BLjava/lang/String;Z)V
    .locals 0
    .param p1, "switchState"    # Z
    .param p2, "type"    # I
    .param p3, "color"    # I
    .param p4, "attached"    # Z
    .param p5, "model"    # I
    .param p6, "installUri"    # Ljava/lang/String;
    .param p7, "vendorData"    # [B
    .param p8, "serialNumber"    # Ljava/lang/String;
    .param p9, "isFake"    # Z

    .prologue
    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 427
    iput-boolean p1, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 428
    iput p2, p0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 429
    iput p3, p0, Lcom/samsung/android/cover/CoverState;->color:I

    .line 430
    iput-boolean p4, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    .line 431
    iput p5, p0, Lcom/samsung/android/cover/CoverState;->model:I

    .line 433
    iput-object p6, p0, Lcom/samsung/android/cover/CoverState;->smartCoverAppUri:Ljava/lang/String;

    .line 434
    iput-object p7, p0, Lcom/samsung/android/cover/CoverState;->smartCoverCookie:[B

    .line 435
    iput-object p8, p0, Lcom/samsung/android/cover/CoverState;->serialNumber:Ljava/lang/String;

    .line 436
    iput-boolean p9, p0, Lcom/samsung/android/cover/CoverState;->fakeCover:Z

    .line 426
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 505
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_3

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 506
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 507
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/cover/CoverState;->color:I

    .line 508
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    .line 509
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    .line 510
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_4

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    .line 511
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/cover/CoverState;->model:I

    .line 512
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 513
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/cover/CoverState;->smartCoverAppUri:Ljava/lang/String;

    .line 515
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 516
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 517
    .local v0, "smartCoverCookieLength":I
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/samsung/android/cover/CoverState;->smartCoverCookie:[B

    .line 518
    iget-object v1, p0, Lcom/samsung/android/cover/CoverState;->smartCoverCookie:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 521
    .end local v0    # "smartCoverCookieLength":I
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 522
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/cover/CoverState;->serialNumber:Ljava/lang/String;

    .line 524
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_5

    :goto_2
    iput-boolean v2, p0, Lcom/samsung/android/cover/CoverState;->fakeCover:Z

    .line 504
    return-void

    :cond_3
    move v1, v3

    .line 505
    goto :goto_0

    :cond_4
    move v1, v3

    .line 510
    goto :goto_1

    :cond_5
    move v2, v3

    .line 524
    goto :goto_2
.end method


# virtual methods
.method public copyFrom(Lcom/samsung/android/cover/CoverState;)V
    .locals 1
    .param p1, "o"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 615
    iget-boolean v0, p1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iput-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 616
    iget v0, p1, Lcom/samsung/android/cover/CoverState;->type:I

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 617
    iget v0, p1, Lcom/samsung/android/cover/CoverState;->color:I

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->color:I

    .line 618
    iget v0, p1, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    .line 619
    iget v0, p1, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    .line 620
    iget-boolean v0, p1, Lcom/samsung/android/cover/CoverState;->attached:Z

    iput-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    .line 621
    iget v0, p1, Lcom/samsung/android/cover/CoverState;->model:I

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->model:I

    .line 623
    iget-object v0, p1, Lcom/samsung/android/cover/CoverState;->smartCoverAppUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/cover/CoverState;->smartCoverAppUri:Ljava/lang/String;

    .line 624
    iget-object v0, p1, Lcom/samsung/android/cover/CoverState;->smartCoverCookie:[B

    iput-object v0, p0, Lcom/samsung/android/cover/CoverState;->smartCoverCookie:[B

    .line 625
    iget-boolean v0, p1, Lcom/samsung/android/cover/CoverState;->fakeCover:Z

    iput-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->fakeCover:Z

    .line 626
    iget-object v0, p1, Lcom/samsung/android/cover/CoverState;->serialNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/cover/CoverState;->serialNumber:Ljava/lang/String;

    .line 614
    return-void
.end method

.method public describeContents()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 457
    const/4 v0, 0x0

    return v0
.end method

.method public getAttachState()Z
    .locals 1

    .prologue
    .line 707
    iget-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    return v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 667
    iget v0, p0, Lcom/samsung/android/cover/CoverState;->color:I

    return v0
.end method

.method public getModel()I
    .locals 1

    .prologue
    .line 715
    iget v0, p0, Lcom/samsung/android/cover/CoverState;->model:I

    return v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 748
    iget-object v0, p0, Lcom/samsung/android/cover/CoverState;->serialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getSmartCoverAppUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 732
    iget-object v0, p0, Lcom/samsung/android/cover/CoverState;->smartCoverAppUri:Ljava/lang/String;

    return-object v0
.end method

.method public getSmartCoverCookie()[B
    .locals 1

    .prologue
    .line 724
    iget-object v0, p0, Lcom/samsung/android/cover/CoverState;->smartCoverCookie:[B

    return-object v0
.end method

.method public getSwitchState()Z
    .locals 1

    .prologue
    .line 639
    iget-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 653
    iget v0, p0, Lcom/samsung/android/cover/CoverState;->type:I

    return v0
.end method

.method public getWindowHeight()I
    .locals 1

    .prologue
    .line 693
    iget v0, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    return v0
.end method

.method public getWindowWidth()I
    .locals 1

    .prologue
    .line 680
    iget v0, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    return v0
.end method

.method public isFakeCover()Z
    .locals 1

    .prologue
    .line 740
    iget-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->fakeCover:Z

    return v0
.end method

.method public setAttachState(Z)V
    .locals 0
    .param p1, "attached"    # Z

    .prologue
    .line 711
    iput-boolean p1, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    .line 710
    return-void
.end method

.method public setColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 671
    iput p1, p0, Lcom/samsung/android/cover/CoverState;->color:I

    .line 670
    return-void
.end method

.method public setFakeCover(Z)V
    .locals 0
    .param p1, "faked"    # Z

    .prologue
    .line 744
    iput-boolean p1, p0, Lcom/samsung/android/cover/CoverState;->fakeCover:Z

    .line 743
    return-void
.end method

.method public setModel(I)V
    .locals 0
    .param p1, "model"    # I

    .prologue
    .line 719
    iput p1, p0, Lcom/samsung/android/cover/CoverState;->model:I

    .line 718
    return-void
.end method

.method public setSerialNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "serial"    # Ljava/lang/String;

    .prologue
    .line 752
    iput-object p1, p0, Lcom/samsung/android/cover/CoverState;->serialNumber:Ljava/lang/String;

    .line 751
    return-void
.end method

.method public setSmartCoverAppUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 736
    iput-object p1, p0, Lcom/samsung/android/cover/CoverState;->smartCoverAppUri:Ljava/lang/String;

    .line 735
    return-void
.end method

.method public setSmartCoverCookie([B)V
    .locals 0
    .param p1, "extraData"    # [B

    .prologue
    .line 728
    iput-object p1, p0, Lcom/samsung/android/cover/CoverState;->smartCoverCookie:[B

    .line 727
    return-void
.end method

.method public setSwitchState(Z)V
    .locals 0
    .param p1, "switchState"    # Z

    .prologue
    .line 643
    iput-boolean p1, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 642
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 657
    iput p1, p0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 656
    return-void
.end method

.method public setWindowHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 697
    iput p1, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    .line 696
    return-void
.end method

.method public setWindowWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 684
    iput p1, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    .line 683
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 553
    const-string/jumbo v0, "CoverState(switchState=%b type=%d color=%d widthPixel=%d heightPixel=%d model=%d attached=%b)"

    .line 552
    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    .line 554
    iget-boolean v2, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/samsung/android/cover/CoverState;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lcom/samsung/android/cover/CoverState;->color:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget v2, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget v2, p0, Lcom/samsung/android/cover/CoverState;->model:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 552
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateCoverState(IIII)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "color"    # I
    .param p3, "widthPixel"    # I
    .param p4, "heightPixel"    # I

    .prologue
    .line 560
    iput p1, p0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 561
    iput p2, p0, Lcom/samsung/android/cover/CoverState;->color:I

    .line 562
    iput p3, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    .line 563
    iput p4, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    .line 559
    return-void
.end method

.method public updateCoverState(IIIII)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "color"    # I
    .param p3, "widthPixel"    # I
    .param p4, "heightPixel"    # I
    .param p5, "model"    # I

    .prologue
    .line 589
    iput p1, p0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 590
    iput p2, p0, Lcom/samsung/android/cover/CoverState;->color:I

    .line 591
    iput p3, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    .line 592
    iput p4, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    .line 593
    iput p5, p0, Lcom/samsung/android/cover/CoverState;->model:I

    .line 588
    return-void
.end method

.method public updateCoverState(IIIIZI)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "color"    # I
    .param p3, "widthPixel"    # I
    .param p4, "heightPixel"    # I
    .param p5, "attached"    # Z
    .param p6, "model"    # I

    .prologue
    .line 599
    iput p1, p0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 600
    iput p2, p0, Lcom/samsung/android/cover/CoverState;->color:I

    .line 601
    iput p3, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    .line 602
    iput p4, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    .line 603
    iput-boolean p5, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    .line 604
    iput p6, p0, Lcom/samsung/android/cover/CoverState;->model:I

    .line 598
    return-void
.end method

.method public updateCoverState(ZIIII)V
    .locals 0
    .param p1, "switchState"    # Z
    .param p2, "type"    # I
    .param p3, "color"    # I
    .param p4, "widthPixel"    # I
    .param p5, "heightPixel"    # I

    .prologue
    .line 569
    iput-boolean p1, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 570
    iput p2, p0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 571
    iput p3, p0, Lcom/samsung/android/cover/CoverState;->color:I

    .line 572
    iput p4, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    .line 573
    iput p5, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    .line 568
    return-void
.end method

.method public updateCoverState(ZIIIIZ)V
    .locals 0
    .param p1, "switchState"    # Z
    .param p2, "type"    # I
    .param p3, "color"    # I
    .param p4, "widthPixel"    # I
    .param p5, "heightPixel"    # I
    .param p6, "attached"    # Z

    .prologue
    .line 579
    iput-boolean p1, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 580
    iput p2, p0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 581
    iput p3, p0, Lcom/samsung/android/cover/CoverState;->color:I

    .line 582
    iput p4, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    .line 583
    iput p5, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    .line 584
    iput-boolean p6, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    .line 578
    return-void
.end method

.method public updateCoverWindowSize(II)V
    .locals 0
    .param p1, "widthPixel"    # I
    .param p2, "heightPixel"    # I

    .prologue
    .line 609
    iput p1, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    .line 610
    iput p2, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    .line 608
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 468
    iget-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 469
    iget v0, p0, Lcom/samsung/android/cover/CoverState;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 470
    iget v0, p0, Lcom/samsung/android/cover/CoverState;->color:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 471
    iget v0, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 472
    iget v0, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 473
    iget-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 474
    iget v0, p0, Lcom/samsung/android/cover/CoverState;->model:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 476
    iget-object v0, p0, Lcom/samsung/android/cover/CoverState;->smartCoverAppUri:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 477
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 482
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/cover/CoverState;->smartCoverCookie:[B

    if-nez v0, :cond_3

    .line 483
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 489
    :goto_3
    iget-object v0, p0, Lcom/samsung/android/cover/CoverState;->serialNumber:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 490
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 495
    :goto_4
    iget-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->fakeCover:Z

    if-eqz v0, :cond_5

    :goto_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 467
    return-void

    :cond_0
    move v0, v2

    .line 468
    goto :goto_0

    :cond_1
    move v0, v2

    .line 473
    goto :goto_1

    .line 479
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 480
    iget-object v0, p0, Lcom/samsung/android/cover/CoverState;->smartCoverAppUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2

    .line 485
    :cond_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 486
    iget-object v0, p0, Lcom/samsung/android/cover/CoverState;->smartCoverCookie:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 487
    iget-object v0, p0, Lcom/samsung/android/cover/CoverState;->smartCoverCookie:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_3

    .line 492
    :cond_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 493
    iget-object v0, p0, Lcom/samsung/android/cover/CoverState;->serialNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    move v1, v2

    .line 495
    goto :goto_5
.end method
