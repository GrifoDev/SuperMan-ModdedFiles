.class public Lcom/android/incallui/remotecall/remotecall/RemoteCall$State;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/remotecall/remotecall/RemoteCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# static fields
.field public static final ACTIVE:I = 0x1

.field public static final DISCONNECTED:I = 0xc

.field public static final IDLE:I = 0xb

.field public static final INVALID:I = 0x0

.field public static final ONHOLD:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "INVALID"

    goto :goto_0

    :sswitch_1
    const-string v0, "ACTIVE"

    goto :goto_0

    :sswitch_2
    const-string v0, "ONHOLD"

    goto :goto_0

    :sswitch_3
    const-string v0, "IDLE"

    goto :goto_0

    :sswitch_4
    const-string v0, "DISCONNECTED"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0xb -> :sswitch_3
        0xc -> :sswitch_4
    .end sparse-switch
.end method
