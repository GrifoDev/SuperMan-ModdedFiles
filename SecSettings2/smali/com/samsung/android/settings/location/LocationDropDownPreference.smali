.class public Lcom/samsung/android/settings/location/LocationDropDownPreference;
.super Landroid/preference/Preference;
.source "LocationDropDownPreference.java"


# instance fields
.field private final mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mGranted:Z

.field private mIsRuntimePermission:Z

.field private mOnBlackList:Z

.field private mPackageInfo:Landroid/content/pm/PackageInfo;

.field private mPackageName:Ljava/lang/String;

.field private mPreferenceClicked:Z

.field private mSelectedPosition:I

.field private final mSpinner:Landroid/widget/Spinner;

.field private final mValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/location/LocationDropDownPreference;)Landroid/widget/Spinner;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/location/LocationDropDownPreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mPreferenceClicked:Z

    return p1
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/samsung/android/settings/location/LocationDropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/location/LocationDropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mValues:Ljava/util/ArrayList;

    const/4 v4, -0x1

    iput v4, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mSelectedPosition:I

    iput-boolean v7, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mPreferenceClicked:Z

    iput-object p1, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/widget/ArrayAdapter;

    iget-object v5, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mContext:Landroid/content/Context;

    const v6, 0x7f040260

    invoke-direct {v4, v5, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    new-instance v4, Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v4, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    new-instance v5, Lcom/samsung/android/settings/location/LocationDropDownPreference$1;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/location/LocationDropDownPreference$1;-><init>(Lcom/samsung/android/settings/location/LocationDropDownPreference;)V

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->setPersistent(Z)V

    new-instance v4, Lcom/samsung/android/settings/location/LocationDropDownPreference$2;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/location/LocationDropDownPreference$2;-><init>(Lcom/samsung/android/settings/location/LocationDropDownPreference;)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    sget-object v4, Lcom/android/settings/R$styleable;->DropDownPreference:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_0

    aget-object v4, v1, v2

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    aget-object v5, v3, v2

    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    return-void
.end method

.method private getGroupPermissionInfos(Ljava/lang/String;Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v3

    :catch_1
    move-exception v1

    const/4 v4, 0x0

    return-object v4
.end method

.method private getLocationPermission(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v2, "android.permission-group.LOCATION"

    iget-object v3, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->getGroupPermissionInfos(Ljava/lang/String;Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PermissionInfo;

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PermissionInfo;

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v4
.end method

.method private updateLocationPermissionState(I)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    if-nez p1, :cond_3

    iget-boolean v3, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mGranted:Z

    if-nez v3, :cond_0

    iput-boolean v4, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mGranted:Z

    iget-boolean v3, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mGranted:Z

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->updatePermissionState(Z)V

    :cond_0
    iput-boolean v4, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mOnBlackList:Z

    :cond_1
    :goto_0
    if-eq p1, v6, :cond_2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "packageName"

    iget-object v4, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "enable"

    iget-boolean v4, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mOnBlackList:Z

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    const/16 v3, 0xb

    iput v3, v2, Landroid/os/Message;->what:I

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "location"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->notifyNSFLP(Landroid/os/Message;)Z

    :cond_2
    return-void

    :cond_3
    if-ne p1, v4, :cond_5

    iget-boolean v3, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mGranted:Z

    if-nez v3, :cond_4

    iput-boolean v4, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mGranted:Z

    iget-boolean v3, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mGranted:Z

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->updatePermissionState(Z)V

    :cond_4
    iput-boolean v5, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mOnBlackList:Z

    goto :goto_0

    :cond_5
    if-ne p1, v6, :cond_1

    iget-boolean v3, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mGranted:Z

    if-eqz v3, :cond_6

    iput-boolean v5, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mGranted:Z

    iget-boolean v3, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mGranted:Z

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->updatePermissionState(Z)V

    :cond_6
    iput-boolean v4, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mOnBlackList:Z

    goto :goto_0
.end method


# virtual methods
.method public addItem(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addItems([Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public clearItems()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v3, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/16 v3, 0x30

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v3, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a058e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v3, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a001a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v1}, Landroid/widget/Spinner;->setDropDownHorizontalOffset(I)V

    return-void
.end method

.method public setGrantedState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mGranted:Z

    return-void
.end method

.method public setIsRuntimePermission(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mIsRuntimePermission:Z

    return-void
.end method

.method public setPackageInfo(Landroid/content/pm/PackageInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mPackageInfo:Landroid/content/pm/PackageInfo;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public setSelectedItem(IZ)V
    .locals 3

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, p1}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mPreferenceClicked:Z

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->updateLocationPermissionState(I)V

    iput-boolean v0, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mPreferenceClicked:Z

    :cond_0
    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->notifyDependencyChange(Z)V

    return-void
.end method

.method public updatePermissionState(Z)V
    .locals 24

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v20, v0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mPackageName:Ljava/lang/String;

    const/16 v5, 0x1000

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v18

    if-eqz v18, :cond_2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    move-object/from16 v22, v0

    const/4 v4, 0x0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v21, v4

    :goto_0
    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_2

    aget-object v3, v22, v21

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->getLocationPermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mIsRuntimePermission:Z

    if-eqz v4, :cond_3

    if-eqz p1, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v4, v3, v7}, Landroid/content/pm/PackageManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mPackageName:Ljava/lang/String;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    :cond_0
    :goto_1
    add-int/lit8 v4, v21, 0x1

    move/from16 v21, v4

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v4, v3, v7}, Landroid/content/pm/PackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mPackageName:Ljava/lang/String;

    const/16 v5, 0x8

    const/16 v6, 0x8

    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    goto :goto_1

    :catch_0
    move-exception v16

    :cond_2
    return-void

    :cond_3
    const/4 v12, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mContext:Landroid/content/Context;

    const-class v5, Landroid/app/AppOpsManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/AppOpsManager;

    const-string/jumbo v4, "android"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v3}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    :goto_2
    if-eqz p1, :cond_6

    if-eqz v14, :cond_4

    const/16 v17, 0x0

    :cond_4
    :goto_3
    move/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v15, v14, v0, v1}, Landroid/app/AppOpsManager;->setUidMode(Ljava/lang/String;II)V

    const/16 v11, 0x8

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v10, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    sget-object v13, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v9, v3

    invoke-virtual/range {v8 .. v13}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_5
    const/4 v14, 0x0

    goto :goto_2

    :cond_6
    if-eqz v14, :cond_4

    const/16 v17, 0x1

    const/16 v12, 0x8

    goto :goto_3
.end method
