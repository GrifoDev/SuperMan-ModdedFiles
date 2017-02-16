.class public Lcom/android/incallui/service/vt/VideoCallConstants$CameraEffect;
.super Ljava/lang/Object;
.source "VideoCallConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/service/vt/VideoCallConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CameraEffect"
.end annotation


# static fields
.field public static final AQUA:I = 0x8

.field public static final BLUR:I = 0x10

.field public static final MONO:I = 0x1

.field public static final NEGATIVE:I = 0x2

.field public static final NONE:I = 0x0

.field public static final POSTERIZE:I = 0x5

.field public static final SEPIA:I = 0x4

.field public static final SOLARIZE:I = 0x3


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 47
    const/16 v0, 0x10

    if-ne p0, v0, :cond_0

    .line 48
    const-string v0, "blur"

    .line 62
    :goto_0
    return-object v0

    .line 49
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 50
    const-string v0, "mono"

    goto :goto_0

    .line 51
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 52
    const-string v0, "negative"

    goto :goto_0

    .line 53
    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    .line 54
    const-string v0, "sepia"

    goto :goto_0

    .line 55
    :cond_3
    const/4 v0, 0x3

    if-ne p0, v0, :cond_4

    .line 56
    const-string v0, "solarise"

    goto :goto_0

    .line 57
    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    .line 58
    const-string v0, "posterize"

    goto :goto_0

    .line 59
    :cond_5
    const/16 v0, 0x8

    if-ne p0, v0, :cond_6

    .line 60
    const-string v0, "aqua"

    goto :goto_0

    .line 62
    :cond_6
    const-string v0, "none"

    goto :goto_0
.end method
