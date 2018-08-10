.class public Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;
.super Lcom/android/internal/app/AlertActivity;
.source "ReportDiagnosticinfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DREAM_PROJECT:Z

.field private static final mProductName:Ljava/lang/String;


# instance fields
.field DIAGNOSTIC_INFO_MESSAGE:Ljava/lang/String;

.field TAG:Ljava/lang/String;

.field mDiagnosticScroll:Landroid/widget/LinearLayout;

.field mDiagnosticsCheckBox:Landroid/widget/CheckBox;

.field mDiagnosticsText:Landroid/widget/TextView;

.field mDiagnosticsText1:Landroid/widget/TextView;

.field mDiagonosticsInfoBody:Landroid/widget/ScrollView;

.field private mInflater:Landroid/view/LayoutInflater;

.field mLearnMore:Landroid/widget/LinearLayout;

.field mLearnMoreImage:Landroid/widget/ImageView;

.field mLearnMoreText:Landroid/widget/TextView;


# direct methods
.method static synthetic -wrap0(Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->setDiagnostic(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "ro.product.device"

    const-string/jumbo v1, "NONE"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->mProductName:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->mProductName:Ljava/lang/String;

    const-string/jumbo v1, "dream"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->mProductName:Ljava/lang/String;

    const-string/jumbo v1, "SGH-N171"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->mProductName:Ljava/lang/String;

    const-string/jumbo v1, "SC-02J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->mProductName:Ljava/lang/String;

    const-string/jumbo v1, "SGH-N206"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->mProductName:Ljava/lang/String;

    const-string/jumbo v1, "SC-03J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->mProductName:Ljava/lang/String;

    const-string/jumbo v1, "NVX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->mProductName:Ljava/lang/String;

    const-string/jumbo v1, "SCV36"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->mProductName:Ljava/lang/String;

    const-string/jumbo v1, "MUW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->mProductName:Ljava/lang/String;

    const-string/jumbo v1, "SCV35"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    sput-boolean v0, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->DREAM_PROJECT:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

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
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/16 v2, 0x8

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->mDiagnosticScroll:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->mDiagnosticScroll:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->mLearnMoreImage:Landroid/widget/ImageView;

    const v2, 0x7f0805e4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->mDiagnosticScroll:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->mLearnMoreImage:Landroid/widget/ImageView;

    const v2, 0x7f0805e3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0490
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 23

    invoke-super/range {p0 .. p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v19, "layout_inflater"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/view/LayoutInflater;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v19, 0x7f120f4b

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v12, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v19, v0

    const v20, 0x7f0d0263

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v12, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    iget-object v0, v12, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0a0252

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ScrollView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->mDiagonosticsInfoBody:Landroid/widget/ScrollView;

    iget-object v0, v12, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0a0250

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/CheckBox;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->mDiagnosticsCheckBox:Landroid/widget/CheckBox;

    iget-object v0, v12, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0a0253

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->mDiagnosticsText:Landroid/widget/TextView;

    iget-object v0, v12, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0a0254

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->mDiagnosticsText1:Landroid/widget/TextView;

    iget-object v0, v12, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0a0490

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/LinearLayout;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->mLearnMore:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->mLearnMore:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v12, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0a0492

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->mLearnMoreText:Landroid/widget/TextView;

    new-instance v6, Landroid/text/SpannableString;

    const v19, 0x7f120f6a

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v6, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v19, Landroid/text/style/UnderlineSpan;

    invoke-direct/range {v19 .. v19}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v6}, Landroid/text/SpannableString;->length()I

    move-result v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v20

    move/from16 v3, v22

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->mLearnMoreText:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v12, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0a0491

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->mLearnMoreImage:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->mLearnMoreImage:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const v20, 0x7f0805e3

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v4, 0x0

    const/4 v14, 0x0

    const-string/jumbo v5, ""

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string/jumbo v20, "diagnostic_data_version"

    invoke-static/range {v19 .. v20}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "diagnostic_data_version : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v19, "VZW"

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    const/4 v11, 0x1

    :goto_0
    const-string/jumbo v18, "com.sec.android.app.setupwizard"

    const-string/jumbo v10, "com.sec.android.app.SecSetupWizard"

    const/4 v13, 0x0

    const/16 v16, 0x0

    if-eqz v11, :cond_3

    move-object/from16 v13, v18

    :try_start_0
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_2

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "diagnostic_terms_vzw_"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Diagnostic string get from : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Diagnostic stringId : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    const/16 v20, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v13, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const-string/jumbo v20, "string"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v14, v0, v1, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v19, "%s"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_0

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const-string/jumbo v20, "select_a_tickbox_and_then_tap_next"

    const-string/jumbo v21, "string"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v14, v0, v1, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v17, v19, v20

    move-object/from16 v0, v19

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    :cond_0
    :goto_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_6

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->setDiagnostic(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->finish()V

    :goto_3
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v19

    if-eqz v19, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->mDiagnosticsText:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const v20, 0x7f120f4e

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    iget-object v0, v12, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0a0251

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/LinearLayout;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->mDiagnosticScroll:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->mDiagnosticScroll:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->mDiagnosticsCheckBox:Landroid/widget/CheckBox;

    move-object/from16 v19, v0

    new-instance v20, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo$1;-><init>(Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->setupAlert()V

    return-void

    :cond_1
    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_2
    :try_start_1
    const-string/jumbo v16, "diagnostic_terms_vzw"

    goto/16 :goto_1

    :cond_3
    move-object v13, v10

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_4

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "error_log_collection_serviceinfo_"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_1

    :cond_4
    sget-boolean v19, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->DREAM_PROJECT:Z

    if-eqz v19, :cond_5

    const-string/jumbo v16, "error_log_collection_serviceinfo_un"

    goto/16 :goto_1

    :cond_5
    const-string/jumbo v16, "error_log_collection_zero_serviceinfo"
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string/jumbo v20, "error getting Resource"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    :catch_1
    move-exception v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string/jumbo v20, "error getting activity of create package context"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->mDiagnosticsText1:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->mDiagnosticsText:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const v20, 0x7f120f4d

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4
.end method
