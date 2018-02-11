.class public Lcom/android/settings/AppListPreference;
.super Lcom/samsung/android/settings/SettingsListPreference;
.source "AppListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/AppListPreference$AppArrayAdapter;,
        Lcom/android/settings/AppListPreference$SavedState;
    }
.end annotation


# instance fields
.field private mDescription:I

.field private mEntryDrawables:[Landroid/graphics/drawable/Drawable;

.field protected final mForWork:Z

.field private mShowItemNone:Z

.field private mSummaries:[Ljava/lang/CharSequence;

.field private mSystemAppIndex:I

.field protected final mUserId:I


# direct methods
.method static synthetic -get0(Lcom/android/settings/AppListPreference;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/AppListPreference;->mShowItemNone:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings/AppListPreference;)[Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/AppListPreference;->mSummaries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/AppListPreference;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/AppListPreference;->mSystemAppIndex:I

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/SettingsListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v3, p0, Lcom/android/settings/AppListPreference;->mShowItemNone:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/settings/AppListPreference;->mSystemAppIndex:I

    sget-object v2, Lcom/android/settings/R$styleable;->WorkPreference:[I

    invoke-virtual {p1, p2, v2, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/AppListPreference;->mForWork:Z

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->getManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/AppListPreference;->mForWork:Z

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    :goto_0
    iput v2, p0, Lcom/android/settings/AppListPreference;->mUserId:I

    return-void

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/settings/SettingsListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-boolean v3, p0, Lcom/android/settings/AppListPreference;->mShowItemNone:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/settings/AppListPreference;->mSystemAppIndex:I

    sget-object v2, Lcom/android/settings/R$styleable;->WorkPreference:[I

    invoke-virtual {p1, p2, v2, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/AppListPreference;->mForWork:Z

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->getManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/AppListPreference;->mForWork:Z

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    :goto_0
    iput v2, p0, Lcom/android/settings/AppListPreference;->mUserId:I

    return-void

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    goto :goto_0
.end method


# virtual methods
.method protected createListAdapter()Landroid/widget/ListAdapter;
    .locals 9

    invoke-virtual {p0}, Lcom/android/settings/AppListPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/AppListPreference;->mShowItemNone:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, ""

    invoke-virtual {v8, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v7

    :goto_0
    if-eqz v7, :cond_2

    const/4 v6, -0x1

    :goto_1
    new-instance v0, Lcom/android/settings/AppListPreference$AppArrayAdapter;

    invoke-virtual {p0}, Lcom/android/settings/AppListPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/AppListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/AppListPreference;->mEntryDrawables:[Landroid/graphics/drawable/Drawable;

    const v3, 0x7f04003c

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/AppListPreference$AppArrayAdapter;-><init>(Lcom/android/settings/AppListPreference;Landroid/content/Context;I[Ljava/lang/CharSequence;[Landroid/graphics/drawable/Drawable;I)V

    return-object v0

    :cond_0
    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v8}, Lcom/android/settings/AppListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v6

    goto :goto_1
.end method

.method public getResDescription()I
    .locals 1

    iget v0, p0, Lcom/android/settings/AppListPreference;->mDescription:I

    return v0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/AppListPreference;->createListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SettingsListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    instance-of v1, p1, Lcom/android/settings/AppListPreference$SavedState;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/settings/AppListPreference$SavedState;

    iget-boolean v1, v0, Lcom/android/settings/AppListPreference$SavedState;->showItemNone:Z

    iput-boolean v1, p0, Lcom/android/settings/AppListPreference;->mShowItemNone:Z

    iget-object v1, v0, Lcom/android/settings/AppListPreference$SavedState;->entryValues:[Ljava/lang/CharSequence;

    iget-object v2, v0, Lcom/android/settings/AppListPreference$SavedState;->value:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/AppListPreference;->setPackageNames([Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/android/settings/AppListPreference$SavedState;->summaries:[Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/android/settings/AppListPreference;->mSummaries:[Ljava/lang/CharSequence;

    iget-object v1, v0, Lcom/android/settings/AppListPreference$SavedState;->superState:Landroid/os/Parcelable;

    invoke-super {p0, v1}, Lcom/samsung/android/settings/SettingsListPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SettingsListPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    invoke-super {p0}, Lcom/samsung/android/settings/SettingsListPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v5

    new-instance v0, Lcom/android/settings/AppListPreference$SavedState;

    invoke-virtual {p0}, Lcom/android/settings/AppListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/AppListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/AppListPreference;->mSummaries:[Ljava/lang/CharSequence;

    iget-boolean v4, p0, Lcom/android/settings/AppListPreference;->mShowItemNone:Z

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/AppListPreference$SavedState;-><init>([Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZLandroid/os/Parcelable;)V

    return-object v0
.end method

.method public setComponentNames([Landroid/content/ComponentName;Landroid/content/ComponentName;[Ljava/lang/CharSequence;)V
    .locals 14

    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/settings/AppListPreference;->mSummaries:[Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/settings/AppListPreference;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    array-length v11, p1

    iget-boolean v10, p0, Lcom/android/settings/AppListPreference;->mShowItemNone:Z

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    :goto_0
    add-int v4, v11, v10

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v4}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v8, -0x1

    const/4 v6, 0x0

    :goto_1
    array-length v10, p1

    if-ge v6, v10, :cond_3

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v10

    aget-object v11, p1, v6

    iget v12, p0, Lcom/android/settings/AppListPreference;->mUserId:I

    const/4 v13, 0x0

    invoke-interface {v10, v11, v13, v12}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_0
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v7}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v10, p1, v6

    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual {v1, v7, v10, v11}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    aget-object v10, p1, v6

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-eqz v10, :cond_0

    move v8, v6

    goto :goto_2

    :cond_3
    iget-boolean v10, p0, Lcom/android/settings/AppListPreference;->mShowItemNone:Z

    if-eqz v10, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/AppListPreference;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b1a9a

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v10, ""

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/settings/AppListPreference;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0201bc

    invoke-virtual {v10, v11}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/CharSequence;

    invoke-interface {v2, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v10}, Lcom/android/settings/AppListPreference;->setEntries([Ljava/lang/CharSequence;)V

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/CharSequence;

    invoke-interface {v9, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v10}, Lcom/android/settings/AppListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [Landroid/graphics/drawable/Drawable;

    invoke-interface {v5, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/graphics/drawable/Drawable;

    iput-object v10, p0, Lcom/android/settings/AppListPreference;->mEntryDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v10, -0x1

    if-eq v8, v10, :cond_5

    invoke-virtual {p0, v8}, Lcom/android/settings/AppListPreference;->setValueIndex(I)V

    :goto_3
    return-void

    :cond_5
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/settings/AppListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_3

    :catch_0
    move-exception v3

    goto/16 :goto_2
.end method

.method protected setFullScreenLayout(Landroid/content/Context;Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SettingsListPreference;->setFullScreenLayout(Landroid/content/Context;Landroid/view/View;)V

    const v3, 0x7f1102b8

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v3, 0x7f1102b9

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/AppListPreference;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    if-nez v3, :cond_1

    const v2, 0x7f0b0166

    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/AppListPreference;->getResDescription()I

    move-result v2

    goto :goto_0
.end method

.method public setPackageNames([Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/settings/AppListPreference;->setPackageNames([Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPackageNames([Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 14

    invoke-virtual {p0}, Lcom/android/settings/AppListPreference;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    array-length v12, p1

    iget-boolean v11, p0, Lcom/android/settings/AppListPreference;->mShowItemNone:Z

    if-eqz v11, :cond_3

    const/4 v11, 0x1

    :goto_0
    add-int v4, v12, v11

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v4}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v9, -0x1

    const/4 v11, -0x1

    iput v11, p0, Lcom/android/settings/AppListPreference;->mSystemAppIndex:I

    const/4 v6, 0x0

    :goto_1
    array-length v11, p1

    if-ge v6, v11, :cond_4

    :try_start_0
    aget-object v11, p1, v6

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    iget v12, p0, Lcom/android/settings/AppListPreference;->mUserId:I

    const/4 v13, 0x0

    invoke-virtual {v8, v11, v13, v12}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v11, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v11, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v11}, Landroid/content/pm/PackageManager;->getCSCPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-nez v7, :cond_0

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-virtual {v1, v8, v11, v12}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    :cond_0
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_1

    iget-object v11, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    move v9, v6

    :cond_1
    iget-object v11, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v11, :cond_2

    if-eqz p3, :cond_2

    iget-object v11, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    iput v6, p0, Lcom/android/settings/AppListPreference;->mSystemAppIndex:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    const/4 v11, 0x0

    goto :goto_0

    :cond_4
    iget-boolean v11, p0, Lcom/android/settings/AppListPreference;->mShowItemNone:Z

    if-eqz v11, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/AppListPreference;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0b1a9a

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v11, ""

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v11, 0x0

    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/CharSequence;

    invoke-interface {v2, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v11}, Lcom/android/settings/AppListPreference;->setEntries([Ljava/lang/CharSequence;)V

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/CharSequence;

    invoke-interface {v10, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v11}, Lcom/android/settings/AppListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [Landroid/graphics/drawable/Drawable;

    invoke-interface {v5, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/graphics/drawable/Drawable;

    iput-object v11, p0, Lcom/android/settings/AppListPreference;->mEntryDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v11, -0x1

    if-eq v9, v11, :cond_6

    invoke-virtual {p0, v9}, Lcom/android/settings/AppListPreference;->setValueIndex(I)V

    :goto_3
    return-void

    :cond_6
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/settings/AppListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_3

    :catch_0
    move-exception v3

    goto :goto_2
.end method

.method public setResDescription(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/AppListPreference;->mDescription:I

    return-void
.end method

.method public setShowItemNone(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/AppListPreference;->mShowItemNone:Z

    return-void
.end method
