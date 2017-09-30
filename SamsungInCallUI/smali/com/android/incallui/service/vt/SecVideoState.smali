.class public Lcom/android/incallui/service/vt/SecVideoState;
.super Ljava/lang/Object;


# static fields
.field public static HELD_VIDEO:I

.field public static HOLDING:I

.field public static HOLDING_THE_OTHER_PARTY:I

.field public static INCOMING:I

.field public static MAIN_STATE:I

.field public static MODIFY_DUMMY:I

.field public static MODIFY_RECEIVE:I

.field public static MODIFY_REQUEST:I

.field public static MODIFY_STATE:I

.field public static NO_RX_STATE:I

.field public static OUTGOING:I

.field public static TO_ONEWAY:I

.field public static TO_TWOWAY:I

.field public static VIDEO_NONE:I

.field public static VIDEO_ONEWAY_RX:I

.field public static VIDEO_ONEWAY_TX:I

.field public static VIDEO_TWOWAY:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lcom/android/incallui/service/vt/SecVideoState;->VIDEO_NONE:I

    const/4 v0, 0x1

    sput v0, Lcom/android/incallui/service/vt/SecVideoState;->VIDEO_TWOWAY:I

    const/4 v0, 0x2

    sput v0, Lcom/android/incallui/service/vt/SecVideoState;->VIDEO_ONEWAY_TX:I

    const/4 v0, 0x4

    sput v0, Lcom/android/incallui/service/vt/SecVideoState;->VIDEO_ONEWAY_RX:I

    const/16 v0, 0x8

    sput v0, Lcom/android/incallui/service/vt/SecVideoState;->MODIFY_REQUEST:I

    const/16 v0, 0x10

    sput v0, Lcom/android/incallui/service/vt/SecVideoState;->MODIFY_RECEIVE:I

    const/16 v0, 0x20

    sput v0, Lcom/android/incallui/service/vt/SecVideoState;->INCOMING:I

    const/16 v0, 0x40

    sput v0, Lcom/android/incallui/service/vt/SecVideoState;->OUTGOING:I

    const/16 v0, 0x80

    sput v0, Lcom/android/incallui/service/vt/SecVideoState;->HOLDING:I

    const/16 v0, 0x100

    sput v0, Lcom/android/incallui/service/vt/SecVideoState;->HOLDING_THE_OTHER_PARTY:I

    const/16 v0, 0x200

    sput v0, Lcom/android/incallui/service/vt/SecVideoState;->HELD_VIDEO:I

    const/16 v0, 0x400

    sput v0, Lcom/android/incallui/service/vt/SecVideoState;->MODIFY_DUMMY:I

    const/16 v0, 0x800

    sput v0, Lcom/android/incallui/service/vt/SecVideoState;->TO_TWOWAY:I

    const/16 v0, 0x1000

    sput v0, Lcom/android/incallui/service/vt/SecVideoState;->TO_ONEWAY:I

    sget v0, Lcom/android/incallui/service/vt/SecVideoState;->VIDEO_TWOWAY:I

    sget v1, Lcom/android/incallui/service/vt/SecVideoState;->VIDEO_ONEWAY_TX:I

    or-int/2addr v0, v1

    sget v1, Lcom/android/incallui/service/vt/SecVideoState;->VIDEO_ONEWAY_RX:I

    or-int/2addr v0, v1

    sput v0, Lcom/android/incallui/service/vt/SecVideoState;->MAIN_STATE:I

    sget v0, Lcom/android/incallui/service/vt/SecVideoState;->MODIFY_REQUEST:I

    sget v1, Lcom/android/incallui/service/vt/SecVideoState;->MODIFY_RECEIVE:I

    or-int/2addr v0, v1

    sget v1, Lcom/android/incallui/service/vt/SecVideoState;->MODIFY_DUMMY:I

    or-int/2addr v0, v1

    sput v0, Lcom/android/incallui/service/vt/SecVideoState;->MODIFY_STATE:I

    sget v0, Lcom/android/incallui/service/vt/SecVideoState;->INCOMING:I

    sget v1, Lcom/android/incallui/service/vt/SecVideoState;->OUTGOING:I

    or-int/2addr v0, v1

    sget v1, Lcom/android/incallui/service/vt/SecVideoState;->HOLDING:I

    or-int/2addr v0, v1

    sget v1, Lcom/android/incallui/service/vt/SecVideoState;->HOLDING_THE_OTHER_PARTY:I

    or-int/2addr v0, v1

    sget v1, Lcom/android/incallui/service/vt/SecVideoState;->HELD_VIDEO:I

    or-int/2addr v0, v1

    sget v1, Lcom/android/incallui/service/vt/SecVideoState;->MODIFY_STATE:I

    or-int/2addr v0, v1

    sget v1, Lcom/android/incallui/service/vt/SecVideoState;->VIDEO_ONEWAY_TX:I

    or-int/2addr v0, v1

    sput v0, Lcom/android/incallui/service/vt/SecVideoState;->NO_RX_STATE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(II)I
    .locals 1

    or-int v0, p0, p1

    return v0
