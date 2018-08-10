.class final Lcom/android/systemui/qs/tiles/EbookTile$EbookDetailAdapter;
.super Ljava/lang/Object;
.source "EbookTile.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/EbookTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EbookDetailAdapter"
.end annotation


# instance fields
.field private mSummary:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/EbookTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/EbookTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/EbookTile$EbookDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/EbookTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/EbookTile;Lcom/android/systemui/qs/tiles/EbookTile$EbookDetailAdapter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/EbookTile$EbookDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/EbookTile;)V

    return-void
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile$EbookDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/EbookTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/EbookTile;->-get1(Lcom/android/systemui/qs/tiles/EbookTile;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d014b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0a0331

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile$EbookDetailAdapter;->mSummary:Landroid/widget/TextView;

    sget v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_READINGMODE:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile$EbookDetailAdapter;->mSummary:Landroid/widget/TextView;

    const v1, 0x7f1208b4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-object p2

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile$EbookDetailAdapter;->mSummary:Landroid/widget/TextView;

    const v1, 0x7f12090d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1395

    return v0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile$EbookDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/EbookTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/EbookTile;->getLongClickIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getTileString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile$EbookDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/EbookTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/EbookTile;->getTileSpec()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    sget v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_READINGMODE:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile$EbookDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/EbookTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/EbookTile;->-get1(Lcom/android/systemui/qs/tiles/EbookTile;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1208b5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile$EbookDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/EbookTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/EbookTile;->-get1(Lcom/android/systemui/qs/tiles/EbookTile;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f12090b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile$EbookDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/EbookTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/EbookTile;->-get3(Lcom/android/systemui/qs/tiles/EbookTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public setToggleState(Z)Z
    .locals 1

    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isEbookTileBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile$EbookDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/EbookTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/EbookTile;->-wrap3(Lcom/android/systemui/qs/tiles/EbookTile;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/EbookTile$EbookDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile$EbookDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/EbookTile;

    invoke-static {v0, p1}, Lcom/android/systemui/qs/tiles/EbookTile;->-wrap2(Lcom/android/systemui/qs/tiles/EbookTile;Z)V

    return p1
.end method
