.class public Lcom/samsung/android/settings/fmm/SimChangeAlert;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SimChangeAlert.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/fmm/SimChangeAlert$1;
    }
.end annotation


# static fields
.field private static SETTINGS_FMM_SIM_CHANGE_ALERT:I

.field private static SETTINGS_FMM_SIM_CHANGE_ALERT_ADD:I

.field private static SETTINGS_FMM_SIM_CHANGE_ALERT_CONTACT:I

.field private static SETTINGS_FMM_SIM_CHANGE_ALERT_SAVE:I

.field private static SETTINGS_FMM_SIM_CHANGE_ALERT_SWITCH:I

.field public static chkboxFlag:Z


# instance fields
.field public AlterMessageLengthFilter:Landroid/text/InputFilter;

.field private mActionBarLayout:Landroid/view/View;

.field private mAlertMessage:Landroid/widget/EditText;

.field private mContact:Landroid/widget/Button;

.field private mContent:Landroid/widget/LinearLayout;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLinkedContactEdit:Landroid/widget/EditText;

.field private mLinkedContactTitle:Landroid/widget/TextView;

.field private mMaxToast:Landroid/widget/Toast;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTempName:Ljava/lang/String;

.field mView:Landroid/view/View;

.field receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->SETTINGS_FMM_SIM_CHANGE_ALERT_ADD:I

    return v0
.end method

.method static synthetic -get1()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->SETTINGS_FMM_SIM_CHANGE_ALERT_CONTACT:I

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/fmm/SimChangeAlert;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mAlertMessage:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/fmm/SimChangeAlert;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/fmm/SimChangeAlert;)Landroid/widget/Toast;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mMaxToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/fmm/SimChangeAlert;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/fmm/SimChangeAlert;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mTempName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(I)I
    .locals 0

    sput p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->SETTINGS_FMM_SIM_CHANGE_ALERT_ADD:I

    return p0
.end method

