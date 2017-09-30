.class public Lcom/samsung/android/sdk/cover/ScoverState;
.super Ljava/lang/Object;


# static fields
.field public static final COLOR_BLACK:I = 0x1

.field public static final COLOR_BLUE:I = 0x5

.field public static final COLOR_BLUSH_PINK:I = 0x8

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

.field public static final FOTA_MODE_NONE:I = 0x0

.field public static final MODEL_DEFAULT:I = 0x0

.field public static final SWITCH_STATE_COVER_CLOSE:Z = false

.field public static final SWITCH_STATE_COVER_OPEN:Z = true

.field private static final TAG:Ljava/lang/String; = "ScoverState"

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

.field private fakeCover:Z

.field private fotaMode:I

.field private heightPixel:I

.field public model:I

.field private switchState:Z

.field public type:I

.field private widthPixel:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/cover/ScoverState;->switchState:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/sdk/cover/ScoverState;->type:I

    iput v1, p0, Lcom/samsung/android/sdk/cover/ScoverState;->color:I

    iput v1, p0, Lcom/samsung/android/sdk/cover/ScoverState;->widthPixel:I

    iput v1, p0, Lcom/samsung/android/sdk/cover/ScoverState;->heightPixel:I

    iput-boolean v1, p0, Lcom/samsung/android/sdk/cover/ScoverState;->attached:Z

    iput v1, p0, Lcom/samsung/android/sdk/cover/ScoverState;->model:I

    iput-boolean v1, p0, Lcom/samsung/android/sdk/cover/ScoverState;->fakeCover:Z

    iput v1, p0, Lcom/samsung/android/sdk/cover/ScoverState;->fotaMode:I

    return-void
.end method

.method public constructor <init>(ZIIII)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/samsung/android/sdk/cover/ScoverState;->switchState:Z

    iput p2, p0, Lcom/samsung/android/sdk/cover/ScoverState;->type:I

    iput p3, p0, Lcom/samsung/android/sdk/cover/ScoverState;->color:I

    iput p4, p0, Lcom/samsung/android/sdk/cover/ScoverState;->widthPixel:I

    iput p5, p0, Lcom/samsung/android/sdk/cover/ScoverState;->heightPixel:I

    iput-boolean v0, p0, Lcom/samsung/android/sdk/cover/ScoverState;->attached:Z

    iput v0, p0, Lcom/samsung/android/sdk/cover/ScoverState;->model:I

    iput-boolean v0, p0, Lcom/samsung/android/sdk/cover/ScoverState;->fakeCover:Z

    iput v0, p0, Lcom/samsung/android/sdk/cover/ScoverState;->fotaMode:I

    return-void
.end method

