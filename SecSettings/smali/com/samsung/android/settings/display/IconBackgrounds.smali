.class public Lcom/samsung/android/settings/display/IconBackgrounds;
.super Lcom/android/settings/core/InstrumentedActivity;
.source "IconBackgrounds.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/display/IconBackgrounds$1;
    }
.end annotation


# static fields
.field private static sIconBackgrounds:I

.field private static sIconBackgroundsButton:I

.field private static sIconBackgroundsCancel:I

.field private static sIconBackgroundsDone:I


# instance fields
.field private mCancelButton:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

.field private mIconBackgroundsLayout:Landroid/widget/LinearLayout;

.field private mIconBackgroundsRadio:Landroid/widget/RadioButton;

.field private mIconOnlyLayout:Landroid/widget/LinearLayout;

.field private mIconOnlyRadio:Landroid/widget/RadioButton;

.field private mIsEnabledShowBtnBg:Z

.field private mIsIconBackgrounds:Z

.field private mPreviewImage:Landroid/widget/ImageView;

.field private mSaveButton:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/display/IconBackgrounds;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mIconBackgroundsRadio:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/display/IconBackgrounds;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mIconOnlyRadio:Landroid/widget/RadioButton;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    iput-boolean v1, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mIsEnabledShowBtnBg:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mIsIconBackgrounds:Z

    new-instance v0, Lcom/samsung/android/settings/display/IconBackgrounds$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/IconBackgrounds$1;-><init>(Lcom/samsung/android/settings/display/IconBackgrounds;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1071

    sput v0, Lcom/samsung/android/settings/display/IconBackgrounds;->sIconBackgrounds:I

    sget v0, Lcom/samsung/android/settings/display/IconBackgrounds;->sIconBackgrounds:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/IconBackgrounds;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0279

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/display/IconBackgrounds;->sIconBackgroundsButton:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/IconBackgrounds;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b027a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/display/IconBackgrounds;->sIconBackgroundsCancel:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/IconBackgrounds;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b027b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/display/IconBackgrounds;->sIconBackgroundsDone:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    const-string/jumbo v0, "IconBackgrounds"

    const-string/jumbo v1, "onClick icon_backgrounds_layout"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mIconBackgroundsRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mIconOnlyRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mPreviewImage:Landroid/widget/ImageView;

    const v1, 0x7f0801d3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    sget v0, Lcom/samsung/android/settings/display/IconBackgrounds;->sIconBackgroundsButton:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mPreviewImage:Landroid/widget/ImageView;

    const v1, 0x7f0801d5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :sswitch_1
    const-string/jumbo v0, "IconBackgrounds"

    const-string/jumbo v1, "onClick icon_only_layout"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mIconOnlyRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mIconBackgroundsRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mPreviewImage:Landroid/widget/ImageView;

    const v1, 0x7f0801d4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    sget v0, Lcom/samsung/android/settings/display/IconBackgrounds;->sIconBackgroundsButton:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mPreviewImage:Landroid/widget/ImageView;

    const v1, 0x7f0801d7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :sswitch_2
    const-string/jumbo v0, "IconBackgrounds"

    const-string/jumbo v1, "onClick cancel_button"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/samsung/android/settings/display/IconBackgrounds;->sIconBackgroundsCancel:I

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/IconBackgrounds;->finish()V

    goto :goto_0

    :sswitch_3
    const-string/jumbo v0, "IconBackgrounds"

    const-string/jumbo v1, "onClick save_button"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/IconBackgrounds;->saveCurrentSetting()V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a0152 -> :sswitch_2
        0x7f0a03fb -> :sswitch_0
        0x7f0a0403 -> :sswitch_1
        0x7f0a073c -> :sswitch_3
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/IconBackgrounds;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const v6, 0x7f12053b

    const v5, 0x7f080782

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "IconBackgrounds"

    const-string/jumbo v3, "KKK onCreate"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/IconBackgrounds;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mContext:Landroid/content/Context;

    const v0, 0x7f0d0146

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/IconBackgrounds;->setContentView(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/IconBackgrounds;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "show_button_background"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mIsEnabledShowBtnBg:Z

    const v0, 0x7f0a03fb

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/IconBackgrounds;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mIconBackgroundsLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0403

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/IconBackgrounds;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mIconOnlyLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0675

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/IconBackgrounds;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mPreviewImage:Landroid/widget/ImageView;

    const v0, 0x7f0a03fc

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/IconBackgrounds;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mIconBackgroundsRadio:Landroid/widget/RadioButton;

    const v0, 0x7f0a0404

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/IconBackgrounds;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mIconOnlyRadio:Landroid/widget/RadioButton;

    const v0, 0x7f0a0152

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/IconBackgrounds;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mCancelButton:Landroid/widget/TextView;

    const v0, 0x7f0a073c

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/IconBackgrounds;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mSaveButton:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mIconBackgroundsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mIconOnlyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mCancelButton:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f1205f6

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/display/IconBackgrounds;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/display/IconBackgrounds;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mSaveButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mSaveButton:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f1205f9

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/display/IconBackgrounds;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/display/IconBackgrounds;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mCancelButton:Landroid/widget/TextView;

    invoke-static {v0, v3}, Lcom/android/settings/Utils;->setMaxFontScale(Landroid/content/Context;Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mSaveButton:Landroid/widget/TextView;

    invoke-static {v0, v3}, Lcom/android/settings/Utils;->setMaxFontScale(Landroid/content/Context;Landroid/widget/TextView;)V

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mIsEnabledShowBtnBg:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mSaveButton:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/IconBackgrounds;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "tap_to_icon"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v2, v1

    :cond_2
    iput-boolean v2, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mIsIconBackgrounds:Z

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mIsIconBackgrounds:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mIconBackgroundsRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mPreviewImage:Landroid/widget/ImageView;

    const v1, 0x7f0801d3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void

    :cond_3
    move v0, v2

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mPreviewImage:Landroid/widget/ImageView;

    const v1, 0x7f0801d5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mIconOnlyRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mPreviewImage:Landroid/widget/ImageView;

    const v1, 0x7f0801d4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mPreviewImage:Landroid/widget/ImageView;

    const v1, 0x7f0801d7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedActivity;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "IconFrame"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedActivity;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/IconBackgrounds;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/IconBackgrounds;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "IconFrame"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public saveCurrentSetting()V
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v2, "IconBackgrounds"

    const-string/jumbo v3, "saveCurrentSetting"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/IconBackgrounds;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mIconBackgroundsRadio:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/IconBackgrounds;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "tap_to_icon"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_1
    iget-boolean v2, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mIsIconBackgrounds:Z

    if-eq v1, v2, :cond_3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.settings.ICON_BACKGROUNDS_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/settings/display/IconBackgrounds;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    :goto_2
    sget v2, Lcom/samsung/android/settings/display/IconBackgrounds;->sIconBackgroundsDone:I

    invoke-static {p0, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/IconBackgrounds;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "tap_to_icon"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/IconBackgrounds;->finish()V

    goto :goto_2
.end method
