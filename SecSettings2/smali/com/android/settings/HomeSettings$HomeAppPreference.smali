.class Lcom/android/settings/HomeSettings$HomeAppPreference;
.super Landroid/preference/Preference;
.source "HomeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/HomeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HomeAppPreference"
.end annotation


# instance fields
.field activityName:Landroid/content/ComponentName;

.field fragment:Lcom/android/settings/HomeSettings;

.field final grayscaleFilter:Landroid/graphics/ColorFilter;

.field index:I

.field isChecked:Z

.field isSystem:Z

.field final synthetic this$0:Lcom/android/settings/HomeSettings;

.field uninstallTarget:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/settings/HomeSettings;Landroid/content/Context;Landroid/content/ComponentName;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings/HomeSettings;Landroid/content/pm/ActivityInfo;ZLjava/lang/CharSequence;)V
    .locals 4

    iput-object p1, p0, Lcom/android/settings/HomeSettings$HomeAppPreference;->this$0:Lcom/android/settings/HomeSettings;

    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0401e9

    invoke-virtual {p0, v2}, Lcom/android/settings/HomeSettings$HomeAppPreference;->setLayoutResource(I)V

    invoke-virtual {p0, p6}, Lcom/android/settings/HomeSettings$HomeAppPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p9}, Lcom/android/settings/HomeSettings$HomeAppPreference;->setEnabled(Z)V

    invoke-virtual {p0, p10}, Lcom/android/settings/HomeSettings$HomeAppPreference;->setSummary(Ljava/lang/CharSequence;)V

    iput-object p3, p0, Lcom/android/settings/HomeSettings$HomeAppPreference;->activityName:Landroid/content/ComponentName;

    iput-object p7, p0, Lcom/android/settings/HomeSettings$HomeAppPreference;->fragment:Lcom/android/settings/HomeSettings;

    iput p4, p0, Lcom/android/settings/HomeSettings$HomeAppPreference;->index:I

    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    invoke-virtual {v0}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v1

    const/high16 v2, 0x3f000000    # 0.5f

    const/16 v3, 0x12

    aput v2, v1, v3

    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v2, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    iput-object v2, p0, Lcom/android/settings/HomeSettings$HomeAppPreference;->grayscaleFilter:Landroid/graphics/ColorFilter;

    invoke-direct {p0, p8}, Lcom/android/settings/HomeSettings$HomeAppPreference;->determineTargets(Landroid/content/pm/ActivityInfo;)V

    return-void
.end method

.method private determineTargets(Landroid/content/pm/ActivityInfo;)V
    .locals 12

    const/4 v9, 0x1

    const/4 v10, 0x0

    iget-object v6, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v6, :cond_1

    const-string/jumbo v8, "android.app.home.alternate"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v8, p0, Lcom/android/settings/HomeSettings$HomeAppPreference;->this$0:Lcom/android/settings/HomeSettings;

    invoke-static {v8}, Lcom/android/settings/HomeSettings;->-get2(Lcom/android/settings/HomeSettings;)Landroid/content/pm/PackageManager;

    move-result-object v8

    iget-object v11, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v11, v1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_1

    iget-object v8, p0, Lcom/android/settings/HomeSettings$HomeAppPreference;->this$0:Lcom/android/settings/HomeSettings;

    invoke-static {v8}, Lcom/android/settings/HomeSettings;->-get2(Lcom/android/settings/HomeSettings;)Landroid/content/pm/PackageManager;

    move-result-object v8

    const/4 v11, 0x0

    invoke-virtual {v8, v1, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v8, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v0, 0x1

    if-eqz v8, :cond_0

    move v8, v9

    :goto_0
    iput-boolean v8, p0, Lcom/android/settings/HomeSettings$HomeAppPreference;->isSystem:Z

    iget-object v8, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v8, p0, Lcom/android/settings/HomeSettings$HomeAppPreference;->uninstallTarget:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_0
    move v8, v10

    goto :goto_0

    :catch_0
    move-exception v3

    const-string/jumbo v8, "HomeSettings"

    const-string/jumbo v11, "Unable to compare/resolve alternate"

    invoke-static {v8, v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    iget-object v8, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_3

    move v8, v9

    :goto_1
    iput-boolean v8, p0, Lcom/android/settings/HomeSettings$HomeAppPreference;->isSystem:Z

    new-array v7, v9, [Ljava/lang/String;

    iget-object v8, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    aput-object v8, v7, v10

    iget-object v8, p0, Lcom/android/settings/HomeSettings$HomeAppPreference;->this$0:Lcom/android/settings/HomeSettings;

    invoke-virtual {v8}, Lcom/android/settings/HomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string/jumbo v10, "content://com.sec.knox.provider2/ApplicationPolicy"

    const-string/jumbo v11, "getApplicationUninstallationEnabled"

    invoke-static {v8, v10, v11, v7}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    const/4 v8, -0x1

    if-eq v4, v8, :cond_2

    if-eq v4, v9, :cond_2

    iput-boolean v9, p0, Lcom/android/settings/HomeSettings$HomeAppPreference;->isSystem:Z

    :cond_2
    iget-object v8, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v8, p0, Lcom/android/settings/HomeSettings$HomeAppPreference;->uninstallTarget:Ljava/lang/String;

    return-void

    :cond_3
    move v8, v10

    goto :goto_1
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v4, 0x7f11054f

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iget-boolean v4, p0, Lcom/android/settings/HomeSettings$HomeAppPreference;->isChecked:Z

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget v4, p0, Lcom/android/settings/HomeSettings$HomeAppPreference;->index:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v4, 0x7f110200

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v4, p0, Lcom/android/settings/HomeSettings$HomeAppPreference;->isSystem:Z

    if-eqz v4, :cond_0

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const v4, 0x7f11054e

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/settings/HomeSettings$HomeAppPreference;->this$0:Lcom/android/settings/HomeSettings;

    iget-object v4, v4, Lcom/android/settings/HomeSettings;->mHomeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v4, p0, Lcom/android/settings/HomeSettings$HomeAppPreference;->this$0:Lcom/android/settings/HomeSettings;

    iget-object v4, v4, Lcom/android/settings/HomeSettings;->mDeleteClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method setChecked(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/HomeSettings$HomeAppPreference;->isChecked:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/android/settings/HomeSettings$HomeAppPreference;->isChecked:Z

    invoke-virtual {p0}, Lcom/android/settings/HomeSettings$HomeAppPreference;->notifyChanged()V

    :cond_0
    return-void
.end method
