.class final synthetic Lcom/android/systemui/stackdivider/-$Lambda$pKB6uSXyPAGeoGfs_nvtDrFb-Wg$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic -$f0:Z

.field private final synthetic -$f1:Z

.field private final synthetic -$f2:I

.field private final synthetic -$f3:I

.field private final synthetic -$f4:I

.field private final synthetic -$f5:I

.field private final synthetic -$f6:Ljava/lang/Object;

.field private final synthetic -$f7:Ljava/lang/Object;

.field private final synthetic -$f8:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/animation/ValueAnimator;)V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/stackdivider/-$Lambda$pKB6uSXyPAGeoGfs_nvtDrFb-Wg$3;->-$f6:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/stackdivider/GuideViewController;

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/-$Lambda$pKB6uSXyPAGeoGfs_nvtDrFb-Wg$3;->-$f0:Z

    iget-object v2, p0, Lcom/android/systemui/stackdivider/-$Lambda$pKB6uSXyPAGeoGfs_nvtDrFb-Wg$3;->-$f7:Ljava/lang/Object;

    check-cast v2, Lcom/android/systemui/stackdivider/DividerView;

    iget v3, p0, Lcom/android/systemui/stackdivider/-$Lambda$pKB6uSXyPAGeoGfs_nvtDrFb-Wg$3;->-$f2:I

    iget-boolean v4, p0, Lcom/android/systemui/stackdivider/-$Lambda$pKB6uSXyPAGeoGfs_nvtDrFb-Wg$3;->-$f1:Z

    iget-object v5, p0, Lcom/android/systemui/stackdivider/-$Lambda$pKB6uSXyPAGeoGfs_nvtDrFb-Wg$3;->-$f8:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/Rect;

    iget v6, p0, Lcom/android/systemui/stackdivider/-$Lambda$pKB6uSXyPAGeoGfs_nvtDrFb-Wg$3;->-$f3:I

    iget v7, p0, Lcom/android/systemui/stackdivider/-$Lambda$pKB6uSXyPAGeoGfs_nvtDrFb-Wg$3;->-$f4:I

    iget v8, p0, Lcom/android/systemui/stackdivider/-$Lambda$pKB6uSXyPAGeoGfs_nvtDrFb-Wg$3;->-$f5:I

    move-object v9, p1

    invoke-virtual/range {v0 .. v9}, Lcom/android/systemui/stackdivider/GuideViewController;->lambda$-com_android_systemui_stackdivider_GuideViewController_21085(ZLcom/android/systemui/stackdivider/DividerView;IZLandroid/graphics/Rect;IIILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public synthetic constructor <init>(ZZIIIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/-$Lambda$pKB6uSXyPAGeoGfs_nvtDrFb-Wg$3;->-$f0:Z

    iput-boolean p2, p0, Lcom/android/systemui/stackdivider/-$Lambda$pKB6uSXyPAGeoGfs_nvtDrFb-Wg$3;->-$f1:Z

    iput p3, p0, Lcom/android/systemui/stackdivider/-$Lambda$pKB6uSXyPAGeoGfs_nvtDrFb-Wg$3;->-$f2:I

    iput p4, p0, Lcom/android/systemui/stackdivider/-$Lambda$pKB6uSXyPAGeoGfs_nvtDrFb-Wg$3;->-$f3:I

    iput p5, p0, Lcom/android/systemui/stackdivider/-$Lambda$pKB6uSXyPAGeoGfs_nvtDrFb-Wg$3;->-$f4:I

    iput p6, p0, Lcom/android/systemui/stackdivider/-$Lambda$pKB6uSXyPAGeoGfs_nvtDrFb-Wg$3;->-$f5:I

    iput-object p7, p0, Lcom/android/systemui/stackdivider/-$Lambda$pKB6uSXyPAGeoGfs_nvtDrFb-Wg$3;->-$f6:Ljava/lang/Object;

    iput-object p8, p0, Lcom/android/systemui/stackdivider/-$Lambda$pKB6uSXyPAGeoGfs_nvtDrFb-Wg$3;->-$f7:Ljava/lang/Object;

    iput-object p9, p0, Lcom/android/systemui/stackdivider/-$Lambda$pKB6uSXyPAGeoGfs_nvtDrFb-Wg$3;->-$f8:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/-$Lambda$pKB6uSXyPAGeoGfs_nvtDrFb-Wg$3;->$m$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method
