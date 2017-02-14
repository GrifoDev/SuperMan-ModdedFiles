.class public Lcom/android/systemui/recents/RecentsConfiguration;
.super Ljava/lang/Object;
.source "RecentsConfiguration.java"


# instance fields
.field public blockTouchAction:Z

.field public fakeShadows:Z

.field public forceOpacity:Z

.field public hasSamsungMembers:Z

.field public isInMultiWindowMode:Z

.field public isLargeScreen:Z

.field public isSplitScreenLayout:Z

.field public isXLargeScreen:Z

.field private mContext:Landroid/content/Context;

.field public mLaunchState:Lcom/android/systemui/recents/RecentsActivityLaunchState;

.field public scrollInterpolator:Landroid/view/animation/Interpolator;

.field public smallestWidth:I

.field public svelteLevel:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Lcom/android/systemui/recents/RecentsActivityLaunchState;

    invoke-direct {v3}, Lcom/android/systemui/recents/RecentsActivityLaunchState;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mLaunchState:Lcom/android/systemui/recents/RecentsActivityLaunchState;

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f120008

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/recents/RecentsConfiguration;->fakeShadows:Z

    const v3, 0x7f0c0042

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/RecentsConfiguration;->svelteLevel:I

    iput-object p1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsConfiguration;->reloadDisplayConfiguration()V

    iput-boolean v4, p0, Lcom/android/systemui/recents/RecentsConfiguration;->forceOpacity:Z

    iput-boolean v4, p0, Lcom/android/systemui/recents/RecentsConfiguration;->blockTouchAction:Z

    iput-boolean v4, p0, Lcom/android/systemui/recents/RecentsConfiguration;->isInMultiWindowMode:Z

    iput-boolean v4, p0, Lcom/android/systemui/recents/RecentsConfiguration;->hasSamsungMembers:Z

    new-instance v3, Lcom/android/systemui/recents/misc/QuintOut80;

    invoke-direct {v3}, Lcom/android/systemui/recents/misc/QuintOut80;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/RecentsConfiguration;->scrollInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mLaunchState:Lcom/android/systemui/recents/RecentsActivityLaunchState;

    return-object v0
.end method

.method public reloadDisplayConfiguration()V
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDeviceSmallestWidth()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->smallestWidth:I

    iget v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->smallestWidth:I

    const/high16 v5, 0x44160000    # 600.0f

    mul-float/2addr v5, v0

    float-to-int v5, v5

    if-lt v2, v5, :cond_0

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->isLargeScreen:Z

    iget v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->smallestWidth:I

    const/high16 v5, 0x44340000    # 720.0f

    mul-float/2addr v5, v0

    float-to-int v5, v5

    if-lt v2, v5, :cond_1

    :goto_1
    iput-boolean v3, p0, Lcom/android/systemui/recents/RecentsConfiguration;->isXLargeScreen:Z

    return-void

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1
.end method
