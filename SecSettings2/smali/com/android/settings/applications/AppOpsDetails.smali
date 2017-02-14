.class public Lcom/android/settings/applications/AppOpsDetails;
.super Lcom/android/settings/InstrumentedFragment;
.source "AppOpsDetails.java"


# instance fields
.field private mAppOps:Landroid/app/AppOpsManager;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mOperationsSection:Landroid/widget/LinearLayout;

.field private mPackageInfo:Landroid/content/pm/PackageInfo;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mRootView:Landroid/view/View;

.field private mState:Lcom/android/settings/applications/AppOpsState;


# direct methods
.method static synthetic -get0(Lcom/android/settings/applications/AppOpsDetails;)Landroid/app/AppOpsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/AppOpsDetails;->mAppOps:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/InstrumentedFragment;-><init>()V

    return-void
.end method

.method private refreshUi()Z
    .locals 25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/AppOpsDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    const/16 v18, 0x0

    return v18

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/AppOpsDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/settings/applications/AppOpsDetails;->setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/AppOpsDetails;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/AppOpsDetails;->mOperationsSection:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/LinearLayout;->removeAllViews()V

    const-string/jumbo v9, ""

    sget-object v20, Lcom/android/settings/applications/AppOpsState;->ALL_TEMPLATES:[Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    const/16 v18, 0x0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v19, v18

    :goto_0
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_5

    aget-object v16, v20, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/AppOpsDetails;->mState:Lcom/android/settings/applications/AppOpsState;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/AppOpsDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/AppOpsDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/applications/AppOpsState;->buildState(Lcom/android/settings/applications/AppOpsState$OpsTemplate;ILjava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/applications/AppOpsState$AppOpEntry;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getOpEntry(I)Landroid/app/AppOpsManager$OpEntry;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/AppOpsDetails;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/AppOpsDetails;->mOperationsSection:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    const v23, 0x7f040038

    const/16 v24, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v23

    move-object/from16 v2, v22

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/AppOpsDetails;->mOperationsSection:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v8}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v18

    invoke-static/range {v18 .. v18}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/AppOpsDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v18, v0

    const/16 v22, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v10, v1}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v12

    iget-object v0, v12, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    iget-object v0, v12, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v18

    if-eqz v18, :cond_2

    :cond_1
    :goto_2
    const v18, 0x7f11014e

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/AppOpsDetails;->mState:Lcom/android/settings/applications/AppOpsState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getSwitchText(Lcom/android/settings/applications/AppOpsState;)Ljava/lang/CharSequence;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v18, 0x7f11014f

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v6, v13, v0}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getTimeText(Landroid/content/res/Resources;Z)Ljava/lang/CharSequence;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v18, 0x7f110150

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Switch;

    invoke-virtual {v8}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v18

    invoke-static/range {v18 .. v18}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/AppOpsDetails;->mAppOps:Landroid/app/AppOpsManager;

    move-object/from16 v18, v0

    invoke-virtual {v6}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getPackageOps()Landroid/app/AppOpsManager$PackageOps;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v22

    invoke-virtual {v6}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getPackageOps()Landroid/app/AppOpsManager$PackageOps;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v18

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v15, v1, v2}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v18

    if-nez v18, :cond_3

    const/16 v18, 0x1

    :goto_3
    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/Switch;->setChecked(Z)V

    new-instance v18, Lcom/android/settings/applications/AppOpsDetails$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v15, v6}, Lcom/android/settings/applications/AppOpsDetails$1;-><init>(Lcom/android/settings/applications/AppOpsDetails;ILcom/android/settings/applications/AppOpsState$AppOpEntry;)V

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_1

    :cond_2
    :try_start_1
    iget-object v9, v12, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/AppOpsDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v18, v0

    iget-object v0, v12, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v11

    iget v0, v11, Landroid/content/pm/PermissionGroupInfo;->icon:I

    move/from16 v18, v0

    if-eqz v18, :cond_1

    const v18, 0x7f11014d

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/AppOpsDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    const/16 v24, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v11, v0, v1, v2}, Landroid/content/pm/PermissionGroupInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v4

    goto/16 :goto_2

    :cond_3
    const/16 v18, 0x0

    goto :goto_3

    :cond_4
    add-int/lit8 v18, v19, 0x1

    move/from16 v19, v18

    goto/16 :goto_0

    :cond_5
    const/16 v18, 0x1

    return v18
.end method

.method private retrieveAppEntry()Ljava/lang/String;
    .locals 8

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v4, "package"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    if-nez v3, :cond_0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsDetails;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/applications/AppOpsDetails;->mPm:Landroid/content/pm/PackageManager;

    const/16 v6, 0x2200

    invoke-virtual {v4, v3, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/applications/AppOpsDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-object v3

    :cond_1
    move-object v3, v5

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "intent"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    move-object v2, v4

    goto :goto_1

    :catch_0
    move-exception v1

    const-string/jumbo v4, "AppOpsDetails"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception when retrieving package:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object v5, p0, Lcom/android/settings/applications/AppOpsDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    goto :goto_2
.end method

.method private setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V
    .locals 7

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/applications/AppOpsDetails;->mRootView:Landroid/view/View;

    const v5, 0x7f11014b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Lcom/android/settings/applications/AppOpsDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/applications/AppOpsDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationIconForIconTray(Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz p1, :cond_0

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :cond_0
    invoke-static {v0, v2, v1, v3}, Lcom/android/settings/applications/InstalledAppDetails;->setupAppSnippet(Landroid/view/View;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setIntentAndFinish(ZZ)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "chg"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, p0, v2, v0}, Lcom/android/settings/SettingsActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0xe

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/android/settings/applications/AppOpsState;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/applications/AppOpsState;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsDetails;->mState:Lcom/android/settings/applications/AppOpsState;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsDetails;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "appops"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsDetails;->mAppOps:Landroid/app/AppOpsManager;

    invoke-direct {p0}, Lcom/android/settings/applications/AppOpsDetails;->retrieveAppEntry()Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppOpsDetails;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const/4 v2, 0x0

    const v1, 0x7f040037

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-static {p2, v0, v0, v2}, Lcom/android/settings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsDetails;->mRootView:Landroid/view/View;

    const v1, 0x7f11014c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/applications/AppOpsDetails;->mOperationsSection:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public onResume()V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0}, Lcom/android/settings/InstrumentedFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/applications/AppOpsDetails;->refreshUi()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v1, v1}, Lcom/android/settings/applications/AppOpsDetails;->setIntentAndFinish(ZZ)V

    :cond_0
    return-void
.end method
