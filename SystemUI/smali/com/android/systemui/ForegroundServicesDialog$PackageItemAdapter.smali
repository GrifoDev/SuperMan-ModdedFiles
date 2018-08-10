.class Lcom/android/systemui/ForegroundServicesDialog$PackageItemAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ForegroundServicesDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/ForegroundServicesDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PackageItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/content/pm/ApplicationInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final mIconDrawableFactory:Landroid/util/IconDrawableFactory;

.field final mInflater:Landroid/view/LayoutInflater;

.field final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f0d004a

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/ForegroundServicesDialog$PackageItemAdapter;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/ForegroundServicesDialog$PackageItemAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;Z)Landroid/util/IconDrawableFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/ForegroundServicesDialog$PackageItemAdapter;->mIconDrawableFactory:Landroid/util/IconDrawableFactory;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    if-nez p2, :cond_0

    iget-object v3, p0, Lcom/android/systemui/ForegroundServicesDialog$PackageItemAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0d004a

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    :goto_0
    const v3, 0x7f0a004a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/systemui/ForegroundServicesDialog$PackageItemAdapter;->mIconDrawableFactory:Landroid/util/IconDrawableFactory;

    invoke-virtual {p0, p1}, Lcom/android/systemui/ForegroundServicesDialog$PackageItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v3}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v3, 0x7f0a004d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/ForegroundServicesDialog$PackageItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Lcom/android/systemui/ForegroundServicesDialog$PackageItemAdapter;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v2

    :cond_0
    move-object v2, p2

    goto :goto_0
.end method

.method public setPackages([Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/systemui/ForegroundServicesDialog$PackageItemAdapter;->clear()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/ForegroundServicesDialog$PackageItemAdapter;->mPm:Landroid/content/pm/PackageManager;

    aget-object v4, p1, v2

    const v5, 0x402000

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Landroid/content/pm/ApplicationInfo$DisplayNameComparator;

    iget-object v4, p0, Lcom/android/systemui/ForegroundServicesDialog$PackageItemAdapter;->mPm:Landroid/content/pm/PackageManager;

    invoke-direct {v3, v4}, Landroid/content/pm/ApplicationInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/ForegroundServicesDialog$PackageItemAdapter;->addAll(Ljava/util/Collection;)V

    return-void

    :catch_0
    move-exception v1

    goto :goto_1
.end method
