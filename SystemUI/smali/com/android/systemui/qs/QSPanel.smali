.class public Lcom/android/systemui/qs/QSPanel;
.super Landroid/widget/LinearLayout;
.source "QSPanel.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/android/systemui/qs/QSHost$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSPanel$H;,
        Lcom/android/systemui/qs/QSPanel$QSTileLayout;,
        Lcom/android/systemui/qs/QSPanel$Record;,
        Lcom/android/systemui/qs/QSPanel$TileRecord;
    }
.end annotation


# instance fields
.field private mBrightnessPaddingTop:I

.field private mCallback:Lcom/android/systemui/qs/QSDetail$Callback;

.field protected final mContext:Landroid/content/Context;

.field private mCustomizePanel:Lcom/android/systemui/qs/customize/SecQSCustomizer;

.field private mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

.field private mDivider:Landroid/view/View;

.field protected mExpanded:Z

.field protected mFooter:Lcom/android/systemui/qs/QSSecurityFooter;

.field private mGridContentVisible:Z

.field private final mHandler:Lcom/android/systemui/qs/QSPanel$H;

.field protected mHost:Lcom/android/systemui/qs/QSTileHost;

.field protected mListening:Z

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mPageIndicator:Landroid/view/View;

.field private mPanelPaddingBottom:I

.field protected final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/qs/QSPanel$TileRecord;",
            ">;"
        }
    .end annotation
.end field

.field protected mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/qs/customize/SecQSCustomizer;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCustomizePanel:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/qs/QSPanel$Record;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/qs/QSPanel$H;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHandler:Lcom/android/systemui/qs/QSPanel$H;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/QSPanel;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSPanel;->fireScanStateChanged(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/QSPanel;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->fireScrollToDetail(II)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/qs/QSPanel;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSPanel;->fireToggleStateChanged(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/QSPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/qs/QSPanel$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSPanel$H;-><init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$H;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHandler:Lcom/android/systemui/qs/QSPanel$H;

    const-class v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/logging/MetricsLogger;

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iput-boolean v2, p0, Lcom/android/systemui/qs/QSPanel;->mGridContentVisible:Z

    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSPanel;->setOrientation(I)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->setupTileLayout()V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0151

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mPageIndicator:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mPageIndicator:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSPanel;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    instance-of v0, v0, Lcom/android/systemui/qs/PagedTileLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    check-cast v0, Lcom/android/systemui/qs/PagedTileLayout;

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mPageIndicator:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/qs/SecPageIndicator;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/PagedTileLayout;->setPageIndicator(Lcom/android/systemui/qs/SecPageIndicator;)V

    :cond_0
    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/QSSecurityFooter;-><init>(Lcom/android/systemui/qs/QSPanel;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSSecurityFooter;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSPanel;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->updateResources()V

    return-void
.end method

.method private fireScanStateChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSDetail$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSDetail$Callback;

    invoke-interface {v0, p1}, Lcom/android/systemui/qs/QSDetail$Callback;->onScanStateChanged(Z)V

    :cond_0
    return-void
.end method

.method private fireScrollToDetail(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSDetail$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSDetail$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/qs/QSDetail$Callback;->onScrollToDetail(II)V

    :cond_0
    return-void
.end method

.method private fireShowingDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;IIZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSDetail$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSDetail$Callback;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/systemui/qs/QSDetail$Callback;->onShowingDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;IIZ)V

    :cond_0
    return-void
.end method

.method private fireToggleStateChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSDetail$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSDetail$Callback;

    invoke-interface {v0, p1}, Lcom/android/systemui/qs/QSDetail$Callback;->onToggleStateChanged(Z)V

    :cond_0
    return-void
.end method

.method private getTile(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v1, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v1, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/QSTileHost;->createTile(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;

    move-result-object v1

    return-object v1
.end method

.method private handleShowDetailImpl(Lcom/android/systemui/qs/QSPanel$Record;ZIIZ)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    move-object v0, p1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSPanel;->setDetailRecord(Lcom/android/systemui/qs/QSPanel$Record;)V

    if-eqz p2, :cond_0

    iget-object v1, p1, Lcom/android/systemui/qs/QSPanel$Record;->detailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    :cond_0
    invoke-direct {p0, v1, p3, p4, p5}, Lcom/android/systemui/qs/QSPanel;->fireShowingDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;IIZ)V

    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private handleShowDetailTile(Lcom/android/systemui/qs/QSPanel$TileRecord;ZZ)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-ne v0, p2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    if-ne v0, p1, :cond_1

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QSTile;->getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->detailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    iget-object v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->detailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v0, p2}, Lcom/android/systemui/plugins/qs/QSTile;->setDetailListening(Z)V

    iget-object v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v0}, Lcom/android/systemui/plugins/qs/QSTileView;->getLeft()I

    move-result v0

    iget-object v1, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v1}, Lcom/android/systemui/plugins/qs/QSTileView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int v3, v0, v1

    iget-object v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v0}, Lcom/android/systemui/plugins/qs/QSTileView;->getDetailY()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    invoke-interface {v1, p1}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->getOffsetTop(Lcom/android/systemui/qs/QSPanel$TileRecord;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getTop()I

    move-result v1

    add-int v4, v0, v1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/qs/QSPanel;->handleShowDetailImpl(Lcom/android/systemui/qs/QSPanel$Record;ZIIZ)V

    return-void
.end method

.method private logTiles()V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v1, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v3, Landroid/metrics/LogMaker;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QSTile;->getMetricsCategory()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/android/systemui/plugins/qs/QSTile;->populate(Landroid/metrics/LogMaker;)Landroid/metrics/LogMaker;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected addTile(Lcom/android/systemui/plugins/qs/QSTile;Z)Lcom/android/systemui/qs/QSPanel$TileRecord;
    .locals 4

    new-instance v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    invoke-direct {v1}, Lcom/android/systemui/qs/QSPanel$TileRecord;-><init>()V

    iput-object p1, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->createTileView(Lcom/android/systemui/plugins/qs/QSTile;Z)Lcom/android/systemui/plugins/qs/QSTileView;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    new-instance v0, Lcom/android/systemui/qs/QSPanel$1;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSPanel$1;-><init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$TileRecord;)V

    iget-object v2, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v2, v0}, Lcom/android/systemui/plugins/qs/QSTile;->addCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V

    iput-object v0, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->callback:Lcom/android/systemui/plugins/qs/QSTile$Callback;

    iget-object v2, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    iget-object v3, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-virtual {v2, v3}, Lcom/android/systemui/plugins/qs/QSTileView;->init(Lcom/android/systemui/plugins/qs/QSTile;)V

    iget-object v2, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/QSTile;->refreshState()V

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    invoke-interface {v2, v1}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->addTile(Lcom/android/systemui/qs/QSPanel$TileRecord;)V

    :cond_0
    return-object v1
