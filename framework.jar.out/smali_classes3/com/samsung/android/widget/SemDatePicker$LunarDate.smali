.class public Lcom/samsung/android/widget/SemDatePicker$LunarDate;
.super Ljava/lang/Object;
.source "SemDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/widget/SemDatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LunarDate"
.end annotation


# instance fields
.field public day:I

.field public isLeapMonth:Z

.field public month:I

.field public year:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2421
    const/16 v0, 0x76c

    iput v0, p0, Lcom/samsung/android/widget/SemDatePicker$LunarDate;->year:I

    .line 2422
    iput v1, p0, Lcom/samsung/android/widget/SemDatePicker$LunarDate;->month:I

    .line 2423
    iput v1, p0, Lcom/samsung/android/widget/SemDatePicker$LunarDate;->day:I

    .line 2424
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemDatePicker$LunarDate;->isLeapMonth:Z

    .line 2420
    return-void
.end method

.method public constructor <init>(IIIZ)V
    .locals 0
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "isLeap"    # Z

    .prologue
    .line 2427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2428
    iput p1, p0, Lcom/samsung/android/widget/SemDatePicker$LunarDate;->year:I

    .line 2429
    iput p2, p0, Lcom/samsung/android/widget/SemDatePicker$LunarDate;->month:I

    .line 2430
    iput p3, p0, Lcom/samsung/android/widget/SemDatePicker$LunarDate;->day:I

    .line 2431
    iput-boolean p4, p0, Lcom/samsung/android/widget/SemDatePicker$LunarDate;->isLeapMonth:Z

    .line 2427
    return-void
.end method


# virtual methods
.method public set(IIIZ)V
    .locals 0
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "isLeap"    # Z

    .prologue
    .line 2435
    iput p1, p0, Lcom/samsung/android/widget/SemDatePicker$LunarDate;->year:I

    .line 2436
    iput p2, p0, Lcom/samsung/android/widget/SemDatePicker$LunarDate;->month:I

    .line 2437
    iput p3, p0, Lcom/samsung/android/widget/SemDatePicker$LunarDate;->day:I

    .line 2438
    iput-boolean p4, p0, Lcom/samsung/android/widget/SemDatePicker$LunarDate;->isLeapMonth:Z

    .line 2434
    return-void
.end method
