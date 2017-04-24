.class public Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;
.super Lcom/android/internal/app/AlertActivity;
.source "ReportDiagnosticinfo.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field DIAGNOSTIC_INFO_MESSAGE:Ljava/lang/String;

.field TAG:Ljava/lang/String;

.field mDiagnosticScroll:Landroid/widget/ScrollView;

.field mDiagnosticsText:Landroid/widget/TextView;

.field mDiagnosticsText1:Landroid/widget/TextView;

.field private mInflater:Landroid/view/LayoutInflater;

.field mLearnMore:Landroid/widget/LinearLayout;

.field mLearnMoreImage:Landroid/widget/ImageView;

.field mLearnMoreText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    const-string/jumbo v0, "PersonalPageReportDiagnosticinfo"

    iput-object v0, p0, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "diagnostics_info_message"

    iput-object v0, p0, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->DIAGNOSTIC_INFO_MESSAGE:Ljava/lang/String;

    return-void
.end method

.method private setDiagnostic(Z)V
    .locals 5

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "samsung_errorlog_agree"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "android.settings.DIAGNOSTIC_INFO_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "diagnostic_info_changed"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.settings.DIAGNOSTIC_INFO_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "diagnostic_info_changed"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->setDiagnostic(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->finish()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->setDiagnostic(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->finish()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    const/16 v2, 0x8

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->mDiagnosticScroll:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getVisibility()I

    move-result v1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->mDiagnosticScroll:Landroid/widget/ScrollView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->mLearnMoreImage:Landroid/widget/ImageView;

    const v2, 0x7f0203ad

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->mDiagnosticScroll:Landroid/widget/ScrollView;

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->mLearnMoreImage:Landroid/widget/ImageView;

    const v2, 0x7f0203ae

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f1105d7
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 15

    invoke-super/range {p0 .. p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v11, "layout_inflater"

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    iput-object v11, p0, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->mInflater:Landroid/view/LayoutInflater;

    iget-object v7, p0, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v11, 0x7f0b04df

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    iput-object v11, v7, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    iget-object v11, p0, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->mInflater:Landroid/view/LayoutInflater;

    const v12, 0x7f040236

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    iput-object v11, v7, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    iget-object v11, v7, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v12, 0x7f1105d6

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->mDiagnosticsText:Landroid/widget/TextView;

    iget-object v11, v7, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v12, 0x7f1105db

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->mDiagnosticsText1:Landroid/widget/TextView;

    iget-object v11, v7, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v12, 0x7f1105d7

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    iput-object v11, p0, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->mLearnMore:Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->mLearnMore:Landroid/widget/LinearLayout;

    invoke-virtual {v11, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v11, v7, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v12, 0x7f1105d8

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->mLearnMoreText:Landroid/widget/TextView;

    new-instance v2, Landroid/text/SpannableString;

    const v11, 0x7f0b042e

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v2, v11}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v11, Landroid/text/style/UnderlineSpan;

    invoke-direct {v11}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v2, v11, v13, v12, v14}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v11, p0, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->mLearnMoreText:Landroid/widget/TextView;

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v11, v7, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v12, 0x7f1105d9

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, p0, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->mLearnMoreImage:Landroid/widget/ImageView;

    iget-object v11, p0, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->mLearnMoreImage:Landroid/widget/ImageView;

    const v12, 0x7f0203ae

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v0, 0x0

    const/4 v8, 0x0

    const-string/jumbo v1, ""

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v11, "VZW"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v6, 0x1

    :goto_0
    const-string/jumbo v10, "com.sec.android.app.setupwizard"

    const-string/jumbo v5, "com.sec.android.app.SecSetupWizard"

    if-eqz v6, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x2

    invoke-virtual {v11, v10, v12}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string/jumbo v12, "diagnostic_terms_vzw"

    const-string/jumbo v13, "string"

    invoke-virtual {v8, v12, v13, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->setDiagnostic(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->finish()V

    :goto_2
    iget-object v11, v7, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v12, 0x7f1105da

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ScrollView;

    iput-object v11, p0, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->mDiagnosticScroll:Landroid/widget/ScrollView;

    iget-object v11, p0, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->mDiagnosticScroll:Landroid/widget/ScrollView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/ScrollView;->setVisibility(I)V

    const v11, 0x7f0b042c

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    iput-object v11, v7, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    const v11, 0x7f0b0453

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    iput-object v11, v7, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iput-object p0, v7, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p0, v7, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->setupAlert()V

    return-void

    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v11, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x2

    invoke-virtual {v11, v5, v12}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v11

    const-string/jumbo v12, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v11, v12}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string/jumbo v12, "error_log_collection_k_serviceinfo"

    const-string/jumbo v13, "string"

    invoke-virtual {v8, v12, v13, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_1

    :catch_0
    move-exception v4

    iget-object v11, p0, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "error getting Resource"

    invoke-static {v11, v12, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v3

    iget-object v11, p0, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "error getting activity of create package context"

    invoke-static {v11, v12, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :cond_3
    iget-object v11, p0, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->mDiagnosticsText1:Landroid/widget/TextView;

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method
