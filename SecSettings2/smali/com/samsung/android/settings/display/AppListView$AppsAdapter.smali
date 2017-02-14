.class Lcom/samsung/android/settings/display/AppListView$AppsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AppListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/AppListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppsAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/samsung/android/settings/display/AppListView$ActivityEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private final mIconResId:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;III)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    iput p4, p0, Lcom/samsung/android/settings/display/AppListView$AppsAdapter;->mIconResId:I

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/AppListView$AppsAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/android/settings/display/AppListView$AppsAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-direct {p0}, Lcom/samsung/android/settings/display/AppListView$AppsAdapter;->loadApps()V

    return-void
.end method

.method private createAppListInfoRow(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/settings/display/AppListView$AppsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04016b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private loadApps()V
    .locals 8

    const-string/jumbo v5, "font"

    const-string/jumbo v6, "loadApps():"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/settings/display/AppListView$AppsAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    :goto_0
    invoke-static {}, Lcom/samsung/android/settings/display/AppListView;->-get3()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-ge v2, v5, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/settings/display/AppListView;->-get3()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v2

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    new-instance v5, Lcom/samsung/android/settings/display/AppListView$ActivityEntry;

    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-direct {v5, v6, v7, v2}, Lcom/samsung/android/settings/display/AppListView$ActivityEntry;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/display/AppListView$AppsAdapter;->addAll(Ljava/util/Collection;)V

    return-void

    :catch_0
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const-string/jumbo v3, "font"

    const-string/jumbo v4, "getView():"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_2

    move-object v2, p2

    :goto_0
    const v3, 0x7f110147

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f110146

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/AppListView$AppsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/display/AppListView$ActivityEntry;

    iget-object v3, v3, Lcom/samsung/android/settings/display/AppListView$ActivityEntry;->mLabel:Ljava/lang/String;

    if-eqz v3, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/AppListView$AppsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/display/AppListView$ActivityEntry;

    iget-object v3, v3, Lcom/samsung/android/settings/display/AppListView$ActivityEntry;->mLabel:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/AppListView$AppsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/display/AppListView$ActivityEntry;

    iget-object v3, v3, Lcom/samsung/android/settings/display/AppListView$ActivityEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/AppListView$AppsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/display/AppListView$ActivityEntry;

    iget-object v3, v3, Lcom/samsung/android/settings/display/AppListView$ActivityEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/display/AppListView;->-get1()I

    move-result v3

    int-to-float v3, v3

    invoke-static {}, Lcom/samsung/android/settings/display/AppListView;->-get0()F

    move-result v4

    mul-float/2addr v3, v4

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {}, Lcom/samsung/android/settings/display/AppListView;->-get2()Landroid/graphics/Typeface;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/AppListView$AppsAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d01bc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    return-object v2

    :cond_2
    invoke-direct {p0, p3}, Lcom/samsung/android/settings/display/AppListView$AppsAdapter;->createAppListInfoRow(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