.end method

.method public static hasCamera(I)Z
    .locals 2

    sget v0, Lcom/android/incallui/service/vt/SecVideoState;->VIDEO_ONEWAY_TX:I

    sget v1, Lcom/android/incallui/service/vt/SecVideoState;->VIDEO_TWOWAY:I

    or-int/2addr v0, v1

    invoke-static {p0, v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasState(II)Z

    move-result v0

    return v0
.end method

.method public static hasHeldVideo(I)Z
    .locals 1

    sget v0, Lcom/android/incallui/service/vt/SecVideoState;->HELD_VIDEO:I

    invoke-static {p0, v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasState(II)Z

    move-result v0

    return v0
.end method

.method public static hasHolding(I)Z
    .locals 1

    sget v0, Lcom/android/incallui/service/vt/SecVideoState;->HOLDING:I

    invoke-static {p0, v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasState(II)Z

    move-result v0

    return v0
.end method

.method public static hasHoldingTheOtherParty(I)Z
    .locals 1

    sget v0, Lcom/android/incallui/service/vt/SecVideoState;->HOLDING_THE_OTHER_PARTY:I

    invoke-static {p0, v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasState(II)Z

    move-result v0

    return v0
.end method

.method public static hasIncoming(I)Z
    .locals 1

    sget v0, Lcom/android/incallui/service/vt/SecVideoState;->INCOMING:I

    invoke-static {p0, v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasState(II)Z

    move-result v0

    return v0
.end method

.method public static hasMainState(I)Z
    .locals 1

    sget v0, Lcom/android/incallui/service/vt/SecVideoState;->MAIN_STATE:I

    invoke-static {p0, v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasState(II)Z

    move-result v0

    return v0
.end method

.method public static hasModifyProgressing(I)Z
    .locals 1

    sget v0, Lcom/android/incallui/service/vt/SecVideoState;->MODIFY_STATE:I

    invoke-static {p0, v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasState(II)Z

    move-result v0

    return v0
.end method

.method public static hasModifyReceive(I)Z
    .locals 1

    sget v0, Lcom/android/incallui/service/vt/SecVideoState;->MODIFY_RECEIVE:I

    invoke-static {p0, v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasState(II)Z

    move-result v0

    return v0
.end method

.method public static hasModifyRequest(I)Z
    .locals 1

    sget v0, Lcom/android/incallui/service/vt/SecVideoState;->MODIFY_REQUEST:I

    invoke-static {p0, v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasState(II)Z

    move-result v0

    return v0
.end method

.method public static hasNoRxState(I)Z
    .locals 1

    sget v0, Lcom/android/incallui/service/vt/SecVideoState;->NO_RX_STATE:I

    invoke-static {p0, v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasState(II)Z

    move-result v0

    return v0
.end method

.method public static hasOneWayRx(I)Z
    .locals 1

    sget v0, Lcom/android/incallui/service/vt/SecVideoState;->VIDEO_ONEWAY_RX:I

    invoke-static {p0, v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasState(II)Z

    move-result v0

    return v0
.end method

.method public static hasOneWayTx(I)Z
    .locals 1

    sget v0, Lcom/android/incallui/service/vt/SecVideoState;->VIDEO_ONEWAY_TX:I

    invoke-static {p0, v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasState(II)Z

    move-result v0

    return v0
.end method

.method public static hasOneWayVideo(I)Z
    .locals 2

    sget v0, Lcom/android/incallui/service/vt/SecVideoState;->VIDEO_ONEWAY_RX:I

    sget v1, Lcom/android/incallui/service/vt/SecVideoState;->VIDEO_ONEWAY_TX:I

    or-int/2addr v0, v1

    invoke-static {p0, v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasState(II)Z

    move-result v0

    return v0
.end method

.method public static hasOutgoing(I)Z
    .locals 1

    sget v0, Lcom/android/incallui/service/vt/SecVideoState;->OUTGOING:I

    invoke-static {p0, v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasState(II)Z

    move-result v0

    return v0
.end method

.method public static hasPausePreviewState(I)Z
    .locals 1

    sget v0, Lcom/android/incallui/service/vt/SecVideoState;->VIDEO_ONEWAY_RX:I

    invoke-static {p0, v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasState(II)Z

    move-result v0

    return v0
.end method

.method public static hasPausedDisplayState(I)Z
    .locals 2

    sget v0, Lcom/android/incallui/service/vt/SecVideoState;->HELD_VIDEO:I

    sget v1, Lcom/android/incallui/service/vt/SecVideoState;->HOLDING_THE_OTHER_PARTY:I

    or-int/2addr v0, v1

    sget v1, Lcom/android/incallui/service/vt/SecVideoState;->VIDEO_ONEWAY_TX:I

    or-int/2addr v0, v1

    invoke-static {p0, v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasState(II)Z

    move-result v0

    return v0
.end method

.method public static hasState(II)Z
    .locals 2

    and-int v0, p0, p1

    sget v1, Lcom/android/incallui/service/vt/SecVideoState;->VIDEO_NONE:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasTwoWayVideo(I)Z
    .locals 1

    sget v0, Lcom/android/incallui/service/vt/SecVideoState;->VIDEO_TWOWAY:I

    invoke-static {p0, v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasState(II)Z

    move-result v0

    return v0
.end method

.method public static isActiveOneWayRx(I)Z
    .locals 1

    sget v0, Lcom/android/incallui/service/vt/SecVideoState;->VIDEO_ONEWAY_RX:I

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isActiveOneWayTx(I)Z
    .locals 1

    sget v0, Lcom/android/incallui/service/vt/SecVideoState;->VIDEO_ONEWAY_TX:I

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isActiveTwoWayVideo(I)Z
    .locals 1

    sget v0, Lcom/android/incallui/service/vt/SecVideoState;->VIDEO_TWOWAY:I

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNoVideo(I)Z
    .locals 1

    sget v0, Lcom/android/incallui/service/vt/SecVideoState;->VIDEO_NONE:I

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOneWayRx(I)Z
    .locals 1

    sget v0, Lcom/android/incallui/service/vt/SecVideoState;->VIDEO_ONEWAY_RX:I

    invoke-static {p0, v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasState(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyProgressing(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOneWayTx(I)Z
    .locals 1

    sget v0, Lcom/android/incallui/service/vt/SecVideoState;->VIDEO_ONEWAY_TX:I

    invoke-static {p0, v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasState(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyProgressing(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStateMain(I)Z
    .locals 1

    invoke-static {p0}, Lcom/android/incallui/service/vt/SecVideoState;->hasMainState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyProgressing(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTwoWayVideo(I)Z
    .locals 1

    sget v0, Lcom/android/incallui/service/vt/SecVideoState;->VIDEO_TWOWAY:I

    invoke-static {p0, v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasState(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyProgressing(I)Z

    move-result v0

    if-nez v0, :cond_0

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

.method public static modifyingOneWayToTwoWay(I)Z
    .locals 1

    invoke-static {p0}, Lcom/android/incallui/service/vt/SecVideoState;->hasOneWayVideo(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/incallui/service/vt/SecVideoState;->TO_TWOWAY:I

    invoke-static {p0, v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasState(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static modifyingToDummy(I)Z
    .locals 1

    invoke-static {p0}, Lcom/android/incallui/service/vt/SecVideoState;->hasMainState(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/android/incallui/service/vt/SecVideoState;->MODIFY_DUMMY:I

    invoke-static {p0, v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasState(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static modifyingToOneWay(I)Z
    .locals 1

    sget v0, Lcom/android/incallui/service/vt/SecVideoState;->TO_ONEWAY:I

    invoke-static {p0, v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasState(II)Z

    move-result v0

    return v0
.end method

.method public static modifyingToTwoWay(I)Z
    .locals 1

    sget v0, Lcom/android/incallui/service/vt/SecVideoState;->TO_TWOWAY:I

    invoke-static {p0, v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasState(II)Z

    move-result v0

    return v0
.end method

.method public static modifyingTwoWayToOneWay(I)Z
    .locals 1

    invoke-static {p0}, Lcom/android/incallui/service/vt/SecVideoState;->hasTwoWayVideo(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/incallui/service/vt/SecVideoState;->TO_ONEWAY:I

    invoke-static {p0, v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasState(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static modifyingVoiceToOneWay(I)Z
    .locals 1

    invoke-static {p0}, Lcom/android/incallui/service/vt/SecVideoState;->hasMainState(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/android/incallui/service/vt/SecVideoState;->TO_ONEWAY:I

    invoke-static {p0, v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasState(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static modifyingVoiceToTwoWay(I)Z
    .locals 1

    invoke-static {p0}, Lcom/android/incallui/service/vt/SecVideoState;->hasMainState(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/android/incallui/service/vt/SecVideoState;->TO_TWOWAY:I

    invoke-static {p0, v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasState(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static remove(II)I
    .locals 1

    xor-int/lit8 v0, p1, -0x1

    and-int/2addr v0, p0

    return v0
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sget v1, Lcom/android/incallui/service/vt/SecVideoState;->VIDEO_TWOWAY:I

    and-int/2addr v1, p0

    sget v2, Lcom/android/incallui/service/vt/SecVideoState;->VIDEO_TWOWAY:I

    if-ne v1, v2, :cond_0

    const-string v1, "VIDEO_TWOWAY"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/SecVideoState;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_0
    sget v1, Lcom/android/incallui/service/vt/SecVideoState;->VIDEO_ONEWAY_RX:I

    and-int/2addr v1, p0

    sget v2, Lcom/android/incallui/service/vt/SecVideoState;->VIDEO_ONEWAY_RX:I

    if-ne v1, v2, :cond_1

    const-string v1, "VIDEO_ONEWAY_RX"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/SecVideoState;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_1
    sget v1, Lcom/android/incallui/service/vt/SecVideoState;->VIDEO_ONEWAY_TX:I

    and-int/2addr v1, p0

    sget v2, Lcom/android/incallui/service/vt/SecVideoState;->VIDEO_ONEWAY_TX:I

    if-ne v1, v2, :cond_2

    const-string v1, "VIDEO_ONEWAY_TX"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/SecVideoState;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_2
    sget v1, Lcom/android/incallui/service/vt/SecVideoState;->MODIFY_RECEIVE:I

    and-int/2addr v1, p0

    sget v2, Lcom/android/incallui/service/vt/SecVideoState;->MODIFY_RECEIVE:I

    if-ne v1, v2, :cond_3

    const-string v1, "MODIFY_RECEIVE"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/SecVideoState;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_3
    sget v1, Lcom/android/incallui/service/vt/SecVideoState;->MODIFY_REQUEST:I

    and-int/2addr v1, p0

    sget v2, Lcom/android/incallui/service/vt/SecVideoState;->MODIFY_REQUEST:I

    if-ne v1, v2, :cond_4

    const-string v1, "MODIFY_REQUEST"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/SecVideoState;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_4
    sget v1, Lcom/android/incallui/service/vt/SecVideoState;->INCOMING:I

    and-int/2addr v1, p0

    sget v2, Lcom/android/incallui/service/vt/SecVideoState;->INCOMING:I

    if-ne v1, v2, :cond_5

    const-string v1, "INCOMING"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/SecVideoState;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_5
    sget v1, Lcom/android/incallui/service/vt/SecVideoState;->OUTGOING:I

    and-int/2addr v1, p0

    sget v2, Lcom/android/incallui/service/vt/SecVideoState;->OUTGOING:I

    if-ne v1, v2, :cond_6

    const-string v1, "OUTGOING"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/SecVideoState;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_6
    sget v1, Lcom/android/incallui/service/vt/SecVideoState;->HOLDING_THE_OTHER_PARTY:I

    and-int/2addr v1, p0

    sget v2, Lcom/android/incallui/service/vt/SecVideoState;->HOLDING_THE_OTHER_PARTY:I

    if-ne v1, v2, :cond_7

    const-string v1, "HOLDING_THE_OTHER_PARTY"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/SecVideoState;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_7
    sget v1, Lcom/android/incallui/service/vt/SecVideoState;->TO_TWOWAY:I

    and-int/2addr v1, p0

    sget v2, Lcom/android/incallui/service/vt/SecVideoState;->TO_TWOWAY:I

    if-ne v1, v2, :cond_8

    const-string v1, "TO_TWOWAY"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/SecVideoState;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_8
    sget v1, Lcom/android/incallui/service/vt/SecVideoState;->TO_ONEWAY:I

    and-int/2addr v1, p0

    sget v2, Lcom/android/incallui/service/vt/SecVideoState;->TO_ONEWAY:I

    if-ne v1, v2, :cond_9

    const-string v1, "TO_ONEWAY"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/SecVideoState;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_9
    sget v1, Lcom/android/incallui/service/vt/SecVideoState;->MODIFY_DUMMY:I

    and-int/2addr v1, p0

    sget v2, Lcom/android/incallui/service/vt/SecVideoState;->MODIFY_DUMMY:I

    if-ne v1, v2, :cond_a

    const-string v1, "MODIFY_DUMMY"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/SecVideoState;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_a
    sget v1, Lcom/android/incallui/service/vt/SecVideoState;->HOLDING:I

    and-int/2addr v1, p0

    sget v2, Lcom/android/incallui/service/vt/SecVideoState;->HOLDING:I

    if-ne v1, v2, :cond_b

    const-string v1, "HOLDING"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/SecVideoState;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_b
    sget v1, Lcom/android/incallui/service/vt/SecVideoState;->HELD_VIDEO:I

    and-int/2addr v1, p0

    sget v2, Lcom/android/incallui/service/vt/SecVideoState;->HELD_VIDEO:I

    if-ne v1, v2, :cond_c

    const-string v1, "HELD_VIDEO"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/SecVideoState;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_c
    sget v1, Lcom/android/incallui/service/vt/SecVideoState;->VIDEO_NONE:I

    if-ne p0, v1, :cond_d

    const-string v1, "VIDEO_NONE"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/SecVideoState;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_d
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
