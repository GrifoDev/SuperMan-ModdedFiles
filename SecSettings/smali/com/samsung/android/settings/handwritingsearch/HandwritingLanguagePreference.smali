.class public Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "HandwritingLanguagePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$1;,
        Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$2;,
        Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$HandwritingLanguageListAdapter;,
        Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;
    }
.end annotation


# static fields
.field private static mDivider:Landroid/graphics/drawable/Drawable;

.field private static mLangListLoader:Lcom/samsung/android/settings/handwritingsearch/LanguageListLoader;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandwritingLanguageListAdapter:Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$HandwritingLanguageListAdapter;

.field private mLinkInfo:Z

.field private mListView:Landroid/widget/ListView;

.field private mMoreButton:Lcom/samsung/android/settings/widget/BottomBarButton;

.field private mMoreButtonLayout:Landroid/widget/LinearLayout;

.field mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field mOnKeyListener:Landroid/view/View$OnKeyListener;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1()Landroid/graphics/drawable/Drawable;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->getDescriptionString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->mLangListLoader:Lcom/samsung/android/settings/handwritingsearch/LanguageListLoader;

    sput-object v0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->mDivider:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->mTextView:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->mListView:Landroid/widget/ListView;

    iput-object v0, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->mMoreButton:Lcom/samsung/android/settings/widget/BottomBarButton;

    iput-object v0, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->mMoreButtonLayout:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->mHandwritingLanguageListAdapter:Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$HandwritingLanguageListAdapter;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->mLinkInfo:Z

    new-instance v0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$1;-><init>(Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;)V

    iput-object v0, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$2;-><init>(Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;)V

    iput-object v0, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method private getDescriptionString()Ljava/lang/String;
    .locals 11

    const v10, 0x7f120cc1

    const v9, 0x7f120cbd

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->mContext:Landroid/content/Context;

    const v6, 0x7f1216ab

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_0
    iget-object v5, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v3

    iget-object v5, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->mHandwritingLanguageListAdapter:Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$HandwritingLanguageListAdapter;

    invoke-virtual {v5}, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$HandwritingLanguageListAdapter;->getCount()I

    move-result v5

    if-lez v5, :cond_0

    if-ltz v3, :cond_0

    iget-object v5, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->mHandwritingLanguageListAdapter:Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$HandwritingLanguageListAdapter;

    invoke-virtual {v5, v3}, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$HandwritingLanguageListAdapter;->getItem(I)Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;->getLanguage()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v2, Ljava/util/Locale;

    const-string/jumbo v5, "en"

    const-string/jumbo v6, "GB"

    invoke-direct {v2, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "com.samsung.android.app.notes"

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    if-nez v0, :cond_3

    iget-object v5, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {}, Lcom/android/settings/Utils;->isLocaleRTL()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->mTextView:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->mTextView:Landroid/widget/TextView;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextDirection(I)V

    :cond_1
    return-object v1

    :cond_2
    iget-object v5, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->mContext:Landroid/content/Context;

    const v6, 0x7f1216aa

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_3
    const-string/jumbo v5, "en_"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->mContext:Landroid/content/Context;

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v4, v6, v8

    invoke-virtual {v5, v10, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    const-string/jumbo v5, "ko_"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string/jumbo v5, "ja_"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_5
    iget-object v5, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->mContext:Landroid/content/Context;

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v4, v6, v8

    const v7, 0x7f120cc2

    invoke-virtual {v5, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_6
    iget-object v5, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->mContext:Landroid/content/Context;

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v4, v6, v8

    const v7, 0x7f120cc0

    invoke-virtual {v5, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_7
    if-nez v0, :cond_8

    iget-object v5, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_8
    const-string/jumbo v5, "en_"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_9
    iget-object v5, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->mContext:Landroid/content/Context;

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v2, v2}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    const v7, 0x7f120cbf

    invoke-virtual {v5, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1
.end method

.method private static getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget-object v2, p1, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object v2, p2, v1

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getLocaleInfoAdapter(Landroid/content/Context;[Ljava/lang/String;)[Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;
    .locals 27

    move-object/from16 v0, p1

    array-length v12, v0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v24, 0x10700b5

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v22

    const v24, 0x10700b6

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v23

    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    new-array v0, v12, [Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;

    move-object/from16 v19, v0

    const/4 v7, 0x0

    const-string/jumbo v3, ""

    const-string/jumbo v5, ""

    const/4 v9, 0x0

    move v8, v7

    :goto_0
    if-ge v9, v12, :cond_7

    aget-object v24, p1, v9

    if-nez v24, :cond_0

    move v7, v8

    :goto_1
    add-int/lit8 v9, v9, 0x1

    move v8, v7

    goto :goto_0

    :cond_0
    aget-object v11, p1, v9

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v24, 0x5

    move/from16 v0, v24

    if-ne v14, v0, :cond_6

    const/16 v24, 0x0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    const/16 v24, 0x3

    const/16 v25, 0x5

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    new-instance v15, Ljava/util/Locale;

    invoke-direct {v15, v13, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v8, :cond_1

    const-string/jumbo v24, "HandwritingLanguagePreference"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "adding initial "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v15, v15}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v7, v8, 0x1

    new-instance v24, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;

    invoke-virtual {v15, v15}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v11, v15}, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v24, v19, v8

    goto :goto_1

    :cond_1
    add-int/lit8 v24, v8, -0x1

    aget-object v24, v19, v24

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;->locale:Ljava/util/Locale;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    const-string/jumbo v24, "HandwritingLanguagePreference"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "backing up and fixing "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    add-int/lit8 v26, v8, -0x1

    aget-object v26, v19, v26

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " to "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    add-int/lit8 v26, v8, -0x1

    aget-object v26, v19, v26

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;->locale:Ljava/util/Locale;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v24, v8, -0x1

    aget-object v24, v19, v24

    add-int/lit8 v25, v8, -0x1

    aget-object v25, v19, v25

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;->locale:Ljava/util/Locale;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;->title:Ljava/lang/String;

    const-string/jumbo v24, "HandwritingLanguagePreference"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "  and adding "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v15, v0, v1}, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v7, v8, 0x1

    new-instance v24, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v15, v0, v1}, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v11, v15}, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v24, v19, v8

    goto/16 :goto_1

    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_4

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_4

    const-string/jumbo v18, ""

    const-string/jumbo v17, ""

    const-string/jumbo v24, "gsm.sim.operator.numeric"

    const-string/jumbo v25, "none"

    invoke-static/range {v24 .. v25}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_3

    move-object v6, v5

    :goto_2
    const-string/jumbo v24, "HandwritingLanguagePreference"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "adding "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v7, v8, 0x1

    new-instance v24, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;

    move-object/from16 v0, v24

    invoke-direct {v0, v6, v11, v15}, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v24, v19, v8

    goto/16 :goto_1

    :cond_3
    invoke-virtual {v15, v15}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_4
    const-string/jumbo v24, "zz_ZZ"

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_5

    const-string/jumbo v6, "Pseudo..."

    goto :goto_2

    :cond_5
    invoke-virtual {v15, v15}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_6
    const/16 v24, 0x0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    new-instance v15, Ljava/util/Locale;

    invoke-direct {v15, v13}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v15}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v8, 0x1

    new-instance v24, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;

    move-object/from16 v0, v24

    invoke-direct {v0, v6, v11, v15}, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v24, v19, v8

    goto/16 :goto_1

    :cond_7
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    :goto_3
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v10, v0, :cond_a

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v8, :cond_9

    aget-object v24, p1, v10

    aget-object v25, v19, v9

    invoke-virtual/range {v25 .. v25}, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;->getLanguage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_8

    aget-object v24, v19, v9

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_a
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    new-array v0, v0, [Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v21
.end method

.method public static getRNSLanguageInfo(Landroid/content/Context;[Ljava/lang/String;)[Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;
    .locals 20

    move-object/from16 v0, p1

    array-length v10, v0

    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    new-array v15, v10, [Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move v6, v5

    :goto_0
    if-ge v7, v10, :cond_2

    aget-object v17, p1, v7

    if-nez v17, :cond_0

    move v5, v6

    :goto_1
    add-int/lit8 v7, v7, 0x1

    move v6, v5

    goto :goto_0

    :cond_0
    aget-object v9, p1, v7

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v17, 0x5

    move/from16 v0, v17

    if-ne v12, v0, :cond_1

    const/16 v17, 0x0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    const/16 v17, 0x3

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    new-instance v13, Ljava/util/Locale;

    invoke-direct {v13, v11, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v5, v6, 0x1

    new-instance v17, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;

    invoke-virtual {v13, v13}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v9, v13, v2}, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Z)V

    aput-object v17, v15, v6

    goto :goto_1

    :cond_1
    const/16 v17, 0x0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    new-instance v13, Ljava/util/Locale;

    invoke-direct {v13, v11}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v13}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v6, 0x1

    new-instance v17, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v0, v4, v9, v13, v1}, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Z)V

    aput-object v17, v15, v6

    goto :goto_1

    :cond_2
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    :goto_2
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v8, v0, :cond_5

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v6, :cond_4

    aget-object v17, p1, v8

    aget-object v18, v15, v7

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;->getLanguage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    aget-object v17, v15, v7

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v16
.end method

.method private initLayout()V
    .locals 12

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v0, 0x7f0704df

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v1, 0x7f0704ec

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    const v1, 0x7f070502

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int v4, v0, v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget-object v1, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    sput-object v0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->mDivider:Landroid/graphics/drawable/Drawable;

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    new-instance v5, Landroid/graphics/drawable/InsetDrawable;

    iget-object v0, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move v7, v4

    move v8, v2

    move v9, v2

    move v10, v2

    invoke-direct/range {v5 .. v10}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    sput-object v5, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->mDivider:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private setListValue(Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->mHandwritingLanguageListAdapter:Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$HandwritingLanguageListAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$HandwritingLanguageListAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->mHandwritingLanguageListAdapter:Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$HandwritingLanguageListAdapter;

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$HandwritingLanguageListAdapter;->getItem(I)Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static toTitleCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1262

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const-string/jumbo v0, "HandwritingLanguagePreference"

    const-string/jumbo v1, "onCreate() "

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "handwriting"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->mLinkInfo:Z

    new-instance v0, Lcom/samsung/android/settings/handwritingsearch/LanguageListLoader;

    invoke-virtual {p0}, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/handwritingsearch/LanguageListLoader;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->mLangListLoader:Lcom/samsung/android/settings/handwritingsearch/LanguageListLoader;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const v1, 0x7f0d013d

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a03ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->mTextView:Landroid/widget/TextView;

    const v1, 0x7f0a03ac

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->mListView:Landroid/widget/ListView;

    const v1, 0x7f0a054d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/widget/BottomBarButton;

    iput-object v1, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->mMoreButton:Lcom/samsung/android/settings/widget/BottomBarButton;

    const v1, 0x7f0a054e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->mMoreButtonLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->mMoreButton:Lcom/samsung/android/settings/widget/BottomBarButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->mMoreButton:Lcom/samsung/android/settings/widget/BottomBarButton;

    new-instance v2, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$3;-><init>(Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/widget/BottomBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->mLinkInfo:Z

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isChinaHKTWModel()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->mMoreButtonLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->mMoreButtonLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->initLayout()V

    return-object v0
.end method

.method public onPause()V
    .locals 6

    iget-object v3, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v2

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->mHandwritingLanguageListAdapter:Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$HandwritingLanguageListAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$HandwritingLanguageListAdapter;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    if-ltz v2, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->mHandwritingLanguageListAdapter:Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$HandwritingLanguageListAdapter;

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$HandwritingLanguageListAdapter;->getItem(I)Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;->getLanguage()Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string/jumbo v3, "HandwritingLanguagePreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "set Handwriting language : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "handwriting_language"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "com.android.setting.HANDWRITING_LANGUAGE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "language"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 15

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v12, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "handwriting_language_list"

    invoke-static {v12, v13}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v12, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "handwriting_not_support_language_list"

    invoke-static {v12, v13}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v12, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "default_input_method"

    invoke-static {v12, v13}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v12, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "handwriting_language"

    invoke-static {v12, v13}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v12, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    sget-object v12, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->mLangListLoader:Lcom/samsung/android/settings/handwritingsearch/LanguageListLoader;

    invoke-virtual {v12}, Lcom/samsung/android/settings/handwritingsearch/LanguageListLoader;->getSupportedLanguageList()[Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->mContext:Landroid/content/Context;

    invoke-static {v12, v11}, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->getLocaleInfoAdapter(Landroid/content/Context;[Ljava/lang/String;)[Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;

    move-result-object v0

    iget-object v12, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->mMoreButtonLayout:Landroid/widget/LinearLayout;

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->mMoreButtonLayout:Landroid/widget/LinearLayout;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    :goto_0
    new-instance v12, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$HandwritingLanguageListAdapter;

    iget-object v13, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->mContext:Landroid/content/Context;

    const v14, 0x7f0d0178

    invoke-direct {v12, v13, v14, v0}, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$HandwritingLanguageListAdapter;-><init>(Landroid/content/Context;I[Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;)V

    iput-object v12, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->mHandwritingLanguageListAdapter:Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$HandwritingLanguageListAdapter;

    iget-object v12, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->mListView:Landroid/widget/ListView;

    iget-object v13, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->mHandwritingLanguageListAdapter:Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$HandwritingLanguageListAdapter;

    invoke-virtual {v12, v13}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v12, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->mListView:Landroid/widget/ListView;

    iget-object v13, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v12, v13}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v12, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->mListView:Landroid/widget/ListView;

    iget-object v13, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v12, v13}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v12, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->mListView:Landroid/widget/ListView;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/ListView;->setChoiceMode(I)V

    if-eqz v3, :cond_1

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->setListValue(Ljava/lang/String;)V

    :cond_1
    iget-object v12, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->mTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->getDescriptionString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    if-eqz v6, :cond_3

    const-string/jumbo v12, ""

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    :cond_3
    if-nez v6, :cond_7

    :cond_4
    const/4 v12, 0x1

    new-array v5, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v3, v5, v12

    iget-object v12, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->mContext:Landroid/content/Context;

    invoke-static {v12, v5}, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->getLocaleInfoAdapter(Landroid/content/Context;[Ljava/lang/String;)[Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;

    move-result-object v0

    :goto_1
    if-eqz v8, :cond_5

    const-string/jumbo v12, ""

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    :cond_5
    if-nez v8, :cond_8

    :cond_6
    const-string/jumbo v12, "HandwritingLanguagePreference"

    const-string/jumbo v13, "All is supported."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    const-string/jumbo v12, ";"

    invoke-virtual {v6, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iget-object v12, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->mContext:Landroid/content/Context;

    invoke-static {v12, v5}, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->getLocaleInfoAdapter(Landroid/content/Context;[Ljava/lang/String;)[Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;

    move-result-object v0

    goto :goto_1

    :cond_8
    const-string/jumbo v12, ";"

    invoke-virtual {v8, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iget-object v12, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->mContext:Landroid/content/Context;

    invoke-static {v12, v7}, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->getRNSLanguageInfo(Landroid/content/Context;[Ljava/lang/String;)[Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;

    move-result-object v2

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_2
    array-length v12, v0

    if-ge v4, v12, :cond_9

    aget-object v12, v0, v4

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_9
    const/4 v4, 0x0

    :goto_3
    array-length v12, v2

    if-ge v4, v12, :cond_a

    aget-object v12, v2, v4

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_a
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v0, v12, [Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto/16 :goto_0
.end method
