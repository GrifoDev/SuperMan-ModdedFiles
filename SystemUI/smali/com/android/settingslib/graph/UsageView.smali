.class public Lcom/android/settingslib/graph/UsageView;
.super Landroid/widget/FrameLayout;
.source "UsageView.java"


# instance fields
.field private mBatteryLevel:I

.field private final mBottomLabels:[Landroid/widget/TextView;

.field private final mLabels:[Landroid/widget/TextView;

.field private final mUsageGraph:Lcom/android/settingslib/graph/UsageGraph;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    sget v9, Lcom/android/settingslib/R$layout;->usage_view:I

    invoke-virtual {v8, v9, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    sget v8, Lcom/android/settingslib/R$id;->usage_graph:I

    invoke-virtual {p0, v8}, Lcom/android/settingslib/graph/UsageView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/settingslib/graph/UsageGraph;

    iput-object v8, p0, Lcom/android/settingslib/graph/UsageView;->mUsageGraph:Lcom/android/settingslib/graph/UsageGraph;

    const/4 v8, 0x3

    new-array v9, v8, [Landroid/widget/TextView;

    sget v8, Lcom/android/settingslib/R$id;->label_bottom:I

    invoke-virtual {p0, v8}, Lcom/android/settingslib/graph/UsageView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const/4 v10, 0x0

    aput-object v8, v9, v10

    sget v8, Lcom/android/settingslib/R$id;->label_middle:I

    invoke-virtual {p0, v8}, Lcom/android/settingslib/graph/UsageView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const/4 v10, 0x1

    aput-object v8, v9, v10

    sget v8, Lcom/android/settingslib/R$id;->label_top:I

    invoke-virtual {p0, v8}, Lcom/android/settingslib/graph/UsageView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const/4 v10, 0x2

    aput-object v8, v9, v10

    iput-object v9, p0, Lcom/android/settingslib/graph/UsageView;->mLabels:[Landroid/widget/TextView;

    const/4 v8, 0x2

    new-array v9, v8, [Landroid/widget/TextView;

    sget v8, Lcom/android/settingslib/R$id;->label_start:I

    invoke-virtual {p0, v8}, Lcom/android/settingslib/graph/UsageView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const/4 v10, 0x0

    aput-object v8, v9, v10

    sget v8, Lcom/android/settingslib/R$id;->label_end:I

    invoke-virtual {p0, v8}, Lcom/android/settingslib/graph/UsageView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const/4 v10, 0x1

    aput-object v8, v9, v10

    iput-object v9, p0, Lcom/android/settingslib/graph/UsageView;->mBottomLabels:[Landroid/widget/TextView;

    sget-object v8, Lcom/android/settingslib/R$styleable;->UsageView:[I

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p1, p2, v8, v9, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v8, Lcom/android/settingslib/R$styleable;->UsageView_sideLabels:I

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_0

    sget v8, Lcom/android/settingslib/R$styleable;->UsageView_sideLabels:I

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/settingslib/graph/UsageView;->setSideLabels([Ljava/lang/CharSequence;)V

    :cond_0
    sget v8, Lcom/android/settingslib/R$styleable;->UsageView_bottomLabels:I

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_1

    sget v8, Lcom/android/settingslib/R$styleable;->UsageView_bottomLabels:I

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/settingslib/graph/UsageView;->setBottomLabels([Ljava/lang/CharSequence;)V

    :cond_1
    sget v8, Lcom/android/settingslib/R$styleable;->UsageView_textColor:I

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_3

    sget v8, Lcom/android/settingslib/R$styleable;->UsageView_textColor:I

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iget-object v9, p0, Lcom/android/settingslib/graph/UsageView;->mLabels:[Landroid/widget/TextView;

    const/4 v8, 0x0

    array-length v10, v9

    :goto_0
    if-ge v8, v10, :cond_2

    aget-object v7, v9, v8

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setTextColor(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    iget-object v9, p0, Lcom/android/settingslib/graph/UsageView;->mBottomLabels:[Landroid/widget/TextView;

    const/4 v8, 0x0

    array-length v10, v9

    :goto_1
    if-ge v8, v10, :cond_3

    aget-object v7, v9, v8

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setTextColor(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    sget v8, Lcom/android/settingslib/R$styleable;->UsageView_android_gravity:I

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_4

    sget v8, Lcom/android/settingslib/R$styleable;->UsageView_android_gravity:I

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    const v8, 0x800005

    if-ne v4, v8, :cond_5

    sget v8, Lcom/android/settingslib/R$id;->graph_label_group:I

    invoke-virtual {p0, v8}, Lcom/android/settingslib/graph/UsageView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    sget v8, Lcom/android/settingslib/R$id;->label_group:I

    invoke-virtual {p0, v8}, Lcom/android/settingslib/graph/UsageView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const v8, 0x800005

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    sget v8, Lcom/android/settingslib/R$id;->bottom_label_group:I

    invoke-virtual {p0, v8}, Lcom/android/settingslib/graph/UsageView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v8

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v9

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v10

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v11

    invoke-virtual {v2, v8, v9, v10, v11}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_4
    new-instance v8, Landroid/content/IntentFilter;

    const-string/jumbo v9, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    invoke-virtual {p1, v9, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingslib/Utils;->getBatteryLevel(Landroid/content/Intent;)I

    move-result v8

    iput v8, p0, Lcom/android/settingslib/graph/UsageView;->mBatteryLevel:I

    invoke-direct {p0}, Lcom/android/settingslib/graph/UsageView;->setBatteryGraphColor()V

    return-void

    :cond_5
    const v8, 0x800003

    if-eq v4, v8, :cond_4

    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unsupported gravity "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method private setBatteryGraphColor()V
    .locals 2

    iget v0, p0, Lcom/android/settingslib/graph/UsageView;->mBatteryLevel:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/graph/UsageView;->mUsageGraph:Lcom/android/settingslib/graph/UsageGraph;

    const v1, -0x11aafd

    invoke-virtual {v0, v1}, Lcom/android/settingslib/graph/UsageGraph;->setAccentColor(I)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/settingslib/graph/UsageView;->mBatteryLevel:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/graph/UsageView;->mUsageGraph:Lcom/android/settingslib/graph/UsageGraph;

    const v1, -0x282829

    invoke-virtual {v0, v1}, Lcom/android/settingslib/graph/UsageGraph;->setAccentColor(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/graph/UsageView;->mUsageGraph:Lcom/android/settingslib/graph/UsageGraph;

    const v1, -0xa143c3

    invoke-virtual {v0, v1}, Lcom/android/settingslib/graph/UsageGraph;->setAccentColor(I)V

    goto :goto_0
.end method


# virtual methods
.method public addPath(Landroid/util/SparseIntArray;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/graph/UsageView;->mUsageGraph:Lcom/android/settingslib/graph/UsageGraph;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/graph/UsageGraph;->addPath(Landroid/util/SparseIntArray;)V

    return-void
.end method

.method public clearPaths()V
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/graph/UsageView;->mUsageGraph:Lcom/android/settingslib/graph/UsageGraph;

    invoke-virtual {v0}, Lcom/android/settingslib/graph/UsageGraph;->clearPaths()V

    return-void
.end method

.method public configureGraph(IIZZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/graph/UsageView;->mUsageGraph:Lcom/android/settingslib/graph/UsageGraph;

    invoke-virtual {v0, p1, p2}, Lcom/android/settingslib/graph/UsageGraph;->setMax(II)V

    iget-object v0, p0, Lcom/android/settingslib/graph/UsageView;->mUsageGraph:Lcom/android/settingslib/graph/UsageGraph;

    invoke-virtual {v0, p3, p4}, Lcom/android/settingslib/graph/UsageGraph;->setShowProjection(ZZ)V

    return-void
.end method

.method public setBottomLabels([Ljava/lang/CharSequence;)V
    .locals 3

    array-length v1, p1

    iget-object v2, p0, Lcom/android/settingslib/graph/UsageView;->mBottomLabels:[Landroid/widget/TextView;

    array-length v2, v2

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid number of labels"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settingslib/graph/UsageView;->mBottomLabels:[Landroid/widget/TextView;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/settingslib/graph/UsageView;->mBottomLabels:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setSideLabels([Ljava/lang/CharSequence;)V
    .locals 3

    array-length v1, p1

    iget-object v2, p0, Lcom/android/settingslib/graph/UsageView;->mLabels:[Landroid/widget/TextView;

    array-length v2, v2

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid number of labels"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settingslib/graph/UsageView;->mLabels:[Landroid/widget/TextView;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/settingslib/graph/UsageView;->mLabels:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
