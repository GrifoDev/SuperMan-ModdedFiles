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

    .prologue
    .line 45
    const/4 v0, 0x0

    sput v0, Lcom/android/incallui/VideoPauseController$VideoPauseState;->NONE:I

    .line 46
    const/4 v0, 0x1

    sput v0, Lcom/android/incallui/VideoPauseController$VideoPauseState;->TX_PAUSE:I

    .line 47
    const/4 v0, 0x2

    sput v0, Lcom/android/incallui/VideoPauseController$VideoPauseState;->RX_PAUSE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static has(II)Z
    .locals 2
    .param p0, "target"    # I
    .param p1, "state"    # I

    .prologue
    .line 71
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
    .param p0, "target"    # I

    .prologue
    .line 75
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
    .param p0, "target"    # I

    .prologue
    .line 95
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
    .param p0, "target"    # I

    .prologue
    .line 87
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
    .param p0, "buffer"    # Ljava/lang/StringBuffer;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 65
    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    return-void
.end method

.method public static pauseRx(I)I
    .locals 1
    .param p0, "target"    # I

    .prologue
    .line 91
    sget v0, Lcom/android/incallui/VideoPauseController$VideoPauseState;->RX_PAUSE:I

    or-int/2addr v0, p0

    return v0
.end method

.method public static pauseTx(I)I
    .locals 1
    .param p0, "target"    # I

    .prologue
    .line 79
    sget v0, Lcom/android/incallui/VideoPauseController$VideoPauseState;->TX_PAUSE:I

    or-int/2addr v0, p0

    return v0
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "state"    # I

    .prologue
    .line 50
    sget v1, Lcom/android/incallui/VideoPauseController$VideoPauseState;->NONE:I

    if-ne p0, v1, :cond_0

    .line 51
    const-string v1, "NONE"

    .line 60
    :goto_0
    return-object v1

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 54
    .local v0, "buffer":Ljava/lang/StringBuffer;
    sget v1, Lcom/android/incallui/VideoPauseController$VideoPauseState;->TX_PAUSE:I

    invoke-static {p0, v1}, Lcom/android/incallui/VideoPauseController$VideoPauseState;->has(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    const-string v1, "TX_PAUSE"

    invoke-static {v0, v1}, Lcom/android/incallui/VideoPauseController$VideoPauseState;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 57
    :cond_1
    sget v1, Lcom/android/incallui/VideoPauseController$VideoPauseState;->RX_PAUSE:I

    invoke-static {p0, v1}, Lcom/android/incallui/VideoPauseController$VideoPauseState;->has(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 58
    const-string v1, "RX_PAUSE"

    invoke-static {v0, v1}, Lcom/android/incallui/VideoPauseController$VideoPauseState;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 60
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static unPauseTx(I)I
    .locals 1
    .param p0, "target"    # I

    .prologue
    .line 83
    sget v0, Lcom/android/incallui/VideoPauseController$VideoPauseState;->TX_PAUSE:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p0

    return v0
.end method