.end method

.method public clickTile(Landroid/content/ComponentName;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/android/systemui/qs/external/CustomTile;->toSpec(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v3, v3, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v3}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v3, v3, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v3}, Lcom/android/systemui/plugins/qs/QSTile;->click()V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public closeDetail()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCustomizePanel:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCustomizePanel:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCustomizePanel:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mCustomizePanel:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mCustomizePanel:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {v2}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->hide(II)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/qs/QSPanel;->showDetail(ZLcom/android/systemui/qs/QSPanel$Record;)V

    return-void
.end method

.method protected createTileView(Lcom/android/systemui/plugins/qs/QSTile;Z)Lcom/android/systemui/plugins/qs/QSTileView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/qs/QSTileHost;->createTileView(Lcom/android/systemui/plugins/qs/QSTile;Z)Lcom/android/systemui/plugins/qs/QSTileView;

    move-result-object v0

    return-object v0
.end method

.method protected drawTile(Lcom/android/systemui/qs/QSPanel$TileRecord;Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 1

    iget-object v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v0, p2}, Lcom/android/systemui/plugins/qs/QSTileView;->onStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    return-void
.end method

.method public getDivider()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDivider:Landroid/view/View;

    return-object v0
.end method

.method public getFooter()Lcom/android/systemui/qs/QSSecurityFooter;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    return-object v0
.end method

.method public getHost()Lcom/android/systemui/qs/QSTileHost;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    return-object v0
.end method

.method public getPageIndicator()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mPageIndicator:Landroid/view/View;

    return-object v0
.end method

.method getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    return-object v0
.end method

.method getTileView(Lcom/android/systemui/plugins/qs/QSTile;)Lcom/android/systemui/plugins/qs/QSTileView;
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v2, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    if-ne v2, p1, :cond_0

    iget-object v2, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    return-object v2

    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method protected handleShowDetail(Lcom/android/systemui/qs/QSPanel$Record;ZZ)V
    .locals 6

    instance-of v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/QSPanel;->handleShowDetailTile(Lcom/android/systemui/qs/QSPanel$TileRecord;ZZ)V

    :goto_0
    return-void

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    iget v3, p1, Lcom/android/systemui/qs/QSPanel$Record;->x:I

    iget v4, p1, Lcom/android/systemui/qs/QSPanel$Record;->y:I

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/qs/QSPanel;->handleShowDetailImpl(Lcom/android/systemui/qs/QSPanel$Record;ZIIZ)V

    goto :goto_0
.end method

.method protected handleUpdateDetail(Lcom/android/systemui/qs/QSPanel$Record;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSDetail$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSDetail$Callback;

    iget-object v1, p1, Lcom/android/systemui/qs/QSPanel$Record;->detailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/QSDetail$Callback;->onUpdatingDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;)V

    :cond_0
    return-void
