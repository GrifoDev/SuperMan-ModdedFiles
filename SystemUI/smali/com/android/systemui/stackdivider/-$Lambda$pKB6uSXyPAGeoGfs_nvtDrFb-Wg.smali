.class final synthetic Lcom/android/systemui/stackdivider/-$Lambda$pKB6uSXyPAGeoGfs_nvtDrFb-Wg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:I

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/-$Lambda$pKB6uSXyPAGeoGfs_nvtDrFb-Wg;->-$f1:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/stackdivider/DividerView;

    iget v1, p0, Lcom/android/systemui/stackdivider/-$Lambda$pKB6uSXyPAGeoGfs_nvtDrFb-Wg;->-$f0:I

    invoke-static {v0, v1}, Lcom/android/systemui/stackdivider/GuideViewController;->lambda$-com_android_systemui_stackdivider_GuideViewController_9388(Lcom/android/systemui/stackdivider/DividerView;I)V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/stackdivider/-$Lambda$pKB6uSXyPAGeoGfs_nvtDrFb-Wg;->-$f0:I

    iput-object p2, p0, Lcom/android/systemui/stackdivider/-$Lambda$pKB6uSXyPAGeoGfs_nvtDrFb-Wg;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/-$Lambda$pKB6uSXyPAGeoGfs_nvtDrFb-Wg;->$m$0()V

    return-void
.end method
