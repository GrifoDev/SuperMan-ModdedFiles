.class public Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "BoostModeChangeDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$1;,
        Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$2;,
        Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;,
        Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter;
    }
.end annotation


# instance fields
.field private mAD:Landroid/app/AlertDialog;

.field private mApply:Lcom/samsung/android/settings/widget/RoundButtonView;

.field private mApplyEventId:I

.field private mBixbyCurrentStateId:Ljava/lang/String;

.field private mBoostMode:I

.field private mCancel:Lcom/samsung/android/settings/widget/RoundButtonView;

.field private mCancelEventId:I

.field private mContext:Landroid/content/Context;

.field private mCustomButton:Landroid/widget/TextView;

.field private mCustomButtonBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mCustomizeEventId:I

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

.field private mFromWhere:Ljava/lang/String;

.field private mModeDetailAdapter:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenId:I

.field private setGLbyUs:Z


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mAD:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Lcom/samsung/android/settings/widget/RoundButtonView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mApply:Lcom/samsung/android/settings/widget/RoundButtonView;

    return-object v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mFromWhere:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mScreenId:I

    return v0
.end method

.method static synthetic -get12(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->setGLbyUs:Z

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mApplyEventId:I

    return v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBixbyCurrentStateId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    return v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mCancelEventId:I

    return v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mCustomButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mCustomizeEventId:I

    return v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mAD:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->setGLbyUs:Z

    return p1
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mFromWhere:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    new-instance v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$1;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    iput-boolean v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->setGLbyUs:Z

    new-instance v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$2;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 47

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0d01e1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0d01e7

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v34

    const v4, 0x7f0a0655

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/ImageView;

    const v4, 0x7f0a0514

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v31

    const/16 v4, 0x8

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v4, 0x8

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    const v4, 0x7f0a0656

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v38

    check-cast v38, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_10

    const v4, 0x7f120504

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v43

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f120513

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v38

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f0a01f4

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mCustomButton:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mCustomButton:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mCustomButtonBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/boostmode/BoostUtils;->isButtonBackground(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mCustomButton:Landroid/widget/TextView;

    const v5, 0x7f080785

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mCustomButton:Landroid/widget/TextView;

    new-instance v5, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$4;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "pbm_maximum_brightness"

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    invoke-static {v4, v5, v6}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "pbm_maximum_brightness"

    const/4 v6, 0x1

    const/16 v7, 0x64

    invoke-static {v4, v5, v6, v7}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setBoostModeValue(Landroid/content/Context;Ljava/lang/String;II)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "pbm_maximum_brightness"

    const/4 v6, 0x2

    const/16 v7, 0x64

    invoke-static {v4, v5, v6, v7}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setBoostModeValue(Landroid/content/Context;Ljava/lang/String;II)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "pbm_maximum_brightness"

    const/4 v6, 0x3

    const/16 v7, 0x64

    invoke-static {v4, v5, v6, v7}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setBoostModeValue(Landroid/content/Context;Ljava/lang/String;II)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getLastPerfmodebrightness(Landroid/content/Context;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "pbm_maximum_brightness"

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    invoke-static {v5, v6, v7}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    invoke-static {v4, v5}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setLastPerfmodebrightness(Landroid/content/Context;I)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "pbm_maximum_brightness"

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    invoke-static {v4, v5, v6}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v36

    const/16 v29, 0x5a

    add-int/lit8 v39, v36, -0x5a

    if-gez v39, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "pbm_maximum_brightness"

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    const/16 v7, 0x5a

    invoke-static {v4, v5, v6, v7}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setBoostModeValue(Landroid/content/Context;Ljava/lang/String;II)V

    const/16 v39, 0x0

    :cond_3
    const/4 v4, 0x3

    new-array v9, v4, [Ljava/lang/String;

    const v4, 0x7f121c72

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v9, v5

    const/4 v4, 0x5

    invoke-static {v4}, Lcom/android/settings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v9, v5

    const/16 v4, 0xa

    invoke-static {v4}, Lcom/android/settings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v9, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "pbm_maximum_brightness"

    move/from16 v0, v36

    invoke-static {v4, v5, v0}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setPreviousBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)V

    new-instance v4, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;

    const v5, 0x7f120dc5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-nez v39, :cond_12

    const/4 v7, 0x0

    :goto_1
    const-string/jumbo v10, "pbm_maximum_brightness"

    const/4 v6, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v4 .. v10}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v30

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMultiResolution()Z

    move-result v4

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "pbm_screen_resolution"

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    invoke-static {v4, v5, v6}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "pbm_screen_resolution"

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-static {v4, v5, v6, v7}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setBoostModeValue(Landroid/content/Context;Ljava/lang/String;II)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "pbm_screen_resolution"

    const/4 v6, 0x2

    const/4 v7, 0x2

    invoke-static {v4, v5, v6, v7}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setBoostModeValue(Landroid/content/Context;Ljava/lang/String;II)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "pbm_screen_resolution"

    const/4 v6, 0x3

    const/4 v7, 0x2

    invoke-static {v4, v5, v6, v7}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setBoostModeValue(Landroid/content/Context;Ljava/lang/String;II)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "pbm_screen_resolution"

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    invoke-static {v4, v5, v6}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v13

    const/4 v4, 0x3

    new-array v15, v4, [Ljava/lang/String;

    const-string/jumbo v4, "HD"

    const/4 v5, 0x0

    aput-object v4, v15, v5

    const-string/jumbo v4, "FHD"

    const/4 v5, 0x1

    aput-object v4, v15, v5

    const-string/jumbo v4, "WQHD"

    const/4 v5, 0x2

    aput-object v4, v15, v5

    invoke-static {}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getDisplayPxSize()Landroid/graphics/Point;

    move-result-object v40

    if-eqz v40, :cond_5

    move-object/from16 v0, v40

    iget v4, v0, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    move-object/from16 v0, v40

    iget v5, v0, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    div-float v41, v4, v5

    const v4, 0x3fe38e39

    cmpl-float v4, v41, v4

    if-lez v4, :cond_5

    const/4 v4, 0x3

    new-array v15, v4, [Ljava/lang/String;

    const-string/jumbo v4, "HD+"

    const/4 v5, 0x0

    aput-object v4, v15, v5

    const-string/jumbo v4, "FHD+"

    const/4 v5, 0x1

    aput-object v4, v15, v5

    const-string/jumbo v4, "WQHD+"

    const/4 v5, 0x2

    aput-object v4, v15, v5

    :cond_5
    const v4, 0x7f12050d

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->getCurrentResolution(Landroid/content/Context;)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "pbm_screen_resolution"

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    invoke-static {v5, v6, v7}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    if-eq v4, v5, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f12050e

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "pbm_screen_resolution"

    invoke-static {v4, v5, v13}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setPreviousBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)V

    new-instance v10, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;

    const v4, 0x7f121753

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v16, "pbm_screen_resolution"

    const/4 v14, 0x1

    invoke-direct/range {v10 .. v16}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v30

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "pbm_video_enhancer"

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    invoke-static {v4, v5, v6}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "pbm_video_enhancer"

    const/4 v6, 0x2

    const/4 v7, 0x1

    invoke-static {v4, v5, v6, v7}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setBoostModeValue(Landroid/content/Context;Ljava/lang/String;II)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "pbm_video_enhancer"

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    invoke-static {v4, v5, v6}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v45

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "pbm_video_enhancer"

    move/from16 v0, v45

    invoke-static {v4, v5, v0}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setPreviousBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)V

    new-instance v16, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;

    const v4, 0x7f120cd1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v17

    const v4, 0x7f120cd5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/4 v4, 0x1

    move/from16 v0, v45

    if-ne v0, v4, :cond_14

    const/16 v19, 0x1

    :goto_2
    const-string/jumbo v22, "pbm_video_enhancer"

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v16 .. v22}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v30

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "pbm_uhq_upscaler"

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    invoke-static {v4, v5, v6}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "pbm_uhq_upscaler"

    const/4 v6, 0x2

    const/4 v7, 0x1

    invoke-static {v4, v5, v6, v7}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setBoostModeValue(Landroid/content/Context;Ljava/lang/String;II)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "pbm_uhq_upscaler"

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    invoke-static {v4, v5, v6}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v44

    const v4, 0x7f121c34

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static {}, Lcom/samsung/android/settings/boostmode/BoostUtils;->isSupportNewUhqUpscaler()Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x1

    move/from16 v0, v44

    if-ne v0, v4, :cond_15

    const v4, 0x7f12050f

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    :cond_a
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "pbm_uhq_upscaler"

    move/from16 v0, v44

    invoke-static {v4, v5, v0}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setPreviousBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)V

    new-instance v16, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;

    const v4, 0x7f121c35

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v17

    if-eqz v44, :cond_16

    const/16 v19, 0x1

    :goto_4
    const-string/jumbo v22, "pbm_uhq_upscaler"

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v16 .. v22}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v30

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "pbm_game_launcher"

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    invoke-static {v4, v5, v6}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "pbm_game_launcher"

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-static {v4, v5, v6, v7}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setBoostModeValue(Landroid/content/Context;Ljava/lang/String;II)V

    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/settings/boostmode/BoostUtils;->isExistGameLauncherPackage(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "pbm_game_launcher"

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    invoke-static {v4, v5, v6}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v32

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "pbm_game_launcher"

    move/from16 v0, v32

    invoke-static {v4, v5, v0}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setPreviousBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)V

    new-instance v19, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;

    const v4, 0x7f120c78

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v20

    const v4, 0x7f120c77

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/4 v4, 0x1

    move/from16 v0, v32

    if-ne v0, v4, :cond_17

    const/16 v22, 0x1

    :goto_5
    const-string/jumbo v25, "pbm_game_launcher"

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v19 .. v25}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/settings/boostmode/BoostUtils;->isNavigationBarExist(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "pbm_game_tools"

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    invoke-static {v4, v5, v6}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "pbm_game_tools"

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-static {v4, v5, v6, v7}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setBoostModeValue(Landroid/content/Context;Ljava/lang/String;II)V

    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "pbm_game_tools"

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    invoke-static {v4, v5, v6}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v33

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "pbm_game_tools"

    move/from16 v0, v33

    invoke-static {v4, v5, v0}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setPreviousBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)V

    new-instance v19, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;

    const v4, 0x7f120c7b

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v20

    const v4, 0x7f120c7a

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/4 v4, 0x1

    move/from16 v0, v33

    if-ne v0, v4, :cond_18

    const/16 v22, 0x1

    :goto_6
    const-string/jumbo v25, "pbm_game_tools"

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v19 .. v25}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    new-instance v19, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter;

    const v22, 0x7f0d01e4

    const/16 v23, 0x0

    move-object/from16 v20, p0

    move-object/from16 v21, p0

    move-object/from16 v24, v30

    invoke-direct/range {v19 .. v24}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;Landroid/content/Context;IILjava/util/List;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mModeDetailAdapter:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070071

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v0, v4

    move/from16 v42, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0705fe

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v0, v4

    move/from16 v26, v0

    const v4, 0x7f0a0722

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    const/4 v4, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v42

    move/from16 v2, v42

    move/from16 v3, v26

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    const v4, 0x7f0a0118

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/widget/RoundButtonView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mApply:Lcom/samsung/android/settings/widget/RoundButtonView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mApply:Lcom/samsung/android/settings/widget/RoundButtonView;

    const v5, 0x7f1205f5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/widget/RoundButtonView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mApply:Lcom/samsung/android/settings/widget/RoundButtonView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/widget/RoundButtonView;->changeBgModeForPSM(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mApply:Lcom/samsung/android/settings/widget/RoundButtonView;

    new-instance v5, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$5;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)V

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/widget/RoundButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f0a0723

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v42

    move/from16 v2, v42

    invoke-virtual {v0, v1, v4, v2, v5}, Landroid/view/View;->setPadding(IIII)V

    const v4, 0x7f0a0118

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/widget/RoundButtonView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mCancel:Lcom/samsung/android/settings/widget/RoundButtonView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mCancel:Lcom/samsung/android/settings/widget/RoundButtonView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/widget/RoundButtonView;->changeBgModeForPSM(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mCancel:Lcom/samsung/android/settings/widget/RoundButtonView;

    const v5, 0x7f120552

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/widget/RoundButtonView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mCancel:Lcom/samsung/android/settings/widget/RoundButtonView;

    new-instance v5, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$6;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$6;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)V

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/widget/RoundButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x102000a

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/ListView;

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mModeDetailAdapter:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter;

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v4, 0x106000d

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setSelector(I)V

    const/4 v4, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setFocusable(Z)V

    return-object v46

    :cond_10
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_11

    const v4, 0x7f120508

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v43

    goto/16 :goto_0

    :cond_11
    const v4, 0x7f12050a

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v43

    goto/16 :goto_0

    :cond_12
    const/4 v6, 0x5

    move/from16 v0, v39

    if-ne v0, v6, :cond_13

    const/4 v7, 0x1

    goto/16 :goto_1

    :cond_13
    const/4 v7, 0x2

    goto/16 :goto_1

    :cond_14
    const/16 v19, 0x0

    goto/16 :goto_2

    :cond_15
    const/4 v4, 0x2

    move/from16 v0, v44

    if-ne v0, v4, :cond_a

    const v4, 0x7f120510

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_3

    :cond_16
    const/16 v19, 0x0

    goto/16 :goto_4

    :cond_17
    const/16 v22, 0x0

    goto/16 :goto_5

    :cond_18
    const/16 v22, 0x0

    goto/16 :goto_6
