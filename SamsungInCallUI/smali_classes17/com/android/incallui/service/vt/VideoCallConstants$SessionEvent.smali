.class public Lcom/android/incallui/service/vt/VideoCallConstants$SessionEvent;
.super Ljava/lang/Object;
.source "VideoCallConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/service/vt/VideoCallConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SessionEvent"
.end annotation


# static fields
.field public static final CAMERA_FAILURE:I = 0x12f

.field public static final CAMERA_PREVIEW_READY:I = 0x12c

.field public static final CAMERA_START:I = 0x12d

.field public static final CAMERA_STOP:I = 0x12e

.field public static final RECORD_MAX_TIMEOUT:I = 0x194

.field public static final RECORD_START_FAILURE:I = 0x191

.field public static final RECORD_START_SUCCESS:I = 0x192

.field public static final RECORD_STOP_SUCCESS:I = 0x193

.field public static final RX_PAUSE:I = 0xca

.field public static final RX_RESUMED:I = 0xcb

.field public static final RX_START:I = 0xc9

.field public static final RX_STOP:I = 0xcc


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0xc9

    if-ne p0, v0, :cond_0

    const-string v0, "RX_START"

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0xca

    if-ne p0, v0, :cond_1

    const-string v0, "RX_PAUSE"

    goto :goto_0

    :cond_1
    const/16 v0, 0xcb

    if-ne p0, v0, :cond_2

    const-string v0, "RX_RESUMED"

    goto :goto_0

    :cond_2
    const/16 v0, 0xcc

    if-ne p0, v0, :cond_3

    const-string v0, "RX_STOP"

    goto :goto_0

    :cond_3
    const/16 v0, 0x12c

    if-ne p0, v0, :cond_4

    const-string v0, "CAMERA_PREVIEW_READY"

    goto :goto_0

    :cond_4
    const/16 v0, 0x12d

    if-ne p0, v0, :cond_5

    const-string v0, "CAMERA_START"

    goto :goto_0

    :cond_5
    const/16 v0, 0x12e

    if-ne p0, v0, :cond_6

    const-string v0, "CAMERA_STOP"

    goto :goto_0

    :cond_6
    const/16 v0, 0x12f

    if-ne p0, v0, :cond_7

    const-string v0, "CAMERA_FAILURE"

    goto :goto_0

    :cond_7
    const/16 v0, 0x191

    if-ne p0, v0, :cond_8

    const-string v0, "RECORD_START_FAILURE"

    goto :goto_0

    :cond_8
    const/16 v0, 0x192

    if-ne p0, v0, :cond_9

    const-string v0, "RECORD_START_SUCCESS"

    goto :goto_0

    :cond_9
    const/16 v0, 0x193

    if-ne p0, v0, :cond_a

    const-string v0, "RECORD_STOP_SUCCESS"

    goto :goto_0

    :cond_a
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
