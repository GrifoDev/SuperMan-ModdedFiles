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

.field private mBixbyCurrentStateId:Ljava/lang/String;

.field private mBoostMode:I

.field private mCancel:Lcom/samsung/android/settings/widget/RoundButtonView;

.field private mContext:Landroid/content/Context;

.field private mCustomButton:Landroid/widget/TextView;

.field private mCustomButtonBgDrawable:Landroid/graphics/drawable/Drawable;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

.field private mFromWhere:Ljava/lang/String;

.field private mModeDetailAdapter:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter;

.field private mReceiver:Landroid/content/BroadcastReceiver;

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

.method static synthetic -get2(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    return v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mCustomButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mFromWhere:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->setGLbyUs:Z

    return v0
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
    .locals 28

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0401c1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0401c7

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    const v2, 0x7f110535

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    const v2, 0x7f110515

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    const/16 v2, 0x8

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v2, 0x4

    invoke-virtual {v11, v2}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f110536

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_d

    const v2, 0x7f0b0a64

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v24

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0b0a67

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f110537

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mCustomButton:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mCustomButton:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mCustomButtonBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/boostmode/BoostUtils;->isButtonBackground(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mCustomButton:Landroid/widget/TextView;

    const v3, 0x7f02050b

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mCustomButton:Landroid/widget/TextView;

    new-instance v3, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$4;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "pbm_maximum_brightness"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "pbm_maximum_brightness"

    const/4 v4, 0x1

    const/16 v5, 0x64

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setBoostModeValue(Landroid/content/Context;Ljava/lang/String;II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "pbm_maximum_brightness"

    const/4 v4, 0x2

    const/16 v5, 0x64

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setBoostModeValue(Landroid/content/Context;Ljava/lang/String;II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "pbm_maximum_brightness"

    const/4 v4, 0x3

    const/16 v5, 0x64

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setBoostModeValue(Landroid/content/Context;Ljava/lang/String;II)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getLastPerfmodebrightness(Landroid/content/Context;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "pbm_maximum_brightness"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    invoke-static {v3, v4, v5}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setLastPerfmodebrightness(Landroid/content/Context;I)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "pbm_maximum_brightness"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v16

    add-int/lit8 v19, v16, -0x5a

    if-gez v19, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "pbm_maximum_brightness"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    const/16 v5, 0x5a

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setBoostModeValue(Landroid/content/Context;Ljava/lang/String;II)V

    const/16 v19, 0x0

    :cond_3
    new-instance v3, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;

    const v2, 0x7f0b01b3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-nez v19, :cond_f

    const v2, 0x7f0b084c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "WQHD,FHD,HD"

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "pbm_screen_resolution"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "pbm_screen_resolution"

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setBoostModeValue(Landroid/content/Context;Ljava/lang/String;II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "pbm_screen_resolution"

    const/4 v4, 0x2

    const/4 v5, 0x2

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setBoostModeValue(Landroid/content/Context;Ljava/lang/String;II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "pbm_screen_resolution"

    const/4 v4, 0x3

    const/4 v5, 0x2

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setBoostModeValue(Landroid/content/Context;Ljava/lang/String;II)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "pbm_screen_resolution"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v20

    packed-switch v20, :pswitch_data_0

    const v2, 0x7f0b0598

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v21

    :goto_2
    const v2, 0x7f0b0a74

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->getCurrentResolution(Landroid/content/Context;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "pbm_screen_resolution"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    invoke-static {v3, v4, v5}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    if-eq v2, v3, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0b0a75

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    :cond_5
    new-instance v2, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;

    const v3, 0x7f0b0593

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-direct {v2, v3, v0, v1}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "pbm_video_enhancer"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "pbm_video_enhancer"

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setBoostModeValue(Landroid/content/Context;Ljava/lang/String;II)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "pbm_video_enhancer"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v26

    new-instance v3, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;

    const v2, 0x7f0b0411

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v2, 0x7f0b0413

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x1

    move/from16 v0, v26

    if-ne v0, v2, :cond_10

    const v2, 0x7f0b0a2b

    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v5, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "pbm_uhq_upscaler"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "pbm_uhq_upscaler"

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setBoostModeValue(Landroid/content/Context;Ljava/lang/String;II)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "pbm_uhq_upscaler"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v25

    new-instance v3, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;

    const v2, 0x7f0b0977

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v2, 0x7f0b0978

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x1

    move/from16 v0, v25

    if-ne v0, v2, :cond_11

    const v2, 0x7f0b0a2b

    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v5, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "pbm_game_launcher"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "pbm_game_launcher"

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setBoostModeValue(Landroid/content/Context;Ljava/lang/String;II)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "pbm_game_launcher"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v12

    new-instance v3, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;

    const v2, 0x7f0b0a78

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v2, 0x7f0b0a79

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x1

    if-ne v12, v2, :cond_12

    const v2, 0x7f0b0a2b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_5
    invoke-direct {v3, v4, v5, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "pbm_game_tools"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "pbm_game_tools"

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setBoostModeValue(Landroid/content/Context;Ljava/lang/String;II)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "pbm_game_tools"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v13

    new-instance v3, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;

    const v2, 0x7f0b0a7a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v2, 0x7f0b0a7b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x1

    if-ne v13, v2, :cond_13

    const v2, 0x7f0b0a2b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_6
    invoke-direct {v3, v4, v5, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    new-instance v2, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter;

    const v5, 0x7f0401c5

    const/4 v6, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;Landroid/content/Context;IILjava/util/List;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mModeDetailAdapter:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a01c9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a050f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v8, v2

    const v2, 0x7f110516

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "sem_perfomance_mode"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v2, v3, :cond_14

    const/16 v2, 0x8

    invoke-virtual {v9, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_7
    const v2, 0x7f110517

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v0, v23

    move/from16 v1, v23

    invoke-virtual {v10, v0, v2, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    const v2, 0x7f110180

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/widget/RoundButtonView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mCancel:Lcom/samsung/android/settings/widget/RoundButtonView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mCancel:Lcom/samsung/android/settings/widget/RoundButtonView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/widget/RoundButtonView;->changeBgModeForPSM(I)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "sem_perfomance_mode"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v2, v3, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mCancel:Lcom/samsung/android/settings/widget/RoundButtonView;

    const v3, 0x7f0b042c

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/widget/RoundButtonView;->setText(Ljava/lang/CharSequence;)V

    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mCancel:Lcom/samsung/android/settings/widget/RoundButtonView;

    new-instance v3, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$6;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/widget/RoundButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x102000a

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ListView;

    invoke-virtual {v15, v14}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mModeDetailAdapter:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter;

    invoke-virtual {v15, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v2, 0x106000d

    invoke-virtual {v15, v2}, Landroid/widget/ListView;->setSelector(I)V

    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Landroid/widget/ListView;->setFocusable(Z)V

    return-object v27

    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e

    const v2, 0x7f0b0a66

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_0

    :cond_e
    const v2, 0x7f0b0a62

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_0

    :cond_f
    invoke-static/range {v19 .. v19}, Lcom/android/settings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_0
    const v2, 0x7f0b0596

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_2

    :pswitch_1
    const v2, 0x7f0b0597

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_2

    :cond_10
    const v2, 0x7f0b0a2c

    goto/16 :goto_3

    :cond_11
    const v2, 0x7f0b0a2c

    goto/16 :goto_4

    :cond_12
    const v2, 0x7f0b0a2c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_5

    :cond_13
    const v2, 0x7f0b0a2c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_6

    :cond_14
    const/4 v2, 0x0

    move/from16 v0, v23

    move/from16 v1, v23

    invoke-virtual {v9, v0, v2, v1, v8}, Landroid/view/View;->setPadding(IIII)V

    const v2, 0x7f110180

    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/widget/RoundButtonView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mApply:Lcom/samsung/android/settings/widget/RoundButtonView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mApply:Lcom/samsung/android/settings/widget/RoundButtonView;

    const v3, 0x7f0b042b

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/widget/RoundButtonView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mApply:Lcom/samsung/android/settings/widget/RoundButtonView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/widget/RoundButtonView;->changeBgModeForPSM(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mApply:Lcom/samsung/android/settings/widget/RoundButtonView;

    new-instance v3, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$5;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/widget/RoundButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_7

    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mCancel:Lcom/samsung/android/settings/widget/RoundButtonView;

    const v3, 0x7f0b1102

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/widget/RoundButtonView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initDialog()V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "fromWhere"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mFromWhere:Ljava/lang/String;

    const-string/jumbo v2, "boost_mode"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "BoostModeChangeDialogActivity"

    const-string/jumbo v3, "Performance mode off"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mFromWhere:Ljava/lang/String;

    invoke-static {p0, v4, v2}, Lcom/samsung/android/settings/boostmode/BoostUtils;->startAnimationActivity(Landroid/content/Context;ILjava/lang/String;)V

    invoke-static {p0, v4}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setPerformanceBoosterMode(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->finish()V

    :cond_0
    :goto_0
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

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const-string/jumbo v2, "GameModePopupView"

    iput-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBixbyCurrentStateId:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    const-string/jumbo v2, "EntertainmentModePopupView"

    iput-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBixbyCurrentStateId:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "HighPerformanceModePopupView"

    iput-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBixbyCurrentStateId:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
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

    :cond_0
    :goto_0
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

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v4, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0401c1

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0401c7

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v4, 0x7f110535

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v4, 0x7f110515

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v2, :cond_0

    iget v4, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/samsung/android/settings/boostmode/BoostUtils;->isButtonBackground(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mCustomButton:Landroid/widget/TextView;

    const v5, 0x7f02050b

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :goto_1
    return-void

    :cond_1
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
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
    .locals 4

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBixbyCurrentStateId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void
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
    .locals 1

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
