.class public Lcom/android/systemui/volume/VolumeDialogImpl;
.super Ljava/lang/Object;
.source "VolumeDialogImpl.java"

# interfaces
.implements Lcom/android/systemui/plugins/VolumeDialog;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/VolumeDialogImpl$1;,
        Lcom/android/systemui/volume/VolumeDialogImpl$2;,
        Lcom/android/systemui/volume/VolumeDialogImpl$3;,
        Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;,
        Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;,
        Lcom/android/systemui/volume/VolumeDialogImpl$H;,
        Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;,
        Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAccessibility:Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;

.field private final mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

.field private final mActiveSliderTint:Landroid/content/res/ColorStateList;

.field private mActiveStream:I

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mAutomute:Z

.field private mCallback:Lcom/android/systemui/plugins/VolumeDialog$Callback;

.field private final mClickExpand:Landroid/view/View$OnClickListener;

.field private mCollapseTime:J

.field private mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

.field private final mContext:Landroid/content/Context;

.field private mController:Lcom/android/systemui/plugins/VolumeDialogController;

.field private final mControllerCallbackH:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

.field private mDensity:I

.field private mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

.field private mDialogContentView:Landroid/view/ViewGroup;

.field private mDialogRowsView:Landroid/view/ViewGroup;

.field private mDialogView:Landroid/view/ViewGroup;

.field private final mDynamic:Landroid/util/SparseBooleanArray;

.field private mExpandButton:Landroid/widget/ImageButton;

.field private mExpandButtonAnimationDuration:I

.field private mExpandButtonAnimationRunning:Z

.field private mExpanded:Z

.field private final mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

.field private mHovering:Z

.field private final mInactiveSliderTint:Landroid/content/res/ColorStateList;

.field private final mKeyguard:Landroid/app/KeyguardManager;

.field private mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

.field private mPendingRecheckAll:Z

.field private mPendingStateChanged:Z

.field private final mRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;",
            ">;"
        }
    .end annotation
.end field

.field private mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

.field private final mSafetyWarningLock:Ljava/lang/Object;

.field private mShowA11yStream:Z

.field private mShowFullZen:Z

.field private mShowing:Z

.field private mSilentMode:Z

.field private mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

.field private mWindow:Landroid/view/Window;

.field private mWindowType:I

.field private mZenFooter:Lcom/android/systemui/volume/ZenFooter;

.field private final mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

.field private mZenPanel:Lcom/android/systemui/tuner/TunerZenModePanel;

.field private final mZenPanelCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/volume/VolumeDialogImpl;)Landroid/view/accessibility/AccessibilityManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/systemui/volume/VolumeDialogImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpanded:Z

    return v0
.end method

