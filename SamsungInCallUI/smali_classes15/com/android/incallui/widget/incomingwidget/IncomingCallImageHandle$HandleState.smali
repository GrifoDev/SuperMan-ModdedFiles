.class public final enum Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;
.super Ljava/lang/Enum;
.source "IncomingCallImageHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HandleState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

.field public static final enum ACTIVE:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

.field public static final enum AIRMOTION_SWEEP1:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

.field public static final enum AIRMOTION_SWEEP2:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

.field public static final enum DEACTIVE:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

.field public static final enum IDLE:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

.field public static final enum NORMAL:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

.field public static final enum TRIGGERED:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->IDLE:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    new-instance v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v4}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->NORMAL:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    new-instance v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    const-string v1, "ACTIVE"

    invoke-direct {v0, v1, v5}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->ACTIVE:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    new-instance v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    const-string v1, "DEACTIVE"

    invoke-direct {v0, v1, v6}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->DEACTIVE:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    new-instance v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    const-string v1, "TRIGGERED"

    invoke-direct {v0, v1, v7}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->TRIGGERED:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    new-instance v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    const-string v1, "AIRMOTION_SWEEP1"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->AIRMOTION_SWEEP1:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    new-instance v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    const-string v1, "AIRMOTION_SWEEP2"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->AIRMOTION_SWEEP2:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    sget-object v1, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->IDLE:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->NORMAL:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->ACTIVE:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->DEACTIVE:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->TRIGGERED:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->AIRMOTION_SWEEP1:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->AIRMOTION_SWEEP2:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->$VALUES:[Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;
    .locals 1

    const-class v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    return-object v0
.end method

.method public static values()[Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;
    .locals 1

    sget-object v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->$VALUES:[Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v0}, [Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    return-object v0
.end method
