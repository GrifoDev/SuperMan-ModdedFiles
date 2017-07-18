.class public Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;
.super Landroid/app/DialogFragment;
.source "DoNotShowAgainDialogFragment.java"


# instance fields
.field private mChecked:Z

.field private mDataUsageSummary:Lcom/android/settings/datausage/DataUsageSummary;

.field private mDonotShowCheckBox:Landroid/widget/CheckBox;

.field private mDonotShowContainer:Landroid/view/View;

.field private mWlanUpdateCheckBox:Landroid/widget/CheckBox;

.field private mWlanUpdateChecked:Z

.field private mWlanUpdateContainer:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->mChecked:Z

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;)Lcom/android/settings/datausage/DataUsageSummary;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->mDataUsageSummary:Lcom/android/settings/datausage/DataUsageSummary;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->mDonotShowCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->mWlanUpdateCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->mWlanUpdateChecked:Z

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->mChecked:Z

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->mWlanUpdateChecked:Z

    return p1
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    iput-boolean v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->mChecked:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->mWlanUpdateChecked:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/datausage/DataUsageSummary;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    iput-boolean v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->mChecked:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->mWlanUpdateChecked:Z

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->mDataUsageSummary:Lcom/android/settings/datausage/DataUsageSummary;

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    const-string/jumbo v0, "DoNotShowAgainDialog"

    const-string/jumbo v1, "cancel dialog"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 21

    if-eqz p1, :cond_0

    const-string/jumbo v17, "donnotshow_checked"

    const/16 v18, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->mChecked:Z

    const-string/jumbo v17, "wlan_update_checked"

    const/16 v18, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->mWlanUpdateChecked:Z

    :cond_0
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v17

    const-string/jumbo v18, "titleResId"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v17

    const-string/jumbo v18, "positiveResId"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v17

    const-string/jumbo v18, "negativeResId"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v17

    const-string/jumbo v18, "bodyResId"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v17

    const-string/jumbo v18, "bodystr"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v17

    const-string/jumbo v18, "isneedsendsms"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v17

    const v18, 0x7f0400da

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v17 .. v20}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    const v17, 0x7f11033a

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/CheckBox;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->mWlanUpdateCheckBox:Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->mWlanUpdateCheckBox:Landroid/widget/CheckBox;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->mWlanUpdateChecked:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/CheckBox;->setChecked(Z)V

    const v17, 0x7f110339

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->mWlanUpdateContainer:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->mWlanUpdateContainer:Landroid/view/View;

    move-object/from16 v17, v0

    new-instance v18, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment$1;-><init>(Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;)V

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v17, 0x7f1100f4

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/CheckBox;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->mDonotShowCheckBox:Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->mDonotShowCheckBox:Landroid/widget/CheckBox;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->mChecked:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/CheckBox;->setChecked(Z)V

    const v17, 0x7f11033b

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->mDonotShowContainer:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->mDonotShowContainer:Landroid/view/View;

    move-object/from16 v17, v0

    new-instance v18, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment$2;-><init>(Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;)V

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v5, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    new-instance v18, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment$3;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7}, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment$3;-><init>(Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;Z)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v10, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    new-instance v18, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment$4;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment$4;-><init>(Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v17, 0x7f110338

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    if-lez v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v19

    const v20, 0x7f0b0f09

    invoke-virtual/range {v19 .. v20}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    aput-object v19, v18, v20

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const v18, 0x7f0b14a8

    invoke-virtual/range {v17 .. v18}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    new-instance v12, Landroid/text/SpannableString;

    invoke-direct {v12, v11}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    :try_start_0
    new-instance v17, Landroid/text/style/URLSpan;

    const-string/jumbo v18, "http://www.bizport.cn/webpage/agreement_flow.jsp"

    invoke-direct/range {v17 .. v18}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v18

    add-int v18, v18, v9

    const/16 v19, 0x21

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v12, v0, v9, v1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v12, :cond_1

    invoke-virtual {v15, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0d01fe

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getColor(I)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setLinkTextColor(I)V

    :cond_1
    :goto_1
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v17

    return-object v17

    :catch_0
    move-exception v6

    const-string/jumbo v17, "DoNotShowAgainDialog"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "getAgreementDialog: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v6}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_1

    invoke-virtual {v15, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string/jumbo v0, "donnotshow_checked"

    iget-boolean v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->mChecked:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "wlan_update_checked"

    iget-boolean v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->mWlanUpdateChecked:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
