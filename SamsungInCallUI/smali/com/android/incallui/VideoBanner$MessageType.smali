.class public Lcom/android/incallui/VideoBanner$MessageType;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/VideoBanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageType"
.end annotation


# static fields
.field public static final FAREND_CALL_HOLD:I = 0xf

.field public static final FAREND_CAMERA_TURN_OFF:I = 0xa

.field public static final FAREND_CAMERA_TURN_ON:I = 0x9

.field public static final FAREND_STAY_ON_VOICE:I = 0xc

.field public static final MODIFIED_VIDEO_TO_VS_TX:I = 0x6

.field public static final MODIFY_RECEIVE_TO_VIDEO:I = 0x1

.field public static final MODIFY_RECEIVE_TO_VS:I = 0x2

.field public static final MODIFY_RECEIVE_VOICE_TO_VIDEO:I = 0x11

.field public static final MODIFY_REJECT_TO_VIDEO:I = 0x13

.field public static final MODIFY_REQUEST_CONFERENCE:I = 0x12

.field public static final MODIFY_REQUEST_DUMMY:I = 0x5

.field public static final MODIFY_REQUEST_TO_VIDEO:I = 0x3

.field public static final MODIFY_REQUEST_TO_VS:I = 0x4

.field public static final NEAREND_CAMERA_TURN_ON:I = 0xb

.field public static final NONE:I = 0x0

.field public static final NOTIFY_HELD_VIDEO:I = 0x7

.field public static final NOTIFY_RESUMED_CALL:I = 0x10

.field public static final NOTIFY_RESUMED_VIDEO:I = 0x8

.field public static final SWITCHED_TO_VOICE:I = 0xd

.field public static final SWITCHED_TO_VOICE_RX:I = 0x14

.field public static final SWITCHING_TO_VOICE:I = 0xe


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string v0, "NONE"

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const-string v0, "MODIFY_RECEIVE_TO_VIDEO"

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    const-string v0, "MODIFY_RECEIVE_TO_VS"

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    const-string v0, "MODIFY_REQUEST_TO_VIDEO"

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    const-string v0, "MODIFY_REQUEST_TO_VS"

    goto :goto_0

    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    const-string v0, "MODIFY_REQUEST_DUMMY"

    goto :goto_0

    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    const-string v0, "MODIFIED_VIDEO_TO_VS_TX"

    goto :goto_0

    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    const-string v0, "NOTIFY_HELD_VIDEO"

    goto :goto_0

    :cond_7
    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    const-string v0, "NOTIFY_RESUMED_VIDEO"

    goto :goto_0

    :cond_8
    const/16 v0, 0x9

    if-ne p0, v0, :cond_9

    const-string v0, "FAREND_CAMERA_TURN_ON"

    goto :goto_0

    :cond_9
    const/16 v0, 0xa

    if-ne p0, v0, :cond_a

    const-string v0, "FAREND_CAMERA_TURN_OFF"

    goto :goto_0

    :cond_a
    const/16 v0, 0xb

    if-ne p0, v0, :cond_b

    const-string v0, "NEAREND_CAMERA_TURN_ON"

    goto :goto_0

    :cond_b
    const/16 v0, 0xc

    if-ne p0, v0, :cond_c

    const-string v0, "FAREND_STAY_ON_VOICE"

    goto :goto_0

    :cond_c
    const/16 v0, 0xd

    if-ne p0, v0, :cond_d

    const-string v0, "SWITCHED_TO_VOICE"

    goto :goto_0

    :cond_d
    const/16 v0, 0xe

    if-ne p0, v0, :cond_e

    const-string v0, "SWITCHING_TO_VOICE"

    goto :goto_0

    :cond_e
    const/16 v0, 0xf

    if-ne p0, v0, :cond_f

    const-string v0, "FAREND_CALL_HOLD"

    goto :goto_0

    :cond_f
    const/16 v0, 0x10

    if-ne p0, v0, :cond_10

    const-string v0, "NOTIFY_RESUMED_CALL"

    goto :goto_0

    :cond_10
    const/16 v0, 0x11

    if-ne p0, v0, :cond_11

    const-string v0, "MODIFY_RECEIVE_VOICE_TO_VIDEO"

    goto :goto_0

    :cond_11
    const/16 v0, 0x12

    if-ne p0, v0, :cond_12

    const-string v0, "MODIFY_REQUEST_CONFERENCE"

    goto :goto_0

    :cond_12
    const/16 v0, 0x13

    if-ne p0, v0, :cond_13

    const-string v0, "MODIFY_REJECT_TO_VIDEO"

    goto :goto_0

    :cond_13
    const/16 v0, 0x14

    if-ne p0, v0, :cond_14

    const-string v0, "SWITCHED_TO_VOICE_RX"

    goto/16 :goto_0

    :cond_14
    const-string v0, "UNKNOWN"

    goto/16 :goto_0
.end method
