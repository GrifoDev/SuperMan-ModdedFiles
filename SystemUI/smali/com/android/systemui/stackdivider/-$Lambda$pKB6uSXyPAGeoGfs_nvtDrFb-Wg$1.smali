.class final synthetic Lcom/android/systemui/stackdivider/-$Lambda$pKB6uSXyPAGeoGfs_nvtDrFb-Wg$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Z

.field private final synthetic -$f1:I

.field private final synthetic -$f2:Ljava/lang/Object;

.field private final synthetic -$f3:Ljava/lang/Object;

.field private final synthetic -$f4:Ljava/lang/Object;

.field private final synthetic -$f5:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/stackdivider/-$Lambda$pKB6uSXyPAGeoGfs_nvtDrFb-Wg$1;->-$f2:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/stackdivider/GuideViewController;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/-$Lambda$pKB6uSXyPAGeoGfs_nvtDrFb-Wg$1;->-$f3:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/stackdivider/DividerView;

    iget v2, p0, Lcom/android/systemui/stackdivider/-$Lambda$pKB6uSXyPAGeoGfs_nvtDrFb-Wg$1;->-$f1:I

    iget-object v3, p0, Lcom/android/systemui/stackdivider/-$Lambda$pKB6uSXyPAGeoGfs_nvtDrFb-Wg$1;->-$f4:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Point;

    iget-boolean v4, p0, Lcom/android/systemui/stackdivider/-$Lambda$pKB6uSXyPAGeoGfs_nvtDrFb-Wg$1;->-$f0:Z

    iget-object v5, p0, Lcom/android/systemui/stackdivider/-$Lambda$pKB6uSXyPAGeoGfs_nvtDrFb-Wg$1;->-$f5:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/Rect;

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/stackdivider/GuideViewController;->lambda$-com_android_systemui_stackdivider_GuideViewController_12323(Lcom/android/systemui/stackdivider/DividerView;ILandroid/graphics/Point;ZLandroid/graphics/Rect;)V

    return-void
.end method

.method public synthetic constructor <init>(ZILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/-$Lambda$pKB6uSXyPAGeoGfs_nvtDrFb-Wg$1;->-$f0:Z

    iput p2, p0, Lcom/android/systemui/stackdivider/-$Lambda$pKB6uSXyPAGeoGfs_nvtDrFb-Wg$1;->-$f1:I

    iput-object p3, p0, Lcom/android/systemui/stackdivider/-$Lambda$pKB6uSXyPAGeoGfs_nvtDrFb-Wg$1;->-$f2:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/systemui/stackdivider/-$Lambda$pKB6uSXyPAGeoGfs_nvtDrFb-Wg$1;->-$f3:Ljava/lang/Object;

    iput-object p5, p0, Lcom/android/systemui/stackdivider/-$Lambda$pKB6uSXyPAGeoGfs_nvtDrFb-Wg$1;->-$f4:Ljava/lang/Object;

    iput-object p6, p0, Lcom/android/systemui/stackdivider/-$Lambda$pKB6uSXyPAGeoGfs_nvtDrFb-Wg$1;->-$f5:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/-$Lambda$pKB6uSXyPAGeoGfs_nvtDrFb-Wg$1;->$m$0()V

    return-void
.end method
