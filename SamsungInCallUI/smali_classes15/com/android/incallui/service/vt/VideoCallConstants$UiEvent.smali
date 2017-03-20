.class public Lcom/android/incallui/service/vt/VideoCallConstants$UiEvent;
.super Ljava/lang/Object;
.source "VideoCallConstants.java"


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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 1
    .param p0, "event"    # I

    .prologue
    .line 123
    const/16 v0, 0x64

    if-ne p0, v0, :cond_0

    .line 124
    const-string v0, "PREVIEW_LIVE"

    .line 138
    :goto_0
    return-object v0

    .line 125
    :cond_0
    const/16 v0, 0x65

    if-ne p0, v0, :cond_1

    .line 126
    const-string v0, "PREVIEW_IMAGE"

    goto :goto_0

    .line 127
    :cond_1
    const/16 v0, 0x66

    if-ne p0, v0, :cond_2

    .line 128
    const-string v0, "PREVIEW_RESUME"

    goto :goto_0

    .line 129
    :cond_2
    const/16 v0, 0x67

    if-ne p0, v0, :cond_3

    .line 130
    const-string v0, "PREVIEW_PRIVATE_PAUSE"

    goto :goto_0

    .line 131
    :cond_3
    const/16 v0, 0x68

    if-ne p0, v0, :cond_4

    .line 132
    const-string v0, "PREVIEW_PRIVATE_RESUME"

    goto :goto_0

    .line 133
    :cond_4
    const/16 v0, 0xc8

    if-ne p0, v0, :cond_5

    .line 134
    const-string v0, "DISPLAY_CAPTURE_START"

    goto :goto_0

    .line 135
    :cond_5
    const/16 v0, 0x1f4

    if-ne p0, v0, :cond_6

    .line 136
    const-string v0, "ACCELEROMETER_CHANGED"

    goto :goto_0

    .line 138
    :cond_6
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
