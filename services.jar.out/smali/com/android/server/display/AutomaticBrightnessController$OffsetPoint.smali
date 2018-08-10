.class Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;
.super Ljava/lang/Object;
.source "AutomaticBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AutomaticBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OffsetPoint"
.end annotation


# instance fields
.field private final BOUNDARY_RATIO:F

.field public mHighBoundary:F

.field public mLowBoundary:F

.field public mLux:F

.field public mOffset:F

.field public final mOffsetType:I

.field public mOrgCd:F

.field final synthetic this$0:Lcom/android/server/display/AutomaticBrightnessController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/AutomaticBrightnessController;FFI)V
    .locals 2

    const/high16 v1, 0x40200000    # 2.5f

    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->BOUNDARY_RATIO:F

    monitor-enter p0

    :try_start_0
    iput p2, p0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    iput p3, p0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    div-float v0, p2, v1

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLowBoundary:F

    mul-float v0, p2, v1

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mHighBoundary:F

    invoke-static {p1}, Lcom/android/server/display/AutomaticBrightnessController;->-get7(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->getDynamicAutoBrightnessValue(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOrgCd:F

    iput p4, p0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffsetType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffsetType:I

    if-nez v1, :cond_0

    const-string/jumbo v0, "F"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOrgCd:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_3

    const-string/jumbo v1, "+"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffsetType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string/jumbo v0, "U"

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffsetType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const-string/jumbo v0, "S"

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "-"

    goto :goto_0

    :cond_3
    const-string/jumbo v1, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
