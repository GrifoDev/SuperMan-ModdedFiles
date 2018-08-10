.class Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$SoundModeListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SoundModeTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SoundModeListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;Landroid/content/Context;II[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$SoundModeListAdapter;->this$1:Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckedTextView;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/CheckedTextView;->setSingleLine(Z)V

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v6, v7}, Landroid/widget/CheckedTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$SoundModeListAdapter;->this$1:Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;

    invoke-static {v7}, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->-get0(Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;)Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v7

    if-ne v7, p1, :cond_0

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$SoundModeListAdapter;->this$1:Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;

    iget-object v7, v7, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {v7}, Lcom/android/systemui/qs/tiles/SoundModeTile;->-get5(Lcom/android/systemui/qs/tiles/SoundModeTile;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f120927

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$SoundModeListAdapter;->this$1:Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;

    iget-object v7, v7, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {v7}, Lcom/android/systemui/qs/tiles/SoundModeTile;->-wrap0(Lcom/android/systemui/qs/tiles/SoundModeTile;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$SoundModeListAdapter;->this$1:Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;

    invoke-static {v7}, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->-wrap1(Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const-string/jumbo v7, "("

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    new-instance v7, Landroid/text/style/TextAppearanceSpan;

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$SoundModeListAdapter;->this$1:Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;

    iget-object v8, v8, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {v8}, Lcom/android/systemui/qs/tiles/SoundModeTile;->-get5(Lcom/android/systemui/qs/tiles/SoundModeTile;)Landroid/content/Context;

    move-result-object v8

    const v9, 0x10301b3

    invoke-direct {v7, v8, v9}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x21

    invoke-virtual {v4, v7, v5, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$SoundModeListAdapter;->this$1:Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$SoundModeListAdapter;->this$1:Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;

    iget-object v9, v9, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {v9}, Lcom/android/systemui/qs/tiles/SoundModeTile;->-get5(Lcom/android/systemui/qs/tiles/SoundModeTile;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->-wrap0(Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;Landroid/content/Context;)I

    move-result v8

    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x21

    invoke-virtual {v4, v7, v5, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v6, v4}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    sget-boolean v7, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_VOLUME_PANEL_SOUND_MODE_TILE:Z

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$SoundModeListAdapter;->this$1:Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;

    invoke-virtual {v7}, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->isSystemSettingAllSoundOff()Z

    move-result v7

    if-eqz v7, :cond_1

    if-nez p1, :cond_1

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/CheckedTextView;->setClickable(Z)V

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/CheckedTextView;->setFocusable(Z)V

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/CheckedTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/CheckedTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$SoundModeListAdapter;->this$1:Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;

    iget-object v7, v7, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {v7}, Lcom/android/systemui/qs/tiles/SoundModeTile;->-get5(Lcom/android/systemui/qs/tiles/SoundModeTile;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060223

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/widget/CheckedTextView;->setTextColor(I)V

    :cond_1
    return-object v6
.end method
