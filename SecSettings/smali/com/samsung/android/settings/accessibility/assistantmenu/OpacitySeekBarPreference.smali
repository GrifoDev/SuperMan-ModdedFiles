.class public Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;
.super Landroid/support/v7/preference/Preference;
.source "OpacitySeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field private final ALPHA_40:I

.field private final ALPHA_FULL:I

.field private final TAG:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mEnable:Z

.field private mIsFocusable:Z

.field mIsLongkeyProcessing:Z

.field private mMinusOpacity:Landroid/widget/ImageView;

.field private mPlusOpacity:Landroid/widget/ImageView;

.field private mSeekBar:Lcom/samsung/android/settings/accessibility/assistantmenu/CenterMarkerSeekBar;

.field private mTitleOpacity:Landroid/widget/TextView;

.field private progress:I


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;)Lcom/samsung/android/settings/accessibility/assistantmenu/CenterMarkerSeekBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->mSeekBar:Lcom/samsung/android/settings/accessibility/assistantmenu/CenterMarkerSeekBar;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string/jumbo v0, "OpacitySeekBar"

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->TAG:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->mIsFocusable:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->mIsLongkeyProcessing:Z

    const/16 v0, 0xff

    iput v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->ALPHA_FULL:I

    const/16 v0, 0x66

    iput v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->ALPHA_40:I

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->mContext:Landroid/content/Context;

    const v0, 0x7f0d022b

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "OpacitySeekBar"

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->TAG:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->mIsFocusable:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->mIsLongkeyProcessing:Z

    const/16 v0, 0xff

    iput v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->ALPHA_FULL:I

    const/16 v0, 0x66

    iput v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->ALPHA_40:I

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->mContext:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->mEnable:Z

    const v0, 0x7f0d022b

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public getOpacityLevel()I
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "am_alpha"

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 7

    const/16 v6, 0xff

    const/16 v5, 0x66

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v1, 0x7f0a05f4

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/accessibility/assistantmenu/CenterMarkerSeekBar;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->mSeekBar:Lcom/samsung/android/settings/accessibility/assistantmenu/CenterMarkerSeekBar;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->mSeekBar:Lcom/samsung/android/settings/accessibility/assistantmenu/CenterMarkerSeekBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->getOpacityLevel()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->progress:I

    const v1, 0x7f0a05f5

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->mTitleOpacity:Landroid/widget/TextView;

    const v1, 0x7f0a05f3

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->mPlusOpacity:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->mPlusOpacity:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->semSetHoverPopupType(I)V

    const v1, 0x7f0a05f2

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->mMinusOpacity:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->mMinusOpacity:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->semSetHoverPopupType(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->mPlusOpacity:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->mMinusOpacity:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->mPlusOpacity:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->mMinusOpacity:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->mPlusOpacity:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->mMinusOpacity:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->mSeekBar:Lcom/samsung/android/settings/accessibility/assistantmenu/CenterMarkerSeekBar;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/accessibility/assistantmenu/CenterMarkerSeekBar;->incrementProgressBy(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->mSeekBar:Lcom/samsung/android/settings/accessibility/assistantmenu/CenterMarkerSeekBar;

    const/4 v4, 0x7

    invoke-virtual {v1, v4}, Lcom/samsung/android/settings/accessibility/assistantmenu/CenterMarkerSeekBar;->setMax(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->mSeekBar:Lcom/samsung/android/settings/accessibility/assistantmenu/CenterMarkerSeekBar;

    invoke-virtual {v1, p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/CenterMarkerSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->mSeekBar:Lcom/samsung/android/settings/accessibility/assistantmenu/CenterMarkerSeekBar;

    iget v4, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->progress:I

    invoke-virtual {v1, v4}, Lcom/samsung/android/settings/accessibility/assistantmenu/CenterMarkerSeekBar;->setProgress(I)V

    iget v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->progress:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->setOpacityLevel(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "assistant_menu"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->mEnable:Z

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->mSeekBar:Lcom/samsung/android/settings/accessibility/assistantmenu/CenterMarkerSeekBar;

    iget-boolean v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->mEnable:Z

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/accessibility/assistantmenu/CenterMarkerSeekBar;->setEnableColor(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->mSeekBar:Lcom/samsung/android/settings/accessibility/assistantmenu/CenterMarkerSeekBar;

    iget-boolean v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->mEnable:Z

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/accessibility/assistantmenu/CenterMarkerSeekBar;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->mPlusOpacity:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->mEnable:Z

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->mMinusOpacity:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->mEnable:Z

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->mTitleOpacity:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->mEnable:Z

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-boolean v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->mEnable:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->mPlusOpacity:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageAlpha(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->mMinusOpacity:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageAlpha(I)V

    :goto_1
    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->mPlusOpacity:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageAlpha(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->mMinusOpacity:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageAlpha(I)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->getOpacityLevel()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->progress:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->progress:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->progress:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->setOpacityLevel(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->mSeekBar:Lcom/samsung/android/settings/accessibility/assistantmenu/CenterMarkerSeekBar;

    iget v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->progress:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessibility/assistantmenu/CenterMarkerSeekBar;->setProgress(I)V

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->progress:I

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->progress:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->setOpacityLevel(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->mSeekBar:Lcom/samsung/android/settings/accessibility/assistantmenu/CenterMarkerSeekBar;

    iget v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->progress:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessibility/assistantmenu/CenterMarkerSeekBar;->setProgress(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a05f2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->getOpacityLevel()I

    move-result v0

    packed-switch p2, :pswitch_data_0

    return v3

    :pswitch_0
    if-lez v0, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->setOpacityLevel(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->mSeekBar:Lcom/samsung/android/settings/accessibility/assistantmenu/CenterMarkerSeekBar;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/accessibility/assistantmenu/CenterMarkerSeekBar;->setProgress(I)V

    :cond_0
    :goto_0
    return v3

    :pswitch_1
    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->setOpacityLevel(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->mSeekBar:Lcom/samsung/android/settings/accessibility/assistantmenu/CenterMarkerSeekBar;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/accessibility/assistantmenu/CenterMarkerSeekBar;->setProgress(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->getOpacityLevel()I

    move-result v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->mIsLongkeyProcessing:Z

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return v3

    :pswitch_0
    if-lez v0, :cond_0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference$1;-><init>(Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference$2;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference$2;-><init>(Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a05f2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->setOpacityLevel(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->mSeekBar:Lcom/samsung/android/settings/accessibility/assistantmenu/CenterMarkerSeekBar;

    invoke-virtual {v0, p2}, Lcom/samsung/android/settings/accessibility/assistantmenu/CenterMarkerSeekBar;->setProgress(I)V

    const-string/jumbo v0, "OpacitySeekBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Scale value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "OpacitySeekBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MagnifierImageZoom refreshImageView : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return v1

    :pswitch_0
    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->mIsLongkeyProcessing:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setEnabledZoomButton(Z)V
    .locals 5

    const/16 v4, 0xff

    const/16 v3, 0x66

    const-string/jumbo v0, "OpacitySeekBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "OpacitySeekBarPreference setEnabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->mTitleOpacity:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->mPlusOpacity:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "OpacitySeekBar"

    const-string/jumbo v1, "OpacitySeekBarPreference is not binded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->mMinusOpacity:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->mEnable:Z

    iget-boolean v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->mEnable:Z

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->setEnabled(Z)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->mEnable:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->mPlusOpacity:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageAlpha(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->mMinusOpacity:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageAlpha(I)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->mPlusOpacity:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageAlpha(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->mMinusOpacity:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageAlpha(I)V

    goto :goto_0
.end method

.method public setOpacityLevel(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "am_alpha"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public updateOpacitySeekbar()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->mSeekBar:Lcom/samsung/android/settings/accessibility/assistantmenu/CenterMarkerSeekBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->mSeekBar:Lcom/samsung/android/settings/accessibility/assistantmenu/CenterMarkerSeekBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->getOpacityLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessibility/assistantmenu/CenterMarkerSeekBar;->setProgress(I)V

    :cond_0
    return-void
.end method
