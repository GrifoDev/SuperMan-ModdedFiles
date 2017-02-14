.class public Lcom/android/settings/applications/BackgroundCheckSummary;
.super Lcom/android/settings/InstrumentedFragment;
.source "BackgroundCheckSummary.java"


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/InstrumentedFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x102

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x1

    iput-object p1, p0, Lcom/android/settings/applications/BackgroundCheckSummary;->mInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/android/settings/applications/BackgroundCheckSummary;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040046

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    instance-of v2, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    iput-boolean v5, v2, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/BackgroundCheckSummary;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    new-instance v2, Lcom/android/settings/applications/AppOpsCategory;

    sget-object v3, Lcom/android/settings/applications/AppOpsState;->RUN_IN_BACKGROUND_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    invoke-direct {v2, v3, v5}, Lcom/android/settings/applications/AppOpsCategory;-><init>(Lcom/android/settings/applications/AppOpsState$OpsTemplate;Z)V

    const-string/jumbo v3, "appops"

    const v4, 0x7f11016f

    invoke-virtual {v0, v4, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-object v1
.end method
