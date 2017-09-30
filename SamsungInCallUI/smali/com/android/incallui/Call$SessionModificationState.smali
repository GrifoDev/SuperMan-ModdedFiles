.class public Lcom/android/incallui/Call$SessionModificationState;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SessionModificationState"
.end annotation


# static fields
.field public static final NO_REQUEST:I = 0x0

.field public static final RECEIVED_UPGRADE_TO_VIDEO_REQUEST:I = 0x3

.field public static final REQUEST_FAILED:I = 0x2

.field public static final REQUEST_REJECTED:I = 0x5

.field public static final UPGRADE_TO_VIDEO_REQUEST_TIMED_OUT:I = 0x4

.field public static final WAITING_FOR_RESPONSE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
