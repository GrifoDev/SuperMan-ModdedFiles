.class final enum Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LocValidity;
.super Ljava/lang/Enum;
.source "LppLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LocValidity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LocValidity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LocValidity;

.field public static final enum INVALID_ACC:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LocValidity;

.field public static final enum INVALID_TIME:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LocValidity;

.field public static final enum VALID:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LocValidity;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LocValidity;

    const-string/jumbo v1, "VALID"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LocValidity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LocValidity;->VALID:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LocValidity;

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LocValidity;

    const-string/jumbo v1, "INVALID_TIME"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LocValidity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LocValidity;->INVALID_TIME:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LocValidity;

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LocValidity;

    const-string/jumbo v1, "INVALID_ACC"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LocValidity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LocValidity;->INVALID_ACC:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LocValidity;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LocValidity;

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LocValidity;->VALID:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LocValidity;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LocValidity;->INVALID_TIME:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LocValidity;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LocValidity;->INVALID_ACC:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LocValidity;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LocValidity;->$VALUES:[Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LocValidity;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LocValidity;
    .locals 1

    const-class v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LocValidity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LocValidity;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LocValidity;
    .locals 1

    sget-object v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LocValidity;->$VALUES:[Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LocValidity;

    return-object v0
.end method
