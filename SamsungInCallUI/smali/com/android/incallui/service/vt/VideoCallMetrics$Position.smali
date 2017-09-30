.class public Lcom/android/incallui/service/vt/VideoCallMetrics$Position;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/service/vt/VideoCallMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Position"
.end annotation


# instance fields
.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics$Position;->clear()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$Position;->x:F

    iput v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$Position;->y:F

    return-void
.end method

.method public isValid()Z
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$Position;->x:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics$Position;->y:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
