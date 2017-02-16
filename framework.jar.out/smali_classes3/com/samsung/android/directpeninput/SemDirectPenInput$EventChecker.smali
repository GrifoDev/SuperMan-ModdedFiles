.class Lcom/samsung/android/directpeninput/SemDirectPenInput$EventChecker;
.super Ljava/lang/Object;
.source "SemDirectPenInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/directpeninput/SemDirectPenInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EventChecker"
.end annotation


# static fields
.field static action:I

.field static x:F

.field static y:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    .line 2661
    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/directpeninput/SemDirectPenInput$EventChecker;->action:I

    .line 2662
    sput v1, Lcom/samsung/android/directpeninput/SemDirectPenInput$EventChecker;->x:F

    .line 2663
    sput v1, Lcom/samsung/android/directpeninput/SemDirectPenInput$EventChecker;->y:F

    .line 2659
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 2659
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDuplicated(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p0, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 2666
    if-nez p0, :cond_0

    .line 2667
    const/4 v3, -0x1

    sput v3, Lcom/samsung/android/directpeninput/SemDirectPenInput$EventChecker;->action:I

    .line 2668
    return v4

    .line 2671
    :cond_0
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2672
    .local v0, "newAction":I
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 2673
    .local v1, "newX":F
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 2675
    .local v2, "newY":F
    sget v3, Lcom/samsung/android/directpeninput/SemDirectPenInput$EventChecker;->action:I

    if-ne v0, v3, :cond_1

    sget v3, Lcom/samsung/android/directpeninput/SemDirectPenInput$EventChecker;->x:F

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_2

    .line 2676
    :cond_1
    sput v0, Lcom/samsung/android/directpeninput/SemDirectPenInput$EventChecker;->action:I

    .line 2677
    sput v1, Lcom/samsung/android/directpeninput/SemDirectPenInput$EventChecker;->x:F

    .line 2678
    sput v2, Lcom/samsung/android/directpeninput/SemDirectPenInput$EventChecker;->y:F

    .line 2679
    return v4

    .line 2675
    :cond_2
    sget v3, Lcom/samsung/android/directpeninput/SemDirectPenInput$EventChecker;->y:F

    cmpl-float v3, v2, v3

    if-nez v3, :cond_1

    .line 2681
    const/4 v3, 0x1

    return v3
.end method
