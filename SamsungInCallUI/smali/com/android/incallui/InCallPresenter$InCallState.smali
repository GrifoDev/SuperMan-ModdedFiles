.class public final enum Lcom/android/incallui/InCallPresenter$InCallState;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InCallPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InCallState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/incallui/InCallPresenter$InCallState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/incallui/InCallPresenter$InCallState;

.field public static final enum INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

.field public static final enum INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

.field public static final enum NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

.field public static final enum OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

.field public static final enum PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

.field public static final enum WAITING_FOR_ACCOUNT:Lcom/android/incallui/InCallPresenter$InCallState;

.field public static final enum WAITING_FOR_SIM_ACCOUNT:Lcom/android/incallui/InCallPresenter$InCallState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/incallui/InCallPresenter$InCallState;

    const-string v1, "NO_CALLS"

    invoke-direct {v0, v1, v3}, Lcom/android/incallui/InCallPresenter$InCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    new-instance v0, Lcom/android/incallui/InCallPresenter$InCallState;

    const-string v1, "INCOMING"

    invoke-direct {v0, v1, v4}, Lcom/android/incallui/InCallPresenter$InCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    new-instance v0, Lcom/android/incallui/InCallPresenter$InCallState;

    const-string v1, "INCALL"

    invoke-direct {v0, v1, v5}, Lcom/android/incallui/InCallPresenter$InCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    new-instance v0, Lcom/android/incallui/InCallPresenter$InCallState;

    const-string v1, "WAITING_FOR_ACCOUNT"

    invoke-direct {v0, v1, v6}, Lcom/android/incallui/InCallPresenter$InCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->WAITING_FOR_ACCOUNT:Lcom/android/incallui/InCallPresenter$InCallState;

    new-instance v0, Lcom/android/incallui/InCallPresenter$InCallState;

    const-string v1, "WAITING_FOR_SIM_ACCOUNT"

    invoke-direct {v0, v1, v7}, Lcom/android/incallui/InCallPresenter$InCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->WAITING_FOR_SIM_ACCOUNT:Lcom/android/incallui/InCallPresenter$InCallState;

    new-instance v0, Lcom/android/incallui/InCallPresenter$InCallState;

    const-string v1, "PENDING_OUTGOING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/InCallPresenter$InCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    new-instance v0, Lcom/android/incallui/InCallPresenter$InCallState;

    const-string v1, "OUTGOING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/InCallPresenter$InCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->WAITING_FOR_ACCOUNT:Lcom/android/incallui/InCallPresenter$InCallState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->WAITING_FOR_SIM_ACCOUNT:Lcom/android/incallui/InCallPresenter$InCallState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->$VALUES:[Lcom/android/incallui/InCallPresenter$InCallState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/incallui/InCallPresenter$InCallState;
    .locals 1

    const-class v0, Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallPresenter$InCallState;

    return-object v0
.end method

.method public static values()[Lcom/android/incallui/InCallPresenter$InCallState;
    .locals 1

    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->$VALUES:[Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-virtual {v0}, [Lcom/android/incallui/InCallPresenter$InCallState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/incallui/InCallPresenter$InCallState;

    return-object v0
.end method


# virtual methods
.method public isConnectingOrConnected()Z
    .locals 1

    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIncoming()Z
    .locals 1

    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWaitingForSimAccount()Z
    .locals 1

    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->WAITING_FOR_SIM_ACCOUNT:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public whatIs()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/android/incallui/InCallPresenter$10;->$SwitchMap$com$android$incallui$InCallPresenter$InCallState:[I

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter$InCallState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "NO_CALLS"

    goto :goto_0

    :pswitch_1
    const-string v0, "INCOMING"

    goto :goto_0

    :pswitch_2
    const-string v0, "INCALL"

    goto :goto_0

    :pswitch_3
    const-string v0, "WAITING_FOR_ACCOUNT"

    goto :goto_0

    :pswitch_4
    const-string v0, "WAITING_FOR_SIM_ACCOUNT"

    goto :goto_0

    :pswitch_5
    const-string v0, "PENDING_OUTGOING"

    goto :goto_0

    :pswitch_6
    const-string v0, "OUTGOING"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
