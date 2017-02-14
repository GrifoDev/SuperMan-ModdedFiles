.class Landroid/text/Layout$TabStops;
.super Ljava/lang/Object;
.source "Layout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/Layout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TabStops"
.end annotation


# instance fields
.field private mIncrement:I

.field private mNumStops:I

.field private mStops:[I


# direct methods
.method constructor <init>(I[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2}, Landroid/text/Layout$TabStops;->reset(I[Ljava/lang/Object;)V

    return-void
.end method

.method public static nextDefaultStop(FI)F
    .locals 2

    int-to-float v0, p1

    add-float/2addr v0, p0

    int-to-float v1, p1

    div-float/2addr v0, v1

    float-to-int v0, v0

    mul-int/2addr v0, p1

    int-to-float v0, v0

    return v0
.end method


# virtual methods
.method nextTab(F)F
    .locals 5

    iget v1, p0, Landroid/text/Layout$TabStops;->mNumStops:I

    if-lez v1, :cond_1

    iget-object v3, p0, Landroid/text/Layout$TabStops;->mStops:[I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget v2, v3, v0

    int-to-float v4, v2

    cmpl-float v4, v4, p1

    if-lez v4, :cond_0

    int-to-float v4, v2

    return v4

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v4, p0, Landroid/text/Layout$TabStops;->mIncrement:I

    invoke-static {p1, v4}, Landroid/text/Layout$TabStops;->nextDefaultStop(FI)F

    move-result v4

    return v4
.end method

.method reset(I[Ljava/lang/Object;)V
    .locals 10

    const/4 v7, 0x0

    iput p1, p0, Landroid/text/Layout$TabStops;->mIncrement:I

    const/4 v1, 0x0

    if-eqz p2, :cond_5

    iget-object v5, p0, Landroid/text/Layout$TabStops;->mStops:[I

    array-length v8, p2

    move v6, v7

    move v2, v1

    :goto_0
    if-ge v6, v8, :cond_3

    aget-object v4, p2, v6

    instance-of v9, v4, Landroid/text/style/TabStopSpan;

    if-eqz v9, :cond_7

    if-nez v5, :cond_1

    const/16 v9, 0xa

    new-array v5, v9, [I

    :cond_0
    :goto_1
    add-int/lit8 v1, v2, 0x1

    check-cast v4, Landroid/text/style/TabStopSpan;

    invoke-interface {v4}, Landroid/text/style/TabStopSpan;->getTabStop()I

    move-result v9

    aput v9, v5, v2

    :goto_2
    add-int/lit8 v6, v6, 0x1

    move v2, v1

    goto :goto_0

    :cond_1
    array-length v9, v5

    if-ne v2, v9, :cond_0

    mul-int/lit8 v9, v2, 0x2

    new-array v3, v9, [I

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v2, :cond_2

    aget v9, v5, v0

    aput v9, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    move-object v5, v3

    goto :goto_1

    :cond_3
    const/4 v6, 0x1

    if-le v2, v6, :cond_4

    invoke-static {v5, v7, v2}, Ljava/util/Arrays;->sort([III)V

    :cond_4
    iget-object v6, p0, Landroid/text/Layout$TabStops;->mStops:[I

    if-eq v5, v6, :cond_6

    iput-object v5, p0, Landroid/text/Layout$TabStops;->mStops:[I

    move v1, v2

    :cond_5
    :goto_4
    iput v1, p0, Landroid/text/Layout$TabStops;->mNumStops:I

    return-void

    :cond_6
    move v1, v2

    goto :goto_4

    :cond_7
    move v1, v2

    goto :goto_2
.end method
