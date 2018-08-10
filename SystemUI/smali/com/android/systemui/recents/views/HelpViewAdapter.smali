.class Lcom/android/systemui/recents/views/HelpViewAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "HelpViewPager.java"


# instance fields
.field mContents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field mHelpPopup:Lcom/android/systemui/recents/views/AbstractHelpPopup;

.field mLastDeviceOrientation:I

.field mResource:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/recents/views/AbstractHelpPopup;I)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/HelpViewAdapter;->mContents:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/systemui/recents/views/HelpViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/HelpViewAdapter;->mResource:Landroid/content/res/Resources;

    iput p3, p0, Lcom/android/systemui/recents/views/HelpViewAdapter;->mLastDeviceOrientation:I

    iput-object p2, p0, Lcom/android/systemui/recents/views/HelpViewAdapter;->mHelpPopup:Lcom/android/systemui/recents/views/AbstractHelpPopup;

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 7

    move-object v1, p3

    check-cast v1, Landroid/view/View;

    const v2, 0x7f0a020e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const-string/jumbo v2, "HelpViewAdapter"

    const-string/jumbo v3, "destroyItem(%d)\n"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/HelpViewAdapter;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/HelpViewAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    const v17, 0x7f0d0172

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    const v17, 0x7f0a0207

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->setAccessibilityLiveRegion(I)V

    const v17, 0x7f0a020e

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    const v17, 0x7f0a0212

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    const v17, 0x7f0a020c

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/recents/misc/HelpHubTextView;

    const v17, 0x7f0a0211

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/HelpViewAdapter;->mContents:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;->isValidContent()Z

    move-result v17

    xor-int/lit8 v17, v17, 0x1

    if-eqz v17, :cond_1

    :cond_0
    const/16 v17, 0x0

    return-object v17

    :cond_1
    iget v0, v2, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;->imageResId:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/HelpViewAdapter;->mResource:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    iget v0, v2, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;->contentDescResId:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v10}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/HelpViewAdapter;->mResource:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    const v18, 0x7f070572

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/HelpViewAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/HelpViewAdapter;->mLastDeviceOrientation:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    iget v15, v3, Landroid/graphics/Point;->y:I

    :goto_0
    mul-int/lit8 v17, v13, 0x6

    move/from16 v0, v17

    if-le v0, v15, :cond_2

    div-int/lit8 v13, v15, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/HelpViewAdapter;->mHelpPopup:Lcom/android/systemui/recents/views/AbstractHelpPopup;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lcom/android/systemui/recents/views/AbstractHelpPopup;->updateSideMargin(I)V

    :cond_2
    mul-int/lit8 v17, v13, 0x2

    sub-int v17, v15, v17

    move/from16 v0, v17

    iput v0, v8, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v0, v2, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;->subtitleResId:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v6}, Lcom/android/systemui/recents/misc/HelpHubTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/HelpViewAdapter;->mLastDeviceOrientation:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/HelpViewAdapter;->mResource:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    const v18, 0x7f070575

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iget v0, v8, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move/from16 v17, v0

    add-int v17, v17, v12

    move/from16 v0, v17

    iput v0, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    :goto_1
    invoke-virtual {v6, v5}, Lcom/android/systemui/recents/misc/HelpHubTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v2, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;->helpHubImageResId:[I

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    iget-object v0, v2, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;->helpHubImageResId:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/android/systemui/recents/misc/HelpHubTextView;->setIconList([I)V

    :cond_3
    iget v0, v2, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;->helpHubTextResId:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/android/systemui/recents/misc/HelpHubTextView;->changeText(I)V

    iget v0, v2, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;->buttonTitleId:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_6

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->isSamsungMultiWindowEnabled()Z

    move-result v17

    if-eqz v17, :cond_6

    const-string/jumbo v17, "com.android.settings"

    invoke-static/range {v17 .. v17}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->isInstalled(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/Button;->setVisibility(I)V

    iget v0, v2, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;->buttonTitleId:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/Button;->setText(I)V

    new-instance v17, Lcom/android/systemui/recents/views/HelpViewAdapter$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/views/HelpViewAdapter$1;-><init>(Lcom/android/systemui/recents/views/HelpViewAdapter;)V

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v16

    :cond_4
    iget v15, v3, Landroid/graphics/Point;->x:I

    goto/16 :goto_0

    :cond_5
    iget v0, v8, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_1

    :cond_6
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/recents/views/HelpViewAdapter;->mLastDeviceOrientation:I

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/HelpViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setContents(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/recents/views/HelpViewAdapter;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/systemui/recents/views/HelpViewAdapter;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/systemui/recents/views/HelpViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/HelpViewAdapter;->mContents:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/HelpViewAdapter;->notifyDataSetChanged()V

    return-void
.end method
