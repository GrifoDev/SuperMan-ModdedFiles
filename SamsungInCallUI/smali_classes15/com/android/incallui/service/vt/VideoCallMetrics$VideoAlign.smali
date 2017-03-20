.class public Lcom/android/incallui/service/vt/VideoCallMetrics$VideoAlign;
.super Ljava/lang/Object;
.source "VideoCallMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/service/vt/VideoCallMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoAlign"
.end annotation


# static fields
.field public static final BELOW_CALL_CARD:I = 0x2

.field public static final BELOW_INDICATOR:I = 0x1

.field public static final CENTER:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(F)Ljava/lang/String;
    .locals 1
    .param p0, "ratio"    # F

    .prologue
    .line 303
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-nez v0, :cond_0

    .line 304
    const-string v0, "center"

    .line 310
    :goto_0
    return-object v0

    .line 305
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p0, v0

    if-nez v0, :cond_1

    .line 306
    const-string v0, "below_indicator"

    goto :goto_0

    .line 307
    :cond_1
    const/high16 v0, 0x40000000    # 2.0f

    cmpl-float v0, p0, v0

    if-nez v0, :cond_2

    .line 308
    const-string v0, "below_callcard"

    goto :goto_0

    .line 310
    :cond_2
    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
