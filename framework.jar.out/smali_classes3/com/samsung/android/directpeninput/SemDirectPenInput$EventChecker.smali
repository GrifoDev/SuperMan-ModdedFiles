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

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/directpeninput/SemDirectPenInput$EventChecker;->action:I

    sput v1, Lcom/samsung/android/directpeninput/SemDirectPenInput$EventChecker;->x:F

    sput v1, Lcom/samsung/android/directpeninput/SemDirectPenInput$EventChecker;->y:F

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDuplicated(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x0

    if-nez p0, :cond_0

    const/4 v3, -0x1

    sput v3, Lcom/samsung/android/directpeninput/SemDirectPenInput$EventChecker;->action:I

    return v4

    :cond_0
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sget v3, Lcom/samsung/android/directpeninput/SemDirectPenInput$EventChecker;->action:I

    if-ne v0, v3, :cond_1

    sget v3, Lcom/samsung/android/directpeninput/SemDirectPenInput$EventChecker;->x:F

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_2

    :cond_1
    sput v0, Lcom/samsung/android/directpeninput/SemDirectPenInput$EventChecker;->action:I

    sput v1, Lcom/samsung/android/directpeninput/SemDirectPenInput$EventChecker;->x:F

    sput v2, Lcom/samsung/android/directpeninput/SemDirectPenInput$EventChecker;->y:F

    return v4

    :cond_2
    sget v3, Lcom/samsung/android/directpeninput/SemDirectPenInput$EventChecker;->y:F

    cmpl-float v3, v2, v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    return v3
.end method
