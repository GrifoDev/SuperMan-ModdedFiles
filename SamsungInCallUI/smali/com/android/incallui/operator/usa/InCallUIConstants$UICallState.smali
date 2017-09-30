.class public final enum Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/operator/usa/InCallUIConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UICallState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;

.field public static final enum CALL_CONNECTED:Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;

.field public static final enum CALL_DISCONNECTED:Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;

.field public static final enum CALL_PRESSED:Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;

.field public static final enum END_PRESSED:Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;

.field public static final enum HOLD_PRESSED:Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;

.field public static final enum MUTE_PRESSED:Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;

.field public static final enum RINGING:Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;

.field public static final enum SCREEN_OFF:Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;

.field public static final enum SCREEN_ON:Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;

.field public static final enum UNHOLD_PRESSED:Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;

.field public static final enum UNMUTE_PRESSED:Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;

    const-string v1, "CALL_PRESSED"

    invoke-direct {v0, v1, v3}, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;->CALL_PRESSED:Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;

    new-instance v0, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;

    const-string v1, "END_PRESSED"

    invoke-direct {v0, v1, v4}, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;->END_PRESSED:Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;

    new-instance v0, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;

    const-string v1, "MUTE_PRESSED"

    invoke-direct {v0, v1, v5}, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;->MUTE_PRESSED:Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;

    new-instance v0, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;

    const-string v1, "UNMUTE_PRESSED"

    invoke-direct {v0, v1, v6}, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;->UNMUTE_PRESSED:Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;

    new-instance v0, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;

    const-string v1, "HOLD_PRESSED"

    invoke-direct {v0, v1, v7}, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;->HOLD_PRESSED:Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;

    new-instance v0, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;

    const-string v1, "UNHOLD_PRESSED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;->UNHOLD_PRESSED:Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;

    new-instance v0, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;

    const-string v1, "CALL_CONNECTED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;->CALL_CONNECTED:Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;

    new-instance v0, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;

    const-string v1, "CALL_DISCONNECTED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;->CALL_DISCONNECTED:Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;

    new-instance v0, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;

    const-string v1, "RINGING"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;->RINGING:Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;

    new-instance v0, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;

    const-string v1, "SCREEN_ON"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;->SCREEN_ON:Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;

    new-instance v0, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;

    const-string v1, "SCREEN_OFF"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;->SCREEN_OFF:Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;

    sget-object v1, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;->CALL_PRESSED:Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;->END_PRESSED:Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;->MUTE_PRESSED:Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;->UNMUTE_PRESSED:Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;->HOLD_PRESSED:Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;->UNHOLD_PRESSED:Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;->CALL_CONNECTED:Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;->CALL_DISCONNECTED:Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;->RINGING:Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;->SCREEN_ON:Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;->SCREEN_OFF:Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;->$VALUES:[Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;
    .locals 1

    const-class v0, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;

    return-object v0
.end method

.method public static values()[Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;
    .locals 1

    sget-object v0, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;->$VALUES:[Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;

    invoke-virtual {v0}, [Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;

    return-object v0
.end method
