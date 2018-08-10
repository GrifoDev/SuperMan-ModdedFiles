.class public Lcom/android/systemui/settings/ToggleSliderView;
.super Landroid/widget/RelativeLayout;
.source "ToggleSliderView.java"

# interfaces
.implements Lcom/android/systemui/settings/ToggleSlider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/settings/ToggleSliderView$1;,
        Lcom/android/systemui/settings/ToggleSliderView$2;,
        Lcom/android/systemui/settings/ToggleSliderView$ToggleTouchListener;
    }
.end annotation


# instance fields
.field private final mCheckListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mContext:Landroid/content/Context;

.field private mDualSeekBarBackgroundColor:I

.field private mDualSeekBarForegroundColor:I

.field public mDualSeekBarThreshold:I

.field private mEyeStrainAlertDialog:Landroid/app/AlertDialog;

.field private mHBMTextView:Landroid/widget/TextView;

.field private mIsHighBrightnessMode:Ljava/lang/Boolean;

.field private mIsMirror:Ljava/lang/Boolean;

.field private mLabel:Landroid/widget/TextView;

.field private mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;

.field private mMirror:Lcom/android/systemui/settings/ToggleSliderView;

.field private mMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

.field mOutdoorMode:Z

.field private final mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

.field mSliderEnabled:Z

.field private mStrainBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mToggle:Landroid/widget/CompoundButton;

.field private mTracking:Z