.end method

.method public isDetailsOpened(Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    if-nez v1, :cond_1

    :cond_0
    return v3

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v1, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v1, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QSTile;->getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    iget-object v2, v2, Lcom/android/systemui/qs/QSPanel$Record;->detailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v3
.end method

.method public isExpanded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    return v0
.end method

.method public isShowingCustomize()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCustomizePanel:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCustomizePanel:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isCustomizing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "qs_show_brightness"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSPanel;->setTiles(Ljava/util/Collection;)V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSSecurityFooter;->onConfigurationChanged()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    const-class v2, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v2, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v2, p0}, Lcom/android/systemui/qs/QSTileHost;->removeCallback(Lcom/android/systemui/qs/QSHost$Callback;)V

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v2, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/QSTile;->removeCallbacks()V

    goto :goto_0

    :cond_1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onTilesChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSPanel;->setTiles(Ljava/util/Collection;)V

    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "qs_show_brightness"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return-void
.end method

.method public openDetails(Ljava/lang/String;Z)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    if-eqz p2, :cond_2

    const/4 v1, 0x0

    :goto_0
    iget-object v5, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_4

    iget-object v5, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v5, v5, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v5}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/QSPanel$Record;

    invoke-virtual {p0, v5, v8, v8}, Lcom/android/systemui/qs/QSPanel;->handleShowDetail(Lcom/android/systemui/qs/QSPanel$Record;ZZ)V

    iget-object v5, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v5, v5, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v5}, Lcom/android/systemui/plugins/qs/QSTile;->getState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-boolean v5, v3, Lcom/android/systemui/plugins/qs/QSTile$State;->isCustomTile:Z

    if-eqz v5, :cond_1

    iget-object v2, v3, Lcom/android/systemui/plugins/qs/QSTile$State;->tileClassName:Ljava/lang/String;

    :goto_1
    :try_start_0
    sget-object v6, Lcom/android/systemui/SystemUIAnalytics;->mCurrentScreenID:Ljava/lang/String;

    sget-object v5, Lcom/android/systemui/SystemUIAnalytics;->mTileSAIdMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget v7, Lcom/android/systemui/SystemUIAnalytics;->QUICKTILE_MAP_DETAIL_EID:I

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/android/systemui/SystemUIAnalytics;->mTileSAIdMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget v6, Lcom/android/systemui/SystemUIAnalytics;->QUICKTILE_MAP_SID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/android/systemui/SystemUIAnalytics;->sendScreenViewLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v5, v5, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v5}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSPanel;->getTile(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-interface {v4, v8}, Lcom/android/systemui/plugins/qs/QSTile;->setDetailListening(Z)V

    :cond_3
    invoke-interface {v4}, Lcom/android/systemui/plugins/qs/QSTile;->getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [I

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    aput v7, v6, v9

    aput v9, v6, v8

    invoke-virtual {p0, v8, v5, v6}, Lcom/android/systemui/qs/QSPanel;->showDetailAdapter(ZLcom/android/systemui/plugins/qs/DetailAdapter;[I)V

    :cond_4
    return-void

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public pagedTileLayoutVisibility(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    instance-of v0, v0, Lcom/android/systemui/qs/PagedTileLayout;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    check-cast v0, Lcom/android/systemui/qs/PagedTileLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/PagedTileLayout;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    check-cast v0, Lcom/android/systemui/qs/PagedTileLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/PagedTileLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public refreshAllTiles()V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v2, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/QSTile;->refreshState()V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSSecurityFooter;->refreshState()V

    return-void
.end method

.method public setCallback(Lcom/android/systemui/qs/QSDetail$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSDetail$Callback;

    return-void
.end method

.method protected setDetailRecord(Lcom/android/systemui/qs/QSPanel$Record;)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    if-ne p1, v1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    instance-of v1, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-boolean v0, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->scanState:Z

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QSPanel;->fireScanStateChanged(Z)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setExpanded(Z)V
    .locals 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    instance-of v0, v0, Lcom/android/systemui/qs/PagedTileLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    check-cast v0, Lcom/android/systemui/qs/PagedTileLayout;

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/qs/PagedTileLayout;->setCurrentItem(IZ)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    const/16 v2, 0x6f

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->visibility(IZ)V

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->closeDetail()V

    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->logTiles()V

    goto :goto_0
.end method

.method setGridContentVisibility(Z)V
    .locals 3

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSPanel;->setVisibility(I)V

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSPanel;->mGridContentVisible:Z

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v2, 0x6f

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/logging/MetricsLogger;->visibility(II)V

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mGridContentVisible:Z

    return-void

    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setHost(Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/qs/customize/SecQSCustomizer;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/QSTileHost;->addCallback(Lcom/android/systemui/qs/QSHost$Callback;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSPanel;->setTiles(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSSecurityFooter;->setHostEnvironment(Lcom/android/systemui/qs/QSTileHost;)V

    iput-object p2, p0, Lcom/android/systemui/qs/QSPanel;->mCustomizePanel:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCustomizePanel:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCustomizePanel:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->setHost(Lcom/android/systemui/qs/QSTileHost;)V

    :cond_0
    return-void
.end method

.method public setListening(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    invoke-interface {v0, p1}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->setListening(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSSecurityFooter;->setListening(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->refreshAllTiles()V

    :cond_2
    return-void
.end method

.method public setTiles(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/systemui/plugins/qs/QSTile;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/QSPanel;->setTiles(Ljava/util/Collection;Z)V

    return-void
.end method

.method public setTiles(Ljava/util/Collection;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/systemui/plugins/qs/QSTile;",
            ">;Z)V"
        }
    .end annotation

    iget-object v4, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v4, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    invoke-interface {v4, v0}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->removeTile(Lcom/android/systemui/qs/QSPanel$TileRecord;)V

    iget-object v4, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    iget-object v5, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->callback:Lcom/android/systemui/plugins/qs/QSTile$Callback;

    invoke-interface {v4, v5}, Lcom/android/systemui/plugins/qs/QSTile;->removeCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/qs/QSTile;

    invoke-virtual {p0, v2, p2}, Lcom/android/systemui/qs/QSPanel;->addTile(Lcom/android/systemui/plugins/qs/QSTile;Z)Lcom/android/systemui/qs/QSPanel$TileRecord;

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected setupTileLayout()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0154

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->setListening(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSPanel;->addView(Landroid/view/View;)V

    return-void
.end method

.method protected shouldShowDetail()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    return v0
.end method

.method protected showDetail(ZLcom/android/systemui/qs/QSPanel$Record;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/qs/QSPanel;->showDetail(ZLcom/android/systemui/qs/QSPanel$Record;Z)V

    return-void
.end method

.method protected showDetail(ZLcom/android/systemui/qs/QSPanel$Record;Z)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mHandler:Lcom/android/systemui/qs/QSPanel$H;

    if-eqz p1, :cond_1

    move v2, v1

    :goto_0
    if-eqz p3, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v3, v1, v2, v0, p2}, Lcom/android/systemui/qs/QSPanel$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_1
    move v2, v0

    goto :goto_0
.end method

.method public showDetailAdapter(ZLcom/android/systemui/plugins/qs/DetailAdapter;[I)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    aget v1, p3, v4

    aget v2, p3, v5

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, p3}, Landroid/view/View;->getLocationInWindow([I)V

    new-instance v0, Lcom/android/systemui/qs/QSPanel$Record;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSPanel$Record;-><init>()V

    iput-object p2, v0, Lcom/android/systemui/qs/QSPanel$Record;->detailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    aget v3, p3, v4

    sub-int v3, v1, v3

    iput v3, v0, Lcom/android/systemui/qs/QSPanel$Record;->x:I

    aget v3, p3, v5

    sub-int v3, v2, v3

    iput v3, v0, Lcom/android/systemui/qs/QSPanel$Record;->y:I

    aput v1, p3, v4

    aput v2, p3, v5

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/QSPanel;->showDetail(ZLcom/android/systemui/qs/QSPanel$Record;)V

    return-void
.end method

.method public showDeviceMonitoringDialog()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSSecurityFooter;->showDeviceMonitoringDialog()V

    return-void
.end method

.method public showEdit(Landroid/view/View;)V
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/QSPanel$2;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/QSPanel$2;-><init>(Lcom/android/systemui/qs/QSPanel;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected updateDetail(Lcom/android/systemui/qs/QSPanel$Record;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHandler:Lcom/android/systemui/qs/QSPanel$H;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2, v2, p1}, Lcom/android/systemui/qs/QSPanel$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public updateResources()V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070509

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/qs/QSPanel;->mPanelPaddingBottom:I

    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/statusbar/DeviceState;->isDesktopMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f070492

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    :goto_0
    iput v3, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessPaddingTop:I

    iget v3, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessPaddingTop:I

    iget v4, p0, Lcom/android/systemui/qs/QSPanel;->mPanelPaddingBottom:I

    invoke-virtual {p0, v5, v3, v5, v4}, Lcom/android/systemui/qs/QSPanel;->setPadding(IIII)V

    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v3, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v3}, Lcom/android/systemui/plugins/qs/QSTile;->clearState()V

    goto :goto_1

    :cond_0
    const v3, 0x7f070491

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_0

    :cond_1
    iget-boolean v3, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->refreshAllTiles()V

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    invoke-interface {v3}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->updateResources()Z

    :cond_3
    return-void
.end method
