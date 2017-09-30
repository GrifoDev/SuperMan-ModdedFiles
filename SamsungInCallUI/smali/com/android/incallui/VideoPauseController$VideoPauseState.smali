.class public Lcom/android/incallui/VideoPauseController$VideoPauseState;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/VideoPauseController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoPauseState"
.end annotation


# static fields
.field public static NONE:I

.field private static RX_PAUSE:I

.field private static TX_PAUSE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/incallui/VideoPauseController$VideoPauseState;->NONE:I

    const/4 v0, 0x1

    sput v0, Lcom/android/incallui/VideoPauseController$VideoPauseState;->TX_PAUSE:I

    const/4 v0, 0x2

    sput v0, Lcom/android/incallui/VideoPauseController$VideoPauseState;->RX_PAUSE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static has(II)Z
    .locals 2

    and-int v0, p0, p1

    sget v1, Lcom/android/incallui/VideoPauseController$VideoPauseState;->NONE:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNone(I)Z
    .locals 1

    sget v0, Lcom/android/incallui/VideoPauseController$VideoPauseState;->NONE:I

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPausedRx(I)Z
    .locals 2

    sget v0, Lcom/android/incallui/VideoPauseController$VideoPauseState;->RX_PAUSE:I

    and-int/2addr v0, p0

    sget v1, Lcom/android/incallui/VideoPauseController$VideoPauseState;->RX_PAUSE:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPausedTx(I)Z
    .locals 2

    sget v0, Lcom/android/incallui/VideoPauseController$VideoPauseState;->TX_PAUSE:I

    and-int/2addr v0, p0

    sget v1, Lcom/android/incallui/VideoPauseController$VideoPauseState;->TX_PAUSE:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPausedVideo(Lcom/android/incallui/Call;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoPauseState()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v2

    invoke-static {v1}, Lcom/android/incallui/VideoPauseController$VideoPauseState;->isNone(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v2}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private static listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public static pauseRx(I)I
    .locals 1

    sget v0, Lcom/android/incallui/VideoPauseController$VideoPauseState;->RX_PAUSE:I

    or-int/2addr v0, p0

    return v0
.end method

.method public static pauseTx(I)I
    .locals 1

    sget v0, Lcom/android/incallui/VideoPauseController$VideoPauseState;->TX_PAUSE:I

    or-int/2addr v0, p0

    return v0
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 2

    sget v0, Lcom/android/incallui/VideoPauseController$VideoPauseState;->NONE:I

    if-ne p0, v0, :cond_0

    const-string v0, "NONE"

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sget v1, Lcom/android/incallui/VideoPauseController$VideoPauseState;->TX_PAUSE:I

    invoke-static {p0, v1}, Lcom/android/incallui/VideoPauseController$VideoPauseState;->has(II)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "TX_PAUSE"

    invoke-static {v0, v1}, Lcom/android/incallui/VideoPauseController$VideoPauseState;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_1
    sget v1, Lcom/android/incallui/VideoPauseController$VideoPauseState;->RX_PAUSE:I

    invoke-static {p0, v1}, Lcom/android/incallui/VideoPauseController$VideoPauseState;->has(II)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "RX_PAUSE"

    invoke-static {v0, v1}, Lcom/android/incallui/VideoPauseController$VideoPauseState;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static toString(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 8

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoPauseState()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v1

    const/high16 v2, 0x100000

    invoke-virtual {p0, v2}, Lcom/android/incallui/Call;->can(I)Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/SecCall;->getSecVideoState()I

    move-result v3

    const-string v4, " VideoPauseState=%s { PauseState=%s : VideoState=%s, canPause=%s, hasCapability=%s, SecVideoState=%s, VideoCall=%s } "

    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p0}, Lcom/android/incallui/VideoPauseController$VideoPauseState;->isPausedVideo(Lcom/android/incallui/Call;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v0}, Lcom/android/incallui/VideoPauseController$VideoPauseState;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x2

    invoke-static {v1}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x3

    invoke-static {p0}, Lcom/android/incallui/VideoPauseController;->canVideoPause(Lcom/android/incallui/Call;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x4

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x5

    invoke-static {v3}, Lcom/android/incallui/service/vt/SecVideoState;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, " Call {NULL}"

    goto :goto_0
.end method

.method public static unPauseTx(I)I
    .locals 1

    sget v0, Lcom/android/incallui/VideoPauseController$VideoPauseState;->TX_PAUSE:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p0

    return v0
.end method
