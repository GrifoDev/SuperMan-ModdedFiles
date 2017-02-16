.class Landroid/widget/OverScroller$SplineOverScroller;
.super Ljava/lang/Object;
.source "OverScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/OverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SplineOverScroller"
.end annotation


# static fields
.field private static final BALLISTIC:I = 0x2

.field private static final CUBIC:I = 0x1

.field private static DECELERATION_RATE:F = 0.0f

.field private static final DEFAULT_MODE:I = 0x1

.field private static final DISTANCE_M1:F = 3.0f

.field private static final DISTANCE_M2:F = 1.5f

.field private static final DURATION_M1:F = 3.0f

.field private static final DURATION_M2:F = 1.8f

.field private static final END_TENSION:F = 1.0f

.field private static final GRAVITY:F = 2000.0f

.field private static final HIGHER_TIME_GAP_COMPENSATION:J = 0x1L

.field private static final HIGHER_TIME_GAP_MARGIN:J = 0x1L

.field private static INFLEXION:F = 0.0f

.field private static final INFLEXIONS:[F

.field private static final LOWER_TIME_GAP_COMPENSATION:J = 0x1L

.field private static final LOWER_TIME_GAP_MARGIN:J = 0x1L

.field private static final MARGIN_COMPENSATION_STARTING_COUNT:I = 0x1e

.field private static final NB_SAMPLES:I = 0x64

.field public static final ORIGINAL_MODE:I = 0x0

.field public static final SMOOTH_MODE:I = 0x1

.field private static final SPLINE:I = 0x0

.field private static SPLINE_POSITION:[F = null

.field private static final SPLINE_POSITIONS:[[F

.field private static SPLINE_TIME:[F = null

.field private static final SPLINE_TIMES:[[F

.field private static final START_TENSION:F = 0.5f

.field private static mEnableSmoothFling:Z

.field private static mRegulateCurrentTimeInterval:Z


# instance fields
.field private fBoostParamVal:[I

.field private fBoostTimeOut:I

.field private flingBoostTimeOut:I

.field private mCurrVelocity:F

.field private mCurrentPosition:I

.field private mDeceleration:F

.field private mDuration:I

.field private mFinal:I

.field private mFinished:Z

.field private mFlingFriction:F

.field private mIsDVFSBoosting:Z

.field private mIsPerfBoostEnabled:Z

.field private mIsPerfLockAcquired:Z

.field private mMaximumVelocity:I

.field private mOver:I

.field private mPerf:Landroid/util/BoostFramework;

.field private mPhysicalCoeff:F

.field private mPrevTime:J

.field private mPrevTimeGap:J

.field private mSplineDistance:I

.field private mSplineDuration:I

.field private mStart:I

.field private mStartTime:J

.field private mState:I

.field private mUpdateCount:I

.field private mVelocity:I


# direct methods
.method static synthetic -get0(Landroid/widget/OverScroller$SplineOverScroller;)F
    .locals 1

    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    return v0
.end method

.method static synthetic -get1(Landroid/widget/OverScroller$SplineOverScroller;)I
    .locals 1

    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    return v0
.end method

.method static synthetic -get2(Landroid/widget/OverScroller$SplineOverScroller;)I
    .locals 1

    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    return v0
.end method

.method static synthetic -get3(Landroid/widget/OverScroller$SplineOverScroller;)I
    .locals 1

    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    return v0
.end method

.method static synthetic -get4(Landroid/widget/OverScroller$SplineOverScroller;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return v0
.end method

.method static synthetic -get5(Landroid/widget/OverScroller$SplineOverScroller;)I
    .locals 1

    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    return v0
.end method

.method static synthetic -get6(Landroid/widget/OverScroller$SplineOverScroller;)J
    .locals 2

    iget-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    return-wide v0
.end method

.method static synthetic -get7(Landroid/widget/OverScroller$SplineOverScroller;)I
    .locals 1

    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    return v0
.end method

.method static synthetic -set0(Landroid/widget/OverScroller$SplineOverScroller;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return p1
.end method

.method static constructor <clinit>()V
    .locals 18

    .prologue
    .line 642
    const-wide v14, 0x3fe8f5c28f5c28f6L    # 0.78

    invoke-static {v14, v15}, Ljava/lang/Math;->log(D)D

    move-result-wide v14

    const-wide v16, 0x3feccccccccccccdL    # 0.9

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->log(D)D

    move-result-wide v16

    div-double v14, v14, v16

    double-to-float v14, v14

    sput v14, Landroid/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    .line 654
    const/4 v14, 0x2

    new-array v14, v14, [F

    fill-array-data v14, :array_0

    sput-object v14, Landroid/widget/OverScroller$SplineOverScroller;->INFLEXIONS:[F

    .line 655
    sget-object v14, Landroid/widget/OverScroller$SplineOverScroller;->INFLEXIONS:[F

    const/4 v15, 0x1

    aget v14, v14, v15

    sput v14, Landroid/widget/OverScroller$SplineOverScroller;->INFLEXION:F

    .line 671
    sget-object v14, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x2

    const/16 v16, 0x65

    filled-new-array/range {v15 .. v16}, [I

    move-result-object v15

    invoke-static {v14, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [[F

    sput-object v14, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITIONS:[[F

    .line 672
    sget-object v14, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x2

    const/16 v16, 0x65

    filled-new-array/range {v15 .. v16}, [I

    move-result-object v15

    invoke-static {v14, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [[F

    sput-object v14, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIMES:[[F

    .line 673
    sget-object v14, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITIONS:[[F

    const/4 v15, 0x1

    aget-object v14, v14, v15

    sput-object v14, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    .line 674
    sget-object v14, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIMES:[[F

    const/4 v15, 0x1

    aget-object v14, v14, v15

    sput-object v14, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    .line 694
    const/4 v14, 0x1

    sput-boolean v14, Landroid/widget/OverScroller$SplineOverScroller;->mEnableSmoothFling:Z

    .line 695
    const/4 v14, 0x1

    sput-boolean v14, Landroid/widget/OverScroller$SplineOverScroller;->mRegulateCurrentTimeInterval:Z

    .line 717
    const/4 v6, 0x0

    .local v6, "mode":I
    :goto_0
    const/4 v14, 0x2

    if-ge v6, v14, :cond_5

    .line 719
    sget-object v14, Landroid/widget/OverScroller$SplineOverScroller;->INFLEXIONS:[F

    aget v14, v14, v6

    const/high16 v15, 0x3f000000    # 0.5f

    mul-float v0, v15, v14

    .line 720
    .local v0, "P1":F
    sget-object v14, Landroid/widget/OverScroller$SplineOverScroller;->INFLEXIONS:[F

    aget v14, v14, v6

    const/high16 v15, 0x3f800000    # 1.0f

    sub-float v14, v15, v14

    const/high16 v15, 0x3f800000    # 1.0f

    mul-float/2addr v14, v15

    const/high16 v15, 0x3f800000    # 1.0f

    sub-float v1, v15, v14

    .line 723
    .local v1, "P2":F
    const/4 v10, 0x0

    .line 724
    .local v10, "x_min":F
    const/4 v13, 0x0

    .line 725
    .local v13, "y_min":F
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    const/16 v14, 0x64

    if-ge v5, v14, :cond_4

    .line 726
    int-to-float v14, v5

    const/high16 v15, 0x42c80000    # 100.0f

    div-float v2, v14, v15

    .line 728
    .local v2, "alpha":F
    const/high16 v9, 0x3f800000    # 1.0f

    .line 731
    .local v9, "x_max":F
    :goto_2
    sub-float v14, v9, v10

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    add-float v8, v10, v14

    .line 732
    .local v8, "x":F
    const/high16 v14, 0x40400000    # 3.0f

    mul-float/2addr v14, v8

    const/high16 v15, 0x3f800000    # 1.0f

    sub-float/2addr v15, v8

    mul-float v3, v14, v15

    .line 733
    .local v3, "coef":F
    const/high16 v14, 0x3f800000    # 1.0f

    sub-float/2addr v14, v8

    mul-float/2addr v14, v0

    mul-float v15, v8, v1

    add-float/2addr v14, v15

    mul-float/2addr v14, v3

    mul-float v15, v8, v8

    mul-float/2addr v15, v8

    add-float v7, v14, v15

    .line 734
    .local v7, "tx":F
    sub-float v14, v7, v2

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    float-to-double v14, v14

    const-wide v16, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v14, v14, v16

    if-gez v14, :cond_0

    .line 741
    sget-object v14, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITIONS:[[F

    aget-object v14, v14, v6

    const/high16 v15, 0x3f800000    # 1.0f

    sub-float/2addr v15, v8

    const/high16 v16, 0x3f000000    # 0.5f

    mul-float v15, v15, v16

    add-float/2addr v15, v8

    mul-float/2addr v15, v3

    mul-float v16, v8, v8

    mul-float v16, v16, v8

    add-float v15, v15, v16

    aput v15, v14, v5

    .line 744
    const/high16 v12, 0x3f800000    # 1.0f

    .line 747
    .local v12, "y_max":F
    :goto_3
    sub-float v14, v12, v13

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    add-float v11, v13, v14

    .line 748
    .local v11, "y":F
    const/high16 v14, 0x40400000    # 3.0f

    mul-float/2addr v14, v11

    const/high16 v15, 0x3f800000    # 1.0f

    sub-float/2addr v15, v11

    mul-float v3, v14, v15

    .line 749
    const/high16 v14, 0x3f800000    # 1.0f

    sub-float/2addr v14, v11

    const/high16 v15, 0x3f000000    # 0.5f

    mul-float/2addr v14, v15

    add-float/2addr v14, v11

    mul-float/2addr v14, v3

    mul-float v15, v11, v11

    mul-float/2addr v15, v11

    add-float v4, v14, v15

    .line 750
    .local v4, "dy":F
    sub-float v14, v4, v2

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    float-to-double v14, v14

    const-wide v16, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v14, v14, v16

    if-gez v14, :cond_2

    .line 757
    sget-object v14, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIMES:[[F

    aget-object v14, v14, v6

    const/high16 v15, 0x3f800000    # 1.0f

    sub-float/2addr v15, v11

    mul-float/2addr v15, v0

    mul-float v16, v11, v1

    add-float v15, v15, v16

    mul-float/2addr v15, v3

    mul-float v16, v11, v11

    mul-float v16, v16, v11

    add-float v15, v15, v16

    aput v15, v14, v5

    .line 725
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 735
    .end local v4    # "dy":F
    .end local v11    # "y":F
    .end local v12    # "y_max":F
    :cond_0
    cmpl-float v14, v7, v2

    if-lez v14, :cond_1

    move v9, v8

    goto/16 :goto_2

    .line 736
    :cond_1
    move v10, v8

    goto/16 :goto_2

    .line 751
    .restart local v4    # "dy":F
    .restart local v11    # "y":F
    .restart local v12    # "y_max":F
    :cond_2
    cmpl-float v14, v4, v2

    if-lez v14, :cond_3

    move v12, v11

    goto :goto_3

    .line 752
    :cond_3
    move v13, v11

    goto :goto_3

    .line 763
    .end local v2    # "alpha":F
    .end local v3    # "coef":F
    .end local v4    # "dy":F
    .end local v7    # "tx":F
    .end local v8    # "x":F
    .end local v9    # "x_max":F
    .end local v11    # "y":F
    .end local v12    # "y_max":F
    :cond_4
    sget-object v14, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITIONS:[[F

    aget-object v14, v14, v6

    sget-object v15, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIMES:[[F

    aget-object v15, v15, v6

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x64

    aput v16, v15, v17

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0x64

    aput v15, v14, v16

    .line 717
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 593
    .end local v0    # "P1":F
    .end local v1    # "P2":F
    .end local v5    # "i":I
    .end local v10    # "x_min":F
    .end local v13    # "y_min":F
    :cond_5
    return-void

    .line 654
    :array_0
    .array-data 4
        0x3eb33333    # 0.35f
        0x3e6147ae    # 0.22f
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    .line 790
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 631
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v3

    iput v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    .line 634
    iput v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    .line 686
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPerf:Landroid/util/BoostFramework;

    .line 687
    iput-boolean v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mIsPerfLockAcquired:Z

    .line 688
    iput-boolean v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mIsPerfBoostEnabled:Z

    .line 689
    iput v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->fBoostTimeOut:I

    .line 690
    iput v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->flingBoostTimeOut:I

    .line 708
    iput v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mUpdateCount:I

    .line 709
    iput-wide v6, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPrevTime:J

    .line 710
    iput-wide v6, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPrevTimeGap:J

    .line 714
    iput-boolean v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mIsDVFSBoosting:Z

    .line 791
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 792
    invoke-static {}, Landroid/widget/OverScroller;->-get0()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x0

    .line 793
    .local v1, "isOriginalMode":Z
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x43200000    # 160.0f

    mul-float v2, v3, v4

    .line 794
    .local v2, "ppi":F
    const v3, 0x43c10b3d

    mul-float/2addr v3, v2

    .line 797
    const v4, 0x3f570a3d    # 0.84f

    .line 794
    mul-float/2addr v3, v4

    iput v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    .line 801
    iget-boolean v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mIsPerfBoostEnabled:Z

    if-eqz v3, :cond_0

    .line 802
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 803
    const v4, 0x10e00a8

    .line 802
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->fBoostTimeOut:I

    .line 804
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 805
    const v4, 0x107006d

    .line 804
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->fBoostParamVal:[I

    .line 808
    :cond_0
    sget-boolean v3, Landroid/widget/OverScroller$SplineOverScroller;->mEnableSmoothFling:Z

    if-eqz v3, :cond_1

    .line 809
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 810
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mMaximumVelocity:I

    .line 814
    .end local v0    # "configuration":Landroid/view/ViewConfiguration;
    :cond_1
    if-eqz v1, :cond_2

    .line 815
    invoke-virtual {p0, v5}, Landroid/widget/OverScroller$SplineOverScroller;->setMode(I)V

    .line 790
    :cond_2
    return-void

    .line 792
    .end local v1    # "isOriginalMode":Z
    .end local v2    # "ppi":F
    :cond_3
    const/4 v1, 0x1

    .restart local v1    # "isOriginalMode":Z
    goto :goto_0
.end method

.method private adjustDuration(III)V
    .locals 12
    .param p1, "start"    # I
    .param p2, "oldFinal"    # I
    .param p3, "newFinal"    # I

    .prologue
    const/high16 v11, 0x42c80000    # 100.0f

    .line 841
    sub-int v2, p2, p1

    .line 842
    .local v2, "oldDistance":I
    sub-int v1, p3, p1

    .line 843
    .local v1, "newDistance":I
    int-to-float v9, v1

    int-to-float v10, v2

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 844
    .local v6, "x":F
    mul-float v9, v11, v6

    float-to-int v0, v9

    .line 845
    .local v0, "index":I
    const/16 v9, 0x64

    if-ge v0, v9, :cond_0

    .line 846
    int-to-float v9, v0

    div-float v7, v9, v11

    .line 847
    .local v7, "x_inf":F
    add-int/lit8 v9, v0, 0x1

    int-to-float v9, v9

    div-float v8, v9, v11

    .line 848
    .local v8, "x_sup":F
    sget-object v9, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    aget v3, v9, v0

    .line 849
    .local v3, "t_inf":F
    sget-object v9, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    add-int/lit8 v10, v0, 0x1

    aget v4, v9, v10

    .line 850
    .local v4, "t_sup":F
    sub-float v9, v6, v7

    sub-float v10, v8, v7

    div-float/2addr v9, v10

    sub-float v10, v4, v3

    mul-float/2addr v9, v10

    add-float v5, v3, v9

    .line 851
    .local v5, "timeCoef":F
    iget v9, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-float v9, v9

    mul-float/2addr v9, v5

    float-to-int v9, v9

    iput v9, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 840
    .end local v3    # "t_inf":F
    .end local v4    # "t_sup":F
    .end local v5    # "timeCoef":F
    .end local v7    # "x_inf":F
    .end local v8    # "x_sup":F
    :cond_0
    return-void
.end method

.method private fitOnBounceCurve(III)V
    .locals 10
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "velocity"    # I

    .prologue
    .line 1034
    neg-int v5, p3

    int-to-float v5, v5

    iget v6, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    div-float v2, v5, v6

    .line 1036
    .local v2, "durationToApex":F
    int-to-float v5, p3

    int-to-float v6, p3

    mul-float v4, v5, v6

    .line 1037
    .local v4, "velocitySquared":F
    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v4, v5

    iget v6, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    div-float v0, v5, v6

    .line 1038
    .local v0, "distanceToApex":F
    sub-int v5, p2, p1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v1, v5

    .line 1040
    .local v1, "distanceToEdge":F
    add-float v5, v0, v1

    float-to-double v6, v5

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    iget v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v8, v5

    div-double/2addr v6, v8

    .line 1039
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v3, v6

    .line 1041
    .local v3, "totalDuration":F
    iget-wide v6, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    sub-float v5, v3, v2

    const/high16 v8, 0x447a0000    # 1000.0f

    mul-float/2addr v5, v8

    float-to-int v5, v5

    int-to-long v8, v5

    sub-long/2addr v6, v8

    iput-wide v6, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 1042
    iput p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iput p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 1043
    iget v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    neg-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    iput v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 1032
    return-void
.end method

.method private static getDeceleration(I)F
    .locals 1
    .param p0, "velocity"    # I

    .prologue
    .line 833
    if-lez p0, :cond_0

    const/high16 v0, -0x3b060000    # -2000.0f

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x44fa0000    # 2000.0f

    goto :goto_0
.end method

.method private getSplineDeceleration(I)D
    .locals 3
    .param p1, "velocity"    # I

    .prologue
    .line 986
    sget v0, Landroid/widget/OverScroller$SplineOverScroller;->INFLEXION:F

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private getSplineFlingDistance(I)D
    .locals 14
    .param p1, "velocity"    # I

    .prologue
    .line 990
    invoke-direct {p0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineDeceleration(I)D

    move-result-wide v4

    .line 991
    .local v4, "l":D
    sget v9, Landroid/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v10, v9

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double v0, v10, v12

    .line 994
    .local v0, "decelMinusOne":D
    sget-boolean v9, Landroid/widget/OverScroller$SplineOverScroller;->mEnableSmoothFling:Z

    if-eqz v9, :cond_1

    .line 995
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Landroid/widget/OverScroller$SplineOverScroller;->mMaximumVelocity:I

    int-to-float v10, v10

    div-float v3, v9, v10

    .line 996
    .local v3, "rate":F
    const/high16 v9, 0x42c80000    # 100.0f

    mul-float/2addr v9, v3

    float-to-int v2, v9

    .line 998
    .local v2, "index":I
    const/16 v9, 0x64

    if-le v2, v9, :cond_0

    const/16 v2, 0x64

    .line 1000
    :cond_0
    sget-object v9, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    aget v9, v9, v2

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v8, v10, v9

    .line 1001
    .local v8, "value":F
    const/high16 v9, 0x40400000    # 3.0f

    mul-float/2addr v9, v8

    const/high16 v10, 0x3fc00000    # 1.5f

    add-float/2addr v9, v10

    float-to-double v6, v9

    .line 1003
    .local v6, "tuningValue":D
    iget v9, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    float-to-double v10, v9

    mul-double/2addr v10, v6

    iget v9, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    float-to-double v12, v9

    mul-double/2addr v10, v12

    sget v9, Landroid/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v12, v9

    div-double/2addr v12, v0

    mul-double/2addr v12, v4

    invoke-static {v12, v13}, Ljava/lang/Math;->exp(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    return-wide v10

    .line 1007
    .end local v2    # "index":I
    .end local v3    # "rate":F
    .end local v6    # "tuningValue":D
    .end local v8    # "value":F
    :cond_1
    iget v9, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    iget v10, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    mul-float/2addr v9, v10

    float-to-double v10, v9

    sget v9, Landroid/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v12, v9

    div-double/2addr v12, v0

    mul-double/2addr v12, v4

    invoke-static {v12, v13}, Ljava/lang/Math;->exp(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    return-wide v10
.end method

.method private getSplineFlingDuration(I)I
    .locals 14
    .param p1, "velocity"    # I

    .prologue
    .line 1012
    invoke-direct {p0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineDeceleration(I)D

    move-result-wide v4

    .line 1013
    .local v4, "l":D
    sget v9, Landroid/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v10, v9

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double v0, v10, v12

    .line 1016
    .local v0, "decelMinusOne":D
    sget-boolean v9, Landroid/widget/OverScroller$SplineOverScroller;->mEnableSmoothFling:Z

    if-eqz v9, :cond_1

    .line 1017
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Landroid/widget/OverScroller$SplineOverScroller;->mMaximumVelocity:I

    int-to-float v10, v10

    div-float v3, v9, v10

    .line 1018
    .local v3, "rate":F
    const/high16 v9, 0x42c80000    # 100.0f

    mul-float/2addr v9, v3

    float-to-int v2, v9

    .line 1020
    .local v2, "index":I
    const/16 v9, 0x64

    if-le v2, v9, :cond_0

    const/16 v2, 0x64

    .line 1022
    :cond_0
    sget-object v9, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    aget v9, v9, v2

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v8, v10, v9

    .line 1023
    .local v8, "value":F
    const/high16 v9, 0x40400000    # 3.0f

    mul-float/2addr v9, v8

    const v10, 0x3fe66666    # 1.8f

    add-float/2addr v9, v10

    float-to-double v6, v9

    .line 1025
    .local v6, "tuningValue":D
    const-wide v10, 0x408f400000000000L    # 1000.0

    mul-double/2addr v10, v6

    div-double v12, v4, v0

    invoke-static {v12, v13}, Ljava/lang/Math;->exp(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    double-to-int v9, v10

    return v9

    .line 1029
    .end local v2    # "index":I
    .end local v3    # "rate":F
    .end local v6    # "tuningValue":D
    .end local v8    # "value":F
    :cond_1
    div-double v10, v4, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->exp(D)D

    move-result-wide v10

    const-wide v12, 0x408f400000000000L    # 1000.0

    mul-double/2addr v10, v12

    double-to-int v9, v10

    return v9
.end method

.method private onEdgeReached()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    .line 1089
    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v3, v3

    iget v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v4, v4

    mul-float v2, v3, v4

    .line 1090
    .local v2, "velocitySquared":F
    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v3, v5

    div-float v0, v2, v3

    .line 1091
    .local v0, "distance":F
    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v1

    .line 1093
    .local v1, "sign":F
    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    .line 1095
    neg-float v3, v1

    mul-float/2addr v3, v2

    iget v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v4, v4

    mul-float/2addr v4, v5

    div-float/2addr v3, v4

    iput v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 1096
    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v0, v3

    .line 1099
    :cond_0
    float-to-int v3, v0

    iput v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    .line 1100
    const/4 v3, 0x2

    iput v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    .line 1101
    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iget v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    if-lez v4, :cond_2

    .end local v0    # "distance":F
    :goto_0
    float-to-int v4, v0

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 1102
    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v3, v3

    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float/2addr v3, v4

    iget v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    neg-int v3, v3

    iput v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 1104
    sget-boolean v3, Landroid/widget/OverScroller$SplineOverScroller;->mRegulateCurrentTimeInterval:Z

    if-eqz v3, :cond_1

    .line 1105
    iput v6, p0, Landroid/widget/OverScroller$SplineOverScroller;->mUpdateCount:I

    .line 1086
    :cond_1
    return-void

    .line 1101
    .restart local v0    # "distance":F
    :cond_2
    neg-float v0, v0

    goto :goto_0
.end method

.method private startAfterEdge(IIII)V
    .locals 14
    .param p1, "start"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I
    .param p4, "velocity"    # I

    .prologue
    .line 1053
    move/from16 v0, p2

    if-le p1, v0, :cond_0

    move/from16 v0, p3

    if-ge p1, v0, :cond_0

    .line 1054
    const-string/jumbo v2, "OverScroller"

    const-string/jumbo v3, "startAfterEdge called from a valid position"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 1056
    return-void

    .line 1058
    :cond_0
    move/from16 v0, p3

    if-le p1, v0, :cond_1

    const/4 v11, 0x1

    .line 1059
    .local v11, "positive":Z
    :goto_0
    if-eqz v11, :cond_2

    move/from16 v8, p3

    .line 1060
    .local v8, "edge":I
    :goto_1
    sub-int v10, p1, v8

    .line 1061
    .local v10, "overDistance":I
    mul-int v2, v10, p4

    if-ltz v2, :cond_3

    const/4 v9, 0x1

    .line 1062
    .local v9, "keepIncreasing":Z
    :goto_2
    if-eqz v9, :cond_4

    .line 1064
    move/from16 v0, p4

    invoke-direct {p0, p1, v8, v0}, Landroid/widget/OverScroller$SplineOverScroller;->startBounceAfterEdge(III)V

    .line 1052
    :goto_3
    return-void

    .line 1058
    .end local v8    # "edge":I
    .end local v9    # "keepIncreasing":Z
    .end local v10    # "overDistance":I
    .end local v11    # "positive":Z
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .restart local v11    # "positive":Z
    :cond_2
    move/from16 v8, p2

    .line 1059
    goto :goto_1

    .line 1061
    .restart local v8    # "edge":I
    .restart local v10    # "overDistance":I
    :cond_3
    const/4 v9, 0x0

    goto :goto_2

    .line 1066
    .restart local v9    # "keepIncreasing":Z
    :cond_4
    move/from16 v0, p4

    invoke-direct {p0, v0}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineFlingDistance(I)D

    move-result-wide v12

    .line 1067
    .local v12, "totalDistance":D
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-double v2, v2

    cmpl-double v2, v12, v2

    if-lez v2, :cond_7

    .line 1068
    if-eqz v11, :cond_5

    move/from16 v5, p2

    :goto_4
    if-eqz v11, :cond_6

    move v6, p1

    :goto_5
    iget v7, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    move-object v2, p0

    move v3, p1

    move/from16 v4, p4

    invoke-virtual/range {v2 .. v7}, Landroid/widget/OverScroller$SplineOverScroller;->fling(IIIII)V

    goto :goto_3

    :cond_5
    move v5, p1

    goto :goto_4

    :cond_6
    move/from16 v6, p3

    goto :goto_5

    .line 1070
    :cond_7
    move/from16 v0, p4

    invoke-direct {p0, p1, v8, v0}, Landroid/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    goto :goto_3
.end method

.method private startBounceAfterEdge(III)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "velocity"    # I

    .prologue
    .line 1047
    if-nez p3, :cond_0

    sub-int v0, p1, p2

    :goto_0
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 1048
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/OverScroller$SplineOverScroller;->fitOnBounceCurve(III)V

    .line 1049
    invoke-direct {p0}, Landroid/widget/OverScroller$SplineOverScroller;->onEdgeReached()V

    .line 1046
    return-void

    :cond_0
    move v0, p3

    .line 1047
    goto :goto_0
.end method

.method private startSpringback(III)V
    .locals 6
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "velocity"    # I

    .prologue
    .line 919
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 920
    const/4 v1, 0x1

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    .line 921
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 922
    iput p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 923
    sub-int v0, p1, p2

    .line 924
    .local v0, "delta":I
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result v1

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 926
    neg-int v1, v0

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 927
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    .line 928
    int-to-double v2, v0

    const-wide/high16 v4, -0x4000000000000000L    # -2.0

    mul-double/2addr v2, v4

    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    float-to-double v4, v1

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 917
    return-void
.end method


# virtual methods
.method continueWhenFinished()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1111
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 1135
    :goto_0
    invoke-virtual {p0}, Landroid/widget/OverScroller$SplineOverScroller;->update()Z

    .line 1136
    const/4 v0, 0x1

    return v0

    .line 1114
    :pswitch_0
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    if-ge v0, v1, :cond_0

    .line 1116
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 1118
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 1119
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 1120
    iget-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 1121
    invoke-direct {p0}, Landroid/widget/OverScroller$SplineOverScroller;->onEdgeReached()V

    goto :goto_0

    .line 1124
    :cond_0
    return v4

    .line 1128
    :pswitch_1
    iget-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 1129
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    invoke-direct {p0, v0, v1, v4}, Landroid/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    goto :goto_0

    .line 1132
    :pswitch_2
    return v4

    .line 1111
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method extendDuration(I)V
    .locals 6
    .param p1, "extend"    # I

    .prologue
    .line 893
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 894
    .local v2, "time":J
    iget-wide v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    sub-long v4, v2, v4

    long-to-int v0, v4

    .line 895
    .local v0, "elapsedTime":I
    add-int v1, v0, p1

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 896
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 892
    return-void
.end method

.method finish()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 870
    iget-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mIsDVFSBoosting:Z

    if-eqz v0, :cond_0

    .line 871
    invoke-static {v1}, Lcom/samsung/android/os/SemPerfManager;->onSmoothScrollEvent(Z)V

    .line 872
    iput-boolean v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mIsDVFSBoosting:Z

    .line 880
    :cond_0
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 884
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 869
    return-void
.end method

.method fling(IIIII)V
    .locals 6
    .param p1, "start"    # I
    .param p2, "velocity"    # I
    .param p3, "min"    # I
    .param p4, "max"    # I
    .param p5, "over"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 932
    iput p5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    .line 933
    iput-boolean v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 934
    iput p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v2, p2

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    .line 935
    iput v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    iput v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 936
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 937
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 945
    if-gt p1, p4, :cond_0

    if-ge p1, p3, :cond_1

    .line 946
    :cond_0
    invoke-direct {p0, p1, p3, p4, p2}, Landroid/widget/OverScroller$SplineOverScroller;->startAfterEdge(IIII)V

    .line 947
    return-void

    .line 950
    :cond_1
    iput v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    .line 951
    const-wide/16 v0, 0x0

    .line 953
    .local v0, "totalDistance":D
    if-eqz p2, :cond_2

    .line 954
    invoke-direct {p0, p2}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineFlingDuration(I)I

    move-result v2

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 955
    invoke-direct {p0, p2}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineFlingDistance(I)D

    move-result-wide v0

    .line 958
    sget-boolean v2, Landroid/widget/OverScroller$SplineOverScroller;->mEnableSmoothFling:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mIsDVFSBoosting:Z

    if-eqz v2, :cond_6

    .line 964
    :cond_2
    :goto_0
    int-to-float v2, p2

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    float-to-double v2, v2

    mul-double/2addr v2, v0

    double-to-int v2, v2

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    .line 965
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    add-int/2addr v2, p1

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 968
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    if-ge v2, p3, :cond_3

    .line 969
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    invoke-direct {p0, v2, v3, p3}, Landroid/widget/OverScroller$SplineOverScroller;->adjustDuration(III)V

    .line 970
    iput p3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 973
    :cond_3
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    if-le v2, p4, :cond_4

    .line 974
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    invoke-direct {p0, v2, v3, p4}, Landroid/widget/OverScroller$SplineOverScroller;->adjustDuration(III)V

    .line 975
    iput p4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 979
    :cond_4
    sget-boolean v2, Landroid/widget/OverScroller$SplineOverScroller;->mRegulateCurrentTimeInterval:Z

    if-eqz v2, :cond_5

    .line 980
    iput v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mUpdateCount:I

    .line 931
    :cond_5
    return-void

    .line 958
    :cond_6
    const/16 v2, 0x320

    if-ge p2, v2, :cond_7

    const/16 v2, -0x320

    if-gt p2, v2, :cond_2

    .line 959
    :cond_7
    invoke-static {v5}, Lcom/samsung/android/os/SemPerfManager;->onSmoothScrollEvent(Z)V

    .line 960
    iput-boolean v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mIsDVFSBoosting:Z

    goto :goto_0
.end method

.method notifyEdgeReached(III)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "over"    # I

    .prologue
    .line 1077
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    if-nez v0, :cond_0

    .line 1078
    iput p3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    .line 1079
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 1082
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    float-to-int v0, v0

    invoke-direct {p0, p1, p2, p2, v0}, Landroid/widget/OverScroller$SplineOverScroller;->startAfterEdge(IIII)V

    .line 1075
    :cond_0
    return-void
.end method

.method setFinalPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 888
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 889
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 887
    return-void
.end method

.method setFriction(F)V
    .locals 0
    .param p1, "friction"    # F

    .prologue
    .line 787
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    .line 786
    return-void
.end method

.method public setMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 770
    if-ltz p1, :cond_0

    if-le p1, v1, :cond_1

    .line 771
    :cond_0
    return-void

    .line 773
    :cond_1
    if-nez p1, :cond_2

    .line 774
    sput-boolean v0, Landroid/widget/OverScroller$SplineOverScroller;->mEnableSmoothFling:Z

    .line 775
    sput-boolean v0, Landroid/widget/OverScroller$SplineOverScroller;->mRegulateCurrentTimeInterval:Z

    .line 780
    :goto_0
    sget-object v0, Landroid/widget/OverScroller$SplineOverScroller;->INFLEXIONS:[F

    aget v0, v0, p1

    sput v0, Landroid/widget/OverScroller$SplineOverScroller;->INFLEXION:F

    .line 781
    sget-object v0, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITIONS:[[F

    aget-object v0, v0, p1

    sput-object v0, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    .line 782
    sget-object v0, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIMES:[[F

    aget-object v0, v0, p1

    sput-object v0, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    .line 769
    return-void

    .line 777
    :cond_2
    sput-boolean v1, Landroid/widget/OverScroller$SplineOverScroller;->mEnableSmoothFling:Z

    .line 778
    sput-boolean v1, Landroid/widget/OverScroller$SplineOverScroller;->mRegulateCurrentTimeInterval:Z

    goto :goto_0
.end method

.method springback(III)Z
    .locals 4
    .param p1, "start"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 900
    iput-boolean v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 902
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 903
    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 905
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 906
    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 908
    if-ge p1, p2, :cond_1

    .line 909
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    .line 914
    :cond_0
    :goto_0
    iget-boolean v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    if-eqz v2, :cond_2

    :goto_1
    return v0

    .line 910
    :cond_1
    if-le p1, p3, :cond_0

    .line 911
    invoke-direct {p0, p1, p3, v0}, Landroid/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 914
    goto :goto_1
.end method

.method startScroll(III)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "distance"    # I
    .param p3, "duration"    # I

    .prologue
    const/4 v2, 0x0

    .line 856
    iput-boolean v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 858
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 859
    add-int v0, p1, p2

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 861
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 862
    iput p3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 865
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 866
    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 855
    return-void
.end method

.method update()Z
    .locals 28

    .prologue
    .line 1145
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v22

    .line 1149
    .local v22, "time":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    move-wide/from16 v24, v0

    sub-long v4, v22, v24

    .line 1150
    .local v4, "currentTime":J
    move-wide v14, v4

    .line 1152
    .local v14, "originalCurrentTime":J
    sget-boolean v24, Landroid/widget/OverScroller$SplineOverScroller;->mRegulateCurrentTimeInterval:Z

    if-eqz v24, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    move/from16 v24, v0

    if-nez v24, :cond_3

    .line 1153
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mUpdateCount:I

    move/from16 v24, v0

    if-lez v24, :cond_0

    .line 1154
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mPrevTime:J

    move-wide/from16 v24, v0

    add-long v24, v24, v4

    const-wide/16 v26, 0x2

    div-long v4, v24, v26

    .line 1156
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mUpdateCount:I

    move/from16 v24, v0

    const/16 v25, 0x1e

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_1

    .line 1157
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mPrevTime:J

    move-wide/from16 v24, v0

    sub-long v6, v4, v24

    .line 1159
    .local v6, "currentTimeGap":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mPrevTimeGap:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x1

    add-long v24, v24, v26

    cmp-long v24, v6, v24

    if-lez v24, :cond_4

    .line 1160
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mPrevTime:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mPrevTimeGap:J

    move-wide/from16 v26, v0

    add-long v24, v24, v26

    const-wide/16 v26, 0x1

    add-long v4, v24, v26

    .line 1166
    .end local v6    # "currentTimeGap":J
    :cond_1
    :goto_0
    const-wide/16 v24, 0x0

    cmp-long v24, v4, v24

    if-gez v24, :cond_2

    .line 1167
    const-wide/16 v4, 0x0

    .line 1170
    :cond_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mPrevTime:J

    move-wide/from16 v24, v0

    sub-long v24, v4, v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/OverScroller$SplineOverScroller;->mPrevTimeGap:J

    .line 1171
    move-object/from16 v0, p0

    iput-wide v4, v0, Landroid/widget/OverScroller$SplineOverScroller;->mPrevTime:J

    .line 1172
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mUpdateCount:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/OverScroller$SplineOverScroller;->mUpdateCount:I

    .line 1176
    :cond_3
    const-wide/16 v24, 0x0

    cmp-long v24, v4, v24

    if-nez v24, :cond_6

    .line 1178
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    move/from16 v24, v0

    if-lez v24, :cond_5

    const/16 v24, 0x1

    :goto_1
    return v24

    .line 1161
    .restart local v6    # "currentTimeGap":J
    :cond_4
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mPrevTimeGap:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x1

    sub-long v24, v24, v26

    cmp-long v24, v6, v24

    if-gez v24, :cond_1

    .line 1162
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mPrevTime:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mPrevTimeGap:J

    move-wide/from16 v26, v0

    add-long v24, v24, v26

    const-wide/16 v26, 0x1

    sub-long v4, v24, v26

    goto :goto_0

    .line 1178
    .end local v6    # "currentTimeGap":J
    :cond_5
    const/16 v24, 0x0

    goto :goto_1

    .line 1180
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    cmp-long v24, v4, v24

    if-lez v24, :cond_7

    .line 1181
    const/16 v24, 0x0

    return v24

    .line 1197
    :cond_7
    const-wide/16 v10, 0x0

    .line 1198
    .local v10, "distance":D
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    move/from16 v24, v0

    packed-switch v24, :pswitch_data_0

    .line 1235
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    move/from16 v24, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v26

    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v25, v0

    add-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 1237
    const/16 v24, 0x1

    return v24

    .line 1200
    :pswitch_0
    long-to-float v0, v4

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v17, v24, v25

    .line 1201
    .local v17, "t":F
    const/high16 v24, 0x42c80000    # 100.0f

    mul-float v24, v24, v17

    move/from16 v0, v24

    float-to-int v13, v0

    .line 1202
    .local v13, "index":I
    const/high16 v12, 0x3f800000    # 1.0f

    .line 1203
    .local v12, "distanceCoef":F
    const/16 v21, 0x0

    .line 1204
    .local v21, "velocityCoef":F
    const/16 v24, 0x64

    move/from16 v0, v24

    if-ge v13, v0, :cond_8

    .line 1205
    int-to-float v0, v13

    move/from16 v24, v0

    const/high16 v25, 0x42c80000    # 100.0f

    div-float v19, v24, v25

    .line 1206
    .local v19, "t_inf":F
    add-int/lit8 v24, v13, 0x1

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x42c80000    # 100.0f

    div-float v20, v24, v25

    .line 1207
    .local v20, "t_sup":F
    sget-object v24, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    aget v8, v24, v13

    .line 1208
    .local v8, "d_inf":F
    sget-object v24, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    add-int/lit8 v25, v13, 0x1

    aget v9, v24, v25

    .line 1209
    .local v9, "d_sup":F
    sub-float v24, v9, v8

    sub-float v25, v20, v19

    div-float v21, v24, v25

    .line 1210
    sub-float v24, v17, v19

    mul-float v24, v24, v21

    add-float v12, v8, v24

    .line 1213
    .end local v8    # "d_inf":F
    .end local v9    # "d_sup":F
    .end local v19    # "t_inf":F
    .end local v20    # "t_sup":F
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, v12

    move/from16 v0, v24

    float-to-double v10, v0

    .line 1214
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v24, v24, v25

    const/high16 v25, 0x447a0000    # 1000.0f

    mul-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    goto/16 :goto_2

    .line 1219
    .end local v12    # "distanceCoef":F
    .end local v13    # "index":I
    .end local v17    # "t":F
    .end local v21    # "velocityCoef":F
    :pswitch_1
    long-to-float v0, v4

    move/from16 v24, v0

    const/high16 v25, 0x447a0000    # 1000.0f

    div-float v17, v24, v25

    .line 1220
    .restart local v17    # "t":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    move/from16 v25, v0

    mul-float v25, v25, v17

    add-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    .line 1221
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    move/from16 v25, v0

    mul-float v25, v25, v17

    mul-float v25, v25, v17

    const/high16 v26, 0x40000000    # 2.0f

    div-float v25, v25, v26

    add-float v24, v24, v25

    move/from16 v0, v24

    float-to-double v10, v0

    .line 1222
    goto/16 :goto_2

    .line 1226
    .end local v17    # "t":F
    :pswitch_2
    long-to-float v0, v4

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v17, v24, v25

    .line 1227
    .restart local v17    # "t":F
    mul-float v18, v17, v17

    .line 1228
    .local v18, "t2":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->signum(F)F

    move-result v16

    .line 1229
    .local v16, "sign":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, v16

    const/high16 v25, 0x40400000    # 3.0f

    mul-float v25, v25, v18

    const/high16 v26, 0x40000000    # 2.0f

    mul-float v26, v26, v17

    mul-float v26, v26, v18

    sub-float v25, v25, v26

    mul-float v24, v24, v25

    move/from16 v0, v24

    float-to-double v10, v0

    .line 1230
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, v16

    const/high16 v25, 0x40c00000    # 6.0f

    mul-float v24, v24, v25

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v25, v0

    add-float v25, v25, v18

    mul-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    goto/16 :goto_2

    .line 1198
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method updateScroll(F)V
    .locals 3
    .param p1, "q"    # F

    .prologue
    .line 826
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 825
    return-void
.end method
