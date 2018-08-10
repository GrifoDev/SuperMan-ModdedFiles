.class public Lcom/airbnb/lottie/utils/MeanCalculator;
.super Ljava/lang/Object;
.source "MeanCalculator.java"


# instance fields
.field private n:I

.field private sum:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(F)V
    .locals 2

    iget v0, p0, Lcom/airbnb/lottie/utils/MeanCalculator;->sum:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/airbnb/lottie/utils/MeanCalculator;->sum:F

    iget v0, p0, Lcom/airbnb/lottie/utils/MeanCalculator;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/airbnb/lottie/utils/MeanCalculator;->n:I

    iget v0, p0, Lcom/airbnb/lottie/utils/MeanCalculator;->n:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/airbnb/lottie/utils/MeanCalculator;->sum:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/airbnb/lottie/utils/MeanCalculator;->sum:F

    iget v0, p0, Lcom/airbnb/lottie/utils/MeanCalculator;->n:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/airbnb/lottie/utils/MeanCalculator;->n:I

    goto :goto_0
.end method
