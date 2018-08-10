.class final Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;
.super Ljava/lang/Object;
.source "SoundModeTile.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/SoundModeTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SoundModeDetailAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$SoundModeListAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$SoundModeListAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mTempMuteContainer:Landroid/view/View;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;Landroid/content/Context;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->getAutoCompleteColor(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->getRemainTimeString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->refreshDetailView()V

    return-void
.end method

.method private constructor <init>(Lcom/android/systemui/qs/tiles/SoundModeTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/SoundModeTile;Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTile;)V

    return-void
.end method

.method private getAutoCompleteColor(Landroid/content/Context;)I
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-array v1, v3, [I

    const v3, 0x1010434

    aput v3, v1, v4

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const v3, 0xff00ff

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return v2
.end method

.method private getRemainTimeString()Ljava/lang/String;
    .locals 15

    iget-object v12, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {v12}, Lcom/android/systemui/qs/tiles/SoundModeTile;->-get4(Lcom/android/systemui/qs/tiles/SoundModeTile;)Landroid/media/AudioManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/media/AudioManager;->getRemainingMuteIntervalMs()I

    move-result v2

    if-gtz v2, :cond_0

    iget-object v12, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {v12}, Lcom/android/systemui/qs/tiles/SoundModeTile;->-get3(Lcom/android/systemui/qs/tiles/SoundModeTile;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "AudioManager.getRemainingMuteIntervalMs() is wrong!!"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    return-object v12

    :cond_0
    const v12, 0x36ee80

    div-int v3, v2, v12

    const v12, 0xea60

    div-int v12, v2, v12

    rem-int/lit8 v6, v12, 0x3c

    const v12, 0x36ee80

    mul-int/2addr v12, v3

    int-to-long v8, v12

    const v12, 0xea60

    mul-int/2addr v12, v6

    int-to-long v10, v12

    const-string/jumbo v1, "%s %s"

    const-string/jumbo v0, "%s"

    invoke-static {v8, v9}, Landroid/text/format/DateUtils;->formatDuration(J)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v10, v11}, Landroid/text/format/DateUtils;->formatDuration(J)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {}, Lcom/android/systemui/qs/tiles/SoundModeTile;->-get0()Z

    move-result v12

    if-eqz v12, :cond_1

    iget-object v12, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {v12}, Lcom/android/systemui/qs/tiles/SoundModeTile;->-get3(Lcom/android/systemui/qs/tiles/SoundModeTile;)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "RemainTime:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", refine(h/m)=("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "), str(h/m)=("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string/jumbo v7, ""

    if-nez v3, :cond_4

    if-lez v6, :cond_4

    :cond_2
    if-nez v3, :cond_6

    const-string/jumbo v12, "%s"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v5, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :cond_3
    :goto_0
    iget-object v12, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {v12}, Lcom/android/systemui/qs/tiles/SoundModeTile;->-get5(Lcom/android/systemui/qs/tiles/SoundModeTile;)Landroid/content/Context;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v7, v13, v14

    const v14, 0x7f120923

    invoke-virtual {v12, v14, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    return-object v12

    :cond_4
    if-lez v3, :cond_5

    if-eqz v6, :cond_2

    :cond_5
    if-lez v3, :cond_3

    if-lez v6, :cond_3

    const-string/jumbo v12, "%s %s"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v4, v13, v14

    const/4 v14, 0x1

    aput-object v5, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_6
    if-nez v6, :cond_3

    const-string/jumbo v12, "%s"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v4, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method private refreshDetailView()V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/SoundModeTile;->-get4(Lcom/android/systemui/qs/tiles/SoundModeTile;)Landroid/media/AudioManager;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->updateSoundMode(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->mAdapter:Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$SoundModeListAdapter;

    invoke-virtual {v1}, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$SoundModeListAdapter;->notifyDataSetChanged()V

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->updateTemporaryMute(I)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/SoundModeTile;->-get4(Lcom/android/systemui/qs/tiles/SoundModeTile;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    goto :goto_0
.end method

.method private setListViewHeightBasedOnChildren(Landroid/widget/ListView;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Landroid/widget/ArrayAdapter;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v4, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v5

    if-ge v0, v5, :cond_1

    invoke-virtual {v1, v0, v7, p1}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6, v6}, Landroid/view/View;->measure(II)V

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {p1}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v5

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    mul-int/2addr v5, v6

    add-int/2addr v5, v4

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, v3}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Landroid/widget/ListView;->requestLayout()V

    return-void
.end method

.method private setupDetailView(Landroid/view/View;)V
    .locals 11

    const v4, 0x7f120927

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v10, 0x0

    const v0, 0x7f0a04eb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTile;->-get5(Lcom/android/systemui/qs/tiles/SoundModeTile;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/DeviceState;->isVibratorSupported(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    new-array v5, v3, [Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTile;->-get5(Lcom/android/systemui/qs/tiles/SoundModeTile;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120928

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v10

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTile;->-get5(Lcom/android/systemui/qs/tiles/SoundModeTile;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    :goto_0
    new-instance v0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$SoundModeListAdapter;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/SoundModeTile;->-get5(Lcom/android/systemui/qs/tiles/SoundModeTile;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d0146

    const v4, 0x1020016

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$SoundModeListAdapter;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;Landroid/content/Context;II[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->mAdapter:Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$SoundModeListAdapter;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->mAdapter:Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$SoundModeListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->mListView:Landroid/widget/ListView;

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->setListViewHeightBasedOnChildren(Landroid/widget/ListView;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$1;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f0a0520

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->mTempMuteContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->mTempMuteContainer:Landroid/view/View;

    const v1, 0x7f0a051f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Switch;

    new-instance v0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$2;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;)V

    invoke-virtual {v8, v0}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->mTempMuteContainer:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$3;

    invoke-direct {v1, p0, v8}, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$3;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;Landroid/widget/Switch;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->updateCautionText(Landroid/view/View;)V

    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_VOLUME_PANEL_SOUND_MODE_TILE:Z

    if-eqz v0, :cond_3

    const v0, 0x7f0a056f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewStub;

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_0
    const v0, 0x7f0a04f3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;

    if-eqz v6, :cond_1

    invoke-virtual {v6, v10}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->setVisibility(I)V

    new-instance v0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$4;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;)V

    invoke-virtual {v6, v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->setVolumeMixerTileCallback(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeMixerTileCallback;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x3

    new-array v5, v0, [Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTile;->-get5(Lcom/android/systemui/qs/tiles/SoundModeTile;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120928

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v10

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTile;->-get5(Lcom/android/systemui/qs/tiles/SoundModeTile;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120929

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTile;->-get5(Lcom/android/systemui/qs/tiles/SoundModeTile;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v3

    goto/16 :goto_0

    :cond_3
    const v0, 0x7f0a04ed

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_1

    const/16 v0, 0x8

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateCautionText(Landroid/view/View;)V
    .locals 7

    const v6, 0x7f0a04ec

    const/4 v5, 0x0

    sget-boolean v3, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_VOLUME_PANEL_SOUND_MODE_TILE:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->isSystemSettingAllSoundOff()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/SoundModeTile;->-get5(Lcom/android/systemui/qs/tiles/SoundModeTile;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f120b9a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/SoundModeTile;->-get5(Lcom/android/systemui/qs/tiles/SoundModeTile;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Landroid/app/NotificationManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v2

    invoke-static {v2}, Landroid/provider/Settings$Global;->isValidZenMode(I)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/SoundModeTile;->-get5(Lcom/android/systemui/qs/tiles/SoundModeTile;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f120921

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateSoundMode(I)V
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/systemui/qs/tiles/SoundModeTile;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTile;->-get3(Lcom/android/systemui/qs/tiles/SoundModeTile;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSoundMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTile;->-get5(Lcom/android/systemui/qs/tiles/SoundModeTile;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/DeviceState;->isVibratorSupported(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->mListView:Landroid/widget/ListView;

    rsub-int/lit8 v1, p1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_0
.end method

.method private updateTemporaryMute(I)V
    .locals 9

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->mTempMuteContainer:Landroid/view/View;

    const v5, 0x7f0a0521

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/SoundModeTile;->-get4(Lcom/android/systemui/qs/tiles/SoundModeTile;)Landroid/media/AudioManager;

    move-result-object v4

    if-nez v4, :cond_0

    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/SoundModeTile;->-get5(Lcom/android/systemui/qs/tiles/SoundModeTile;)Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {v6}, Lcom/android/systemui/qs/tiles/SoundModeTile;->-get5(Lcom/android/systemui/qs/tiles/SoundModeTile;)Landroid/content/Context;

    move-result-object v6

    sget-object v7, Lcom/android/systemui/qs/tiles/SoundModeTile;->SOUND_MODE_TEXT:[I

    aget v7, v7, v1

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const v6, 0x7f120925

    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->mTempMuteContainer:Landroid/view/View;

    const v5, 0x7f0a051f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    if-nez p1, :cond_1

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/SoundModeTile;->-wrap0(Lcom/android/systemui/qs/tiles/SoundModeTile;)Z

    move-result v0

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->mTempMuteContainer:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_1
    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/SoundModeTile;->-get4(Lcom/android/systemui/qs/tiles/SoundModeTile;)Landroid/media/AudioManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioManager;->getPrevRingerMode()I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v8}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->mTempMuteContainer:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTile;->-get5(Lcom/android/systemui/qs/tiles/SoundModeTile;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0147

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->setupDetailView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->refreshDetailView()V

    return-object p2
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x138b

    return v0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 1

    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_VOLUME_PANEL_SOUND_MODE_TILE:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/qs/tiles/SoundModeTile;->-get2()Landroid/content/Intent;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/systemui/qs/tiles/SoundModeTile;->-get1()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getTileString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/SoundModeTile;->getTileSpec()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_VOLUME_PANEL_SOUND_MODE_TILE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTile;->-get5(Lcom/android/systemui/qs/tiles/SoundModeTile;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120928

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTile;->-get5(Lcom/android/systemui/qs/tiles/SoundModeTile;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120920

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isListViewAttached()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->isAttachedToWindow()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSystemSettingAllSoundOff()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/SoundModeTile;->-get5(Lcom/android/systemui/qs/tiles/SoundModeTile;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "all_sound_off"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public setToggleState(Z)Z
    .locals 0

    return p1
.end method
