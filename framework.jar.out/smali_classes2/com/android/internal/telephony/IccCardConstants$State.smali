.class public final enum Lcom/android/internal/telephony/IccCardConstants$State;
.super Ljava/lang/Enum;
.source "IccCardConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccCardConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/IccCardConstants$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum CARD_RESTRICTED:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum DETECTED:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum NETWORK_SUBSET_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum PERSO_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum READY:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum SIM_SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string/jumbo v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string/jumbo v1, "ABSENT"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string/jumbo v1, "PIN_REQUIRED"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string/jumbo v1, "PUK_REQUIRED"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string/jumbo v1, "NETWORK_LOCKED"

    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string/jumbo v1, "READY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string/jumbo v1, "NOT_READY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string/jumbo v1, "PERM_DISABLED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string/jumbo v1, "CARD_IO_ERROR"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string/jumbo v1, "CARD_RESTRICTED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_RESTRICTED:Lcom/android/internal/telephony/IccCardConstants$State;

    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string/jumbo v1, "PERSO_LOCKED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string/jumbo v1, "NETWORK_SUBSET_LOCKED"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_SUBSET_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string/jumbo v1, "SIM_SERVICE_PROVIDER_LOCKED"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->SIM_SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string/jumbo v1, "DETECTED"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->DETECTED:Lcom/android/internal/telephony/IccCardConstants$State;

    const/16 v0, 0xe

    new-array v0, v0, [Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_RESTRICTED:Lcom/android/internal/telephony/IccCardConstants$State;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_SUBSET_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->SIM_SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->DETECTED:Lcom/android/internal/telephony/IccCardConstants$State;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->$VALUES:[Lcom/android/internal/telephony/IccCardConstants$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static intToState(I)Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0

    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0

    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0

    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0

    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0

    :pswitch_5
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0

    :pswitch_6
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0

    :pswitch_7
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0

    :pswitch_8
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0

    :pswitch_9
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_RESTRICTED:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0

    :pswitch_a
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0

    :pswitch_b
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_SUBSET_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0

    :pswitch_c
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->SIM_SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0

    :pswitch_d
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->DETECTED:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 1

    const-class v0, Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->$VALUES:[Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0
.end method


# virtual methods
.method public iccCardExist()Z
    .locals 2

    const/4 v0, 0x1

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_RESTRICTED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->DETECTED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPinLocked()Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_RIL_USIMPersonalizationKOR"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p0, v2, :cond_0

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p0, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p0, v2, :cond_3

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p0, v2, :cond_4

    :cond_3
    :goto_1
    return v0

    :cond_4
    move v0, v1

    goto :goto_1
.end method
