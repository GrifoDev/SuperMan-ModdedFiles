.class public Lcom/android/incallui/fragment/VideoCallFragment$ViewLocation;
.super Ljava/lang/Object;
.source "VideoCallFragment.java"


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

.field public static final CHANGED:I = 0x7

.field public static final HIDE:I = 0x0

.field public static final INCOMING:I = 0x1

.field public static final OUTGOING:I = 0x2

.field public static final RESIZE:I = 0x5

.field public static final ROTATE:I = 0x6

.field public static final SMALL:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1068
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 1
    .param p0, "location"    # I

    .prologue
    .line 1079
    packed-switch p0, :pswitch_data_0

    .line 1104
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 1081
    :pswitch_0
    const-string v0, "HIDE"

    goto :goto_0

    .line 1084
    :pswitch_1
    const-string v0, "INCOMING"

    goto :goto_0

    .line 1087
    :pswitch_2
    const-string v0, "OUTGOING"

    goto :goto_0

    .line 1090
    :pswitch_3
    const-string v0, "BIG"

    goto :goto_0

    .line 1093
    :pswitch_4
    const-string v0, "SMALL"

    goto :goto_0

    .line 1096
    :pswitch_5
    const-string v0, "RESIZE"

    goto :goto_0

    .line 1099
    :pswitch_6
    const-string v0, "ROTATE"

    goto :goto_0

    .line 1102
    :pswitch_7
    const-string v0, "CHANGED"

    goto :goto_0

    .line 1079
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
    .end packed-switch
.end method
