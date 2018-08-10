.class public Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;
.super Landroid/support/v14/preference/SecSwitchPreference;
.source "DataSavingChnPreference.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference$1;,
        Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference$2;,
        Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference$DataEnabledObserver;
    }
.end annotation


# instance fields
.field private isClickLater:Z

.field public mChecked:Z

.field private mConnect:Z

.field private mContext:Landroid/content/Context;

.field private mDataEnabledObserver:Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference$DataEnabledObserver;

.field public mDataSavingService:Lcom/samsung/android/datasaving/IDataSavingService;

.field private mOnSavingStateChangeListener:Lcom/samsung/android/datasaving/IOnSavingStateChangeListener;

.field private mSavingServiceConnection:Landroid/content/ServiceConnection;

.field private mSecSummaryLayoutCHN:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

.field private mSwitchView:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;)Lcom/samsung/android/datasaving/IOnSavingStateChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->mOnSavingStateChangeListener:Lcom/samsung/android/datasaving/IOnSavingStateChangeListener;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;)Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->mSecSummaryLayoutCHN:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->mSwitchView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->updateChecked(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const v0, 0x101036d

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v14/preference/SecSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->mConnect:Z

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->mDataSavingService:Lcom/samsung/android/datasaving/IDataSavingService;

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->mSecSummaryLayoutCHN:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->mSwitchView:Landroid/view/View;

    iput-boolean v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->isClickLater:Z

    new-instance v0, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference$1;-><init>(Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;)V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->mOnSavingStateChangeListener:Lcom/samsung/android/datasaving/IOnSavingStateChangeListener;

    new-instance v0, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference$2;-><init>(Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;)V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->mSavingServiceConnection:Landroid/content/ServiceConnection;

    const v0, 0x7f1206cd

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->setSummary(I)V

    new-instance v0, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference$DataEnabledObserver;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference$DataEnabledObserver;-><init>(Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;)V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->mDataEnabledObserver:Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference$DataEnabledObserver;

    invoke-virtual {p0, p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private static getActivity(Landroid/content/Context;)Landroid/app/Activity;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/app/Activity;

    return-object p0

    :cond_1
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_2

    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v1
.end method

.method private showDataCompressionDialog()V
    .locals 18

    const-string/jumbo v12, "DataSavingChnPreference"

    const-string/jumbo v13, "showDataCompressionDialog"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->getContext()Landroid/content/Context;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->mContext:Landroid/content/Context;

    invoke-static {v12}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v12

    const v13, 0x7f0d036d

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v12, 0x7f0a06ed

    invoke-virtual {v3, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const v12, 0x7f0a0523

    invoke-virtual {v3, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f1206cc

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v11, Landroid/text/SpannableString;

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const-string/jumbo v13, ""

    const/4 v14, 0x0

    aput-object v13, v12, v14

    const-string/jumbo v13, ""

    const/4 v14, 0x1

    aput-object v13, v12, v14

    const-string/jumbo v13, ""

    const/4 v14, 0x2

    aput-object v13, v12, v14

    const-string/jumbo v13, ""

    const/4 v14, 0x3

    aput-object v13, v12, v14

    invoke-static {v9, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    :try_start_0
    new-instance v12, Landroid/text/style/URLSpan;

    const-string/jumbo v13, "http://max.oupeng.com/eula.html"

    invoke-direct {v12, v13}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    const-string/jumbo v13, "%1$s"

    invoke-virtual {v9, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    const-string/jumbo v14, "%2$s"

    invoke-virtual {v9, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    const-string/jumbo v15, "%2$s"

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    sub-int/2addr v14, v15

    const/16 v15, 0x21

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v12, Landroid/text/style/URLSpan;

    const-string/jumbo v13, "http://max.oupeng.com/eula.html"

    invoke-direct {v12, v13}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    const-string/jumbo v13, "%3$s"

    invoke-virtual {v9, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    const-string/jumbo v14, "%2$s"

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    mul-int/lit8 v14, v14, 0x2

    sub-int/2addr v13, v14

    const-string/jumbo v14, "%4$s"

    invoke-virtual {v9, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    const-string/jumbo v15, "%2$s"

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    mul-int/lit8 v15, v15, 0x3

    sub-int/2addr v14, v15

    const/16 v15, 0x21

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v11, :cond_0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f06028e

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setLinkTextColor(I)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->mContext:Landroid/content/Context;

    const-string/jumbo v13, "SharedPreferences_data_compression"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string/jumbo v12, "datacompression_show_dialog"

    const/4 v13, 0x0

    invoke-interface {v8, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string/jumbo v12, "DataSavingChnPreference"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "showDataCompressionDialog doNotShow :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_1

    new-instance v12, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->mContext:Landroid/content/Context;

    invoke-direct {v12, v13}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v12, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f121b7a

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    new-instance v13, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference$5;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v2, v7}, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference$5;-><init>(Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;Landroid/widget/CheckBox;Landroid/content/SharedPreferences$Editor;)V

    const v14, 0x7f120110

    invoke-virtual {v12, v14, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    new-instance v13, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference$6;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference$6;-><init>(Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;)V

    const v14, 0x7f12086a

    invoke-virtual {v12, v14, v13}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    new-instance v13, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference$7;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference$7;-><init>(Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;)V

    invoke-virtual {v12, v13}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_1
    return-void

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto/16 :goto_0

    :cond_1
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v14, 0x7f0b012b

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v15, 0x7f0b0128

    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->mChecked:Z

    if-eqz v12, :cond_2

    const/4 v12, 0x0

    :goto_2
    int-to-long v0, v12

    move-wide/from16 v16, v0

    invoke-static/range {v13 .. v17}, Lcom/android/settings/Utils;->insertEventwithValueLog(Landroid/content/Context;IIJ)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->mDataSavingService:Lcom/samsung/android/datasaving/IDataSavingService;

    invoke-interface {v12}, Lcom/samsung/android/datasaving/IDataSavingService;->startSaving()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_2
    const/4 v12, 0x1

    goto :goto_2
.end method

.method private showOperaDowloadDialog()V
    .locals 7

    const/4 v6, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "\u6b27\u670b\u6d41\u91cf\u52a9\u624b"

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const v5, 0x7f1208da

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference$8;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference$8;-><init>(Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;)V

    const v5, 0x7f1211a1

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference$9;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference$9;-><init>(Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;)V

    const/high16 v5, 0x1040000

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    return-void
.end method

.method private updateChecked(Z)V
    .locals 3

    const-string/jumbo v0, "DataSavingChnPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateChecked()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",mChecked:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->mChecked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->mChecked:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference$3;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference$3;-><init>(Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public bindDataSavingService()V
    .locals 5

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.datasaving.DataSavingService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "com.samsung.android.datasaving"

    const-string/jumbo v3, "com.samsung.android.datasaving.DataSavingService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->mSavingServiceConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "DataSavingChnPreference"

    const-string/jumbo v3, "bindDataSavingService failed "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "DataSavingChnPreference"

    const-string/jumbo v3, "bindSavingService failed with exception "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public checkOperaServiceCon()V
    .locals 3

    const-string/jumbo v1, "DataSavingChnPreference"

    const-string/jumbo v2, "checkOperaServiceCon"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->mDataSavingService:Lcom/samsung/android/datasaving/IDataSavingService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->mDataSavingService:Lcom/samsung/android/datasaving/IDataSavingService;

    invoke-interface {v1}, Lcom/samsung/android/datasaving/IDataSavingService;->isSavingServiceBound()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "DataSavingChnPreference"

    const-string/jumbo v2, "Not connect to the Opera Saving service ,try bind again"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->mDataSavingService:Lcom/samsung/android/datasaving/IDataSavingService;

    invoke-interface {v1}, Lcom/samsung/android/datasaving/IDataSavingService;->bindServices()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DataSavingChnPreference"

    const-string/jumbo v2, "exception happen when Called mDataSavingService"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isBlocked()Z
    .locals 8

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    const-string/jumbo v4, "DataSavingChnPreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isBlocked(),WifiManager.isWifiApEnabled()  = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v3, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    iput-boolean v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->mConnect:Z

    :goto_0
    const-string/jumbo v4, "DataSavingChnPreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isBlocked(), mConnect = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->mConnect:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    const-string/jumbo v4, "DataSavingChnPreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isBlocked(),isMobileNetworkEnabled:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "DataSavingChnPreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isBlocked(),isTetheringEnabled:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isTetheringEnabled(Landroid/content/Context;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->mConnect:Z

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isTetheringEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    return v7

    :cond_2
    :try_start_1
    const-string/jumbo v4, "DataSavingChnPreference"

    const-string/jumbo v5, "isBlocked(), info is null"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v4, "DataSavingChnPreference"

    const-string/jumbo v5, "isBlocked(),Exception happen"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    return v4
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "DataSavingChnPreference"

    const-string/jumbo v1, " onBindViewHolder "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/support/v14/preference/SecSwitchPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v0, 0x1020040

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->mSwitchView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->mSwitchView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->updateSwitchState()V

    iget-boolean v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->isClickLater:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->performClick(Landroid/view/View;)V

    iput-boolean v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->isClickLater:Z

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public performClick(Landroid/view/View;)V
    .locals 8

    const/4 v1, 0x1

    const-string/jumbo v2, "DataSavingChnPreference"

    const-string/jumbo v3, "performClick()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->isBlocked()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v1, "DataSavingChnPreference"

    const-string/jumbo v2, "isBlocked,return"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "com.oupeng.max.sdk"

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->isPackageExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v1, "DataSavingChnPreference"

    const-string/jumbo v2, "OperaApk is not Exsit,return"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->showOperaDowloadDialog()V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->mSwitchView:Landroid/view/View;

    if-eqz v2, :cond_6

    const-string/jumbo v2, "DataSavingChnPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "performClick()  mChecked:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->mChecked:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->mDataSavingService:Lcom/samsung/android/datasaving/IDataSavingService;

    if-eqz v2, :cond_5

    :try_start_0
    iget-boolean v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->mChecked:Z

    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->showDataCompressionDialog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->mSecSummaryLayoutCHN:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->mSecSummaryLayoutCHN:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    invoke-virtual {v1}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->initDataSavingLayout()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b012b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0128

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iget-boolean v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->mChecked:Z

    if-eqz v5, :cond_4

    const/4 v1, 0x0

    :cond_4
    int-to-long v6, v1

    invoke-static {v2, v3, v4, v6, v7}, Lcom/android/settings/Utils;->insertEventwithValueLog(Landroid/content/Context;IIJ)V

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->mDataSavingService:Lcom/samsung/android/datasaving/IDataSavingService;

    invoke-interface {v1}, Lcom/samsung/android/datasaving/IDataSavingService;->stopSaving()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v1, "DataSavingChnPreference"

    const-string/jumbo v2, "startSaving failed with exception "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const-string/jumbo v1, "DataSavingChnPreference"

    const-string/jumbo v2, "mDataSavingService is null,set check failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    const-string/jumbo v2, "DataSavingChnPreference"

    const-string/jumbo v3, "performClick(),mSwitchView is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "DataSavingChnPreference"

    const-string/jumbo v3, "performClick() when Switch inited"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->isClickLater:Z

    goto :goto_1
.end method

.method public registerDataEnabledObserver()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mobile_data"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->mDataEnabledObserver:Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference$DataEnabledObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public unbindDataSavingService()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->mDataSavingService:Lcom/samsung/android/datasaving/IDataSavingService;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->mSavingServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const-string/jumbo v1, "DataSavingChnPreference"

    const-string/jumbo v2, "unbindDataSavingService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DataSavingChnPreference"

    const-string/jumbo v2, "unbindDataSavingService failed with exception "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unregisterDataEnabledObserver()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->mDataEnabledObserver:Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference$DataEnabledObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public updateEnabled()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference$4;-><init>(Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateSwitchState()V
    .locals 4

    const/4 v1, 0x1

    const-string/jumbo v2, "DataSavingChnPreference"

    const-string/jumbo v3, "updateSwitchState()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->mDataSavingService:Lcom/samsung/android/datasaving/IDataSavingService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->mDataSavingService:Lcom/samsung/android/datasaving/IDataSavingService;

    invoke-interface {v2}, Lcom/samsung/android/datasaving/IDataSavingService;->getSavingState()I

    move-result v2

    if-ne v2, v1, :cond_1

    :goto_0
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->updateChecked(Z)V

    const-string/jumbo v1, "DataSavingChnPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SavingState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->mDataSavingService:Lcom/samsung/android/datasaving/IDataSavingService;

    invoke-interface {v3}, Lcom/samsung/android/datasaving/IDataSavingService;->getSavingState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DataSavingChnPreference"

    const-string/jumbo v2, "getSavingState() failed with exception "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
