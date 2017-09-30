.class public Lcom/android/incallui/fragment/VideoCallFragment$ViewLocation;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/fragment/VideoCallFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewLocation"
.end annotation


# static fields
.field public static final BIG:I = 0x3

.field public static final CHANGED:I = 0x6

.field public static final HIDE:I = 0x0

.field public static final INCOMING:I = 0x1

.field public static final OUTGOING:I = 0x2

.field public static final RESIZE:I = 0x5

.field public static final SMALL:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "HIDE"

    goto :goto_0

    :pswitch_1
    const-string v0, "INCOMING"

    goto :goto_0

    :pswitch_2
    const-string v0, "OUTGOING"

    goto :goto_0

    :pswitch_3
    const-string v0, "BIG"

    goto :goto_0

    :pswitch_4
    const-string v0, "SMALL"

    goto :goto_0

    :pswitch_5
    const-string v0, "RESIZE"

    goto :goto_0

    :pswitch_6
    const-string v0, "CHANGED"

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
    .end packed-switch
.end method
