.class public Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;
.super Ljava/lang/Object;
.source "AccessPointPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settingslib/wifi/AccessPointPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserBadgeCache"
.end annotation


# instance fields
.field private final mBadges:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method static synthetic -wrap0(Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;->getUserBadge(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Landroid/content/pm/PackageManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;->mBadges:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;->mPm:Landroid/content/pm/PackageManager;

    return-void
.end method

.method private getUserBadge(I)Landroid/graphics/drawable/Drawable;
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;->mBadges:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;->mPm:Landroid/content/pm/PackageManager;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getUserBadgeForDensity(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;->mBadges:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;->mBadges:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    return-object v2
.end method