.end method

.method private initDialog()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v2, "fromWhere"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mFromWhere:Ljava/lang/String;

    const-string/jumbo v2, "boost_mode"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "BoostModeChangeDialogActivity"

    const-string/jumbo v3, "Performance mode off"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    new-array v3, v6, [Ljava/lang/Object;

    const v4, 0x7f120ccd

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f12013b

    invoke-virtual {p0, v4, v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->finish()V

    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mFromWhere:Ljava/lang/String;

    invoke-static {p0, v5, v2}, Lcom/samsung/android/settings/boostmode/BoostUtils;->startAnimationActivity(Landroid/content/Context;ILjava/lang/String;)V

    invoke-static {p0, v5}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setPerformanceBoosterMode(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "boost_mode"

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    const-string/jumbo v2, "BoostModeChangeDialogActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Current Performance mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    if-ne v2, v6, :cond_3

    const-string/jumbo v2, "GameModePopupView"

    iput-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBixbyCurrentStateId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b03e5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mScreenId:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b03e4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mCustomizeEventId:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b03e2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mApplyEventId:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b03e3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mCancelEventId:I

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    invoke-static {v2, v3}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getPerfModeTitle(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->createView()Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    new-instance v2, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$3;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)V

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->setupAlert()V

    return-void

    :cond_3
    iget v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    const-string/jumbo v2, "EntertainmentModePopupView"

    iput-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBixbyCurrentStateId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b03e1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mScreenId:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b03e0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mCustomizeEventId:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b03de

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mApplyEventId:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b03df

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mCancelEventId:I

    goto :goto_1

    :cond_4
    const-string/jumbo v2, "HighPerformanceModePopupView"

    iput-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBixbyCurrentStateId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b03e9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mScreenId:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b03e8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mCustomizeEventId:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b03e6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mApplyEventId:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b03e7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mCancelEventId:I

    goto/16 :goto_1
.end method


# virtual methods
.method public finish()V
    .locals 2

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    const v0, 0x7f010036

    const v1, 0x7f01002d

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const-string/jumbo v0, "BoostModeChangeDialogActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onActivityResult for GAME MODE requestCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const-string/jumbo v0, "BoostModeChangeDialogActivity"

    const-string/jumbo v1, "onActivityResult for GAME MODE"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getCurrentPowerSavingMode(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mAD:Landroid/app/AlertDialog;

    iget v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    iget-boolean v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->setGLbyUs:Z

    iget-object v4, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mFromWhere:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/settings/boostmode/BoostUtils;->showTurnOffPSM(Landroid/content/Context;Landroid/app/AlertDialog;IZLjava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mScreenId:I

    iget v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mApplyEventId:I

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->sendSmartManagerEventLog(Landroid/content/Context;II)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/app/AlertActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mFromWhere:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/boostmode/BoostUtils;->startAnimationActivity(Landroid/content/Context;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setPerformanceBoosterMode(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->finish()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onBackPressed()V

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/boostmode/BoostUtils;->resetBoostModeValue(Landroid/content/Context;I)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 9

    const/16 v8, 0x8

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v4, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0d01e1

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0d01e7

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v4, 0x7f0a0655

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v4, 0x7f0a0514

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v2, :cond_0

    iget v4, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mCustomButton:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    invoke-static {p0}, Lcom/samsung/android/settings/boostmode/BoostUtils;->isButtonBackground(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mCustomButton:Landroid/widget/TextView;

    const v5, 0x7f080785

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mCustomButton:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mCustomButtonBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.sm.BOOST_MODE_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportBoostMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->finish()V

    :goto_0
    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->initDialog()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mAD:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mAD:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mAD:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mAD:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->setIntent(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->initDialog()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBixbyCurrentStateId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method protected onResume()V
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBixbyCurrentStateId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    new-array v1, v4, [Ljava/lang/Object;

    const v2, 0x7f120ccd

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f12013b

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mScreenId:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->sendSmartManagerFlowLog(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStart()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.samsung.android.sm.POWER_MODE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onStop()V
    .locals 2

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method
