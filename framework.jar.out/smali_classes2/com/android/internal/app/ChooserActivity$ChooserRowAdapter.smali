.class Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;
.super Landroid/widget/BaseAdapter;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChooserRowAdapter"
.end annotation


# instance fields
.field private mAnimationCount:I

.field private mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

.field private final mColumnCount:I

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mServiceTargetScale:[Lcom/android/internal/app/ChooserActivity$RowScale;

.field final synthetic this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method static synthetic -get0(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)[Lcom/android/internal/app/ChooserActivity$RowScale;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mServiceTargetScale:[Lcom/android/internal/app/ChooserActivity$RowScale;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;[Lcom/android/internal/app/ChooserActivity$RowScale;)[Lcom/android/internal/app/ChooserActivity$RowScale;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mServiceTargetScale:[Lcom/android/internal/app/ChooserActivity$RowScale;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;I)F
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->semGetRowScale(I)F

    move-result v0

    return v0
.end method

.method public constructor <init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;)V
    .locals 2

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e007a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mColumnCount:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mAnimationCount:I

    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v0, 0x10c0005

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;-><init>(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)V

    invoke-virtual {p2, v0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method private getRowScale(I)F
    .locals 4

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getCallerTargetRowCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getServiceTargetRowCount()I

    move-result v2

    add-int v0, v1, v2

    if-lt p1, v1, :cond_0

    if-ge p1, v0, :cond_0

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mServiceTargetScale:[Lcom/android/internal/app/ChooserActivity$RowScale;

    sub-int v3, p1, v1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/internal/app/ChooserActivity$RowScale;->get()F

    move-result v2

    return v2

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    return v2
.end method

.method private semGetRowScale(I)F
    .locals 4

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v2}, Lcom/android/internal/app/ChooserActivity;->semGetTopPanelCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getServiceTargetRowCount()I

    move-result v2

    add-int v0, v1, v2

    if-lt p1, v1, :cond_0

    if-ge p1, v0, :cond_0

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mServiceTargetScale:[Lcom/android/internal/app/ChooserActivity$RowScale;

    sub-int v3, p1, v1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/internal/app/ChooserActivity$RowScale;->get()F

    move-result v2

    return v2

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    return v2
.end method


# virtual methods
.method bindViewHolder(ILcom/android/internal/app/ChooserActivity$RowViewHolder;)V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getFirstRowPosition(I)I

    move-result v3

    iget-object v6, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v6, v3}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getPositionTargetType(I)I

    move-result v4

    iget v6, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mColumnCount:I

    add-int/2addr v6, v3

    add-int/lit8 v0, v6, -0x1

    :goto_0
    iget-object v6, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v6, v0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getPositionTargetType(I)I

    move-result v6

    if-eq v6, v4, :cond_0

    if-lt v0, v3, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    if-ne v4, v10, :cond_2

    iget-object v6, p2, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    const v8, 0x1060058

    invoke-virtual {v7, v8}, Lcom/android/internal/app/ChooserActivity;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    :goto_1
    iget-object v6, p2, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v2, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v6, p2, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v7, p2, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->measuredRowHeight:I

    int-to-float v7, v7

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getRowScale(I)F

    move-result v8

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-static {v10, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v6, p2, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v6, v2, :cond_1

    iget-object v6, p2, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_1
    const/4 v1, 0x0

    :goto_2
    iget v6, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mColumnCount:I

    if-ge v1, v6, :cond_4

    iget-object v6, p2, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->cells:[Landroid/view/View;

    aget-object v5, v6, v1

    add-int v6, v3, v1

    if-gt v6, v0, :cond_3

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p2, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->itemIndices:[I

    add-int v7, v3, v1

    aput v7, v6, v1

    iget-object v6, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    iget-object v7, p2, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->itemIndices:[I

    aget v7, v7, v1

    invoke-virtual {v6, v7, v5}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->bindView(ILandroid/view/View;)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v6, p2, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    goto :goto_1

    :cond_3
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_4
    return-void
.end method

.method createViewHolder(Landroid/view/ViewGroup;)Lcom/android/internal/app/ChooserActivity$RowViewHolder;
    .locals 11

    const/4 v10, -0x1

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v8, 0x10900fe

    invoke-virtual {v7, v8, p1, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/internal/app/ChooserActivity$RowViewHolder;

    iget v7, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mColumnCount:I

    invoke-direct {v1, v4, v7}, Lcom/android/internal/app/ChooserActivity$RowViewHolder;-><init>(Landroid/view/ViewGroup;I)V

    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    const/4 v2, 0x0

    :goto_0
    iget v7, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mColumnCount:I

    if-ge v2, v7, :cond_2

    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v7, v4}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->createView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    move v0, v2

    new-instance v7, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$2;

    invoke-direct {v7, p0, v1, v0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$2;-><init>(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;Lcom/android/internal/app/ChooserActivity$RowViewHolder;I)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v7, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$3;

    invoke-direct {v7, p0, v1, v0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$3;-><init>(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;Lcom/android/internal/app/ChooserActivity$RowViewHolder;I)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-boolean v7, v7, Lcom/android/internal/app/ChooserActivity;->mIsDeskTopMode:Z

    if-eqz v7, :cond_0

    new-instance v7, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$4;

    invoke-direct {v7, p0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$4;-><init>(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    :cond_0
    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v7, v1, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->cells:[Landroid/view/View;

    aput-object v6, v7, v2

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v6, v5, v5}, Landroid/view/View;->measure(II)V

    if-nez v3, :cond_1

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-direct {v3, v10, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    iput v7, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->measure()V

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-nez v3, :cond_3

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    iget v7, v1, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->measuredRowHeight:I

    invoke-direct {v3, v10, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    return-object v1

    :cond_3
    iget v7, v1, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->measuredRowHeight:I

    iput v7, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_2
.end method

.method public getCallerTargetRowCount()I
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getCallerTargetCount()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mColumnCount:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getCount()I
    .locals 4

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-boolean v0, v0, Lcom/android/internal/app/ChooserActivity;->mIsDeviceDefault:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getServiceTargetRowCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getMergedTargetRowCount()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->semGetTopPanelCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getCallerTargetRowCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getServiceTargetRowCount()I

    move-result v1

    add-int/2addr v0, v1

    int-to-double v0, v0

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getStandardTargetCount()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mColumnCount:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method getFirstRowPosition(I)I
    .locals 7

    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v4}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getCallerTargetCount()I

    move-result v0

    int-to-float v4, v0

    iget v5, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mColumnCount:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    if-ge p1, v1, :cond_0

    iget v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mColumnCount:I

    mul-int/2addr v4, p1

    return v4

    :cond_0
    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v4}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getServiceTargetCount()I

    move-result v2

    int-to-float v4, v2

    iget v5, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mColumnCount:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    add-int v4, v1, v3

    if-ge p1, v4, :cond_1

    sub-int v4, p1, v1

    iget v5, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mColumnCount:I

    mul-int/2addr v4, v5

    add-int/2addr v4, v0

    return v4

    :cond_1
    add-int v4, v0, v2

    sub-int v5, p1, v1

    sub-int/2addr v5, v3

    iget v6, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mColumnCount:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    return v4
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getMergedTargetRowCount()I
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getStandardTargetCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getCallerTargetCount()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mColumnCount:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getServiceTargetRowCount()I
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getServiceTargetCount()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mColumnCount:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-boolean v1, v1, Lcom/android/internal/app/ChooserActivity;->mIsDeviceDefault:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->semGetView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p0, p3}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->createViewHolder(Landroid/view/ViewGroup;)Lcom/android/internal/app/ChooserActivity$RowViewHolder;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->bindViewHolder(ILcom/android/internal/app/ChooserActivity$RowViewHolder;)V

    iget-object v1, v0, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    return-object v1

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserActivity$RowViewHolder;

    goto :goto_0
.end method

.method public onAnimationEnd()V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mAnimationCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mAnimationCount:I

    iget v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mAnimationCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->setDismissLocked(Z)V

    :cond_0
    return-void
.end method

.method public onAnimationStart()V
    .locals 3

    iget v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mAnimationCount:I

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mAnimationCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mAnimationCount:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ResolverDrawerLayout;->setDismissLocked(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method semBindViewHolder(ILcom/android/internal/app/ChooserActivity$RowViewHolder;)V
    .locals 13

    const/4 v12, 0x0

    const/4 v11, 0x1

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->semGetFirstRowPosition(I)I

    move-result v4

    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v7, v4}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getPositionTargetType(I)I

    move-result v5

    iget v7, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mColumnCount:I

    add-int/2addr v7, v4

    add-int/lit8 v1, v7, -0x1

    if-ne v5, v11, :cond_0

    invoke-virtual {p2, v11}, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->semSkipCollapsibleHeightRow(Z)V

    :goto_0
    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v7, v1}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getPositionTargetType(I)I

    move-result v7

    if-eq v7, v5, :cond_2

    if-lt v1, v4, :cond_2

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    if-eqz v5, :cond_1

    const/4 v7, 0x2

    if-ne v5, v7, :cond_2

    :cond_1
    :goto_1
    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v7, v1}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getPositionTargetType(I)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    if-lt v1, v4, :cond_2

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    if-ne v5, v11, :cond_4

    iget-object v7, p2, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    const v9, 0x1080885

    invoke-virtual {v8, v9}, Lcom/android/internal/app/ChooserActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v7}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1050260

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v7, p2, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    iget-object v8, p2, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v8

    iget-object v9, p2, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v9

    mul-int/lit8 v10, v0, 0x2

    invoke-virtual {v7, v8, v12, v9, v10}, Landroid/view/ViewGroup;->setPadding(IIII)V

    invoke-virtual {p2}, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->measure()V

    :goto_2
    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v7}, Lcom/android/internal/app/ChooserActivity;->semGetTopPanelCount()I

    move-result v7

    iget-object v8, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v8}, Lcom/android/internal/app/ChooserActivity;->-get2(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getServiceTargetRowCount()I

    move-result v8

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    if-le p1, v7, :cond_5

    invoke-virtual {p2, v12}, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->semSetAlwaysShow(Z)V

    :goto_3
    iget-object v7, p2, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v3, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v7, p2, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v8, p2, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->measuredRowHeight:I

    int-to-float v8, v8

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->semGetRowScale(I)F

    move-result v9

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-static {v11, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v7, p2, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v7, v3, :cond_3

    iget-object v7, p2, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_3
    const/4 v2, 0x0

    :goto_4
    iget v7, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mColumnCount:I

    if-ge v2, v7, :cond_7

    iget-object v7, p2, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->cells:[Landroid/view/View;

    aget-object v6, v7, v2

    add-int v7, v4, v2

    if-gt v7, v1, :cond_6

    invoke-virtual {v6, v12}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, p2, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->itemIndices:[I

    add-int v8, v4, v2

    aput v8, v7, v2

    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    iget-object v8, p2, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->itemIndices:[I

    aget v8, v8, v2

    invoke-virtual {v7, v8, v6}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->bindView(ILandroid/view/View;)V

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    iget-object v7, p2, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    invoke-virtual {v7, v12}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    goto :goto_2

    :cond_5
    invoke-virtual {p2, v11}, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->semSetAlwaysShow(Z)V

    goto :goto_3

    :cond_6
    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_7
    if-eq v5, v11, :cond_8

    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v7}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getCallerTargetCount()I

    move-result v7

    iget-object v8, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v8}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getStandardTargetCount()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mColumnCount:I

    if-ge v7, v8, :cond_8

    iget-object v7, p2, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    check-cast v7, Landroid/widget/LinearLayout;

    const/16 v8, 0x11

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setHorizontalGravity(I)V

    iget-object v7, p2, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    check-cast v7, Landroid/widget/LinearLayout;

    sub-int v8, v1, v4

    add-int/lit8 v8, v8, 0x1

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    :cond_8
    return-void
.end method

.method semGetFirstRowPosition(I)I
    .locals 8

    iget-object v5, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v5}, Lcom/android/internal/app/ChooserActivity;->semGetTopPanelCount()I

    move-result v2

    iget-object v5, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v5}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getServiceTargetCount()I

    move-result v3

    int-to-float v5, v3

    iget v6, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mColumnCount:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v4, v6

    sub-int v5, p1, v2

    if-ge v5, v4, :cond_0

    sub-int v5, p1, v2

    iget v6, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mColumnCount:I

    mul-int/2addr v5, v6

    return v5

    :cond_0
    iget-object v5, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v5}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getCallerTargetCount()I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v6}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getStandardTargetCount()I

    move-result v6

    add-int v0, v5, v6

    int-to-float v5, v0

    iget v6, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mColumnCount:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v1, v6

    sub-int v5, p1, v2

    sub-int/2addr v5, v4

    iget v6, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mColumnCount:I

    mul-int/2addr v5, v6

    add-int/2addr v5, v3

    return v5
.end method

.method public semGetView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const v4, 0x109010e

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0, p3}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->createViewHolder(Landroid/view/ViewGroup;)Lcom/android/internal/app/ChooserActivity$RowViewHolder;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->semSkipCollapsibleHeightRow(Z)V

    if-nez p1, :cond_1

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v3}, Lcom/android/internal/app/ChooserActivity;->shouldShowShareLink()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x109010d

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v3, v2}, Lcom/android/internal/app/ChooserActivity;->addShareLinkView(Landroid/view/View;)V

    invoke-virtual {v1, v6}, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->semSetAlwaysShow(Z)V

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    return-object v2

    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v3}, Lcom/android/internal/app/ChooserActivity;->shouldShowShareLink()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-boolean v3, v3, Lcom/android/internal/app/ChooserActivity;->mSupportDeviceShare:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v3, v0}, Lcom/android/internal/app/ChooserActivity;->addDeviceShareView(Landroid/view/View;)V

    invoke-virtual {v1, v6}, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->semSetAlwaysShow(Z)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    return-object v0

    :cond_1
    if-ne p1, v6, :cond_2

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v3}, Lcom/android/internal/app/ChooserActivity;->shouldShowShareLink()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-boolean v3, v3, Lcom/android/internal/app/ChooserActivity;->mSupportDeviceShare:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v3, v0}, Lcom/android/internal/app/ChooserActivity;->addDeviceShareView(Landroid/view/View;)V

    invoke-virtual {v1, v6}, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->semSetAlwaysShow(Z)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    return-object v0

    :cond_2
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->semBindViewHolder(ILcom/android/internal/app/ChooserActivity$RowViewHolder;)V

    iget-object v3, v1, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    return-object v3
.end method