.method static synthetic -get11(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/volume/VolumeDialogImpl$H;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/volume/VolumeDialogMotion;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/systemui/volume/VolumeDialogImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mPendingRecheckAll:Z

    return v0
.end method

.method static synthetic -get14(Lcom/android/systemui/volume/VolumeDialogImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mPendingStateChanged:Z

    return v0
.end method

.method static synthetic -get15(Lcom/android/systemui/volume/VolumeDialogImpl;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarningLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/systemui/volume/VolumeDialogImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    return v0
.end method

.method static synthetic -get17(Lcom/android/systemui/volume/VolumeDialogImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSilentMode:Z

    return v0
.end method

.method static synthetic -get18(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController$State;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    return-object v0
.end method

.method static synthetic -get19(Lcom/android/systemui/volume/VolumeDialogImpl;)Landroid/view/Window;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialog$Callback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mCallback:Lcom/android/systemui/plugins/VolumeDialog$Callback;

    return-object v0
.end method

.method static synthetic -get20(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/volume/ZenFooter;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mZenFooter:Lcom/android/systemui/volume/ZenFooter;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/volume/ConfigurableTexts;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/volume/VolumeDialogImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/volume/VolumeDialogImpl;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDensity:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/volume/VolumeDialogImpl;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/volume/VolumeDialogImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpandButtonAnimationRunning:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/volume/VolumeDialogImpl;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDensity:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/volume/VolumeDialogImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpandButtonAnimationRunning:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/volume/VolumeDialogImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHovering:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/volume/VolumeDialogImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mPendingRecheckAll:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/systemui/volume/VolumeDialogImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mPendingStateChanged:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/SafetyWarningDialog;)Lcom/android/systemui/volume/SafetyWarningDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    return-object p1
.end method

.method static synthetic -set6(Lcom/android/systemui/volume/VolumeDialogImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowA11yStream:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getActiveRow()Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/widget/SeekBar;I)I
    .locals 1

    invoke-static {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->getImpliedLevel(Landroid/widget/SeekBar;I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/systemui/volume/VolumeDialogImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateExpandButtonH()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/systemui/volume/VolumeDialogImpl;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateExpandedH(ZZ)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/systemui/volume/VolumeDialogImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateFooterH()V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateRowsH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/systemui/volume/VolumeDialogImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateWindowWidthH()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/systemui/volume/VolumeDialogImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->initDialog()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/plugins/VolumeDialogController$State;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->onStateChangedH(Lcom/android/systemui/plugins/VolumeDialogController$State;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->recheckH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/systemui/volume/VolumeDialogImpl;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogImpl;->setStreamImportantH(IZ)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/systemui/volume/VolumeDialogImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->showH(I)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/systemui/volume/VolumeDialogImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->showSafetyWarningH(I)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/systemui/volume/VolumeDialogImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateDialogBottomMarginH()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/Util;->logTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method private addExistingRows()V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v2

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get7(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v3

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get6(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v4

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get9(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Z

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/volume/VolumeDialogImpl;->initRow(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;IIIZ)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogRowsView:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addRow(IIIZ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZZ)V

    return-void
.end method

.method private addRow(IIIZZ)V
    .locals 9

    const/4 v8, 0x1

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/volume/VolumeDialogImpl;->initRow(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;IIIZ)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowA11yStream:Z

    if-eqz v0, :cond_0

    if-eqz p5, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v8, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogRowsView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-le v7, v8, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogRowsView:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v2

    add-int/lit8 v3, v7, -0x2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    add-int/lit8 v2, v6, -0x2

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogRowsView:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private computeTimeoutH()I
    .locals 2

    const/16 v1, 0x1388

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccessibility:Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;->-get0(Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4e20

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHovering:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x3e80

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpanded:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpandButtonAnimationRunning:Z

    if-eqz v0, :cond_4

    :cond_3
    return v1

    :cond_4
    iget v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActiveStream:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    const/16 v0, 0x5dc

    return v0

    :cond_5
    const/16 v0, 0xbb8

    return v0
.end method

.method private findRow(I)Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v0

    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private getActiveRow()Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v2

    iget v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActiveStream:I

    if-ne v2, v3, :cond_0

    return-object v0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    return-object v2
.end method

.method private getConservativeCollapseDuration()J
    .locals 2

    iget v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpandButtonAnimationDuration:I

    mul-int/lit8 v0, v0, 0x3

    int-to-long v0, v0

    return-wide v0
.end method

.method private static getImpliedLevel(Landroid/widget/SeekBar;I)I
    .locals 5

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    div-int/lit8 v3, v1, 0x64

    add-int/lit8 v2, v3, -0x1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-ne p1, v1, :cond_1

    div-int/lit8 v0, v1, 0x64

    goto :goto_0

    :cond_1
    int-to-float v3, p1

    int-to-float v4, v1

    div-float/2addr v3, v4

    int-to-float v4, v2

    mul-float/2addr v3, v4

    float-to-int v3, v3

    add-int/lit8 v0, v3, 0x1

    goto :goto_0
.end method

.method private getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;
    .locals 4

    iget-object v1, p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->remoteLabel:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->remoteLabel:Ljava/lang/String;

    return-object v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    iget v2, p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->name:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can\'t find translation for stream "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, ""

    return-object v1
.end method

.method private getTransistion()Landroid/transition/AutoTransition;
    .locals 4

    new-instance v0, Landroid/transition/AutoTransition;

    invoke-direct {v0}, Landroid/transition/AutoTransition;-><init>()V

    iget v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpandButtonAnimationDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/transition/AutoTransition;->setDuration(J)Landroid/transition/TransitionSet;

    sget-object v1, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/transition/AutoTransition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/TransitionSet;

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$12;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$12;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    invoke-virtual {v0, v1}, Landroid/transition/AutoTransition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/TransitionSet;

    return-object v0
.end method

.method private hasTouchFeature()Z
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "android.hardware.touchscreen"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private initDialog()V
    .locals 12

    const v11, 0x7f080332

    const/16 v2, 0x30

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    new-instance v0, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    new-instance v0, Lcom/android/systemui/volume/ConfigurableTexts;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/ConfigurableTexts;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    iput-boolean v8, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHovering:Z

    iput-boolean v8, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v9}, Landroid/view/Window;->requestFeature(I)Z

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v10}, Landroid/view/Window;->clearFlags(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    const v1, 0x10c0128

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    invoke-virtual {v0, v9}, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindowType:I

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v0, -0x3

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->format:I

    const-class v0, Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v0, 0x31

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v0, 0x7f07070b

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v2, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v0, -0x1

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    const v1, 0x7f0d01d8

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->setContentView(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    const v1, 0x7f0a0575

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$4;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    const v1, 0x7f0a0576

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogContentView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogContentView:Landroid/view/ViewGroup;

    const v1, 0x7f0a057b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogRowsView:Landroid/view/ViewGroup;

    iput-boolean v8, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpanded:Z

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    const v1, 0x7f0a057f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpandButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpandButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mClickExpand:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpandButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/AudioSystem;->isSingleVolume(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateWindowWidthH()V

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateExpandButtonH()V

    new-instance v0, Lcom/android/systemui/volume/VolumeDialogMotion;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogContentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpandButton:Landroid/widget/ImageButton;

    new-instance v5, Lcom/android/systemui/volume/VolumeDialogImpl$5;

    invoke-direct {v5, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$5;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/volume/VolumeDialogMotion;-><init>(Landroid/app/Dialog;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;Lcom/android/systemui/volume/VolumeDialogMotion$Callback;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    const v1, 0x7f08033a

    const v2, 0x7f08033d

    invoke-direct {p0, v0, v1, v2, v9}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZ)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/AudioSystem;->isSingleVolume(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f080340

    const v1, 0x7f080341

    invoke-direct {p0, v10, v0, v1, v9}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZ)V

    const/4 v0, 0x4

    const v1, 0x7f080333

    const v2, 0x7f080334

    invoke-direct {p0, v0, v1, v2, v8}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZ)V

    const v0, 0x7f080346

    const v1, 0x7f080346

    invoke-direct {p0, v8, v0, v1, v8}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZ)V

    const/4 v0, 0x6

    const v1, 0x7f080335

    const v2, 0x7f080335

    invoke-direct {p0, v0, v1, v2, v8}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZ)V

    const v0, 0x7f080344

    const v1, 0x7f080345

    invoke-direct {p0, v9, v0, v1, v8}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZ)V

    const/16 v0, 0xa

    invoke-direct {p0, v0, v11, v11, v9}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZ)V

    :cond_0
    :goto_1
    const v0, 0x7f0b007d

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpandButtonAnimationDuration:I

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    const v1, 0x7f0a0585

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/ZenFooter;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mZenFooter:Lcom/android/systemui/volume/ZenFooter;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mZenFooter:Lcom/android/systemui/volume/ZenFooter;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/ZenFooter;->init(Lcom/android/systemui/statusbar/policy/ZenModeController;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    const v1, 0x7f0a0555

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerZenModePanel;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mZenPanel:Lcom/android/systemui/tuner/TunerZenModePanel;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mZenPanel:Lcom/android/systemui/tuner/TunerZenModePanel;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/tuner/TunerZenModePanel;->init(Lcom/android/systemui/statusbar/policy/ZenModeController;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mZenPanel:Lcom/android/systemui/tuner/TunerZenModePanel;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mZenPanelCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/tuner/TunerZenModePanel;->setCallback(Lcom/android/systemui/volume/ZenModePanel$Callback;)V

    return-void

    :cond_1
    move v0, v8

    goto/16 :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->addExistingRows()V

    goto :goto_1
.end method

.method private initRow(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;IIIZ)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-static {p1, p2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-set14(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)I

    invoke-static {p1, p3}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-set7(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)I

    invoke-static {p1, p4}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-set6(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)I

    invoke-static {p1, p5}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-set9(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Z)Z

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d01dc

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-set17(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Landroid/view/View;)Landroid/view/View;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v0

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0581

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-set4(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Landroid/widget/TextView;)Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get4(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x14

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0583

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    invoke-static {p1, v0}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-set12(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Landroid/widget/SeekBar;)Landroid/widget/SeekBar;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get12(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;

    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-static {p1, v2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-set0(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$6;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl$6;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0582

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-static {p1, v0}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-set5(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get5(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ImageButton;->setImageResource(I)V

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get5(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogImpl$7;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get5(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImportantForAccessibility(I)V

    goto :goto_0
.end method

.method private isAttached()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogContentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onStateChangedH(Lcom/android/systemui/plugins/VolumeDialogController$State;)V
    .locals 11

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogMotion;->isAnimating()Z

    move-result v6

    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onStateChangedH animating="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    if-eqz v6, :cond_1

    iput-boolean v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mPendingStateChanged:Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    const/4 v7, 0x0

    :goto_0
    iget-object v0, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v7, v0, :cond_4

    iget-object v0, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    iget-object v0, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    iget-boolean v0, v10, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->dynamic:Z

    if-nez v0, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->findRow(I)Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    move-result-object v0

    if-nez v0, :cond_2

    const v2, 0x7f08033e

    const v3, 0x7f08033f

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZZ)V

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActiveStream:I

    iget v2, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->activeStream:I

    if-eq v0, v2, :cond_5

    iget v0, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->activeStream:I

    iput v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActiveStream:I

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getActiveRow()Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateRowsH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->rescheduleTimeoutH()V

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-direct {p0, v8}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateVolumeRowH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    goto :goto_2

    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateFooterH()V

    return-void
.end method

.method private recheckH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V
    .locals 5

    if-nez p1, :cond_1

    sget-boolean v2, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "recheckH ALL"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->trimObsoleteH()V

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateVolumeRowH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    goto :goto_0

    :cond_1
    sget-boolean v2, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "recheckH "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateVolumeRowH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    :cond_3
    return-void
.end method

.method private setStreamImportantH(IZ)V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-static {v0, p2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-set9(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Z)Z

    return-void

    :cond_1
    return-void
.end method

.method private shouldBeVisibleH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Z)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowA11yStream:Z

    return v0

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpanded:Z

    if-eqz v1, :cond_3

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    const/4 p2, 0x1

    :cond_2
    :goto_0
    return p2

    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpanded:Z

    if-eqz v1, :cond_4

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get9(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p2, :cond_1

    :cond_4
    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpanded:Z

    if-eqz v1, :cond_2

    move p2, v0

    goto :goto_0
.end method

.method private showH(I)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showH r="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/volume/Events;->DISMISS_REASONS:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    invoke-virtual {v0, v3}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    invoke-virtual {v0, v5}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->rescheduleTimeoutH()V

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iput-boolean v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogMotion;->startShow()V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mKeyguard:Landroid/app/KeyguardManager;

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v4, v1}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v0, v3}, Lcom/android/systemui/plugins/VolumeDialogController;->notifyVisible(Z)V

    return-void
.end method

.method private showSafetyWarningH(I)V
    .locals 5

    const/4 v4, 0x0

    and-int/lit16 v0, p1, 0x401

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogImpl$11;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v3}, Lcom/android/systemui/plugins/VolumeDialogController;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lcom/android/systemui/volume/VolumeDialogImpl$11;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Landroid/content/Context;Landroid/media/AudioManager;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SafetyWarningDialog;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    invoke-direct {p0, v4}, Lcom/android/systemui/volume/VolumeDialogImpl;->recheckH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->rescheduleTimeoutH()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private trimObsoleteH()V
    .locals 4

    sget-boolean v2, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "trimObsoleteH"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_3

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get13(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get13(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->dynamic:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogRowsView:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private updateDialogBottomMarginH()V
    .locals 10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mCollapseTime:J

    sub-long v2, v6, v8

    iget-wide v6, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mCollapseTime:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getConservativeCollapseDuration()J

    move-result-wide v6

    cmp-long v5, v2, v6

    if-gez v5, :cond_2

    const/4 v1, 0x1

    :goto_0
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_3

    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    :goto_1
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq v0, v5, :cond_1

    sget-boolean v5, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "bottomMargin "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0706fa

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_1
.end method

.method private updateExpandButtonH()V
    .locals 8

    const/4 v4, 0x0

    sget-boolean v3, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "updateExpandButtonH"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpandButton:Landroid/widget/ImageButton;

    iget-boolean v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpandButtonAnimationRunning:Z

    xor-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setClickable(Z)V

    iget-boolean v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpandButtonAnimationRunning:Z

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->isAttached()Z

    move-result v3

    :goto_0
    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpanded:Z

    if-eqz v3, :cond_4

    const v2, 0x7f080337

    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->hasTouchFeature()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpandButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    :goto_2
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpandButton:Landroid/widget/ImageButton;

    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpanded:Z

    if-eqz v3, :cond_6

    const v3, 0x7f1200f1

    :goto_3
    invoke-virtual {v5, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    iget-boolean v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpandButtonAnimationRunning:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpandButton:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v3, v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpandButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    new-instance v4, Lcom/android/systemui/volume/VolumeDialogImpl$9;

    invoke-direct {v4, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$9;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    iget v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpandButtonAnimationDuration:I

    int-to-long v6, v5

    invoke-virtual {v3, v4, v6, v7}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void

    :cond_3
    move v3, v4

    goto :goto_0

    :cond_4
    const v2, 0x7f080339

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpandButton:Landroid/widget/ImageButton;

    const v5, 0x7f080340

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpandButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_2

    :cond_6
    const v3, 0x7f1200f2

    goto :goto_3
.end method

.method private updateExpandedH(ZZ)V
    .locals 4

    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpanded:Z

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpanded:Z

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->isAttached()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpandButtonAnimationRunning:Z

    sget-boolean v1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateExpandedH "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateExpandButtonH()V

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateFooterH()V

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-static {v1}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getActiveRow()Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    move-result-object v0

    if-nez p2, :cond_2

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setLayout(II)V

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getTransistion()Landroid/transition/AutoTransition;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    :cond_2
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateRowsH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->rescheduleTimeoutH()V

    return-void
.end method

.method private updateFooterH()V
    .locals 6

    sget-boolean v4, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "updateFooterH"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mZenFooter:Lcom/android/systemui/volume/ZenFooter;

    invoke-virtual {v4}, Lcom/android/systemui/volume/ZenFooter;->getVisibility()I

    move-result v4

    if-nez v4, :cond_4

    const/4 v3, 0x1

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v4, v4, Lcom/android/systemui/plugins/VolumeDialogController$State;->zenMode:I

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAudioManager:Landroid/media/AudioManager;

    iget v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActiveStream:I

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->isStreamAffectedByRingerMode(I)Z

    move-result v4

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpanded:Z

    if-eqz v4, :cond_5

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mZenPanel:Lcom/android/systemui/tuner/TunerZenModePanel;

    invoke-virtual {v4}, Lcom/android/systemui/tuner/TunerZenModePanel;->isEditing()Z

    move-result v4

    xor-int/lit8 v2, v4, 0x1

    :goto_1
    if-eq v3, v2, :cond_2

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mZenFooter:Lcom/android/systemui/volume/ZenFooter;

    invoke-virtual {v4}, Lcom/android/systemui/volume/ZenFooter;->update()V

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mZenFooter:Lcom/android/systemui/volume/ZenFooter;

    invoke-static {v4, v2}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mZenPanel:Lcom/android/systemui/tuner/TunerZenModePanel;

    invoke-virtual {v4}, Lcom/android/systemui/tuner/TunerZenModePanel;->getVisibility()I

    move-result v4

    if-nez v4, :cond_6

    const/4 v1, 0x1

    :goto_2
    iget-boolean v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowFullZen:Z

    if-eqz v4, :cond_7

    xor-int/lit8 v0, v2, 0x1

    :goto_3
    if-eq v1, v0, :cond_3

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mZenPanel:Lcom/android/systemui/tuner/TunerZenModePanel;

    invoke-static {v4, v0}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mZenPanel:Lcom/android/systemui/tuner/TunerZenModePanel;

    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v5, v5, Lcom/android/systemui/plugins/VolumeDialogController$State;->zenMode:I

    invoke-virtual {v4, v5}, Lcom/android/systemui/tuner/TunerZenModePanel;->setZenState(I)V

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mZenPanel:Lcom/android/systemui/tuner/TunerZenModePanel;

    new-instance v5, Lcom/android/systemui/volume/VolumeDialogImpl$10;

    invoke-direct {v5, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$10;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/tuner/TunerZenModePanel;->setDoneListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void

    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private updateRowsH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V
    .locals 6

    sget-boolean v4, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "updateRowsH"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    if-nez v4, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->trimObsoleteH()V

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    if-ne v1, p1, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->shouldBeVisibleH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Z)Z

    move-result v3

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get4(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/TextView;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->isShown()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateVolumeRowSliderTintH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Z)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    return-void
.end method

.method private updateVolumeRowH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V
    .locals 25

    sget-boolean v19, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v19, :cond_0

    sget-object v19, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "updateVolumeRowH s="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    if-nez v16, :cond_2

    return-void

    :cond_2
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-set13(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    move/from16 v19, v0

    if-lez v19, :cond_3

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-set10(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)I

    :cond_3
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    move/from16 v19, v0

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get11(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    const/16 v19, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-set11(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)I

    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v19

    const/16 v20, 0xa

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    const/4 v6, 0x1

    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    const/4 v10, 0x1

    :goto_1
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    const/4 v12, 0x1

    :goto_2
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v19

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    const/4 v7, 0x1

    :goto_3
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v19

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_d

    const/4 v8, 0x1

    :goto_4
    if-eqz v10, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    const/4 v11, 0x1

    :goto_5
    if-eqz v10, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    move/from16 v19, v0

    if-nez v19, :cond_10

    const/4 v9, 0x1

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->zenMode:I

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_12

    const/4 v13, 0x1

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->zenMode:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_13

    const/4 v14, 0x1

    :goto_8
    if-eqz v13, :cond_15

    if-nez v10, :cond_14

    move/from16 v18, v12

    :goto_9
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMax:I

    move/from16 v19, v0

    mul-int/lit8 v15, v19, 0x64

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get12(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/SeekBar;->getMax()I

    move-result v19

    move/from16 v0, v19

    if-eq v15, v0, :cond_5

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get12(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/widget/SeekBar;->setMax(I)V

    :cond_5
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get4(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/TextView;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/systemui/volume/Util;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    move-object/from16 v19, v0

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get4(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/TextView;

    move-result-object v20

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->name:I

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lcom/android/systemui/volume/ConfigurableTexts;->add(Landroid/widget/TextView;I)I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAutomute:Z

    move/from16 v19, v0

    if-nez v19, :cond_6

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muteSupported:Z

    move/from16 v19, v0

    if-eqz v19, :cond_18

    :cond_6
    xor-int/lit8 v4, v18, 0x1

    :goto_a
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get5(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get5(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v20

    if-eqz v4, :cond_19

    const/high16 v19, 0x3f800000    # 1.0f

    :goto_b
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAlpha(F)V

    if-eqz v11, :cond_1a

    const v5, 0x7f080342

    :goto_c
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get2(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v19

    move/from16 v0, v19

    if-eq v5, v0, :cond_8

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get2(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v19

    if-eqz v19, :cond_7

    if-eqz v11, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/systemui/plugins/VolumeDialogController;->vibrate()V

    :cond_7
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-set2(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)I

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get5(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_8
    const v19, 0x7f080342

    move/from16 v0, v19

    if-ne v5, v0, :cond_21

    const/16 v19, 0x3

    :goto_d
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-set8(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)I

    if-eqz v4, :cond_2f

    if-eqz v10, :cond_2a

    if-eqz v11, :cond_26

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get5(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    aput-object v22, v21, v23

    const v22, 0x7f120b9d

    move-object/from16 v0, v20

    move/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_e
    xor-int/lit8 v3, v18, 0x1

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get13(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v19

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    move/from16 v19, v0

    if-eqz v19, :cond_30

    if-nez v10, :cond_30

    xor-int/lit8 v19, v18, 0x1

    if-eqz v19, :cond_30

    const/16 v17, 0x0

    :goto_f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-direct {v0, v1, v3, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateVolumeRowSliderH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;ZI)V

    return-void

    :cond_9
    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_a
    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_b
    const/4 v12, 0x0

    goto/16 :goto_2

    :cond_c
    const/4 v7, 0x0

    goto/16 :goto_3

    :cond_d
    const/4 v8, 0x0

    goto/16 :goto_4

    :cond_e
    const/4 v11, 0x0

    goto/16 :goto_5

    :cond_f
    const/4 v11, 0x0

    goto/16 :goto_5

    :cond_10
    const/4 v9, 0x0

    goto/16 :goto_6

    :cond_11
    const/4 v9, 0x0

    goto/16 :goto_6

    :cond_12
    const/4 v13, 0x0

    goto/16 :goto_7

    :cond_13
    const/4 v14, 0x0

    goto/16 :goto_8

    :cond_14
    const/16 v18, 0x1

    goto/16 :goto_9

    :cond_15
    if-eqz v14, :cond_17

    if-nez v10, :cond_16

    if-nez v12, :cond_16

    if-nez v7, :cond_16

    move/from16 v18, v8

    goto/16 :goto_9

    :cond_16
    const/16 v18, 0x1

    goto/16 :goto_9

    :cond_17
    const/16 v18, 0x0

    goto/16 :goto_9

    :cond_18
    const/4 v4, 0x0

    goto/16 :goto_a

    :cond_19
    const/high16 v19, 0x3f000000    # 0.5f

    goto/16 :goto_b

    :cond_1a
    if-nez v9, :cond_1b

    if-eqz v18, :cond_1c

    :cond_1b
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get2(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v5

    goto/16 :goto_c

    :cond_1c
    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToBluetooth:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1e

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1d

    const v5, 0x7f08033c

    goto/16 :goto_c

    :cond_1d
    const v5, 0x7f08033b

    goto/16 :goto_c

    :cond_1e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAutomute:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1f

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    move/from16 v19, v0

    if-nez v19, :cond_1f

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get6(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v5

    goto/16 :goto_c

    :cond_1f
    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    move/from16 v19, v0

    if-eqz v19, :cond_20

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get6(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v5

    goto/16 :goto_c

    :cond_20
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get7(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v5

    goto/16 :goto_c

    :cond_21
    const v19, 0x7f08033c

    move/from16 v0, v19

    if-eq v5, v0, :cond_22

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get6(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v19

    move/from16 v0, v19

    if-ne v5, v0, :cond_23

    :cond_22
    const/16 v19, 0x2

    goto/16 :goto_d

    :cond_23
    const v19, 0x7f08033b

    move/from16 v0, v19

    if-eq v5, v0, :cond_24

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get7(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v19

    move/from16 v0, v19

    if-ne v5, v0, :cond_25

    :cond_24
    const/16 v19, 0x1

    goto/16 :goto_d

    :cond_25
    const/16 v19, 0x0

    goto/16 :goto_d

    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/systemui/plugins/VolumeDialogController;->hasVibrator()Z

    move-result v19

    if-eqz v19, :cond_28

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get5(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowA11yStream:Z

    move/from16 v19, v0

    if-eqz v19, :cond_27

    const v19, 0x7f120b9f

    :goto_10
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    aput-object v23, v22, v24

    move-object/from16 v0, v21

    move/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_e

    :cond_27
    const v19, 0x7f120b9e

    goto :goto_10

    :cond_28
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get5(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowA11yStream:Z

    move/from16 v19, v0

    if-eqz v19, :cond_29

    const v19, 0x7f120b9c

    :goto_11
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    aput-object v23, v22, v24

    move-object/from16 v0, v21

    move/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_e

    :cond_29
    const v19, 0x7f120b9b

    goto :goto_11

    :cond_2a
    if-eqz v6, :cond_2b

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get5(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_e

    :cond_2b
    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    move/from16 v19, v0

    if-nez v19, :cond_2c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAutomute:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2d

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    move/from16 v19, v0

    if-nez v19, :cond_2d

    :cond_2c
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get5(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    aput-object v22, v21, v23

    const v22, 0x7f120b9d

    move-object/from16 v0, v20

    move/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_e

    :cond_2d
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get5(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowA11yStream:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2e

    const v19, 0x7f120b9c

    :goto_12
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    aput-object v23, v22, v24

    move-object/from16 v0, v21

    move/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_e

    :cond_2e
    const v19, 0x7f120b9b

    goto :goto_12

    :cond_2f
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get5(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_e

    :cond_30
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get13(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    move/from16 v17, v0

    goto/16 :goto_f
.end method

.method private updateVolumeRowSliderH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;ZI)V
    .locals 12

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get12(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v5

    iget v6, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActiveStream:I

    if-ne v5, v6, :cond_0

    const/4 v5, 0x1

    :goto_0
    invoke-direct {p0, p1, v5}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateVolumeRowSliderTintH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Z)V

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get15(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Z

    move-result v5

    if-eqz v5, :cond_1

    return-void

    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get12(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get12(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/android/systemui/volume/VolumeDialogImpl;->getImpliedLevel(Landroid/widget/SeekBar;I)I

    move-result v1

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_3

    const/4 v4, 0x1

    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get16(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    cmp-long v5, v6, v8

    if-gez v5, :cond_4

    const/4 v0, 0x1

    :goto_2
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v6, 0x3

    invoke-virtual {v5, v6, p1}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->removeMessages(ILjava/lang/Object;)V

    iget-boolean v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    if-eqz v5, :cond_5

    if-eqz v4, :cond_5

    if-eqz v0, :cond_5

    sget-boolean v5, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v5, :cond_2

    sget-object v5, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "inGracePeriod"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    iget-object v6, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v7, 0x3

    invoke-virtual {v6, v7, p1}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get16(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    add-long/2addr v8, v10

    invoke-virtual {v5, v6, v8, v9}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void

    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    if-ne p3, v1, :cond_6

    iget-boolean v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    if-eqz v5, :cond_6

    if-eqz v4, :cond_6

    return-void

    :cond_6
    mul-int/lit8 v2, p3, 0x64

    if-eq v3, v2, :cond_8

    iget-boolean v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    if-eqz v5, :cond_a

    if-eqz v4, :cond_a

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get0(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get0(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get1(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v5

    if-ne v5, v2, :cond_7

    return-void

    :cond_7
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get0(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    if-nez v5, :cond_9

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get12(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v5

    const-string/jumbo v6, "progress"

    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x0

    aput v3, v7, v8

    const/4 v8, 0x1

    aput v2, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-set0(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get0(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_3
    invoke-static {p1, v2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-set1(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)I

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get0(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v6, 0x50

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get0(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->start()V

    :cond_8
    :goto_4
    return-void

    :cond_9
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get0(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->cancel()V

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get0(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [I

    const/4 v7, 0x0

    aput v3, v6, v7

    const/4 v7, 0x1

    aput v2, v6, v7

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    goto :goto_3

    :cond_a
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get0(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get0(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_b
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get12(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v2, v6}, Landroid/widget/SeekBar;->setProgress(IZ)V

    goto :goto_4
.end method

.method private updateVolumeRowSliderTintH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Z)V
    .locals 2

    if-eqz p2, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpanded:Z

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get12(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->requestFocus()Z

    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get12(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActiveSliderTint:Landroid/content/res/ColorStateList;

    :goto_0
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get3(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-ne v0, v1, :cond_2

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mInactiveSliderTint:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_2
    invoke-static {p1, v0}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-set3(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get12(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get12(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method private updateWindowWidthH()V
    .locals 7

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    sget-boolean v4, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateWindowWidth dm.w="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0706fe

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    if-le v3, v2, :cond_1

    move v3, v2

    :cond_1
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mControllerCallbackH:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/VolumeDialogController;->removeCallback(Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;)V

    return-void
.end method

.method protected dismissH(I)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-virtual {v1}, Lcom/android/systemui/volume/VolumeDialogMotion;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    invoke-virtual {v1, v5}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->removeMessages(I)V

    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    if-nez v1, :cond_1

    return-void

    :cond_1
    iput-boolean v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    new-instance v2, Lcom/android/systemui/volume/VolumeDialogImpl$8;

    invoke-direct {v2, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$8;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/VolumeDialogMotion;->startDismiss(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x20

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    const-class v1, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f120b94

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v5, v2}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v1, v4}, Lcom/android/systemui/plugins/VolumeDialogController;->notifyVisible(Z)V

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    if-eqz v1, :cond_4

    sget-boolean v1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "SafetyWarning dismissed"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {v1}, Lcom/android/systemui/volume/SafetyWarningDialog;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public init(ILcom/android/systemui/plugins/VolumeDialog$Callback;)V
    .locals 5

    iput-object p2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mCallback:Lcom/android/systemui/plugins/VolumeDialog$Callback;

    iput p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindowType:I

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->initDialog()V

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccessibility:Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;

    invoke-virtual {v1}, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;->init()V

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mControllerCallbackH:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/plugins/VolumeDialogController;->addCallback(Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v1}, Lcom/android/systemui/plugins/VolumeDialogController;->getState()V

    const-class v1, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/tuner/TunerService;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "sysui_show_full_zen"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, p0, v2}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->densityDpi:I

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDensity:I

    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const-string/jumbo v1, "sysui_show_full_zen"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowFullZen:Z

    :cond_1
    return-void
.end method

.method protected rescheduleTimeoutH()V
    .locals 6

    const/4 v5, 0x2

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    invoke-virtual {v1, v5}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->removeMessages(I)V

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->computeTimeoutH()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    sget-boolean v1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "rescheduleTimeout "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v1}, Lcom/android/systemui/plugins/VolumeDialogController;->userActivity()V

    return-void
.end method
