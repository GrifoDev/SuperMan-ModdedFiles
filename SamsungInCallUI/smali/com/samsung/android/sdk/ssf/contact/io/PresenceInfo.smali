.class public final enum Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

.field public static final enum PRESENCE_AVAILABLE:Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

.field public static final enum PRESENCE_BLOCKING:Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

.field public static final enum PRESENCE_CAR_MODE:Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

.field public static final enum PRESENCE_EMERGENCY_MODE:Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

.field public static final enum PRESENCE_LOW_BATTERY:Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

.field public static final enum PRESENCE_MANUAL_ANGRY:Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

.field public static final enum PRESENCE_MANUAL_ATCINEMA:Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

.field public static final enum PRESENCE_MANUAL_AVAILABLE:Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

.field public static final enum PRESENCE_MANUAL_BUSY:Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

.field public static final enum PRESENCE_MANUAL_HAPPY:Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

.field public static final enum PRESENCE_MANUAL_INCLASS:Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

.field public static final enum PRESENCE_MANUAL_INCONFERENCE:Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

.field public static final enum PRESENCE_MANUAL_INDRIVING:Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

.field public static final enum PRESENCE_MANUAL_ONJOURNEY:Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

.field public static final enum PRESENCE_MANUAL_SAD:Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

.field public static final enum PRESENCE_MANUAL_SET_AUTO:Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

.field public static final enum PRESENCE_MANUAL_SICK:Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

.field public static final enum PRESENCE_MANUAL_TIRED:Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

.field public static final enum PRESENCE_NOT_AVAILABLE:Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

.field public static final enum PRESENCE_ROAMING:Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

.field public static final enum PRESENCE_SUPER_SAVE_MODE:Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

.field public static final enum PRESENCE_WORKOUT_MODE:Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

