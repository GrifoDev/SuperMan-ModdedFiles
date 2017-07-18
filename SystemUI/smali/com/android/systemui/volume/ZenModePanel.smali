.class public Lcom/android/systemui/volume/ZenModePanel;
.super Landroid/widget/LinearLayout;
.source "ZenModePanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/ZenModePanel$1;,
        Lcom/android/systemui/volume/ZenModePanel$2;,
        Lcom/android/systemui/volume/ZenModePanel$3;,
        Lcom/android/systemui/volume/ZenModePanel$Callback;,
        Lcom/android/systemui/volume/ZenModePanel$ConditionTag;,
        Lcom/android/systemui/volume/ZenModePanel$H;,
        Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;,
        Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final DEFAULT_BUCKET_INDEX:I

.field private static final MAX_BUCKET_MINUTES:I

.field private static final MINUTE_BUCKETS:[I

.field private static final MIN_BUCKET_MINUTES:I

.field public static final ZEN_PRIORITY_SETTINGS:Landroid/content/Intent;

.field public static final ZEN_SETTINGS:Landroid/content/Intent;


# instance fields
.field private mAttached:Z

.field private mAttachedZen:I

.field private mBucketIndex:I

.field private mCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;

.field private mConditions:[Landroid/service/notification/Condition;

.field private final mContext:Landroid/content/Context;

.field private mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

.field private mCountdownConditionSupported:Z

.field private mExitCondition:Landroid/service/notification/Condition;

.field private mExpanded:Z

.field private final mForeverId:Landroid/net/Uri;

.field private final mHandler:Lcom/android/systemui/volume/ZenModePanel$H;

.field private mHidden:Z

.field protected final mInflater:Landroid/view/LayoutInflater;

.field private final mInteractionCallback:Lcom/android/systemui/volume/Interaction$Callback;

.field private final mPrefs:Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;

.field private mRequestingConditions:Z

.field private mSessionExitCondition:Landroid/service/notification/Condition;

.field private mSessionZen:I

.field private final mSpTexts:Lcom/android/systemui/volume/SpTexts;

.field private mTag:Ljava/lang/String;

.field private mTimeCondition:Landroid/service/notification/Condition;

.field private final mTransitionHelper:Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;

.field private mVoiceCapable:Z

.field private mZenAlarmWarning:Landroid/widget/TextView;

.field protected mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

.field protected final mZenButtonsCallback:Lcom/android/systemui/volume/SegmentedButtons$Callback;

.field private final mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

.field protected mZenConditions:Landroid/widget/LinearLayout;

.field private mZenIntroduction:Landroid/view/View;

.field private mZenIntroductionConfirm:Landroid/view/View;

.field private mZenIntroductionCustomize:Landroid/widget/TextView;

.field private mZenIntroductionMessage:Landroid/widget/TextView;

.field private mZenRadioGroup:Landroid/widget/RadioGroup;

.field private mZenRadioGroupContent:Landroid/widget/LinearLayout;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1()I
    .locals 1

    sget v0, Lcom/android/systemui/volume/ZenModePanel;->DEFAULT_BUCKET_INDEX:I

    return v0
.end method

.method static synthetic -get10(Lcom/android/systemui/volume/ZenModePanel;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2()[I
    .locals 1

    sget-object v0, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/volume/ZenModePanel;)Lcom/android/systemui/volume/ZenModePanel$Callback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/volume/ZenModePanel;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/volume/ZenModePanel;)Lcom/android/systemui/statusbar/policy/ZenModeController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/volume/ZenModePanel;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mExpanded:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/volume/ZenModePanel;)Lcom/android/systemui/volume/ZenModePanel$H;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mHandler:Lcom/android/systemui/volume/ZenModePanel$H;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/volume/ZenModePanel;)Landroid/service/notification/Condition;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionExitCondition:Landroid/service/notification/Condition;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/volume/ZenModePanel;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionZen:I

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/volume/ZenModePanel;Landroid/service/notification/Condition;)Landroid/net/Uri;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->getRealConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/volume/ZenModePanel;Lcom/android/systemui/volume/ZenModePanel$ConditionTag;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->announceConditionSelection(Lcom/android/systemui/volume/ZenModePanel$ConditionTag;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/volume/ZenModePanel;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->confirmZenIntroduction()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/volume/ZenModePanel;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->fireInteraction()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/volume/ZenModePanel;Landroid/service/notification/ZenModeConfig$ZenRule;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->handleUpdateManualRule(Landroid/service/notification/ZenModeConfig$ZenRule;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/volume/ZenModePanel;Landroid/view/View;Lcom/android/systemui/volume/ZenModePanel$ConditionTag;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/volume/ZenModePanel;->onClickTimeButton(Landroid/view/View;Lcom/android/systemui/volume/ZenModePanel$ConditionTag;ZI)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/systemui/volume/ZenModePanel;Landroid/service/notification/Condition;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->select(Landroid/service/notification/Condition;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/systemui/volume/ZenModePanel;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->updateWidgets()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "ZenModePanel"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    sget-object v0, Landroid/service/notification/ZenModeConfig;->MINUTE_BUCKETS:[I

    sput-object v0, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    sget-object v0, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    sput v0, Lcom/android/systemui/volume/ZenModePanel;->MIN_BUCKET_MINUTES:I

    sget-object v0, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    sget-object v1, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    sput v0, Lcom/android/systemui/volume/ZenModePanel;->MAX_BUCKET_MINUTES:I

    sget-object v0, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    const/16 v1, 0x3c

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    sput v0, Lcom/android/systemui/volume/ZenModePanel;->DEFAULT_BUCKET_INDEX:I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.ZEN_MODE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/volume/ZenModePanel;->ZEN_SETTINGS:Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.ZEN_MODE_PRIORITY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/volume/ZenModePanel;->ZEN_PRIORITY_SETTINGS:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/systemui/volume/ZenModePanel$H;

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/volume/ZenModePanel$H;-><init>(Lcom/android/systemui/volume/ZenModePanel;Lcom/android/systemui/volume/ZenModePanel$H;)V

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mHandler:Lcom/android/systemui/volume/ZenModePanel$H;

    new-instance v0, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;-><init>(Lcom/android/systemui/volume/ZenModePanel;Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;)V

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTransitionHelper:Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ZenModePanel/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    new-instance v0, Lcom/android/systemui/volume/ZenModePanel$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/ZenModePanel$1;-><init>(Lcom/android/systemui/volume/ZenModePanel;)V

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    new-instance v0, Lcom/android/systemui/volume/ZenModePanel$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/ZenModePanel$2;-><init>(Lcom/android/systemui/volume/ZenModePanel;)V

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtonsCallback:Lcom/android/systemui/volume/SegmentedButtons$Callback;

    new-instance v0, Lcom/android/systemui/volume/ZenModePanel$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/ZenModePanel$3;-><init>(Lcom/android/systemui/volume/ZenModePanel;)V

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mInteractionCallback:Lcom/android/systemui/volume/Interaction$Callback;

    iput-object p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;-><init>(Lcom/android/systemui/volume/ZenModePanel;Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;)V

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mPrefs:Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mInflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/service/notification/Condition;->newId(Landroid/content/Context;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "forever"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mForeverId:Landroid/net/Uri;

    new-instance v0, Lcom/android/systemui/volume/SpTexts;

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/SpTexts;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mSpTexts:Lcom/android/systemui/volume/SpTexts;

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/volume/Util;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mVoiceCapable:Z

    sget-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "new ZenModePanel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private announceConditionSelection(Lcom/android/systemui/volume/ZenModePanel$ConditionTag;)V
    .locals 6

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/systemui/volume/ZenModePanel;->getSelectedZen(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    const v3, 0x7f0f0479

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    iget-object v4, p1, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->line1:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const v4, 0x7f0f04c0

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/volume/ZenModePanel;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_1
    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    const v3, 0x7f0f0478

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    const v3, 0x7f0f047a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private bind(Landroid/service/notification/Condition;Landroid/view/View;I)V
    .locals 20

    if-nez p1, :cond_0

    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v18, "condition must not be null"

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    :cond_0
    move-object/from16 v0, p1

    iget v15, v0, Landroid/service/notification/Condition;->state:I

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v15, v0, :cond_7

    const/4 v7, 0x1

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_8

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    move-object v14, v15

    :goto_1
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v15, v14, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    if-nez v15, :cond_9

    const/4 v8, 0x1

    :goto_2
    iget-object v15, v14, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    if-nez v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroup:Landroid/widget/RadioGroup;

    move/from16 v0, p3

    invoke-virtual {v15, v0}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/RadioButton;

    iput-object v15, v14, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    :cond_1
    move-object/from16 v0, p1

    iput-object v0, v14, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->condition:Landroid/service/notification/Condition;

    iget-object v15, v14, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->condition:Landroid/service/notification/Condition;

    invoke-static {v15}, Lcom/android/systemui/volume/ZenModePanel;->getConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;

    move-result-object v6

    sget-boolean v15, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "bind i="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " first="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " condition="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v15, v14, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    invoke-virtual {v15, v7}, Landroid/widget/RadioButton;->setEnabled(Z)V

    iget-object v15, v14, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    new-instance v18, Lcom/android/systemui/volume/ZenModePanel$6;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14, v6}, Lcom/android/systemui/volume/ZenModePanel$6;-><init>(Lcom/android/systemui/volume/ZenModePanel;Lcom/android/systemui/volume/ZenModePanel$ConditionTag;Landroid/net/Uri;)V

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v15, v14, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->lines:Landroid/view/View;

    if-nez v15, :cond_3

    const v15, 0x1020002

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    iput-object v15, v14, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->lines:Landroid/view/View;

    :cond_3
    iget-object v15, v14, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->line1:Landroid/widget/TextView;

    if-nez v15, :cond_4

    const v15, 0x1020014

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    iput-object v15, v14, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->line1:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/volume/ZenModePanel;->mSpTexts:Lcom/android/systemui/volume/SpTexts;

    iget-object v0, v14, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->line1:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/android/systemui/volume/SpTexts;->add(Landroid/widget/TextView;)I

    :cond_4
    iget-object v15, v14, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->line2:Landroid/widget/TextView;

    if-nez v15, :cond_5

    const v15, 0x1020015

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    iput-object v15, v14, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->line2:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/volume/ZenModePanel;->mSpTexts:Lcom/android/systemui/volume/SpTexts;

    iget-object v0, v14, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->line2:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/android/systemui/volume/SpTexts;->add(Landroid/widget/TextView;)I

    :cond_5
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/service/notification/Condition;->line1:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_a

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/service/notification/Condition;->line1:Ljava/lang/String;

    :goto_3
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/service/notification/Condition;->line2:Ljava/lang/String;

    iget-object v15, v14, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->line1:Landroid/widget/TextView;

    invoke-virtual {v15, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_b

    iget-object v15, v14, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->line2:Landroid/widget/TextView;

    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4
    iget-object v15, v14, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->lines:Landroid/view/View;

    invoke-virtual {v15, v7}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, v14, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->lines:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v7, :cond_c

    const/high16 v15, 0x3f800000    # 1.0f

    :goto_5
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/view/View;->setAlpha(F)V

    const v15, 0x1020019

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    new-instance v15, Lcom/android/systemui/volume/ZenModePanel$7;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v15, v0, v1, v14, v2}, Lcom/android/systemui/volume/ZenModePanel$7;-><init>(Lcom/android/systemui/volume/ZenModePanel;Landroid/view/View;Lcom/android/systemui/volume/ZenModePanel$ConditionTag;I)V

    invoke-virtual {v4, v15}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v15, 0x102001a

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    new-instance v15, Lcom/android/systemui/volume/ZenModePanel$8;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v15, v0, v1, v14, v2}, Lcom/android/systemui/volume/ZenModePanel$8;-><init>(Lcom/android/systemui/volume/ZenModePanel;Landroid/view/View;Lcom/android/systemui/volume/ZenModePanel$ConditionTag;I)V

    invoke-virtual {v5, v15}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v15, v14, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->lines:Landroid/view/View;

    new-instance v18, Lcom/android/systemui/volume/ZenModePanel$9;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14}, Lcom/android/systemui/volume/ZenModePanel$9;-><init>(Lcom/android/systemui/volume/ZenModePanel;Lcom/android/systemui/volume/ZenModePanel$ConditionTag;)V

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v6}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v16

    const/4 v15, 0x2

    move/from16 v0, p3

    if-eq v0, v15, :cond_14

    const-wide/16 v18, 0x0

    cmp-long v15, v16, v18

    if-lez v15, :cond_14

    const/4 v15, 0x0

    invoke-virtual {v4, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v15, 0x0

    invoke-virtual {v5, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    const/16 v18, -0x1

    move/from16 v0, v18

    if-le v15, v0, :cond_f

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    if-lez v15, :cond_d

    const/4 v15, 0x1

    :goto_6
    invoke-virtual {v4, v15}, Landroid/widget/ImageView;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    sget-object v18, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    if-ge v15, v0, :cond_e

    const/4 v15, 0x1

    :goto_7
    invoke-virtual {v5, v15}, Landroid/widget/ImageView;->setEnabled(Z)V

    :goto_8
    invoke-virtual {v4}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v15

    if-eqz v15, :cond_12

    const/high16 v15, 0x3f800000    # 1.0f

    :goto_9
    invoke-virtual {v4, v15}, Landroid/widget/ImageView;->setAlpha(F)V

    invoke-virtual {v5}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v15

    if-eqz v15, :cond_13

    const/high16 v15, 0x3f800000    # 1.0f

    :goto_a
    invoke-virtual {v5, v15}, Landroid/widget/ImageView;->setAlpha(F)V

    :goto_b
    if-eqz v8, :cond_6

    iget-object v15, v14, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/ZenModePanel;->mInteractionCallback:Lcom/android/systemui/volume/Interaction$Callback;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/android/systemui/volume/Interaction;->register(Landroid/view/View;Lcom/android/systemui/volume/Interaction$Callback;)V

    iget-object v15, v14, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->lines:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/ZenModePanel;->mInteractionCallback:Lcom/android/systemui/volume/Interaction$Callback;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/android/systemui/volume/Interaction;->register(Landroid/view/View;Lcom/android/systemui/volume/Interaction$Callback;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/volume/ZenModePanel;->mInteractionCallback:Lcom/android/systemui/volume/Interaction$Callback;

    invoke-static {v4, v15}, Lcom/android/systemui/volume/Interaction;->register(Landroid/view/View;Lcom/android/systemui/volume/Interaction$Callback;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/volume/ZenModePanel;->mInteractionCallback:Lcom/android/systemui/volume/Interaction$Callback;

    invoke-static {v5, v15}, Lcom/android/systemui/volume/Interaction;->register(Landroid/view/View;Lcom/android/systemui/volume/Interaction$Callback;)V

    :cond_6
    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_7
    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_8
    new-instance v14, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    const/4 v15, 0x0

    invoke-direct {v14, v15}, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;-><init>(Lcom/android/systemui/volume/ZenModePanel$ConditionTag;)V

    goto/16 :goto_1

    :cond_9
    const/4 v8, 0x0

    goto/16 :goto_2

    :cond_a
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    goto/16 :goto_3

    :cond_b
    iget-object v15, v14, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->line2:Landroid/widget/TextView;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v15, v14, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->line2:Landroid/widget/TextView;

    invoke-virtual {v15, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_c
    const v15, 0x3ecccccd    # 0.4f

    goto/16 :goto_5

    :cond_d
    const/4 v15, 0x0

    goto/16 :goto_6

    :cond_e
    const/4 v15, 0x0

    goto :goto_7

    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v12, v16, v18

    sget v15, Lcom/android/systemui/volume/ZenModePanel;->MIN_BUCKET_MINUTES:I

    const v18, 0xea60

    mul-int v15, v15, v18

    int-to-long v0, v15

    move-wide/from16 v18, v0

    cmp-long v15, v12, v18

    if-lez v15, :cond_10

    const/4 v15, 0x1

    :goto_c
    invoke-virtual {v4, v15}, Landroid/widget/ImageView;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    sget v18, Lcom/android/systemui/volume/ZenModePanel;->MAX_BUCKET_MINUTES:I

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v15, v0, v1}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;

    move-result-object v11

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    iget-object v0, v11, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_11

    const/4 v15, 0x0

    :goto_d
    invoke-virtual {v5, v15}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto/16 :goto_8

    :cond_10
    const/4 v15, 0x0

    goto :goto_c

    :cond_11
    const/4 v15, 0x1

    goto :goto_d

    :cond_12
    const/high16 v15, 0x3f000000    # 0.5f

    goto/16 :goto_9

    :cond_13
    const/high16 v15, 0x3f000000    # 0.5f

    goto/16 :goto_a

    :cond_14
    const/16 v15, 0x8

    invoke-virtual {v4, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v15, 0x8

    invoke-virtual {v5, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_b
.end method

.method private checkForAttachedZenChange()V
    .locals 4

    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/ZenModePanel;->getSelectedZen(I)I

    move-result v0

    sget-boolean v1, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "selectedZen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mAttachedZen:I

    if-eq v0, v1, :cond_2

    sget-boolean v1, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "attachedZen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mAttachedZen:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mPrefs:Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;

    invoke-virtual {v1}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->trackNoneSelected()V

    :cond_2
    return-void
.end method

.method private computeAlarmWarningText(Z)Ljava/lang/String;
    .locals 20

    if-nez p1, :cond_0

    const/16 v16, 0x0

    return-object v16

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/ZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getNextAlarm()J

    move-result-wide v4

    cmp-long v16, v4, v6

    if-gez v16, :cond_1

    const/16 v16, 0x0

    return-object v16

    :cond_1
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/ZenModePanel;->mSessionExitCondition:Landroid/service/notification/Condition;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/ZenModePanel;->mSessionExitCondition:Landroid/service/notification/Condition;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/ZenModePanel;->isForever(Landroid/service/notification/Condition;)Z

    move-result v16

    if-eqz v16, :cond_4

    :cond_2
    const v13, 0x7f0f04ff

    :cond_3
    :goto_0
    if-nez v13, :cond_5

    const/16 v16, 0x0

    return-object v16

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/ZenModePanel;->mSessionExitCondition:Landroid/service/notification/Condition;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v14

    cmp-long v16, v14, v6

    if-lez v16, :cond_3

    cmp-long v16, v4, v14

    if-gez v16, :cond_3

    const v13, 0x7f0f0500

    goto :goto_0

    :cond_5
    sub-long v16, v4, v6

    const-wide/32 v18, 0x5265c00

    cmp-long v16, v16, v18

    if-gez v16, :cond_6

    const/4 v10, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v17

    invoke-static/range {v16 .. v17}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v10, :cond_8

    if-eqz v3, :cond_7

    const-string/jumbo v9, "Hm"

    :goto_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v0, v9}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v10, :cond_a

    const v12, 0x7f0f0501

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/volume/ZenModePanel;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v2, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v12, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/volume/ZenModePanel;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v11, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v13, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    return-object v16

    :cond_6
    const/4 v10, 0x0

    goto :goto_1

    :cond_7
    const-string/jumbo v9, "hma"

    goto :goto_2

    :cond_8
    if-eqz v3, :cond_9

    const-string/jumbo v9, "EEEHm"

    goto :goto_2

    :cond_9
    const-string/jumbo v9, "EEEhma"

    goto :goto_2

    :cond_a
    const v12, 0x7f0f0502

    goto :goto_3
.end method

.method private confirmZenIntroduction()V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/ZenModePanel;->getSelectedZen(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/volume/ZenModePanel;->prefKeyForConfirmation(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v1, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "ZenModePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "confirmZenIntroduction "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mHandler:Lcom/android/systemui/volume/ZenModePanel$H;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/ZenModePanel$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method private static copy(Landroid/service/notification/Condition;)Landroid/service/notification/Condition;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/service/notification/Condition;->copy()Landroid/service/notification/Condition;

    move-result-object v0

    goto :goto_0
.end method

.method private ensureSelection()V
    .locals 9

    const/4 v6, 0x0

    const/4 v8, 0x1

    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->getVisibleConditions()I

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_3

    invoke-direct {p0, v2}, Lcom/android/systemui/volume/ZenModePanel;->getConditionTagAt(I)Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v5, v3, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    invoke-virtual {v5}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_2

    sget-boolean v5, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Not selecting a default, checked="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->condition:Landroid/service/notification/Condition;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-direct {p0, v6}, Lcom/android/systemui/volume/ZenModePanel;->getConditionTagAt(I)Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    move-result-object v1

    if-nez v1, :cond_4

    return-void

    :cond_4
    sget-boolean v5, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    const-string/jumbo v6, "Selecting a default"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mPrefs:Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;

    invoke-virtual {v5}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->getMinuteIndex()I

    move-result v0

    const/4 v5, -0x1

    if-eq v0, v5, :cond_6

    iget-boolean v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mCountdownConditionSupported:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    aget v6, v6, v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    invoke-static {v5, v6, v7}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mTimeCondition:Landroid/service/notification/Condition;

    iput v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mTimeCondition:Landroid/service/notification/Condition;

    iget-object v6, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-direct {p0, v5, v6, v8}, Lcom/android/systemui/volume/ZenModePanel;->bind(Landroid/service/notification/Condition;Landroid/view/View;I)V

    invoke-direct {p0, v8}, Lcom/android/systemui/volume/ZenModePanel;->getConditionTagAt(I)Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    move-result-object v5

    iget-object v5, v5, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    invoke-virtual {v5, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_1
    return-void

    :cond_6
    iget-object v5, v1, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    invoke-virtual {v5, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1
.end method

.method private fireExpanded()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;

    iget-boolean v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mExpanded:Z

    invoke-interface {v0, v1}, Lcom/android/systemui/volume/ZenModePanel$Callback;->onExpanded(Z)V

    :cond_0
    return-void
.end method

.method private fireInteraction()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;

    invoke-interface {v0}, Lcom/android/systemui/volume/ZenModePanel$Callback;->onInteraction()V

    :cond_0
    return-void
.end method

.method private forever()Landroid/service/notification/Condition;
    .locals 8

    const/4 v5, 0x0

    new-instance v0, Landroid/service/notification/Condition;

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mForeverId:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/volume/ZenModePanel;->foreverSummary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    const/4 v6, 0x1

    move v7, v5

    invoke-direct/range {v0 .. v7}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    return-object v0
.end method

.method private static foreverSummary(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const v0, 0x10405c8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    :cond_0
    return-object v0
.end method

.method private getConditionTagAt(I)Lcom/android/systemui/volume/ZenModePanel$ConditionTag;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    return-object v0
.end method

.method private getRealConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->isForever(Landroid/service/notification/Condition;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/android/systemui/volume/ZenModePanel;->getConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method private getSelectedCondition()Landroid/service/notification/Condition;
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->getVisibleConditions()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/ZenModePanel;->getConditionTagAt(I)Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->condition:Landroid/service/notification/Condition;

    return-object v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v4
.end method

.method private getSelectedZen(I)I
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    invoke-virtual {v1}, Lcom/android/systemui/volume/SegmentedButtons;->getSelectedValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :cond_0
    return p1
.end method

.method private getTimeUntilNextAlarmCondition()Landroid/service/notification/Condition;
    .locals 10

    new-instance v7, Ljava/util/GregorianCalendar;

    invoke-direct {v7}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v7}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-direct {p0, v7}, Lcom/android/systemui/volume/ZenModePanel;->setToMidnight(Ljava/util/Calendar;)V

    const/4 v1, 0x5

    const/4 v6, 0x6

    invoke-virtual {v7, v1, v6}, Ljava/util/GregorianCalendar;->add(II)V

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getNextAlarm()J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v1, v4, v8

    if-lez v1, :cond_0

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v0, v4, v5}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->setToMidnight(Ljava/util/Calendar;)V

    invoke-virtual {v7, v0}, Ljava/util/GregorianCalendar;->compareTo(Ljava/util/Calendar;)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    invoke-static/range {v1 .. v6}, Landroid/service/notification/ZenModeConfig;->toNextAlarmCondition(Landroid/content/Context;JJI)Landroid/service/notification/Condition;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private getVisibleConditions()I
    .locals 5

    const/4 v4, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v3, v4

    goto :goto_1

    :cond_1
    return v2
.end method

.method private handleExitConditionChanged(Landroid/service/notification/Condition;)V
    .locals 6

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->setExitCondition(Landroid/service/notification/Condition;)V

    sget-boolean v3, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleExitConditionChanged "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->getVisibleConditions()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/ZenModePanel;->getConditionTagAt(I)Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->condition:Landroid/service/notification/Condition;

    iget-object v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    invoke-static {v3, v4}, Lcom/android/systemui/volume/ZenModePanel;->sameConditionId(Landroid/service/notification/Condition;Landroid/service/notification/Condition;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, p1, v3, v1}, Lcom/android/systemui/volume/ZenModePanel;->bind(Landroid/service/notification/Condition;Landroid/view/View;I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private handleUpdateConditions()V
    .locals 9

    const/4 v8, 0x1

    const/16 v3, 0x8

    const/4 v7, 0x2

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mTransitionHelper:Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;

    invoke-virtual {v4}, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;->isTransitioning()Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mConditions:[Landroid/service/notification/Condition;

    if-nez v4, :cond_5

    const/4 v0, 0x0

    :goto_0
    sget-boolean v4, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleUpdateConditions conditionCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->forever()Landroid/service/notification/Condition;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v4, v5, v2}, Lcom/android/systemui/volume/ZenModePanel;->bind(Landroid/service/notification/Condition;Landroid/view/View;I)V

    iget-boolean v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mCountdownConditionSupported:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mTimeCondition:Landroid/service/notification/Condition;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mTimeCondition:Landroid/service/notification/Condition;

    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v4, v5, v8}, Lcom/android/systemui/volume/ZenModePanel;->bind(Landroid/service/notification/Condition;Landroid/view/View;I)V

    :cond_2
    iget-boolean v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mCountdownConditionSupported:Z

    if-eqz v4, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->getTimeUntilNextAlarmCondition()Landroid/service/notification/Condition;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v4, v7}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v1, v4, v7}, Lcom/android/systemui/volume/ZenModePanel;->bind(Landroid/service/notification/Condition;Landroid/view/View;I)V

    :cond_3
    :goto_1
    iget-boolean v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mExpanded:Z

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/volume/ZenModePanel;->isShown()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->ensureSelection()V

    :cond_4
    iget-object v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenConditions:Landroid/widget/LinearLayout;

    iget v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionZen:I

    if-eqz v5, :cond_7

    :goto_2
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :cond_5
    iget-object v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mConditions:[Landroid/service/notification/Condition;

    array-length v0, v4

    goto :goto_0

    :cond_6
    iget-object v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v4, v7}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_7
    move v2, v3

    goto :goto_2
.end method

.method private handleUpdateManualRule(Landroid/service/notification/ZenModeConfig$ZenRule;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/systemui/volume/ZenModePanel;->handleUpdateZen(I)V

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->handleExitConditionChanged(Landroid/service/notification/Condition;)V

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private handleUpdateZen(I)V
    .locals 4

    iget v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionZen:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionZen:I

    if-eq v1, p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/volume/ZenModePanel;->isShown()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/ZenModePanel;->setExpanded(Z)V

    iput p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionZen:I

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/volume/SegmentedButtons;->setSelectedValue(Ljava/lang/Object;Z)V

    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->updateWidgets()V

    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->handleUpdateConditions()V

    iget-boolean v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mExpanded:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->getSelectedCondition()Landroid/service/notification/Condition;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->select(Landroid/service/notification/Condition;)V

    :cond_1
    return-void
.end method

.method private hideAllConditions()V
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static isCountdown(Landroid/service/notification/Condition;)Z
    .locals 1

    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->isValidCountdownConditionId(Landroid/net/Uri;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isForever(Landroid/service/notification/Condition;)Z
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mForeverId:Landroid/net/Uri;

    iget-object v1, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onClickTimeButton(Landroid/view/View;Lcom/android/systemui/volume/ZenModePanel$ConditionTag;ZI)V
    .locals 22

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    const/16 v9, 0xa3

    move/from16 v0, p3

    invoke-static {v5, v9, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    const/4 v14, 0x0

    sget-object v5, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    array-length v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    const/4 v9, -0x1

    if-ne v5, v9, :cond_6

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->condition:Landroid/service/notification/Condition;

    invoke-static {v5}, Lcom/android/systemui/volume/ZenModePanel;->getConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;

    move-result-object v11

    invoke-static {v11}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v4, :cond_1

    if-eqz p3, :cond_3

    move v13, v12

    :goto_1
    sget-object v5, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    aget v8, v5, v13

    const v5, 0xea60

    mul-int/2addr v5, v8

    int-to-long v0, v5

    move-wide/from16 v20, v0

    add-long v6, v16, v20

    if-eqz p3, :cond_4

    cmp-long v5, v6, v18

    if-lez v5, :cond_4

    :cond_0
    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v9

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;JIIZ)Landroid/service/notification/Condition;

    move-result-object v14

    :cond_1
    if-nez v14, :cond_2

    sget v5, Lcom/android/systemui/volume/ZenModePanel;->DEFAULT_BUCKET_INDEX:I

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    sget-object v9, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    aget v9, v9, v10

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v10

    invoke-static {v5, v9, v10}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;

    move-result-object v14

    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/volume/ZenModePanel;->mTimeCondition:Landroid/service/notification/Condition;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/volume/ZenModePanel;->mTimeCondition:Landroid/service/notification/Condition;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    invoke-direct {v0, v5, v1, v2}, Lcom/android/systemui/volume/ZenModePanel;->bind(Landroid/service/notification/Condition;Landroid/view/View;I)V

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Landroid/widget/RadioButton;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/volume/ZenModePanel;->mTimeCondition:Landroid/service/notification/Condition;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/systemui/volume/ZenModePanel;->select(Landroid/service/notification/Condition;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/ZenModePanel;->announceConditionSelection(Lcom/android/systemui/volume/ZenModePanel$ConditionTag;)V

    return-void

    :cond_3
    add-int/lit8 v5, v4, -0x1

    sub-int v13, v5, v12

    goto :goto_1

    :cond_4
    if-nez p3, :cond_5

    cmp-long v5, v6, v18

    if-ltz v5, :cond_0

    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_6
    add-int/lit8 v9, v4, -0x1

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    if-eqz p3, :cond_7

    const/4 v5, 0x1

    :goto_3
    add-int/2addr v5, v10

    invoke-static {v9, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v9, 0x0

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    sget-object v9, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    aget v9, v9, v10

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v10

    invoke-static {v5, v9, v10}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;

    move-result-object v14

    goto :goto_2

    :cond_7
    const/4 v5, -0x1

    goto :goto_3
.end method

.method private static parseExistingTimeCondition(Landroid/content/Context;Landroid/service/notification/Condition;)Landroid/service/notification/Condition;
    .locals 12

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    if-nez p1, :cond_0

    return-object v4

    :cond_0
    iget-object v0, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v2

    cmp-long v0, v2, v6

    if-nez v0, :cond_1

    return-object v4

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v10, v2, v8

    cmp-long v0, v10, v6

    if-lez v0, :cond_2

    sget v0, Lcom/android/systemui/volume/ZenModePanel;->MAX_BUCKET_MINUTES:I

    const v1, 0xea60

    mul-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, v10, v0

    if-lez v0, :cond_3

    :cond_2
    return-object v4

    :cond_3
    long-to-float v0, v10

    const v1, 0x476a6000    # 60000.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;JIIZ)Landroid/service/notification/Condition;

    move-result-object v0

    return-object v0
.end method

.method private static prefKeyForConfirmation(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "DndConfirmedPriorityIntroduction"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "DndConfirmedSilenceIntroduction"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static sameConditionId(Landroid/service/notification/Condition;Landroid/service/notification/Condition;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    iget-object v1, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private select(Landroid/service/notification/Condition;)V
    .locals 5

    const/4 v4, -0x1

    sget-boolean v1, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "select "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionZen:I

    if-eq v1, v4, :cond_1

    iget v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionZen:I

    if-nez v1, :cond_3

    :cond_1
    sget-boolean v1, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    const-string/jumbo v2, "Ignoring condition selection outside of manual zen"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->getRealConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    if-eqz v1, :cond_4

    new-instance v1, Lcom/android/systemui/volume/ZenModePanel$10;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/volume/ZenModePanel$10;-><init>(Lcom/android/systemui/volume/ZenModePanel;Landroid/net/Uri;)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    :cond_4
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->setExitCondition(Landroid/service/notification/Condition;)V

    if-nez v0, :cond_6

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mPrefs:Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;

    invoke-virtual {v1, v4}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->setMinuteIndex(I)V

    :cond_5
    :goto_0
    invoke-static {p1}, Lcom/android/systemui/volume/ZenModePanel;->copy(Landroid/service/notification/Condition;)Landroid/service/notification/Condition;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/ZenModePanel;->setSessionExitCondition(Landroid/service/notification/Condition;)V

    return-void

    :cond_6
    invoke-static {p1}, Lcom/android/systemui/volume/ZenModePanel;->isCountdown(Landroid/service/notification/Condition;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    if-eq v1, v4, :cond_5

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mPrefs:Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;

    iget v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->setMinuteIndex(I)V

    goto :goto_0
.end method

.method private setExitCondition(Landroid/service/notification/Condition;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    sget-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mExitCondition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    invoke-static {v2}, Lcom/android/systemui/volume/ZenModePanel;->getConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->updateWidgets()V

    return-void
.end method

.method private setExpanded(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mExpanded:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setExpanded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mExpanded:Z

    iget-boolean v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mExpanded:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/volume/ZenModePanel;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->ensureSelection()V

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->updateWidgets()V

    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->fireExpanded()V

    return-void
.end method

.method private setRequestingConditions(Z)V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mRequestingConditions:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRequestingConditions "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mRequestingConditions:Z

    iget-boolean v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mRequestingConditions:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    invoke-static {v0, v1}, Lcom/android/systemui/volume/ZenModePanel;->parseExistingTimeCondition(Landroid/content/Context;Landroid/service/notification/Condition;)Landroid/service/notification/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTimeCondition:Landroid/service/notification/Condition;

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTimeCondition:Landroid/service/notification/Condition;

    if-eqz v0, :cond_3

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    :goto_0
    sget-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Initial bucket index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iput-object v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mConditions:[Landroid/service/notification/Condition;

    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->handleUpdateConditions()V

    :goto_1
    return-void

    :cond_3
    sget v0, Lcom/android/systemui/volume/ZenModePanel;->DEFAULT_BUCKET_INDEX:I

    iput v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    iget v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    aget v1, v1, v2

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTimeCondition:Landroid/service/notification/Condition;

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->hideAllConditions()V

    goto :goto_1
.end method

.method private setSessionExitCondition(Landroid/service/notification/Condition;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionExitCondition:Landroid/service/notification/Condition;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mSessionExitCondition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/systemui/volume/ZenModePanel;->getConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-object p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionExitCondition:Landroid/service/notification/Condition;

    return-void
.end method

.method private setToMidnight(Ljava/util/Calendar;)V
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0xb

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xc

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xd

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xe

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    return-void
.end method

.method private updateWidgets()V
    .locals 9

    const/16 v6, 0x8

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mTransitionHelper:Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;

    invoke-virtual {v5}, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;->isTransitioning()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mTransitionHelper:Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;

    invoke-virtual {v5}, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;->pendingUpdateWidgets()V

    return-void

    :cond_0
    invoke-direct {p0, v7}, Lcom/android/systemui/volume/ZenModePanel;->getSelectedZen(I)I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_4

    const/4 v3, 0x1

    :goto_0
    const/4 v5, 0x2

    if-ne v2, v5, :cond_5

    const/4 v4, 0x1

    :goto_1
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mPrefs:Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;

    invoke-static {v5}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->-get0(Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_1
    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mPrefs:Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;

    invoke-static {v5}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->-get1(Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iget-object v8, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    iget-boolean v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mHidden:Z

    if-eqz v5, :cond_8

    move v5, v6

    :goto_3
    invoke-virtual {v8, v5}, Lcom/android/systemui/volume/SegmentedButtons;->setVisibility(I)V

    iget-object v8, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenIntroduction:Landroid/view/View;

    if-eqz v0, :cond_9

    move v5, v7

    :goto_4
    invoke-virtual {v8, v5}, Landroid/view/View;->setVisibility(I)V

    if-eqz v0, :cond_3

    iget-object v8, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenIntroductionMessage:Landroid/widget/TextView;

    if-eqz v3, :cond_a

    const v5, 0x7f0f046c

    :goto_5
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v8, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenIntroductionCustomize:Landroid/widget/TextView;

    if-eqz v3, :cond_c

    move v5, v7

    :goto_6
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    invoke-direct {p0, v4}, Lcom/android/systemui/volume/ZenModePanel;->computeAlarmWarningText(Z)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenAlarmWarning:Landroid/widget/TextView;

    if-eqz v1, :cond_d

    :goto_7
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenAlarmWarning:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    goto :goto_1

    :cond_6
    const/4 v0, 0x1

    goto :goto_2

    :cond_7
    const/4 v0, 0x1

    goto :goto_2

    :cond_8
    move v5, v7

    goto :goto_3

    :cond_9
    move v5, v6

    goto :goto_4

    :cond_a
    iget-boolean v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mVoiceCapable:Z

    if-eqz v5, :cond_b

    const v5, 0x7f0f046e

    goto :goto_5

    :cond_b
    const v5, 0x7f0f046f

    goto :goto_5

    :cond_c
    move v5, v6

    goto :goto_6

    :cond_d
    move v7, v6

    goto :goto_7
.end method


# virtual methods
.method protected createZenButtons()V
    .locals 4

    const v0, 0x7f130427

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/SegmentedButtons;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0f047b

    const v3, 0x7f0f0477

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/systemui/volume/SegmentedButtons;->addButton(IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0f047d

    const v3, 0x7f0f047a

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/systemui/volume/SegmentedButtons;->addButton(IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0f047c

    const v3, 0x7f0f0479

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/systemui/volume/SegmentedButtons;->addButton(IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtonsCallback:Lcom/android/systemui/volume/SegmentedButtons$Callback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SegmentedButtons;->setCallback(Lcom/android/systemui/volume/SegmentedButtons$Callback;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    const/4 v0, 0x1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    sget-boolean v1, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    const-string/jumbo v2, "onAttachedToWindow"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mAttached:Z

    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/ZenModePanel;->getSelectedZen(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mAttachedZen:I

    iget v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mAttachedZen:I

    iput v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionZen:I

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mTransitionHelper:Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;

    invoke-virtual {v1}, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;->clear()V

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/ZenModeController;->addCallback(Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;)V

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    invoke-static {v1}, Lcom/android/systemui/volume/ZenModePanel;->copy(Landroid/service/notification/Condition;)Landroid/service/notification/Condition;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/ZenModePanel;->setSessionExitCondition(Landroid/service/notification/Condition;)V

    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->updateWidgets()V

    iget-boolean v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mHidden:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->setRequestingConditions(Z)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SegmentedButtons;->updateLocale()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    sget-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->checkForAttachedZenChange()V

    iput-boolean v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mAttached:Z

    iput v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mAttachedZen:I

    iput v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionZen:I

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->removeCallback(Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->setSessionExitCondition(Landroid/service/notification/Condition;)V

    invoke-direct {p0, v3}, Lcom/android/systemui/volume/ZenModePanel;->setRequestingConditions(Z)V

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTransitionHelper:Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;

    invoke-virtual {v0}, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;->clear()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/systemui/volume/ZenModePanel;->createZenButtons()V

    const v0, 0x7f130428

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenIntroduction:Landroid/view/View;

    const v0, 0x7f13042a

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenIntroductionMessage:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mSpTexts:Lcom/android/systemui/volume/SpTexts;

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenIntroductionMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SpTexts;->add(Landroid/widget/TextView;)I

    const v0, 0x7f130429

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenIntroductionConfirm:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenIntroductionConfirm:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/volume/ZenModePanel$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/ZenModePanel$4;-><init>(Lcom/android/systemui/volume/ZenModePanel;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f13042b

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenIntroductionCustomize:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenIntroductionCustomize:Landroid/widget/TextView;

    new-instance v1, Lcom/android/systemui/volume/ZenModePanel$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/ZenModePanel$5;-><init>(Lcom/android/systemui/volume/ZenModePanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mSpTexts:Lcom/android/systemui/volume/SpTexts;

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenIntroductionCustomize:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SpTexts;->add(Landroid/widget/TextView;)I

    const v0, 0x7f13042c

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenConditions:Landroid/widget/LinearLayout;

    const v0, 0x7f13042f

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenAlarmWarning:Landroid/widget/TextView;

    const v0, 0x7f13042d

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroup:Landroid/widget/RadioGroup;

    const v0, 0x7f13042e

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    return-void
.end method
