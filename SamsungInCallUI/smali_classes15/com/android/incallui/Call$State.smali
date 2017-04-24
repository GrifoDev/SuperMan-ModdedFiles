.class public Lcom/android/incallui/Call$State;
.super Ljava/lang/Object;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# static fields
.field public static final ACTIVE:I = 0x3

.field public static final BLOCKED:I = 0xe

.field public static final CALL_WAITING:I = 0x5

.field public static final CONFERENCED:I = 0xb

.field public static final CONNECTING:I = 0xd

.field public static final DIALING:I = 0x6

.field public static final DISCONNECTED:I = 0xa

.field public static final DISCONNECTING:I = 0x9

.field public static final IDLE:I = 0x2

.field public static final INCOMING:I = 0x4

.field public static final INVALID:I = 0x0

.field public static final NEW:I = 0x1

.field public static final ONHOLD:I = 0x8

.field public static final REDIALING:I = 0x7

.field public static final SELECT_PHONE_ACCOUNT:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isConnectingOrConnected(I)Z
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static isDialing(I)Z
    .locals 1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/4 v0, 0x7

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isIncoming(I)Z
    .locals 1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "INVALID"

    goto :goto_0

    :pswitch_1
    const-string v0, "NEW"

    goto :goto_0

    :pswitch_2
    const-string v0, "IDLE"

    goto :goto_0

    :pswitch_3
    const-string v0, "ACTIVE"

    goto :goto_0

    :pswitch_4
    const-string v0, "INCOMING"

    goto :goto_0

    :pswitch_5
    const-string v0, "CALL_WAITING"

    goto :goto_0

    :pswitch_6
    const-string v0, "DIALING"

    goto :goto_0

    :pswitch_7
    const-string v0, "REDIALING"

    goto :goto_0

    :pswitch_8
    const-string v0, "ONHOLD"

    goto :goto_0

    :pswitch_9
    const-string v0, "DISCONNECTING"

    goto :goto_0

    :pswitch_a
    const-string v0, "DISCONNECTED"

    goto :goto_0

    :pswitch_b
    const-string v0, "CONFERENCED"

    goto :goto_0

    :pswitch_c
    const-string v0, "SELECT_PHONE_ACCOUNT"

    goto :goto_0

    :pswitch_d
    const-string v0, "CONNECTING"

    goto :goto_0

    :pswitch_e
    const-string v0, "BLOCKED"

    goto :goto_0

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
        :pswitch_e
    .end packed-switch
.end method