.field private static values:[Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

    const-string v1, "PRESENCE_AVAILABLE"

    const/16 v2, 0x3e9

    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;->PRESENCE_AVAILABLE:Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

    new-instance v0, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

    const-string v1, "PRESENCE_NOT_AVAILABLE"

    const/16 v2, 0x3ea

    invoke-direct {v0, v1, v5, v2}, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;->PRESENCE_NOT_AVAILABLE:Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

    new-instance v0, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

    const-string v1, "PRESENCE_EMERGENCY_MODE"

    const/16 v2, 0x3eb

    invoke-direct {v0, v1, v6, v2}, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;->PRESENCE_EMERGENCY_MODE:Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

    new-instance v0, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

    const-string v1, "PRESENCE_CAR_MODE"

    const/16 v2, 0x3ec

    invoke-direct {v0, v1, v7, v2}, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;->PRESENCE_CAR_MODE:Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

    new-instance v0, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

    const-string v1, "PRESENCE_ROAMING"

    const/16 v2, 0x3ed

    invoke-direct {v0, v1, v8, v2}, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;->PRESENCE_ROAMING:Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

    new-instance v0, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

    const-string v1, "PRESENCE_BLOCKING"

    const/4 v2, 0x5

    const/16 v3, 0x3ee

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;->PRESENCE_BLOCKING:Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

    new-instance v0, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

    const-string v1, "PRESENCE_SUPER_SAVE_MODE"

    const/4 v2, 0x6

    const/16 v3, 0x3ef

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;->PRESENCE_SUPER_SAVE_MODE:Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

    new-instance v0, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

    const-string v1, "PRESENCE_LOW_BATTERY"

    const/4 v2, 0x7

    const/16 v3, 0x3f0

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;->PRESENCE_LOW_BATTERY:Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

    new-instance v0, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

    const-string v1, "PRESENCE_WORKOUT_MODE"

    const/16 v2, 0x8

    const/16 v3, 0x3f1

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;->PRESENCE_WORKOUT_MODE:Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

    new-instance v0, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

    const-string v1, "PRESENCE_MANUAL_SET_AUTO"

    const/16 v2, 0x9

    const/16 v3, 0x7d0

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;->PRESENCE_MANUAL_SET_AUTO:Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

    new-instance v0, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

    const-string v1, "PRESENCE_MANUAL_AVAILABLE"

    const/16 v2, 0xa

    const/16 v3, 0x7d1

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;->PRESENCE_MANUAL_AVAILABLE:Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

    new-instance v0, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

    const-string v1, "PRESENCE_MANUAL_BUSY"

    const/16 v2, 0xb

    const/16 v3, 0x7d2

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;->PRESENCE_MANUAL_BUSY:Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

    new-instance v0, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

    const-string v1, "PRESENCE_MANUAL_ONJOURNEY"

    const/16 v2, 0xc

    const/16 v3, 0x7d3

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;->PRESENCE_MANUAL_ONJOURNEY:Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

    new-instance v0, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

    const-string v1, "PRESENCE_MANUAL_INCONFERENCE"

    const/16 v2, 0xd

    const/16 v3, 0x7d4

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;->PRESENCE_MANUAL_INCONFERENCE:Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

    new-instance v0, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

    const-string v1, "PRESENCE_MANUAL_INCLASS"

    const/16 v2, 0xe

    const/16 v3, 0x7d5

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;->PRESENCE_MANUAL_INCLASS:Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

    new-instance v0, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

    const-string v1, "PRESENCE_MANUAL_ATCINEMA"

    const/16 v2, 0xf

    const/16 v3, 0x7d6

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;->PRESENCE_MANUAL_ATCINEMA:Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

    new-instance v0, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

    const-string v1, "PRESENCE_MANUAL_INDRIVING"

    const/16 v2, 0x10

    const/16 v3, 0x7d7

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;->PRESENCE_MANUAL_INDRIVING:Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

    new-instance v0, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

    const-string v1, "PRESENCE_MANUAL_HAPPY"

    const/16 v2, 0x11

    const/16 v3, 0x7d8

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;->PRESENCE_MANUAL_HAPPY:Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

    new-instance v0, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

    const-string v1, "PRESENCE_MANUAL_SAD"

    const/16 v2, 0x12

    const/16 v3, 0x7d9

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;->PRESENCE_MANUAL_SAD:Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

    new-instance v0, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

    const-string v1, "PRESENCE_MANUAL_ANGRY"

    const/16 v2, 0x13

    const/16 v3, 0x7da

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;->PRESENCE_MANUAL_ANGRY:Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

    new-instance v0, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

    const-string v1, "PRESENCE_MANUAL_SICK"

    const/16 v2, 0x14

    const/16 v3, 0x7db

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;->PRESENCE_MANUAL_SICK:Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

    new-instance v0, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

    const-string v1, "PRESENCE_MANUAL_TIRED"

    const/16 v2, 0x15

    const/16 v3, 0x7dc

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;->PRESENCE_MANUAL_TIRED:Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

    const/16 v0, 0x16

    new-array v0, v0, [Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

    sget-object v1, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;->PRESENCE_AVAILABLE:Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;->PRESENCE_NOT_AVAILABLE:Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;->PRESENCE_EMERGENCY_MODE:Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;->PRESENCE_CAR_MODE:Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;->PRESENCE_ROAMING:Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;->PRESENCE_BLOCKING:Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;->PRESENCE_SUPER_SAVE_MODE:Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;->PRESENCE_LOW_BATTERY:Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;->PRESENCE_WORKOUT_MODE:Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;->PRESENCE_MANUAL_SET_AUTO:Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;->PRESENCE_MANUAL_AVAILABLE:Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;->PRESENCE_MANUAL_BUSY:Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;->PRESENCE_MANUAL_ONJOURNEY:Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;->PRESENCE_MANUAL_INCONFERENCE:Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;->PRESENCE_MANUAL_INCLASS:Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;->PRESENCE_MANUAL_ATCINEMA:Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;->PRESENCE_MANUAL_INDRIVING:Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;->PRESENCE_MANUAL_HAPPY:Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;->PRESENCE_MANUAL_SAD:Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;->PRESENCE_MANUAL_ANGRY:Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;->PRESENCE_MANUAL_SICK:Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;->PRESENCE_MANUAL_TIRED:Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;->$VALUES:[Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;->values:[Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;->value:I

    return-void
.end method

.method public static fromInt(I)Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;->values:[Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;->values()[Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;->values:[Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;->values:[Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static fromValue(I)Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;
    .locals 5

    invoke-static {}, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;->values()[Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    iget v4, v0, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;->value:I

    if-ne v4, p0, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;->$VALUES:[Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;

    return-object v0
.end method


# virtual methods
.method public getStringValue()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;->value:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/PresenceInfo;->value:I

    return v0
.end method
