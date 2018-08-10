.class public Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;
.super Landroid/app/Activity;
.source "SecSetupIrisDisclaimerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mIsEnable:Z

.field private mSUWBottomBar:Landroid/widget/RelativeLayout;

.field private mSUWNextBtn:Landroid/widget/LinearLayout;

.field private mSUWNextBtnImg:Landroid/widget/ImageView;

.field private mSUWNextText:Landroid/widget/TextView;

.field private mSUWOpenBtnImg:Landroid/widget/ImageView;

.field private mSUWPrevBtn:Landroid/widget/LinearLayout;

.field private mScrollView:Lcom/samsung/android/settings/widget/BottomScrollView;


# direct methods
.method static synthetic -set0(Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->mIsEnable:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->setEnableNextButton(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->mIsEnable:Z

    return-void
.end method

.method private initView()V
    .locals 14

    const/4 v13, 0x0

    const v10, 0x7f0a026c

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f12086b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "\n"

    const-string/jumbo v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v10, Landroid/text/style/UnderlineSpan;

    invoke-direct {v10}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v11

    invoke-virtual {v0, v10, v13, v11, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v10, 0x7f0a026d

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f12086f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "\n"

    const-string/jumbo v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v10, Landroid/text/style/UnderlineSpan;

    invoke-direct {v10}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v11

    invoke-virtual {v1, v10, v13, v11, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v10, 0x7f0a026e

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const-string/jumbo v4, ""

    invoke-static {}, Lcom/android/settings/Utils;->isUSA()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f12086d

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f12086e

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v10, 0x7f0a026f

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f120870

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v10, 0x7f0a0858

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    iput-object v10, p0, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->mSUWBottomBar:Landroid/widget/RelativeLayout;

    const v10, 0x7f0a0875

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    iput-object v10, p0, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->mSUWPrevBtn:Landroid/widget/LinearLayout;

    const v10, 0x7f0a0870

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    iput-object v10, p0, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->mSUWNextBtn:Landroid/widget/LinearLayout;

    const v10, 0x7f0a0871

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->mSUWNextText:Landroid/widget/TextView;

    const v10, 0x7f0a086f

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->mSUWNextBtnImg:Landroid/widget/ImageView;

    const v10, 0x7f0a0872

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->mSUWOpenBtnImg:Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->mSUWNextText:Landroid/widget/TextView;

    const v11, 0x7f12104b

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    iget-object v10, p0, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->mSUWBottomBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v10, v13}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v10, p0, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->mSUWPrevBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v10, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v10, p0, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->mSUWNextBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v10, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, v13}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->setEnableNextButton(Z)V

    const v10, 0x7f0a027a

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/settings/widget/BottomScrollView;

    iput-object v10, p0, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->mScrollView:Lcom/samsung/android/settings/widget/BottomScrollView;

    iget-object v10, p0, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->mScrollView:Lcom/samsung/android/settings/widget/BottomScrollView;

    new-instance v11, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity$1;

    invoke-direct {v11, p0}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity$1;-><init>(Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;)V

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/widget/BottomScrollView;->setOnBottomReachedListener(Lcom/samsung/android/settings/widget/BottomScrollView$OnBottomReachedListener;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f12086c

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0
.end method

.method private setEnableNextButton(Z)V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "show_button_background"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz p1, :cond_2

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->mSUWNextBtn:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0807c2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->mSUWNextText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->mSUWNextBtnImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->mSUWOpenBtnImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->mSUWNextText:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->mSUWNextBtnImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->mSUWOpenBtnImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->mIsEnable:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->finish()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->mScrollView:Lcom/samsung/android/settings/widget/BottomScrollView;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/BottomScrollView;->fullScroll(I)Z

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->finish()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0a0870 -> :sswitch_0
        0x7f0a0875 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->hide()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/android/setupwizardlib/util/SystemBarHelper;->hideSystemBars(Landroid/view/Window;)V

    const v1, 0x7f0d015e

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->initView()V

    return-void
.end method
