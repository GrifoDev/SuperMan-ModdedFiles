.class public Lcom/android/incallui/service/vt/VideoCallConstants$UiEvent;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/service/vt/VideoCallConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UiEvent"
.end annotation


# static fields
.field public static final ACCELEROMETER_CHANGED:I = 0x1f4

.field public static final DISPLAY_CAPTURE_END:I = 0xc9

.field public static final DISPLAY_CAPTURE_START:I = 0xc8

.field public static final PREVIEW_IMAGE:I = 0x65

.field public static final PREVIEW_LIVE:I = 0x64

.field public static final PREVIEW_PRIVATE_PAUSE:I = 0x67

.field public static final PREVIEW_PRIVATE_RESUME:I = 0x68

.field public static final PREVIEW_RESUME:I = 0x66

.field public static final SWITCH_CAMERA_ANIMATION_SHOW:I = 0x12c


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x64

    if-ne p0, v0, :cond_0

    const-string v0, "PREVIEW_LIVE"

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x65

    if-ne p0, v0, :cond_1

    const-string v0, "PREVIEW_IMAGE"

    goto :goto_0

    :cond_1
    const/16 v0, 0x66

    if-ne p0, v0, :cond_2

    const-string v0, "PREVIEW_RESUME"

    goto :goto_0

    :cond_2
    const/16 v0, 0x67

    if-ne p0, v0, :cond_3

    const-string v0, "PREVIEW_PRIVATE_PAUSE"

    goto :goto_0

    :cond_3
    const/16 v0, 0x68

    if-ne p0, v0, :cond_4

    const-string v0, "PREVIEW_PRIVATE_RESUME"

    goto :goto_0

    :cond_4
    const/16 v0, 0xc8

    if-ne p0, v0, :cond_5

    const-string v0, "DISPLAY_CAPTURE_START"

    goto :goto_0

    :cond_5
    const/16 v0, 0x12c

    if-ne p0, v0, :cond_6

    const-string v0, "SWITCH_CAMERA_ANIMATION_SHOW"

    goto :goto_0

    :cond_6
    const/16 v0, 0x1f4

    if-ne p0, v0, :cond_7

    const-string v0, "ACCELEROMETER_CHANGED"

    goto :goto_0

    :cond_7
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
