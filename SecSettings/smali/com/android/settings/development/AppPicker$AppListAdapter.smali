.class public Lcom/android/settings/development/AppPicker$AppListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AppPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/development/AppPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/settings/development/AppPicker$MyApplicationInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mPackageInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/development/AppPicker$MyApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/development/AppPicker;


# direct methods
.method public constructor <init>(Lcom/android/settings/development/AppPicker;Landroid/content/Context;)V
    .locals 13

    const/4 v9, 0x0

    iput-object p1, p0, Lcom/android/settings/development/AppPicker$AppListAdapter;->this$0:Lcom/android/settings/development/AppPicker;

    invoke-direct {p0, p2, v9}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/settings/development/AppPicker$AppListAdapter;->mPackageInfoList:Ljava/util/List;

    const-string/jumbo v8, "layout_inflater"

    invoke-virtual {p2, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    iput-object v8, p0, Lcom/android/settings/development/AppPicker$AppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v5

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_7

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget v8, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v10, 0x3e8

    if-ne v8, v10, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/android/settings/development/AppPicker;->-get0(Lcom/android/settings/development/AppPicker;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget v8, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_2

    const-string/jumbo v8, "user"

    sget-object v10, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    :cond_2
    invoke-static {p1}, Lcom/android/settings/development/AppPicker;->-get2(Lcom/android/settings/development/AppPicker;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget v8, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    const/4 v10, 0x1

    if-eq v8, v10, :cond_0

    :cond_3
    invoke-static {p1}, Lcom/android/settings/development/AppPicker;->-get1(Lcom/android/settings/development/AppPicker;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/android/settings/development/AppPicker;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v11, 0x1000

    invoke-virtual {v8, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v8, v4, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-object v10, v4, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v11, v10

    move v8, v9

    :goto_2
    if-ge v8, v11, :cond_4

    aget-object v6, v10, v8

    invoke-static {p1}, Lcom/android/settings/development/AppPicker;->-get1(Lcom/android/settings/development/AppPicker;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    if-eqz v12, :cond_6

    const/4 v7, 0x1

    :cond_4
    if-eqz v7, :cond_0

    :cond_5
    new-instance v3, Lcom/android/settings/development/AppPicker$MyApplicationInfo;

    invoke-direct {v3, p1}, Lcom/android/settings/development/AppPicker$MyApplicationInfo;-><init>(Lcom/android/settings/development/AppPicker;)V

    iput-object v0, v3, Lcom/android/settings/development/AppPicker$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v3, Lcom/android/settings/development/AppPicker$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Lcom/android/settings/development/AppPicker;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/android/settings/development/AppPicker$MyApplicationInfo;->label:Ljava/lang/CharSequence;

    iget-object v8, p0, Lcom/android/settings/development/AppPicker$AppListAdapter;->mPackageInfoList:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_7
    iget-object v8, p0, Lcom/android/settings/development/AppPicker$AppListAdapter;->mPackageInfoList:Ljava/util/List;

    invoke-static {}, Lcom/android/settings/development/AppPicker;->-get3()Ljava/util/Comparator;

    move-result-object v10

    invoke-static {v8, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v3, Lcom/android/settings/development/AppPicker$MyApplicationInfo;

    invoke-direct {v3, p1}, Lcom/android/settings/development/AppPicker$MyApplicationInfo;-><init>(Lcom/android/settings/development/AppPicker;)V

    const v8, 0x7f121304

    invoke-virtual {p2, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v3, Lcom/android/settings/development/AppPicker$MyApplicationInfo;->label:Ljava/lang/CharSequence;

    iget-object v8, p0, Lcom/android/settings/development/AppPicker$AppListAdapter;->mPackageInfoList:Ljava/util/List;

    invoke-interface {v8, v9, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v8, p0, Lcom/android/settings/development/AppPicker$AppListAdapter;->mPackageInfoList:Ljava/util/List;

    invoke-virtual {p0, v8}, Lcom/android/settings/development/AppPicker$AppListAdapter;->addAll(Ljava/util/Collection;)V

    return-void

    :catch_0
    move-exception v1

    goto/16 :goto_1
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/settings/development/AppPicker$AppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-static {v2, p2}, Lcom/android/settings/applications/AppViewHolder;->createOrRecycle(Landroid/view/LayoutInflater;Landroid/view/View;)Lcom/android/settings/applications/AppViewHolder;

    move-result-object v0

    iget-object p2, v0, Lcom/android/settings/applications/AppViewHolder;->rootView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/settings/development/AppPicker$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/development/AppPicker$MyApplicationInfo;

    iget-object v2, v0, Lcom/android/settings/applications/AppViewHolder;->appName:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/android/settings/development/AppPicker$MyApplicationInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/android/settings/development/AppPicker$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/settings/applications/AppViewHolder;->appIcon:Landroid/widget/ImageView;

    iget-object v3, v1, Lcom/android/settings/development/AppPicker$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Lcom/android/settings/development/AppPicker$AppListAdapter;->this$0:Lcom/android/settings/development/AppPicker;

    invoke-virtual {v4}, Lcom/android/settings/development/AppPicker;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v0, Lcom/android/settings/applications/AppViewHolder;->summary:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/android/settings/development/AppPicker$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v2, v0, Lcom/android/settings/applications/AppViewHolder;->disabled:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    return-object p2

    :cond_0
    iget-object v2, v0, Lcom/android/settings/applications/AppViewHolder;->appIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v0, Lcom/android/settings/applications/AppViewHolder;->summary:Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
