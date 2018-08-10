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

.field public static final FOTA_MODE_NONE:I = 0x0

.field public static final FRIENDS_TYPE_BACK_COVER:I = 0x1

.field public static final FRIENDS_TYPE_FLIP_COVER:I = 0x2

.field public static final FRIENDS_TYPE_NONE:I = 0x0

.field public static final MODEL_DEFAULT:I = 0x0

.field public static final MODEL_TB:I = 0x3

.field public static final MODEL_TR:I = 0x2

.field public static final SWITCH_STATE_COVER_CLOSE:Z = false

.field public static final SWITCH_STATE_COVER_OPEN:Z = true

.field private static final TAG:Ljava/lang/String; = "CoverState"

.field public static final TYPE_ALCANTARA_COVER:I = 0xc

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

.field public fotaMode:I

.field public friendsType:I

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

    new-instance v0, Lcom/samsung/android/cover/CoverState$1;

    invoke-direct {v0}, Lcom/samsung/android/cover/CoverState$1;-><init>()V

    sput-object v0, Lcom/samsung/android/cover/CoverState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->type:I

    iput v1, p0, Lcom/samsung/android/cover/CoverState;->color:I

    iput v1, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iput v1, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    iput-boolean v1, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    iput v1, p0, Lcom/samsung/android/cover/CoverState;->model:I

    iput-object v2, p0, Lcom/samsung/android/cover/CoverState;->serialNumber:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/cover/CoverState;->smartCoverCookie:[B

    iput-object v2, p0, Lcom/samsung/android/cover/CoverState;->serialNumber:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/samsung/android/cover/CoverState;->fakeCover:Z

    iput v1, p0, Lcom/samsung/android/cover/CoverState;->fotaMode:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iput p1, p0, Lcom/samsung/android/cover/CoverState;->type:I

    iput v1, p0, Lcom/samsung/android/cover/CoverState;->color:I

    iput p2, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iput p3, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    iput-boolean v1, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    iput v1, p0, Lcom/samsung/android/cover/CoverState;->model:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/samsung/android/cover/CoverState;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(ZIIII)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iput p2, p0, Lcom/samsung/android/cover/CoverState;->type:I

    iput p3, p0, Lcom/samsung/android/cover/CoverState;->color:I

    iput p4, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iput p5, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    iput-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->model:I

    return-void
.end method

.method public constructor <init>(ZIIIIZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iput p2, p0, Lcom/samsung/android/cover/CoverState;->type:I

    iput p3, p0, Lcom/samsung/android/cover/CoverState;->color:I

    iput p4, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iput p5, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    iput-boolean p6, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->model:I

    return-void
.end method

.method public constructor <init>(ZIIIIZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iput p2, p0, Lcom/samsung/android/cover/CoverState;->type:I

    iput p3, p0, Lcom/samsung/android/cover/CoverState;->color:I

    iput p4, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iput p5, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    iput-boolean p6, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    iput p7, p0, Lcom/samsung/android/cover/CoverState;->model:I

    return-void
.end method

.method public constructor <init>(ZIIZILjava/lang/String;[BLjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iput p2, p0, Lcom/samsung/android/cover/CoverState;->type:I

    iput p3, p0, Lcom/samsung/android/cover/CoverState;->color:I

    iput-boolean p4, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    iput p5, p0, Lcom/samsung/android/cover/CoverState;->model:I

    iput-object p6, p0, Lcom/samsung/android/cover/CoverState;->smartCoverAppUri:Ljava/lang/String;

    iput-object p7, p0, Lcom/samsung/android/cover/CoverState;->smartCoverCookie:[B

    iput-object p8, p0, Lcom/samsung/android/cover/CoverState;->serialNumber:Ljava/lang/String;

    iput-boolean p9, p0, Lcom/samsung/android/cover/CoverState;->fakeCover:Z

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_3

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/cover/CoverState;->type:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/cover/CoverState;->color:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_4

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/cover/CoverState;->model:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/cover/CoverState;->smartCoverAppUri:Ljava/lang/String;

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/samsung/android/cover/CoverState;->smartCoverCookie:[B

    iget-object v1, p0, Lcom/samsung/android/cover/CoverState;->smartCoverCookie:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/cover/CoverState;->serialNumber:Ljava/lang/String;

    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_5

    :goto_2
    iput-boolean v2, p0, Lcom/samsung/android/cover/CoverState;->fakeCover:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/cover/CoverState;->fotaMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/cover/CoverState;->friendsType:I

    return-void

    :cond_3
    move v1, v3

    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_1

    :cond_5
    move v2, v3

    goto :goto_2
.end method


# virtual methods
.method public copyFrom(Lcom/samsung/android/cover/CoverState;)V
    .locals 1

    iget-boolean v0, p1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iput-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iget v0, p1, Lcom/samsung/android/cover/CoverState;->type:I

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->type:I

    iget v0, p1, Lcom/samsung/android/cover/CoverState;->color:I

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->color:I

    iget v0, p1, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iget v0, p1, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    iget-boolean v0, p1, Lcom/samsung/android/cover/CoverState;->attached:Z

    iput-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    iget v0, p1, Lcom/samsung/android/cover/CoverState;->model:I

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->model:I

    iget-object v0, p1, Lcom/samsung/android/cover/CoverState;->smartCoverAppUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/cover/CoverState;->smartCoverAppUri:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/cover/CoverState;->smartCoverCookie:[B

    iput-object v0, p0, Lcom/samsung/android/cover/CoverState;->smartCoverCookie:[B

    iget-boolean v0, p1, Lcom/samsung/android/cover/CoverState;->fakeCover:Z

    iput-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->fakeCover:Z

    iget-object v0, p1, Lcom/samsung/android/cover/CoverState;->serialNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/cover/CoverState;->serialNumber:Ljava/lang/String;

    iget v0, p1, Lcom/samsung/android/cover/CoverState;->fotaMode:I

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->fotaMode:I

    iget v0, p1, Lcom/samsung/android/cover/CoverState;->friendsType:I

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->friendsType:I

    return-void
.end method

.method public describeContents()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public getAttachState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    return v0
.end method

.method public getColor()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/cover/CoverState;->color:I

    return v0
.end method

.method public getFotaMode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/cover/CoverState;->fotaMode:I

    return v0
.end method

.method public getFriendsType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/cover/CoverState;->friendsType:I

    return v0
.end method

.method public getModel()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/cover/CoverState;->model:I

    return v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/cover/CoverState;->serialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getSmartCoverAppUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/cover/CoverState;->smartCoverAppUri:Ljava/lang/String;

    return-object v0
.end method

.method public getSmartCoverCookie()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/cover/CoverState;->smartCoverCookie:[B

    return-object v0
.end method

.method public getSwitchState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/cover/CoverState;->type:I

    return v0
.end method

.method public getWindowHeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    return v0
.end method

.method public getWindowWidth()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    return v0
.end method

.method public isFakeCover()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->fakeCover:Z

    return v0
.end method

.method public setAttachState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    return-void
.end method

.method public setColor(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/cover/CoverState;->color:I

    return-void
.end method

.method public setFakeCover(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/cover/CoverState;->fakeCover:Z

    return-void
.end method

.method public setFotaMode(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/cover/CoverState;->fotaMode:I

    return-void
.end method

.method public setFriendsType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/cover/CoverState;->friendsType:I

    return-void
.end method

.method public setModel(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/cover/CoverState;->model:I

    return-void
.end method

.method public setSerialNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/cover/CoverState;->serialNumber:Ljava/lang/String;

    return-void
.end method

.method public setSmartCoverAppUri(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/cover/CoverState;->smartCoverAppUri:Ljava/lang/String;

    return-void
.end method

.method public setSmartCoverCookie([B)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/cover/CoverState;->smartCoverCookie:[B

    return-void
.end method

.method public setSwitchState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/cover/CoverState;->type:I

    return-void
.end method

.method public setWindowHeight(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    return-void
.end method

.method public setWindowWidth(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "CoverState(switchState=%b type=%d color=%d widthPixel=%d heightPixel=%d model=%d attached=%b fotaMode=%d friendsType=%d)"

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Object;

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

    iget v2, p0, Lcom/samsung/android/cover/CoverState;->fotaMode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    iget v2, p0, Lcom/samsung/android/cover/CoverState;->friendsType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x8

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateCoverState(IIII)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/cover/CoverState;->type:I

    iput p2, p0, Lcom/samsung/android/cover/CoverState;->color:I

    iput p3, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iput p4, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    return-void
.end method

.method public updateCoverState(IIIII)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/cover/CoverState;->type:I

    iput p2, p0, Lcom/samsung/android/cover/CoverState;->color:I

    iput p3, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iput p4, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    iput p5, p0, Lcom/samsung/android/cover/CoverState;->model:I

    return-void
.end method

.method public updateCoverState(IIIIZI)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/cover/CoverState;->type:I

    iput p2, p0, Lcom/samsung/android/cover/CoverState;->color:I

    iput p3, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iput p4, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    iput-boolean p5, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    iput p6, p0, Lcom/samsung/android/cover/CoverState;->model:I

    return-void
.end method

.method public updateCoverState(ZIIII)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iput p2, p0, Lcom/samsung/android/cover/CoverState;->type:I

    iput p3, p0, Lcom/samsung/android/cover/CoverState;->color:I

    iput p4, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iput p5, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    return-void
.end method

.method public updateCoverState(ZIIIIZ)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iput p2, p0, Lcom/samsung/android/cover/CoverState;->type:I

    iput p3, p0, Lcom/samsung/android/cover/CoverState;->color:I

    iput p4, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iput p5, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    iput-boolean p6, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    return-void
.end method

.method public updateCoverWindowSize(II)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iput p2, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/cover/CoverState;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/cover/CoverState;->color:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/cover/CoverState;->model:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/cover/CoverState;->smartCoverAppUri:Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    iget-object v0, p0, Lcom/samsung/android/cover/CoverState;->smartCoverCookie:[B

    if-nez v0, :cond_3

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    iget-object v0, p0, Lcom/samsung/android/cover/CoverState;->serialNumber:Ljava/lang/String;

    if-nez v0, :cond_4

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4
    iget-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->fakeCover:Z

    if-eqz v0, :cond_5

    :goto_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/cover/CoverState;->fotaMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/cover/CoverState;->friendsType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/cover/CoverState;->smartCoverAppUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/cover/CoverState;->smartCoverCookie:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/cover/CoverState;->smartCoverCookie:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_3

    :cond_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/cover/CoverState;->serialNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    move v1, v2

    goto :goto_5
.end method
