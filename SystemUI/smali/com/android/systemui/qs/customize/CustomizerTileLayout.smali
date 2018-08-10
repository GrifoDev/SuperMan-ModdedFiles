.class public Lcom/android/systemui/qs/customize/CustomizerTileLayout;
.super Landroid/view/ViewGroup;
.source "CustomizerTileLayout.java"

# interfaces
.implements Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;
    }
.end annotation


# instance fields
.field protected final mBoundaryBox:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field protected mCellHeight:I

.field protected mCellHorizontalMargin:I

.field protected mCellMargin:I

.field private mCellMarginTop:I

.field protected mCellVerticalMargin:I

.field protected mCellWidth:I

.field private mCircle:Landroid/widget/FrameLayout;

.field private mCirclePos:I

.field protected mColumns:I

.field private mContext:Landroid/content/Context;

.field protected final mCrossIcon:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected mCrossIconHorizontalMargin:I

.field protected mCrossIconSize:I

.field private mCrossIconVerticalMargin:I

.field protected final mCustomTilesInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mDragListener:Landroid/view/View$OnDragListener;

.field private mIconView:Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;

.field protected mMaxRows:I

.field private mParent:Landroid/view/ViewGroup;

.field protected mSidePadding:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/customize/CustomizerTileLayout;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCircle:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/customize/CustomizerTileLayout;Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)Lcom/android/systemui/qs/customize/CustomizeTileView;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->createCustomizeTileView(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCrossIcon:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCirclePos:I

    iput-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->updateResources()Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;ILandroid/view/View$OnDragListener;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string/jumbo v0, "CustomizerTileLayout"

    const-string/jumbo v1, "CustomizerTileLayout()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mParent:Landroid/view/ViewGroup;

    iput p3, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mMaxRows:I

    iput-object p4, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mDragListener:Landroid/view/View$OnDragListener;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mParent:Landroid/view/ViewGroup;

    const v2, 0x7f0d013b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-void
.end method

.method private createCustomizeTileView(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)Lcom/android/systemui/qs/customize/CustomizeTileView;
    .locals 3

    new-instance v1, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mIconView:Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;

    new-instance v0, Lcom/android/systemui/qs/customize/CustomizeTileView;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mIconView:Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/qs/customize/CustomizeTileView;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;)V

    iget-object v1, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/CustomizeTileView;->customTileHandleStateChange(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    iget-object v1, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->longClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setClickable(Z)V

    iget-boolean v1, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->isNewCustomTile:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mIconView:Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->addBadge(Lcom/android/systemui/qs/customize/CustomizeTileView;)V

    :cond_0
    iget-object v1, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->customizeTileContentDes:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private static exactly(I)I
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method

.method private getColumnStart(I)I
    .locals 2

    iget v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellWidth:I

    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellHorizontalMargin:I

    add-int/2addr v0, v1

    mul-int/2addr v0, p1

    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mSidePadding:I

    add-int/2addr v0, v1

    return v0
.end method

.method private getRowTop(I)I
    .locals 2

    iget v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellHeight:I

    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellVerticalMargin:I

    add-int/2addr v0, v1

    mul-int/2addr v0, p1

    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellMarginTop:I

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public addBackgroundBox(IILandroid/view/View$OnDragListener;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v3, 0x0

    const-string/jumbo v4, "CustomizerTileLayout"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "addBackgroundBox listener = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "row = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "col = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    mul-int v3, p1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    iget-object v4, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0d0131

    invoke-virtual {v4, v5, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0, p3}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->addView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0d0132

    invoke-virtual {v4, v5, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCircle:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCircle:Landroid/widget/FrameLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v4, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCircle:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v4, p1, -0x1

    add-int/lit8 v5, p2, -0x1

    mul-int v3, v4, v5

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    iget-object v4, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0d0136

    invoke-virtual {v4, v5, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->addView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCrossIcon:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public addTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)V
    .locals 5

    const-string/jumbo v2, "CustomizerTileLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tile = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->spec:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    invoke-direct {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;-><init>()V

    iget-object v2, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iput-object v2, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object v2, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->spec:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->spec:Ljava/lang/String;

    iget-boolean v2, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->isNewCustomTile:Z

    iput-boolean v2, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->isNewCustomTile:Z

    iget-object v2, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    iget-object v2, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->longClickListener:Landroid/view/View$OnLongClickListener;

    iput-object v2, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->longClickListener:Landroid/view/View$OnLongClickListener;

    iget-object v2, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->customizeTileContentDes:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->customizeTileContentDes:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->createCustomizeTileView(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setTag(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public addTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;IZ)V
    .locals 12

    iget v7, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mColumns:I

    iget v8, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mMaxRows:I

    mul-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-le p2, v6, :cond_0

    move p2, v6

    :cond_0
    move v2, p2

    const-string/jumbo v7, "CustomizerTileLayout"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "addTile position = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "total = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "idx = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " spec = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->spec:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "withAnimation"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    invoke-direct {v3}, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;-><init>()V

    iget-object v7, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iput-object v7, v3, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object v7, v3, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    iget-object v7, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->spec:Ljava/lang/String;

    iput-object v7, v3, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->spec:Ljava/lang/String;

    iget-object v7, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->longClickListener:Landroid/view/View$OnLongClickListener;

    iput-object v7, v3, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->longClickListener:Landroid/view/View$OnLongClickListener;

    if-eqz p3, :cond_2

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    if-ge v2, v6, :cond_1

    move v1, v2

    :goto_0
    add-int/lit8 v7, v6, -0x1

    if-le v1, v7, :cond_1

    iget-object v7, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iget-object v4, v7, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    const/4 v7, 0x1

    new-array v8, v7, [Landroid/animation/Animator;

    const-string/jumbo v9, "x"

    const/4 v7, 0x2

    new-array v10, v7, [F

    iget-object v7, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v7

    int-to-float v7, v7

    const/4 v11, 0x0

    aput v7, v10, v11

    iget-object v7, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    add-int/lit8 v11, v1, 0x1

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v7

    int-to-float v7, v7

    const/4 v11, 0x1

    aput v7, v10, v11

    invoke-static {v4, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const/4 v9, 0x0

    aput-object v7, v8, v9

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const/4 v7, 0x1

    new-array v8, v7, [Landroid/animation/Animator;

    const-string/jumbo v9, "y"

    const/4 v7, 0x2

    new-array v10, v7, [F

    iget-object v7, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getTop()I

    move-result v7

    int-to-float v7, v7

    const/4 v11, 0x0

    aput v7, v10, v11

    iget-object v7, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    add-int/lit8 v11, v1, 0x1

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getTop()I

    move-result v7

    int-to-float v7, v7

    const/4 v11, 0x1

    aput v7, v10, v11

    invoke-static {v4, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const/4 v9, 0x0

    aput-object v7, v8, v9

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v7, Lcom/android/systemui/qs/customize/CustomizerTileLayout$1;

    invoke-direct {v7, p0, v2, v3}, Lcom/android/systemui/qs/customize/CustomizerTileLayout$1;-><init>(Lcom/android/systemui/qs/customize/CustomizerTileLayout;ILcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)V

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v8, 0x96

    invoke-virtual {v0, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :goto_1
    return-void

    :cond_2
    invoke-direct {p0, v3}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->createCustomizeTileView(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v5

    iput-object v5, v3, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    invoke-virtual {v5, v3}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setTag(Ljava/lang/Object;)V

    iget-object v7, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v7, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->addView(Landroid/view/View;)V

    goto :goto_1
.end method

.method public addTiles(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public dropTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)V
    .locals 5

    const-string/jumbo v2, "CustomizerTileLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dropTile tileInfo =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->spec:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->indexOf(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iget-object v1, v2, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    const-string/jumbo v2, "CustomizerTileLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dropTile tiveView =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setAlpha(F)V

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCircle:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->requestLayout()V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getCustomTileInfo()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getInfo(I)Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;
    .locals 4

    const-string/jumbo v1, "CustomizerTileLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getInfo position = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    if-le p1, v1, :cond_0

    add-int/lit8 p1, v0, -0x1

    const-string/jumbo v1, "CustomizerTileLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "position is invalid position is  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    return-object v1
.end method

.method public getLastCustomTileInfo()Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    return-object v0
.end method

.method public indexOf(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)I
    .locals 5

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iget-object v2, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->spec:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->spec:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "CustomizerTileLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "diffInfo.spec = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->spec:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " i = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "CustomizerTileLayout"

    const-string/jumbo v3, "diffInfo.spec is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    return v2
.end method

.method public moveTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;I)V
    .locals 12

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->indexOf(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)I

    move-result v2

    if-gez v2, :cond_0

    return-void

    :cond_0
    iget v7, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mColumns:I

    iget v8, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mMaxRows:I

    mul-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int/lit8 v7, v6, -0x1

    if-le p2, v7, :cond_1

    add-int/lit8 p2, v6, -0x1

    :cond_1
    const-string/jumbo v7, "CustomizerTileLayout"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "moveTile from = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " to  = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "total = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "fromtileInfo = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->spec:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, p2

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    if-ge v2, p2, :cond_2

    move v3, v2

    :goto_0
    if-ge v3, p2, :cond_3

    iget-object v7, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iget-object v5, v7, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    const/4 v7, 0x1

    new-array v8, v7, [Landroid/animation/Animator;

    const-string/jumbo v9, "x"

    const/4 v7, 0x2

    new-array v10, v7, [F

    iget-object v7, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    add-int/lit8 v11, v3, 0x1

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v7

    int-to-float v7, v7

    const/4 v11, 0x0

    aput v7, v10, v11

    iget-object v7, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v7

    int-to-float v7, v7

    const/4 v11, 0x1

    aput v7, v10, v11

    invoke-static {v5, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const/4 v9, 0x0

    aput-object v7, v8, v9

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const/4 v7, 0x1

    new-array v8, v7, [Landroid/animation/Animator;

    const-string/jumbo v9, "y"

    const/4 v7, 0x2

    new-array v10, v7, [F

    iget-object v7, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    add-int/lit8 v11, v3, 0x1

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getTop()I

    move-result v7

    int-to-float v7, v7

    const/4 v11, 0x0

    aput v7, v10, v11

    iget-object v7, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getTop()I

    move-result v7

    int-to-float v7, v7

    const/4 v11, 0x1

    aput v7, v10, v11

    invoke-static {v5, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const/4 v9, 0x0

    aput-object v7, v8, v9

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_1
    if-le v3, p2, :cond_3

    iget-object v7, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    add-int/lit8 v8, v3, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iget-object v5, v7, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    const/4 v7, 0x1

    new-array v8, v7, [Landroid/animation/Animator;

    const-string/jumbo v9, "x"

    const/4 v7, 0x2

    new-array v10, v7, [F

    iget-object v7, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    add-int/lit8 v11, v3, -0x1

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v7

    int-to-float v7, v7

    const/4 v11, 0x0

    aput v7, v10, v11

    iget-object v7, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v7

    int-to-float v7, v7

    const/4 v11, 0x1

    aput v7, v10, v11

    invoke-static {v5, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const/4 v9, 0x0

    aput-object v7, v8, v9

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const/4 v7, 0x1

    new-array v8, v7, [Landroid/animation/Animator;

    const-string/jumbo v9, "y"

    const/4 v7, 0x2

    new-array v10, v7, [F

    iget-object v7, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    add-int/lit8 v11, v3, -0x1

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getTop()I

    move-result v7

    int-to-float v7, v7

    const/4 v11, 0x0

    aput v7, v10, v11

    iget-object v7, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getTop()I

    move-result v7

    int-to-float v7, v7

    const/4 v11, 0x1

    aput v7, v10, v11

    invoke-static {v5, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const/4 v9, 0x0

    aput-object v7, v8, v9

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_3
    const-wide/16 v8, 0xc8

    invoke-virtual {v0, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v7, Lcom/android/systemui/qs/customize/CustomizerTileLayout$3;

    invoke-direct {v7, p0, v1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout$3;-><init>(Lcom/android/systemui/qs/customize/CustomizerTileLayout;I)V

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iget-object v7, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iget-object v7, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v7, p2, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const-string/jumbo v0, "CustomizerTileLayout"

    const-string/jumbo v1, "onAttachedToWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 29

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->getWidth()I

    move-result v23

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->getLayoutDirection()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2

    const/4 v15, 0x1

    :goto_0
    const/16 v19, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mColumns:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mMaxRows:I

    move/from16 v25, v0

    mul-int v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->min(II)I

    move-result v17

    const/4 v12, 0x0

    const/4 v5, 0x0

    const/4 v14, 0x0

    :goto_1
    move/from16 v0, v17

    if-ge v14, v0, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mColumns:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ne v8, v0, :cond_0

    add-int/lit8 v19, v19, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mColumns:I

    move/from16 v24, v0

    sub-int v8, v8, v24

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->getColumnStart(I)I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->getRowTop(I)I

    move-result v21

    if-eqz v15, :cond_3

    sub-int v18, v23, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellWidth:I

    move/from16 v24, v0

    sub-int v24, v18, v24

    add-int/lit8 v16, v24, 0x0

    :goto_2
    if-eqz v20, :cond_1

    const/16 v24, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setTranslationX(F)V

    const/16 v24, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setTranslationY(F)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellMarginTop:I

    move/from16 v24, v0

    add-int v24, v24, v21

    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/qs/customize/CustomizeTileView;->getMeasuredHeight()I

    move-result v25

    add-int v24, v24, v25

    move-object/from16 v0, v20

    move/from16 v1, v16

    move/from16 v2, v21

    move/from16 v3, v18

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/qs/customize/CustomizeTileView;->layout(IIII)V

    :cond_1
    const/4 v5, 0x0

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v15, 0x0

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellWidth:I

    move/from16 v24, v0

    add-int v24, v24, v16

    add-int/lit8 v18, v24, 0x0

    goto :goto_2

    :cond_4
    const/16 v19, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v14, 0x0

    :goto_3
    if-ge v14, v7, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mColumns:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ne v8, v0, :cond_5

    add-int/lit8 v19, v19, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mColumns:I

    move/from16 v24, v0

    sub-int v8, v8, v24

    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->getColumnStart(I)I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->getRowTop(I)I

    move-result v21

    if-eqz v15, :cond_6

    sub-int v18, v23, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellWidth:I

    move/from16 v24, v0

    sub-int v24, v18, v24

    add-int/lit8 v16, v24, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v24

    add-int v24, v24, v21

    move/from16 v0, v16

    move/from16 v1, v21

    move/from16 v2, v18

    move/from16 v3, v24

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/widget/FrameLayout;->layout(IIII)V

    const/4 v5, 0x0

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellWidth:I

    move/from16 v24, v0

    add-int v24, v24, v16

    add-int/lit8 v18, v24, 0x0

    goto :goto_4

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCircle:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellMarginTop:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCircle:Landroid/widget/FrameLayout;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellMarginTop:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCircle:Landroid/widget/FrameLayout;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v28

    add-int v27, v27, v28

    const/16 v28, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v28

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/FrameLayout;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCrossIcon:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v22

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->getHeight()I

    move-result v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellHorizontalMargin:I

    move/from16 v24, v0

    div-int/lit8 v24, v24, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCrossIconSize:I

    move/from16 v25, v0

    div-int/lit8 v25, v25, 0x2

    sub-int v10, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCrossIconVerticalMargin:I

    move/from16 v24, v0

    div-int/lit8 v24, v24, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCrossIconSize:I

    move/from16 v25, v0

    div-int/lit8 v25, v25, 0x2

    sub-int v11, v24, v25

    const/16 v19, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v14, 0x0

    :goto_5
    move/from16 v0, v22

    if-ge v14, v0, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mColumns:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, -0x1

    move/from16 v0, v24

    if-ne v8, v0, :cond_8

    add-int/lit8 v19, v19, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mColumns:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, -0x1

    sub-int v8, v8, v24

    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->getColumnStart(I)I

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellWidth:I

    move/from16 v25, v0

    add-int v24, v24, v25

    add-int v24, v24, v10

    add-int/lit8 v16, v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->getRowTop(I)I

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellHeight:I

    move/from16 v25, v0

    add-int v24, v24, v25

    add-int v21, v24, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCrossIcon:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellMarginTop:I

    move/from16 v24, v0

    add-int v24, v24, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCrossIconSize:I

    move/from16 v25, v0

    add-int v25, v25, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellMarginTop:I

    move/from16 v26, v0

    add-int v26, v26, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCrossIconSize:I

    move/from16 v27, v0

    add-int v26, v26, v27

    move/from16 v0, v16

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    const/4 v5, 0x0

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_9
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    iget-object v10, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    iget v11, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mColumns:I

    add-int/2addr v10, v11

    add-int/lit8 v10, v10, -0x1

    iget v11, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mColumns:I

    div-int v5, v10, v11

    iget-object v10, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0704ce

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    mul-int/lit8 v6, v10, 0x2

    iget v10, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mSidePadding:I

    mul-int/lit8 v10, v10, 0x2

    sub-int v10, v9, v10

    iget v11, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mColumns:I

    iget v12, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellWidth:I

    mul-int/2addr v11, v12

    sub-int/2addr v10, v11

    iget v11, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mColumns:I

    add-int/lit8 v11, v11, -0x1

    div-int/2addr v10, v11

    iput v10, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellHorizontalMargin:I

    add-int v10, v9, v6

    iget v11, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellMargin:I

    mul-int/lit8 v11, v11, 0x2

    sub-int/2addr v10, v11

    iget v11, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mColumns:I

    iget v12, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellWidth:I

    mul-int/2addr v11, v12

    sub-int/2addr v10, v11

    iget v11, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mColumns:I

    add-int/lit8 v11, v11, -0x1

    div-int/2addr v10, v11

    iput v10, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCrossIconHorizontalMargin:I

    iget v10, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mColumns:I

    iget v11, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mMaxRows:I

    mul-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_2

    iget-object v10, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iget-object v7, v10, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/android/systemui/qs/customize/CustomizeTileView;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget v10, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellWidth:I

    invoke-static {v10}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->exactly(I)I

    move-result v10

    iget v11, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellHeight:I

    invoke-static {v11}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->exactly(I)I

    move-result v11

    invoke-virtual {v7, v10, v11}, Lcom/android/systemui/qs/customize/CustomizeTileView;->measure(II)V

    goto :goto_1

    :cond_2
    iget-object v10, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_3

    iget-object v10, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget v10, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellWidth:I

    invoke-static {v10}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->exactly(I)I

    move-result v10

    iget v11, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellHeight:I

    invoke-static {v11}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->exactly(I)I

    move-result v11

    invoke-virtual {v0, v10, v11}, Landroid/widget/FrameLayout;->measure(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    iget-object v10, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCrossIcon:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v8, :cond_4

    iget-object v10, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCrossIcon:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget v10, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCrossIconSize:I

    invoke-static {v10}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->exactly(I)I

    move-result v10

    iget v11, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCrossIconSize:I

    invoke-static {v11}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->exactly(I)I

    move-result v11

    invoke-virtual {v2, v10, v11}, Landroid/view/View;->measure(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    iget-object v10, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCircle:Landroid/widget/FrameLayout;

    iget v11, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellWidth:I

    invoke-static {v11}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->exactly(I)I

    move-result v11

    iget v12, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellHeight:I

    invoke-static {v12}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->exactly(I)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/widget/FrameLayout;->measure(II)V

    iget v10, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellHeight:I

    iget v11, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellVerticalMargin:I

    add-int/2addr v10, v11

    iget v11, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mMaxRows:I

    mul-int/2addr v10, v11

    iget v11, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellMarginTop:I

    iget v12, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellVerticalMargin:I

    sub-int/2addr v11, v12

    add-int/2addr v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public removeAllViews()V
    .locals 2

    const-string/jumbo v0, "CustomizerTileLayout"

    const-string/jumbo v1, "removeAllViews clear"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCrossIcon:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method public removeBadge(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)V
    .locals 6

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->indexOf(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)I

    move-result v2

    iget-object v4, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v2, v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iget-object v3, v4, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    iget-object v4, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iget-boolean v1, v4, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->isNewCustomTile:Z

    invoke-virtual {v3}, Lcom/android/systemui/qs/customize/CustomizeTileView;->getIconView()Lcom/android/systemui/plugins/qs/QSIconView;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;

    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mIconView:Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mIconView:Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;

    invoke-virtual {v4, v0}, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->removeBadge(Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;)V

    iget-object v4, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->isNewCustomTile:Z

    :cond_1
    return-void
.end method

.method public removeTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;Z)V
    .locals 12

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->indexOf(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)I

    move-result v2

    iget v7, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mColumns:I

    iget v8, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mMaxRows:I

    mul-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    const-string/jumbo v7, "CustomizerTileLayout"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "removeTile index = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "tile = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->spec:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, p1

    iget-object v7, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iget-object v5, v7, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    if-eqz p2, :cond_1

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    move v1, v2

    :goto_0
    add-int/lit8 v7, v6, -0x1

    if-ge v1, v7, :cond_0

    iget-object v7, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iget-object v3, v7, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    const/4 v7, 0x1

    new-array v8, v7, [Landroid/animation/Animator;

    const-string/jumbo v9, "x"

    const/4 v7, 0x2

    new-array v10, v7, [F

    iget-object v7, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    add-int/lit8 v11, v1, 0x1

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v7

    int-to-float v7, v7

    const/4 v11, 0x0

    aput v7, v10, v11

    iget-object v7, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v7

    int-to-float v7, v7

    const/4 v11, 0x1

    aput v7, v10, v11

    invoke-static {v3, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const/4 v9, 0x0

    aput-object v7, v8, v9

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const/4 v7, 0x1

    new-array v8, v7, [Landroid/animation/Animator;

    const-string/jumbo v9, "y"

    const/4 v7, 0x2

    new-array v10, v7, [F

    iget-object v7, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    add-int/lit8 v11, v1, 0x1

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getTop()I

    move-result v7

    int-to-float v7, v7

    const/4 v11, 0x0

    aput v7, v10, v11

    iget-object v7, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getTop()I

    move-result v7

    int-to-float v7, v7

    const/4 v11, 0x1

    aput v7, v10, v11

    invoke-static {v3, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const/4 v9, 0x0

    aput-object v7, v8, v9

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v7, Lcom/android/systemui/qs/customize/CustomizerTileLayout$2;

    invoke-direct {v7, p0, v2, v5}, Lcom/android/systemui/qs/customize/CustomizerTileLayout$2;-><init>(Lcom/android/systemui/qs/customize/CustomizerTileLayout;ILcom/android/systemui/qs/customize/CustomizeTileView;)V

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v8, 0x96

    invoke-virtual {v0, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :goto_1
    return-void

    :cond_1
    iget-object v7, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->removeView(Landroid/view/View;)V

    goto :goto_1
.end method

.method public selectTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->indexOf(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iget-object v1, v2, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setAlpha(F)V

    const-string/jumbo v2, "CustomizerTileLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "selectTile position = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCircle:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCircle:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    iget-object v3, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCircle:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCircle:Landroid/widget/FrameLayout;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method public setCircleVisibility(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCircle:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCircle:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateResources()Z
    .locals 10

    const/4 v9, 0x1

    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v3, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_1

    const/4 v2, 0x1

    :goto_0
    const-class v5, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/tuner/TunerService;

    const-string/jumbo v6, "qs_tile_column"

    iget-object v7, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b0060

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_1
    :pswitch_0
    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070520

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellHeight:I

    const v5, 0x7f070523

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellMargin:I

    const v5, 0x7f0704cf

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellMarginTop:I

    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070533

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellVerticalMargin:I

    iget v5, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellHeight:I

    iget v6, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellVerticalMargin:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mMaxRows:I

    mul-int/2addr v5, v6

    iget v6, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellMarginTop:I

    iget v7, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellVerticalMargin:I

    sub-int/2addr v6, v7

    add-int v1, v5, v6

    iget v5, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellVerticalMargin:I

    add-int/2addr v5, v1

    iget v6, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mMaxRows:I

    iget v7, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellHeight:I

    mul-int/2addr v6, v7

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCrossIconVerticalMargin:I

    const v5, 0x7f0704c6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCrossIconSize:I

    iget v5, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mMaxRows:I

    if-le v5, v9, :cond_0

    iget v5, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCrossIconVerticalMargin:I

    iget v6, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mMaxRows:I

    add-int/lit8 v6, v6, -0x1

    div-int/2addr v5, v6

    iput v5, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCrossIconVerticalMargin:I

    :cond_0
    iget v5, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mColumns:I

    if-eq v5, v0, :cond_2

    iput v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mColumns:I

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->requestLayout()V

    return v9

    :cond_1
    const/4 v2, 0x0

    goto/16 :goto_0

    :pswitch_1
    const v5, 0x7f070535

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellWidth:I

    const v5, 0x7f07052c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mSidePadding:I

    goto :goto_1

    :pswitch_2
    const v5, 0x7f070536

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellWidth:I

    const v5, 0x7f07052d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mSidePadding:I

    goto/16 :goto_1

    :pswitch_3
    const v5, 0x7f070537

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellWidth:I

    const v5, 0x7f07052e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mSidePadding:I

    goto/16 :goto_1

    :pswitch_4
    const v5, 0x7f070538

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellWidth:I

    const v5, 0x7f07052f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mSidePadding:I

    goto/16 :goto_1

    :pswitch_5
    const v5, 0x7f070539

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellWidth:I

    const v5, 0x7f070530

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mSidePadding:I

    goto/16 :goto_1

    :cond_2
    const/4 v5, 0x0

    return v5

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
