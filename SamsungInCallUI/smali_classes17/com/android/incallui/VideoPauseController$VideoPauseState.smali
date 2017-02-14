.class public Lcom/android/incallui/VideoPauseController$VideoPauseState;
.super Ljava/lang/Object;
.source "VideoPauseController.java"


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

    sget v1, Lcom/android/incallui/VideoPauseController$VideoPauseState;->NONE:I

    if-ne p0, v1, :cond_0

    const-string v1, "NONE"

    :goto_0
    return-object v1

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

    move-result-object v1

    goto :goto_0
.end method

.method public static unPauseTx(I)I
    .locals 1

    sget v0, Lcom/android/incallui/VideoPauseController$VideoPauseState;->TX_PAUSE:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p0

    return v0
.end method
