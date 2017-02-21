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

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x76c

    iput v0, p0, Lcom/samsung/android/widget/SemDatePicker$LunarDate;->year:I

    iput v1, p0, Lcom/samsung/android/widget/SemDatePicker$LunarDate;->month:I

    iput v1, p0, Lcom/samsung/android/widget/SemDatePicker$LunarDate;->day:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemDatePicker$LunarDate;->isLeapMonth:Z

    return-void
.end method

.method public constructor <init>(IIIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/widget/SemDatePicker$LunarDate;->year:I

    iput p2, p0, Lcom/samsung/android/widget/SemDatePicker$LunarDate;->month:I

    iput p3, p0, Lcom/samsung/android/widget/SemDatePicker$LunarDate;->day:I

    iput-boolean p4, p0, Lcom/samsung/android/widget/SemDatePicker$LunarDate;->isLeapMonth:Z

    return-void
.end method


# virtual methods
.method public set(IIIZ)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemDatePicker$LunarDate;->year:I

    iput p2, p0, Lcom/samsung/android/widget/SemDatePicker$LunarDate;->month:I

    iput p3, p0, Lcom/samsung/android/widget/SemDatePicker$LunarDate;->day:I

    iput-boolean p4, p0, Lcom/samsung/android/widget/SemDatePicker$LunarDate;->isLeapMonth:Z

    return-void
.end method