.method static synthetic -set1(I)I
    .locals 0

    sput p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->SETTINGS_FMM_SIM_CHANGE_ALERT_CONTACT:I

    return p0
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/fmm/SimChangeAlert;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mMaxToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic -set3(Lcom/samsung/android/settings/fmm/SimChangeAlert;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mTempName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/fmm/SimChangeAlert;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->addNewRecipient()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/fmm/SimChangeAlert;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->setTitleTextVisible(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/fmm/SimChangeAlert$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert$1;-><init>(Lcom/samsung/android/settings/fmm/SimChangeAlert;)V

    iput-object v0, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->AlterMessageLengthFilter:Landroid/text/InputFilter;

    return-void
.end method

.method private addNewRecipient()V
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x4

    if-gt v2, v3, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mInflater:Landroid/view/LayoutInflater;

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    const v4, 0x7f04015e

    invoke-virtual {v2, v4, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object v0, v1

    check-cast v0, Lcom/samsung/android/settings/fmm/RecipientsMinusView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/fmm/RecipientsMinusView;->setFocus(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b073f

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private enableDisableView(Landroid/view/View;Z)V
    .locals 3

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->enableDisableView(Landroid/view/View;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setTitleTextVisible(Z)V
    .locals 4

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mLinkedContactTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mLinkedContactEdit:Landroid/widget/EditText;

    if-nez p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method public DoSave()Z
    .locals 18

    new-instance v11, Lcom/samsung/android/settings/fmm/NVStore;

    invoke-direct {v11}, Lcom/samsung/android/settings/fmm/NVStore;-><init>()V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Lcom/samsung/android/settings/fmm/NVStore;->GetPhPWD()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11}, Lcom/samsung/android/settings/fmm/NVStore;->GetMTStatus()Z

    move-result v15

    if-eqz v15, :cond_1

    const-string/jumbo v8, "1"

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0b072e

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mAlertMessage:Landroid/widget/EditText;

    invoke-virtual {v15}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v15

    invoke-interface {v15}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11}, Lcom/samsung/android/settings/fmm/NVStore;->GetStoredIMSI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11}, Lcom/samsung/android/settings/fmm/NVStore;->GetStoredICCID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11}, Lcom/samsung/android/settings/fmm/NVStore;->IsPhLockeEnabled()Z

    move-result v15

    if-eqz v15, :cond_2

    const-string/jumbo v5, "1"

    :goto_1
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ";"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ";"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ";"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_0

    if-eqz v6, :cond_3

    const-string/jumbo v15, ""

    invoke-virtual {v6, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v15

    if-nez v15, :cond_3

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v15

    const v16, 0x7f0b0743

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/Toast;->show()V

    const/4 v15, 0x0

    return v15

    :cond_1
    const-string/jumbo v8, "0"

    goto :goto_0

    :cond_2
    const-string/jumbo v5, "0"

    goto :goto_1

    :cond_3
    const/4 v10, 0x0

    const/4 v12, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v15

    if-ge v12, v15, :cond_9

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v15, v12}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/fmm/RecipientsMinusView;

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v15

    if-nez v15, :cond_4

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticLGTModel()Z

    move-result v15

    :goto_3
    if-nez v15, :cond_6

    invoke-virtual {v1}, Lcom/samsung/android/settings/fmm/RecipientsMinusView;->getPhoneNumber()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v15

    const v16, 0x7f0b0744

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/Toast;->show()V

    const/4 v15, 0x1

    invoke-virtual {v1, v15}, Lcom/samsung/android/settings/fmm/RecipientsMinusView;->setFocus(Z)V

    const/4 v15, 0x0

    return v15

    :cond_4
    const/4 v15, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v1}, Lcom/samsung/android/settings/fmm/RecipientsMinusView;->getPhoneNumber()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "+"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_6

    invoke-virtual {v1}, Lcom/samsung/android/settings/fmm/RecipientsMinusView;->getPhoneNumber()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "00"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    :cond_6
    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v1}, Lcom/samsung/android/settings/fmm/RecipientsMinusView;->getPhoneNumber()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_8

    invoke-virtual {v1}, Lcom/samsung/android/settings/fmm/RecipientsMinusView;->getPhoneNumber()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ";"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual {v1}, Lcom/samsung/android/settings/fmm/RecipientsMinusView;->getPhoneNumber()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v15

    const v16, 0x7f0b073d

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/Toast;->show()V

    const/4 v15, 0x1

    invoke-virtual {v1, v15}, Lcom/samsung/android/settings/fmm/RecipientsMinusView;->setFocus(Z)V

    const/4 v15, 0x0

    return v15

    :cond_8
    const-string/jumbo v15, "none;"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_9
    if-nez v10, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v15

    const v16, 0x7f0b0745

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/Toast;->show()V

    const/4 v15, 0x0

    return v15

    :cond_a
    :goto_5
    const/4 v15, 0x5

    if-eq v10, v15, :cond_b

    const-string/jumbo v15, "none;"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_b
    const/4 v3, 0x0

    const-string/jumbo v3, "0000"

    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v15

    if-eqz v15, :cond_c

    invoke-virtual {v11}, Lcom/samsung/android/settings/fmm/NVStore;->GetStoredIMSI2()Ljava/lang/String;

    move-result-object v4

    const/4 v4, 0x0

    const-string/jumbo v4, "0000"

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ";"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ";"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ";"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ";"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6
    const-string/jumbo v15, "SimChangeAlert"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "data formed for writing = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget-object v16, Lcom/samsung/android/settings/fmm/NVStore$datatype;->All:Lcom/samsung/android/settings/fmm/NVStore$datatype;

    move-object/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Lcom/samsung/android/settings/fmm/NVStore;->writedata(Ljava/lang/String;Lcom/samsung/android/settings/fmm/NVStore$datatype;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v15}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v15

    if-eqz v15, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v16, "change_alert"

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v15

    const v16, 0x7f0b0739

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/Toast;->show()V

    const/4 v15, 0x1

    return v15

    :cond_c
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticLGTModel()Z

    move-result v15

    if-eqz v15, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    const-string/jumbo v16, "phone"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/telephony/TelephonyManager;

    invoke-virtual {v14}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d

    if-eqz v2, :cond_e

    const-string/jumbo v15, ""

    invoke-virtual {v2, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v15

    if-nez v15, :cond_e

    :cond_d
    const-string/jumbo v2, "00000000"

    :cond_e
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ";"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ";"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ";"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ";"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_f
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ";"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ";"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ";"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v16, "change_alert"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_7
.end method

.method public SetContactNumber(Ljava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/16 v13, 0x3b

    const/4 v12, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    iget-object v9, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v9

    if-ge v4, v9, :cond_1

    iget-object v9, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/fmm/RecipientsMinusView;

    invoke-virtual {v0}, Lcom/samsung/android/settings/fmm/RecipientsMinusView;->getPhoneNumber()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v2, :cond_1

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/samsung/android/settings/fmm/RecipientsMinusView;->setPhoneNumber(Ljava/lang/String;)V

    move v2, v3

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v9, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v2, :cond_2

    iget-object v9, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mInflater:Landroid/view/LayoutInflater;

    iget-object v10, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    const v11, 0x7f04015e

    invoke-virtual {v9, v11, v10, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v9, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/fmm/RecipientsMinusView;

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/samsung/android/settings/fmm/RecipientsMinusView;->setPhoneNumber(Ljava/lang/String;)V

    move v5, v6

    move v2, v3

    goto :goto_1

    :cond_2
    return-void
.end method

.method protected getMetricsCategory()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->SETTINGS_FMM_SIM_CHANGE_ALERT:I

    sget v0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->SETTINGS_FMM_SIM_CHANGE_ALERT:I

    return v0
.end method

.method public init()V
    .locals 15

    const v14, 0x7f04015e

    const/4 v13, 0x0

    const/4 v3, 0x0

    new-instance v2, Lcom/samsung/android/settings/fmm/NVStore;

    invoke-direct {v2}, Lcom/samsung/android/settings/fmm/NVStore;-><init>()V

    invoke-virtual {v2}, Lcom/samsung/android/settings/fmm/NVStore;->GetRec1()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string/jumbo v11, "none"

    invoke-virtual {v6, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_7

    :cond_0
    const-string/jumbo v6, ""

    :goto_0
    invoke-virtual {v2}, Lcom/samsung/android/settings/fmm/NVStore;->GetRec2()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string/jumbo v11, "none"

    invoke-virtual {v7, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_8

    :cond_1
    const-string/jumbo v7, ""

    :goto_1
    invoke-virtual {v2}, Lcom/samsung/android/settings/fmm/NVStore;->GetRec3()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string/jumbo v11, "none"

    invoke-virtual {v8, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_9

    :cond_2
    const-string/jumbo v8, ""

    :goto_2
    invoke-virtual {v2}, Lcom/samsung/android/settings/fmm/NVStore;->GetRec4()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    const-string/jumbo v11, "none"

    invoke-virtual {v9, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_a

    :cond_3
    const-string/jumbo v9, ""

    :goto_3
    invoke-virtual {v2}, Lcom/samsung/android/settings/fmm/NVStore;->GetRec5()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string/jumbo v11, "none"

    invoke-virtual {v10, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_b

    :cond_4
    const-string/jumbo v10, ""

    :goto_4
    invoke-virtual {v2}, Lcom/samsung/android/settings/fmm/NVStore;->GetSmsMsg()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    if-eqz v5, :cond_6

    const-string/jumbo v11, "Keep this message."

    invoke-virtual {v5, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_6

    :cond_5
    const-string/jumbo v5, ""

    :cond_6
    iget-object v11, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mAlertMessage:Landroid/widget/EditText;

    invoke-virtual {v11, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_7
    iget-object v11, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mInflater:Landroid/view/LayoutInflater;

    iget-object v12, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v14, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v11, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v11, v13}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/fmm/RecipientsMinusView;

    invoke-virtual {v0, v6}, Lcom/samsung/android/settings/fmm/RecipientsMinusView;->setPhoneNumber(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    iget-object v11, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mInflater:Landroid/view/LayoutInflater;

    iget-object v12, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v14, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v11, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/fmm/RecipientsMinusView;

    invoke-virtual {v0, v7}, Lcom/samsung/android/settings/fmm/RecipientsMinusView;->setPhoneNumber(Ljava/lang/String;)V

    move v3, v4

    goto/16 :goto_1

    :cond_9
    iget-object v11, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mInflater:Landroid/view/LayoutInflater;

    iget-object v12, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v14, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v11, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/fmm/RecipientsMinusView;

    invoke-virtual {v0, v8}, Lcom/samsung/android/settings/fmm/RecipientsMinusView;->setPhoneNumber(Ljava/lang/String;)V

    move v3, v4

    goto/16 :goto_2

    :cond_a
    iget-object v11, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mInflater:Landroid/view/LayoutInflater;

    iget-object v12, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v14, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v11, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/fmm/RecipientsMinusView;

    invoke-virtual {v0, v9}, Lcom/samsung/android/settings/fmm/RecipientsMinusView;->setPhoneNumber(Ljava/lang/String;)V

    move v3, v4

    goto/16 :goto_3

    :cond_b
    iget-object v11, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mInflater:Landroid/view/LayoutInflater;

    iget-object v12, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v14, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v11, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/fmm/RecipientsMinusView;

    invoke-virtual {v0, v10}, Lcom/samsung/android/settings/fmm/RecipientsMinusView;->setPhoneNumber(Ljava/lang/String;)V

    move v3, v4

    goto/16 :goto_4
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v3

    const v4, 0x7f110643

    invoke-virtual {v3, v4}, Lcom/android/settings/widget/ToggleSwitch;->setNextFocusDownId(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "change_alert"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_0

    :goto_0
    invoke-virtual {v3, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->show()V

    return-void

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x65

    if-ne p1, v0, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->SetContactNumber(Ljava/util/ArrayList;)V

    :cond_1
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->chkboxFlag:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->showNotificationChargeDialog()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    const/4 v1, 0x0

    const v0, 0x7f0b180a

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    iput-object p1, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040292

    invoke-virtual {p1, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mView:Landroid/view/View;

    const v5, 0x7f110648

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticLGTModel()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mView:Landroid/view/View;

    const v5, 0x7f110644

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0b073c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/samsung/android/settings/fmm/SimChangeAlert$3;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert$3;-><init>(Lcom/samsung/android/settings/fmm/SimChangeAlert;)V

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mView:Landroid/view/View;

    const v5, 0x7f110643

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mAlertMessage:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mAlertMessage:Landroid/widget/EditText;

    new-array v5, v3, [Landroid/text/InputFilter;

    iget-object v6, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->AlterMessageLengthFilter:Landroid/text/InputFilter;

    aput-object v6, v5, v4

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mView:Landroid/view/View;

    const v5, 0x7f110646

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mLinkedContactTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mView:Landroid/view/View;

    const v5, 0x7f110645

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mLinkedContactEdit:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mLinkedContactEdit:Landroid/widget/EditText;

    new-instance v5, Lcom/samsung/android/settings/fmm/SimChangeAlert$4;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert$4;-><init>(Lcom/samsung/android/settings/fmm/SimChangeAlert;)V

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mView:Landroid/view/View;

    const v5, 0x7f110647

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/settings/fmm/SimChangeAlert$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert$5;-><init>(Lcom/samsung/android/settings/fmm/SimChangeAlert;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mView:Landroid/view/View;

    const v5, 0x7f11064a

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContact:Landroid/widget/Button;

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContact:Landroid/widget/Button;

    new-instance v5, Lcom/samsung/android/settings/fmm/SimChangeAlert$6;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert$6;-><init>(Lcom/samsung/android/settings/fmm/SimChangeAlert;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->init()V

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mAlertMessage:Landroid/widget/EditText;

    new-instance v5, Lcom/samsung/android/settings/fmm/SimChangeAlert$7;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert$7;-><init>(Lcom/samsung/android/settings/fmm/SimChangeAlert;)V

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v5, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v6, "change_alert"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_2

    move v2, v3

    :goto_0
    invoke-direct {p0, v5, v2}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->enableDisableView(Landroid/view/View;Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mView:Landroid/view/View;

    return-object v2

    :cond_2
    move v2, v4

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    iget-object v1, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->hide()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001e4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->SETTINGS_FMM_SIM_CHANGE_ALERT_SAVE:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/samsung/android/settings/fmm/SimChangeAlert;->SETTINGS_FMM_SIM_CHANGE_ALERT_SAVE:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->DoSave()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->finishFragment()V

    :cond_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.samsung.intent.action.QCOMHOTSWAP"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/settings/fmm/SimChangeAlert$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert$2;-><init>(Lcom/samsung/android/settings/fmm/SimChangeAlert;)V

    iput-object v1, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001e5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->SETTINGS_FMM_SIM_CHANGE_ALERT_SWITCH:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lcom/samsung/android/settings/fmm/SimChangeAlert;->SETTINGS_FMM_SIM_CHANGE_ALERT_SWITCH:I

    if-eqz p2, :cond_1

    const/16 v0, 0x3e8

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mView:Landroid/view/View;

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->enableDisableView(Landroid/view/View;Z)V

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->chkboxFlag:Z

    if-eqz v0, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->showNotificationChargeDialog()V

    goto :goto_1
.end method

.method public showNotificationChargeDialog()V
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0401a2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f1104cc

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v3, Lcom/samsung/android/settings/fmm/SimChangeAlert$8;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert$8;-><init>(Lcom/samsung/android/settings/fmm/SimChangeAlert;)V

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0b043a

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/fmm/SimChangeAlert$9;

    invoke-direct {v4, p0, v0}, Lcom/samsung/android/settings/fmm/SimChangeAlert$9;-><init>(Lcom/samsung/android/settings/fmm/SimChangeAlert;Landroid/widget/CheckBox;)V

    const v5, 0x104000a

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/fmm/SimChangeAlert$10;

    invoke-direct {v4, p0, v0}, Lcom/samsung/android/settings/fmm/SimChangeAlert$10;-><init>(Lcom/samsung/android/settings/fmm/SimChangeAlert;Landroid/widget/CheckBox;)V

    const/high16 v5, 0x1040000

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/fmm/SimChangeAlert$11;

    invoke-direct {v4, p0, v0}, Lcom/samsung/android/settings/fmm/SimChangeAlert$11;-><init>(Lcom/samsung/android/settings/fmm/SimChangeAlert;Landroid/widget/CheckBox;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    return-void
.end method
