.class public Lcom/android/systemui/qs/QSScreenGridDialog;
.super Lcom/android/systemui/statusbar/phone/SystemUIDialog;
.source "QSScreenGridDialog.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurSelected:Landroid/view/View;

.field private mGridEditor:Landroid/content/SharedPreferences$Editor;

.field private mGridPref:Landroid/content/SharedPreferences;

.field private mGridPrefInitialized:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/QSScreenGridDialog;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSScreenGridDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/QSScreenGridDialog;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSScreenGridDialog;->mCurSelected:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/QSScreenGridDialog;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSScreenGridDialog;->mGridEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/QSScreenGridDialog;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSScreenGridDialog;->mCurSelected:Landroid/view/View;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/QSScreenGridDialog;Landroid/view/ViewGroup;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSScreenGridDialog;->scaleChange(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/QSScreenGridDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 22

    invoke-direct/range {p0 .. p2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/qs/QSScreenGridDialog;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/qs/QSScreenGridDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "grid_pref"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/qs/QSScreenGridDialog;->mGridPref:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/qs/QSScreenGridDialog;->mGridPref:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/qs/QSScreenGridDialog;->mGridPref:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/qs/QSScreenGridDialog;->mGridEditor:Landroid/content/SharedPreferences$Editor;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/qs/QSScreenGridDialog;->mGridPref:Landroid/content/SharedPreferences;

    const-string/jumbo v6, "initialized"

    const/4 v7, 0x0

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/qs/QSScreenGridDialog;->mGridPrefInitialized:Z

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/qs/QSScreenGridDialog;->mGridPrefInitialized:Z

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/qs/QSScreenGridDialog;->mGridEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v2, :cond_1

    const-class v2, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/tuner/TunerService;

    const-string/jumbo v6, "qs_tile_column"

    const/4 v7, 0x4

    invoke-virtual {v2, v6, v7}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, " by 3"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/qs/QSScreenGridDialog;->mGridEditor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v6, "initialized"

    const/4 v7, 0x1

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/qs/QSScreenGridDialog;->mGridPrefInitialized:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/qs/QSScreenGridDialog;->mGridEditor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v6, "2098"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/qs/QSScreenGridDialog;->mGridEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/qs/QSScreenGridDialog;->mContext:Landroid/content/Context;

    const v6, 0x7f1209ed

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/QSScreenGridDialog;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/QSScreenGridDialog;->setCanceledOnTouchOutside(Z)V

    const v2, 0x7f0d015c

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/qs/QSScreenGridDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0704dc

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/qs/QSScreenGridDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0704dd

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    move-object/from16 v2, p0

    move v6, v4

    move v7, v5

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/qs/QSScreenGridDialog;->setView(Landroid/view/View;IIII)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/qs/QSScreenGridDialog;->mCurSelected:Landroid/view/View;

    const-class v2, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/tuner/TunerService;

    const-string/jumbo v6, "qs_tile_column"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v20, 0x7f0b0060

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    invoke-virtual {v2, v6, v7}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result v11

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v10, :cond_10

    invoke-virtual {v3, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    const v2, 0x7f0a0405

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    if-nez v9, :cond_3

    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_3
    sget-boolean v2, Lcom/android/systemui/Rune;->IS_TABLET_DEVICE:Z

    if-eqz v2, :cond_4

    const-string/jumbo v2, "3"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x8

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v11, v2, :cond_8

    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    move-object/from16 v2, v19

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lcom/android/systemui/qs/QSScreenGridDialog;->scaleChange(Landroid/view/ViewGroup;Z)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/qs/QSScreenGridDialog;->mCurSelected:Landroid/view/View;

    :goto_1
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const/4 v14, 0x3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/qs/QSScreenGridDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    const/4 v6, 0x1

    if-ne v2, v6, :cond_5

    const/4 v14, 0x2

    :cond_5
    const/4 v15, 0x0

    :goto_2
    move-object/from16 v2, v19

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v15, v2, :cond_e

    move-object/from16 v2, v19

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    instance-of v2, v8, Landroid/widget/ImageView;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/qs/QSScreenGridDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    const/4 v6, 0x1

    if-ne v2, v6, :cond_6

    move-object v2, v8

    check-cast v2, Landroid/widget/ImageView;

    const/4 v6, 0x3

    if-ne v13, v6, :cond_9

    const v6, 0x7f0804e6

    :goto_3
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/qs/QSScreenGridDialog;->mContext:Landroid/content/Context;

    const v6, 0x7f1209ee

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v20, 0x0

    aput-object v7, v6, v20

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v20, 0x1

    aput-object v7, v6, v20

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_7
    :goto_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_8
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    move-object/from16 v2, v19

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lcom/android/systemui/qs/QSScreenGridDialog;->scaleChange(Landroid/view/ViewGroup;Z)V

    goto/16 :goto_1

    :cond_9
    const/4 v6, 0x4

    if-ne v13, v6, :cond_a

    const v6, 0x7f0804e9

    goto :goto_3

    :cond_a
    const v6, 0x7f0804ec

    goto :goto_3

    :cond_b
    instance-of v2, v8, Landroid/widget/TextView;

    if-eqz v2, :cond_7

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v2, "ar"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string/jumbo v2, "fa"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_c
    move-object v2, v8

    check-cast v2, Landroid/widget/TextView;

    const-string/jumbo v6, "%dX%d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x0

    aput-object v20, v7, v21

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x1

    aput-object v20, v7, v21

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/qs/QSScreenGridDialog;->mContext:Landroid/content/Context;

    const v6, 0x7f1209ee

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v20, 0x0

    aput-object v7, v6, v20

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v20, 0x1

    aput-object v7, v6, v20

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_d
    move-object v2, v8

    check-cast v2, Landroid/widget/TextView;

    const-string/jumbo v6, "%dX%d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x0

    aput-object v20, v7, v21

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x1

    aput-object v20, v7, v21

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_e
    const/4 v15, 0x0

    :goto_6
    move-object/from16 v2, v19

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v15, v2, :cond_2

    move-object/from16 v2, v19

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    instance-of v2, v8, Landroid/widget/ImageView;

    if-eqz v2, :cond_f

    new-instance v2, Lcom/android/systemui/qs/QSScreenGridDialog$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/systemui/qs/QSScreenGridDialog$1;-><init>(Lcom/android/systemui/qs/QSScreenGridDialog;)V

    invoke-virtual {v8, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_f
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    :cond_10
    new-instance v2, Lcom/android/systemui/qs/QSScreenGridDialog$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/systemui/qs/QSScreenGridDialog$2;-><init>(Lcom/android/systemui/qs/QSScreenGridDialog;)V

    const v6, 0x7f1209f0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v2}, Lcom/android/systemui/qs/QSScreenGridDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private scaleChange(Landroid/view/ViewGroup;Z)V
    .locals 6

    const v4, 0x3f99999a    # 1.2f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Landroid/widget/ImageView;

    if-eqz p2, :cond_1

    move v3, v4

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleX(F)V

    check-cast v0, Landroid/widget/ImageView;

    if-eqz p2, :cond_2

    move v2, v4

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleY(F)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v3, v5

    goto :goto_1

    :cond_2
    move v2, v5

    goto :goto_2

    :cond_3
    return-void
.end method


# virtual methods
.method public setQSScreenGrid(I)Z
    .locals 2

    sget-boolean v0, Lcom/android/systemui/Rune;->IS_TABLET_DEVICE:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/QSScreenGridDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0060

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :goto_0
    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSScreenGridDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0061

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-ge v0, p1, :cond_2

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSScreenGridDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b005f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_0

    :cond_2
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string/jumbo v1, "qs_tile_layout"

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;I)V

    const/4 v0, 0x1

    return v0
.end method

.method public show()V
    .locals 0

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->show()V

    return-void
.end method