.field showEyeStrainDialog:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/settings/ToggleSliderView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/settings/ToggleSliderView;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mEyeStrainAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/settings/ToggleSliderView;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mIsHighBrightnessMode:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/settings/ToggleSliderView;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mIsMirror:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/settings/ToggleSlider$Listener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/settings/ToggleSliderView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/settings/ToggleSeekBar;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/settings/ToggleSliderView;)Landroid/widget/CompoundButton;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mToggle:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/settings/ToggleSliderView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mTracking:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/settings/ToggleSliderView;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mEyeStrainAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/settings/ToggleSliderView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mTracking:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/settings/ToggleSliderView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/settings/ToggleSliderView;->dismissStrainAlertDialog()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/settings/ToggleSliderView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/settings/ToggleSliderView;->showStrainAlertDialog()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/settings/ToggleSliderView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/settings/ToggleSliderView;->updateHighBrightnessModeVisibility(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/settings/ToggleSliderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/settings/ToggleSliderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/settings/ToggleSliderView;->mIsMirror:Ljava/lang/Boolean;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/settings/ToggleSliderView;->mIsHighBrightnessMode:Ljava/lang/Boolean;

    iput-boolean v5, p0, Lcom/android/systemui/settings/ToggleSliderView;->showEyeStrainDialog:Z

    new-instance v2, Lcom/android/systemui/settings/ToggleSliderView$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/settings/ToggleSliderView$1;-><init>(Lcom/android/systemui/settings/ToggleSliderView;)V

    iput-object v2, p0, Lcom/android/systemui/settings/ToggleSliderView;->mCheckListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v2, Lcom/android/systemui/settings/ToggleSliderView$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/settings/ToggleSliderView$2;-><init>(Lcom/android/systemui/settings/ToggleSliderView;)V

    iput-object v2, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mContext:Landroid/content/Context;

    const v2, 0x7f0d01c0

    invoke-static {p1, v2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/R$styleable;->ToggleSliderView:[I

    invoke-virtual {p1, p2, v2, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const v2, 0x7f0a053c

    invoke-virtual {p0, v2}, Lcom/android/systemui/settings/ToggleSliderView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CompoundButton;

    iput-object v2, p0, Lcom/android/systemui/settings/ToggleSliderView;->mToggle:Landroid/widget/CompoundButton;

    iget-object v2, p0, Lcom/android/systemui/settings/ToggleSliderView;->mToggle:Landroid/widget/CompoundButton;

    iget-object v3, p0, Lcom/android/systemui/settings/ToggleSliderView;->mCheckListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v2, 0x7f0a04ce

    invoke-virtual {p0, v2}, Lcom/android/systemui/settings/ToggleSliderView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/settings/ToggleSeekBar;

    iput-object v2, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    iget-object v2, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    iget-object v3, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v2, v3}, Lcom/android/systemui/settings/ToggleSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v2, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    new-instance v3, Lcom/android/systemui/settings/ToggleSliderView$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/settings/ToggleSliderView$3;-><init>(Lcom/android/systemui/settings/ToggleSliderView;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/settings/ToggleSeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iput-boolean v5, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSliderEnabled:Z

    const v2, 0x7f0a02cd

    invoke-virtual {p0, v2}, Lcom/android/systemui/settings/ToggleSliderView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/systemui/settings/ToggleSliderView;->mLabel:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/settings/ToggleSliderView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {p0}, Lcom/android/systemui/settings/ToggleSliderView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/settings/ToggleSeekBar;->setAccessibilityLabel(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lcom/android/systemui/settings/ToggleSliderView;->updateResources()V

    return-void
.end method

.method private dismissStrainAlertDialog()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mEyeStrainAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mEyeStrainAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mEyeStrainAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private getColorStateListfromColor(I)Landroid/content/res/ColorStateList;
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-array v0, v2, [[I

    new-array v1, v3, [I

    aput-object v1, v0, v3

    new-instance v1, Landroid/content/res/ColorStateList;

    new-array v2, v2, [I

    aput p1, v2, v3

    invoke-direct {v1, v0, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v1
.end method

.method private showStrainAlertDialog()V
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSliderView;->mEyeStrainAlertDialog:Landroid/app/AlertDialog;

    if-nez v4, :cond_0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSliderView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSliderView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120875

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSliderView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120c16

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/settings/ToggleSliderView$5;

    invoke-direct {v4, p0}, Lcom/android/systemui/settings/ToggleSliderView$5;-><init>(Lcom/android/systemui/settings/ToggleSliderView;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSliderView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1207f4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/android/systemui/settings/ToggleSliderView$6;

    invoke-direct {v4, p0}, Lcom/android/systemui/settings/ToggleSliderView$6;-><init>(Lcom/android/systemui/settings/ToggleSliderView;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/settings/ToggleSliderView;->mEyeStrainAlertDialog:Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSliderView;->mEyeStrainAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d9

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSliderView;->mEyeStrainAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method

.method private updateHighBrightnessModeVisibility(I)V
    .locals 3

    const-string/jumbo v0, "ToggleSlider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateHighBrightnessModeVisibility(): visibility = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mHBMTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mHBMTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    iget-object v0, v0, Lcom/android/systemui/settings/ToggleSliderView;->mHBMTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    iget-object v0, v0, Lcom/android/systemui/settings/ToggleSliderView;->mHBMTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private updateQSColoringResources()V
    .locals 11

    const v10, 0x102000f

    const v9, 0x102000d

    const/high16 v8, 0x1020000

    const-class v6, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v6}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/coloring/QSColoringServiceManager;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringColor(I)I

    move-result v2

    const-class v6, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v6}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/coloring/QSColoringServiceManager;

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringColor(I)I

    move-result v1

    iget-object v6, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v6}, Lcom/android/systemui/settings/ToggleSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v3, v9}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v10}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v8}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v2, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v1, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v9, v4}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    invoke-virtual {v3, v10, v5}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    invoke-virtual {v3, v8, v0}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    iget-object v6, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v6}, Lcom/android/systemui/settings/ToggleSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v2, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v6, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v6, v2}, Lcom/android/systemui/settings/ToggleSeekBar;->setFluidColor(I)V

    iget-object v6, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-direct {p0, v2}, Lcom/android/systemui/settings/ToggleSliderView;->getColorStateListfromColor(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/systemui/settings/ToggleSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    iput v2, p0, Lcom/android/systemui/settings/ToggleSliderView;->mDualSeekBarForegroundColor:I

    iput v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mDualSeekBarBackgroundColor:I

    invoke-virtual {p0}, Lcom/android/systemui/settings/ToggleSliderView;->setDualColorSlider()V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSliderEnabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-virtual {v1}, Lcom/android/systemui/settings/ToggleSliderView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    iget-object v1, v1, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    iget-object v1, v1, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v1, v0}, Lcom/android/systemui/settings/ToggleSeekBar;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :cond_2
    return v2
.end method

.method public getMirrorView()Lcom/android/systemui/settings/ToggleSliderView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    return-object v0
.end method

.method public initResources()V
    .locals 6

    const v5, 0x7f06003d

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    iget-object v2, p0, Lcom/android/systemui/settings/ToggleSliderView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080794

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/settings/ToggleSeekBar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    iget-object v2, p0, Lcom/android/systemui/settings/ToggleSliderView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080793

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/settings/ToggleSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    const v2, 0x7f060041

    invoke-virtual {v0, v2, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/systemui/settings/ToggleSliderView;->getColorStateListfromColor(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/settings/ToggleSeekBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v0, v5, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/systemui/settings/ToggleSliderView;->getColorStateListfromColor(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/settings/ToggleSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    const v2, 0x7f06003e

    invoke-virtual {v0, v2, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/systemui/settings/ToggleSliderView;->getColorStateListfromColor(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/settings/ToggleSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/settings/ToggleSeekBar;->semSetFluidEnabled(Z)V

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v0, v5, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/settings/ToggleSeekBar;->setFluidColor(I)V

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    iget-object v2, p0, Lcom/android/systemui/settings/ToggleSliderView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0804cd

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/settings/ToggleSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f060043

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mDualSeekBarBackgroundColor:I

    const v1, 0x7f060044

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mDualSeekBarForegroundColor:I

    invoke-virtual {p0}, Lcom/android/systemui/settings/ToggleSliderView;->setDualColorSlider()V

    :cond_0
    return-void
.end method

.method public isChecked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 6

    const/4 v4, 0x0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;

    invoke-interface {v0, p0}, Lcom/android/systemui/settings/ToggleSlider$Listener;->onInit(Lcom/android/systemui/settings/ToggleSlider;)V

    :cond_0
    new-instance v0, Lcom/android/systemui/settings/ToggleSliderView$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/ToggleSliderView$4;-><init>(Lcom/android/systemui/settings/ToggleSliderView;)V

    iput-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mStrainBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mStrainBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mStrainBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mStrainBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/android/systemui/settings/ToggleSliderView;->mStrainBroadcastReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void
.end method

.method public setDualColorSlider()V
    .locals 6

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v1}, Lcom/android/systemui/settings/ToggleSeekBar;->getMax()I

    move-result v0

    int-to-double v2, v0

    const-wide v4, 0x4056800000000000L    # 90.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    iput v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mDualSeekBarThreshold:I

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    iget v2, p0, Lcom/android/systemui/settings/ToggleSliderView;->mDualSeekBarThreshold:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/settings/ToggleSeekBar;->semSetOverlapPointForDualColor(I)V

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    iget v2, p0, Lcom/android/systemui/settings/ToggleSliderView;->mDualSeekBarBackgroundColor:I

    iget v3, p0, Lcom/android/systemui/settings/ToggleSliderView;->mDualSeekBarForegroundColor:I

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/settings/ToggleSeekBar;->setDualModeOverlapColor(II)V

    :cond_0
    return-void
.end method

.method public setMax(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/settings/ToggleSeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/settings/ToggleSliderView;->setMax(I)V

    :cond_0
    return-void
.end method

.method public setMirror(Lcom/android/systemui/settings/ToggleSliderView;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/settings/ToggleSliderView;->mIsMirror:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSliderView;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v1}, Lcom/android/systemui/settings/ToggleSeekBar;->getMax()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSliderView;->setMax(I)V

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v1}, Lcom/android/systemui/settings/ToggleSeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSliderView;->setValue(I)V

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-virtual {v0}, Lcom/android/systemui/settings/ToggleSliderView;->updateResources()V

    :cond_0
    return-void
.end method

.method public setMirrorController(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    return-void
.end method

.method public setOnChangedListener(Lcom/android/systemui/settings/ToggleSlider$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;

    return-void
.end method

.method public setSliderEnabled(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mOutdoorMode:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSliderEnabled:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSliderEnabled:Z

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    iget-boolean v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSliderEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/settings/ToggleSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    iget-boolean v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSliderEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSeekBar;->setEnabled(Z)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setValue(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/settings/ToggleSeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/settings/ToggleSliderView;->setValue(I)V

    :cond_0
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_PERSONAL_AUTO_BRIGHTNESS_CONTROL:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v0}, Lcom/android/systemui/settings/ToggleSeekBar;->getMax()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mIsHighBrightnessMode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/systemui/settings/ToggleSliderView;->updateHighBrightnessModeVisibility(I)V

    :cond_1
    return-void
.end method

.method public updateHighBrightnessMode(I)V
    .locals 4

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mIsHighBrightnessMode:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mIsHighBrightnessMode:Ljava/lang/Boolean;

    const-string/jumbo v1, "ToggleSlider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateHighBrightnessMode(): mIsHighBrightnessMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/settings/ToggleSliderView;->mIsHighBrightnessMode:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mIsHighBrightnessMode:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/android/systemui/settings/ToggleSliderView;->updateHighBrightnessModeVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateOutdoorMode(I)V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mOutdoorMode:Z

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mOutdoorMode:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSliderEnabled:Z

    iget-object v2, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    iget-boolean v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSliderEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/systemui/settings/ToggleSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    iget-boolean v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSliderEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSeekBar;->setEnabled(Z)V

    :cond_1
    return-void

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public updateResources()V
    .locals 1

    const-class v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-virtual {v0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->isQSColoringEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/settings/ToggleSliderView;->updateQSColoringResources()V

    :goto_0
    const v0, 0x7f0a04cf

    invoke-virtual {p0, v0}, Lcom/android/systemui/settings/ToggleSliderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mHBMTextView:Landroid/widget/TextView;

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/settings/ToggleSliderView;->initResources()V

    goto :goto_0
.end method

.method public updateStrainAlertDialog(I)V
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->showEyeStrainDialog:Z

    return-void
.end method