.method public constructor <init>(ZIIIIZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/samsung/android/sdk/cover/ScoverState;->switchState:Z

    iput p2, p0, Lcom/samsung/android/sdk/cover/ScoverState;->type:I

    iput p3, p0, Lcom/samsung/android/sdk/cover/ScoverState;->color:I

    iput p4, p0, Lcom/samsung/android/sdk/cover/ScoverState;->widthPixel:I

    iput p5, p0, Lcom/samsung/android/sdk/cover/ScoverState;->heightPixel:I

    iput-boolean p6, p0, Lcom/samsung/android/sdk/cover/ScoverState;->attached:Z

    iput v0, p0, Lcom/samsung/android/sdk/cover/ScoverState;->model:I

    iput-boolean v0, p0, Lcom/samsung/android/sdk/cover/ScoverState;->fakeCover:Z

    iput v0, p0, Lcom/samsung/android/sdk/cover/ScoverState;->fotaMode:I

    return-void
.end method

.method public constructor <init>(ZIIIIZI)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/samsung/android/sdk/cover/ScoverState;->switchState:Z

    iput p2, p0, Lcom/samsung/android/sdk/cover/ScoverState;->type:I

    iput p3, p0, Lcom/samsung/android/sdk/cover/ScoverState;->color:I

    iput p4, p0, Lcom/samsung/android/sdk/cover/ScoverState;->widthPixel:I

    iput p5, p0, Lcom/samsung/android/sdk/cover/ScoverState;->heightPixel:I

    iput-boolean p6, p0, Lcom/samsung/android/sdk/cover/ScoverState;->attached:Z

    iput p7, p0, Lcom/samsung/android/sdk/cover/ScoverState;->model:I

    iput-boolean v0, p0, Lcom/samsung/android/sdk/cover/ScoverState;->fakeCover:Z

    iput v0, p0, Lcom/samsung/android/sdk/cover/ScoverState;->fotaMode:I

    return-void
.end method

.method public constructor <init>(ZIIIIZIZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/samsung/android/sdk/cover/ScoverState;->switchState:Z

    iput p2, p0, Lcom/samsung/android/sdk/cover/ScoverState;->type:I

    iput p3, p0, Lcom/samsung/android/sdk/cover/ScoverState;->color:I

    iput p4, p0, Lcom/samsung/android/sdk/cover/ScoverState;->widthPixel:I

    iput p5, p0, Lcom/samsung/android/sdk/cover/ScoverState;->heightPixel:I

    iput-boolean p6, p0, Lcom/samsung/android/sdk/cover/ScoverState;->attached:Z

    iput p7, p0, Lcom/samsung/android/sdk/cover/ScoverState;->model:I

    iput-boolean p8, p0, Lcom/samsung/android/sdk/cover/ScoverState;->fakeCover:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/cover/ScoverState;->fotaMode:I

    return-void
.end method

.method public constructor <init>(ZIIIIZIZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/samsung/android/sdk/cover/ScoverState;->switchState:Z

    iput p2, p0, Lcom/samsung/android/sdk/cover/ScoverState;->type:I

    iput p3, p0, Lcom/samsung/android/sdk/cover/ScoverState;->color:I

    iput p4, p0, Lcom/samsung/android/sdk/cover/ScoverState;->widthPixel:I

    iput p5, p0, Lcom/samsung/android/sdk/cover/ScoverState;->heightPixel:I

    iput-boolean p6, p0, Lcom/samsung/android/sdk/cover/ScoverState;->attached:Z

    iput p7, p0, Lcom/samsung/android/sdk/cover/ScoverState;->model:I

    iput-boolean p8, p0, Lcom/samsung/android/sdk/cover/ScoverState;->fakeCover:Z

    iput p9, p0, Lcom/samsung/android/sdk/cover/ScoverState;->fotaMode:I

    return-void
.end method


# virtual methods
.method public getAttachState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/cover/ScoverState;->attached:Z

    return v0
.end method

.method public getColor()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/cover/ScoverState;->color:I

    return v0
.end method

.method public getFotaMode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/cover/ScoverState;->fotaMode:I

    return v0
.end method

.method public getModel()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/cover/ScoverState;->model:I

    return v0
.end method

.method public getSwitchState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/cover/ScoverState;->switchState:Z

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/cover/ScoverState;->type:I

    return v0
.end method

.method public getWindowHeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/cover/ScoverState;->heightPixel:I

    return v0
.end method

.method public getWindowWidth()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/cover/ScoverState;->widthPixel:I

    return v0
.end method

.method public isFakeCover()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/cover/ScoverState;->fakeCover:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "ScoverState(switchState=%b type=%d color=%d widthPixel=%d heightPixel=%d attached=%b fakeCover=%b fotaMode=%d)"

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/samsung/android/sdk/cover/ScoverState;->switchState:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/samsung/android/sdk/cover/ScoverState;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/samsung/android/sdk/cover/ScoverState;->color:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/samsung/android/sdk/cover/ScoverState;->widthPixel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/samsung/android/sdk/cover/ScoverState;->heightPixel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-boolean v3, p0, Lcom/samsung/android/sdk/cover/ScoverState;->attached:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-boolean v3, p0, Lcom/samsung/android/sdk/cover/ScoverState;->fakeCover:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget v3, p0, Lcom/samsung/android/sdk/cover/ScoverState;->fotaMode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
