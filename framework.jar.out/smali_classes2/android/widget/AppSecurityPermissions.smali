.class public Landroid/widget/AppSecurityPermissions;
.super Ljava/lang/Object;
.source "AppSecurityPermissions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;,
        Landroid/widget/AppSecurityPermissions$MyPermissionInfo;,
        Landroid/widget/AppSecurityPermissions$PermissionGroupInfoComparator;,
        Landroid/widget/AppSecurityPermissions$PermissionInfoComparator;,
        Landroid/widget/AppSecurityPermissions$PermissionItemView;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AppSecurityPermissions"

.field public static final WHICH_ALL:I = 0xffff

.field public static final WHICH_NEW:I = 0x4

.field private static final localLOGV:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mNewPermPrefix:Ljava/lang/CharSequence;

.field private mPackageName:Ljava/lang/String;

.field private final mPermComparator:Landroid/widget/AppSecurityPermissions$PermissionInfoComparator;

.field private final mPermGroupComparator:Landroid/widget/AppSecurityPermissions$PermissionGroupInfoComparator;

.field private final mPermGroups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPermGroupsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPermsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/AppSecurityPermissions$MyPermissionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 76
    iput-object v0, p0, Landroid/widget/AppSecurityPermissions;->mPermGroups:Ljava/util/Map;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 78
    iput-object v0, p0, Landroid/widget/AppSecurityPermissions;->mPermGroupsList:Ljava/util/List;

    .line 81
    new-instance v0, Landroid/widget/AppSecurityPermissions$PermissionGroupInfoComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/widget/AppSecurityPermissions$PermissionGroupInfoComparator;-><init>(Landroid/widget/AppSecurityPermissions$PermissionGroupInfoComparator;)V

    .line 80
    iput-object v0, p0, Landroid/widget/AppSecurityPermissions;->mPermGroupComparator:Landroid/widget/AppSecurityPermissions$PermissionGroupInfoComparator;

    .line 82
    new-instance v0, Landroid/widget/AppSecurityPermissions$PermissionInfoComparator;

    invoke-direct {v0}, Landroid/widget/AppSecurityPermissions$PermissionInfoComparator;-><init>()V

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions;->mPermComparator:Landroid/widget/AppSecurityPermissions$PermissionInfoComparator;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions;->mPermsList:Ljava/util/List;

    .line 256
    iput-object p1, p0, Landroid/widget/AppSecurityPermissions;->mContext:Landroid/content/Context;

    .line 257
    iget-object v0, p0, Landroid/widget/AppSecurityPermissions;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions;->mInflater:Landroid/view/LayoutInflater;

    .line 258
    iget-object v0, p0, Landroid/widget/AppSecurityPermissions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    .line 260
    iget-object v0, p0, Landroid/widget/AppSecurityPermissions;->mContext:Landroid/content/Context;

    const v1, 0x104041d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions;->mNewPermPrefix:Ljava/lang/CharSequence;

    .line 255
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageInfo;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 283
    invoke-direct {p0, p1}, Landroid/widget/AppSecurityPermissions;-><init>(Landroid/content/Context;)V

    .line 284
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 285
    .local v2, "permSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/widget/AppSecurityPermissions$MyPermissionInfo;>;"
    if-nez p2, :cond_0

    .line 286
    return-void

    .line 288
    :cond_0
    iget-object v4, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v4, p0, Landroid/widget/AppSecurityPermissions;->mPackageName:Ljava/lang/String;

    .line 291
    const/4 v1, 0x0

    .line 293
    .local v1, "installedPkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, p2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 295
    :try_start_0
    iget-object v4, p0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 296
    const/16 v6, 0x1000

    .line 295
    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 299
    .end local v1    # "installedPkgInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    invoke-direct {p0, p2, v2, v1}, Landroid/widget/AppSecurityPermissions;->extractPerms(Landroid/content/pm/PackageInfo;Ljava/util/Set;Landroid/content/pm/PackageInfo;)V

    .line 302
    :cond_1
    iget-object v4, p2, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 305
    :try_start_1
    iget-object v4, p0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, p2, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getUidForSharedUser(Ljava/lang/String;)I

    move-result v3

    .line 306
    .local v3, "sharedUid":I
    invoke-direct {p0, v3, v2}, Landroid/widget/AppSecurityPermissions;->getAllUsedPermissions(ILjava/util/Set;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 312
    .end local v3    # "sharedUid":I
    :cond_2
    :goto_1
    iget-object v4, p0, Landroid/widget/AppSecurityPermissions;->mPermsList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 313
    iget-object v4, p0, Landroid/widget/AppSecurityPermissions;->mPermsList:Ljava/util/List;

    invoke-direct {p0, v4}, Landroid/widget/AppSecurityPermissions;->setPermissions(Ljava/util/List;)V

    .line 282
    return-void

    .line 307
    :catch_0
    move-exception v0

    .line 308
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v4, "AppSecurityPermissions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Couldn\'t retrieve shared user id for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 297
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "installedPkgInfo":Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 264
    invoke-direct {p0, p1}, Landroid/widget/AppSecurityPermissions;-><init>(Landroid/content/Context;)V

    .line 265
    iput-object p2, p0, Landroid/widget/AppSecurityPermissions;->mPackageName:Ljava/lang/String;

    .line 266
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 269
    .local v1, "permSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/widget/AppSecurityPermissions$MyPermissionInfo;>;"
    :try_start_0
    iget-object v3, p0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    const/16 v4, 0x1000

    invoke-virtual {v3, p2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 275
    .local v2, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 276
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, v3, v1}, Landroid/widget/AppSecurityPermissions;->getAllUsedPermissions(ILjava/util/Set;)V

    .line 278
    :cond_0
    iget-object v3, p0, Landroid/widget/AppSecurityPermissions;->mPermsList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 279
    iget-object v3, p0, Landroid/widget/AppSecurityPermissions;->mPermsList:Ljava/util/List;

    invoke-direct {p0, v3}, Landroid/widget/AppSecurityPermissions;->setPermissions(Ljava/util/List;)V

    .line 263
    return-void

    .line 270
    .end local v2    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 271
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v3, "AppSecurityPermissions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Couldn\'t retrieve permissions for package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    return-void
.end method

.method private addPermToList(Ljava/util/List;Landroid/widget/AppSecurityPermissions$MyPermissionInfo;)V
    .locals 2
    .param p2, "pInfo"    # Landroid/widget/AppSecurityPermissions$MyPermissionInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/widget/AppSecurityPermissions$MyPermissionInfo;",
            ">;",
            "Landroid/widget/AppSecurityPermissions$MyPermissionInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 617
    .local p1, "permList":Ljava/util/List;, "Ljava/util/List<Landroid/widget/AppSecurityPermissions$MyPermissionInfo;>;"
    iget-object v1, p2, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->mLabel:Ljava/lang/CharSequence;

    if-nez v1, :cond_0

    .line 618
    iget-object v1, p0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, v1}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p2, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->mLabel:Ljava/lang/CharSequence;

    .line 620
    :cond_0
    iget-object v1, p0, Landroid/widget/AppSecurityPermissions;->mPermComparator:Landroid/widget/AppSecurityPermissions$PermissionInfoComparator;

    invoke-static {p1, p2, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 622
    .local v0, "idx":I
    if-gez v0, :cond_1

    .line 623
    neg-int v1, v0

    add-int/lit8 v0, v1, -0x1

    .line 624
    invoke-interface {p1, v0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 616
    :cond_1
    return-void
.end method

.method private displayPermissions(Ljava/util/List;Landroid/widget/LinearLayout;IZ)V
    .locals 12
    .param p2, "permListView"    # Landroid/widget/LinearLayout;
    .param p3, "which"    # I
    .param p4, "showRevokeUI"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;",
            ">;",
            "Landroid/widget/LinearLayout;",
            "IZ)V"
        }
    .end annotation

    .prologue
    .line 492
    .local p1, "groups":Ljava/util/List;, "Ljava/util/List<Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;>;"
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 494
    iget-object v0, p0, Landroid/widget/AppSecurityPermissions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x41000000    # 8.0f

    mul-float/2addr v0, v3

    float-to-int v10, v0

    .line 496
    .local v10, "spacing":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_6

    .line 497
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    .line 498
    .local v1, "grp":Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    invoke-direct {p0, v1, p3}, Landroid/widget/AppSecurityPermissions;->getPermissionList(Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;I)Ljava/util/List;

    move-result-object v9

    .line 499
    .local v9, "perms":Ljava/util/List;, "Ljava/util/List<Landroid/widget/AppSecurityPermissions$MyPermissionInfo;>;"
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_5

    .line 500
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;

    .line 501
    .local v2, "perm":Landroid/widget/AppSecurityPermissions$MyPermissionInfo;
    if-nez v7, :cond_3

    const/4 v3, 0x1

    .line 502
    :goto_2
    const/4 v0, 0x4

    if-eq p3, v0, :cond_4

    iget-object v4, p0, Landroid/widget/AppSecurityPermissions;->mNewPermPrefix:Ljava/lang/CharSequence;

    :goto_3
    move-object v0, p0

    move/from16 v5, p4

    .line 501
    invoke-direct/range {v0 .. v5}, Landroid/widget/AppSecurityPermissions;->getPermissionItemView(Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;Landroid/widget/AppSecurityPermissions$MyPermissionInfo;ZLjava/lang/CharSequence;Z)Landroid/widget/AppSecurityPermissions$PermissionItemView;

    move-result-object v11

    .line 503
    .local v11, "view":Landroid/view/View;
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 504
    const/4 v0, -0x1

    .line 505
    const/4 v3, -0x2

    .line 503
    invoke-direct {v8, v0, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 506
    .local v8, "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-nez v7, :cond_0

    .line 507
    iput v10, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 509
    :cond_0
    iget-object v0, v1, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mAllPermissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v7, v0, :cond_1

    .line 510
    iput v10, v8, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 512
    :cond_1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 513
    iget v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 515
    :cond_2
    invoke-virtual {p2, v11, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 499
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 501
    .end local v8    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v11    # "view":Landroid/view/View;
    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 502
    :cond_4
    const/4 v4, 0x0

    goto :goto_3

    .line 496
    .end local v2    # "perm":Landroid/widget/AppSecurityPermissions$MyPermissionInfo;
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 491
    .end local v1    # "grp":Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    .end local v7    # "j":I
    .end local v9    # "perms":Ljava/util/List;, "Ljava/util/List<Landroid/widget/AppSecurityPermissions$MyPermissionInfo;>;"
    :cond_6
    return-void
.end method

.method private extractPerms(Landroid/content/pm/PackageInfo;Ljava/util/Set;Landroid/content/pm/PackageInfo;)V
    .locals 21
    .param p1, "info"    # Landroid/content/pm/PackageInfo;
    .param p3, "installedPkgInfo"    # Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInfo;",
            "Ljava/util/Set",
            "<",
            "Landroid/widget/AppSecurityPermissions$MyPermissionInfo;",
            ">;",
            "Landroid/content/pm/PackageInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 369
    .local p2, "permSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/widget/AppSecurityPermissions$MyPermissionInfo;>;"
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    move-object/from16 v16, v0

    .line 370
    .local v16, "strList":[Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    .line 371
    .local v6, "flagsList":[I
    if-eqz v16, :cond_0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    if-nez v18, :cond_1

    .line 372
    :cond_0
    return-void

    .line 374
    :cond_1
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v10, v0, :cond_e

    .line 375
    aget-object v15, v16, v10

    .line 377
    .local v15, "permName":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v15, v1}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v17

    .line 378
    .local v17, "tmpPermInfo":Landroid/content/pm/PermissionInfo;
    if-nez v17, :cond_3

    .line 374
    .end local v17    # "tmpPermInfo":Landroid/content/pm/PermissionInfo;
    :cond_2
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 381
    .restart local v17    # "tmpPermInfo":Landroid/content/pm/PermissionInfo;
    :cond_3
    const/4 v5, -0x1

    .line 382
    .local v5, "existingIndex":I
    if-eqz p3, :cond_4

    .line 383
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    .line 384
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_2
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v11, v0, :cond_4

    .line 385
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    move-object/from16 v18, v0

    aget-object v18, v18, v11

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 386
    move v5, v11

    .line 391
    .end local v11    # "j":I
    :cond_4
    if-ltz v5, :cond_9

    .line 392
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    move-object/from16 v18, v0

    aget v4, v18, v5

    .line 393
    .local v4, "existingFlags":I
    :goto_3
    aget v18, v6, v10

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v4}, Landroid/widget/AppSecurityPermissions;->isDisplayablePermission(Landroid/content/pm/PermissionInfo;II)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 398
    move-object/from16 v0, v17

    iget-object v14, v0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 399
    .local v14, "origGroupName":Ljava/lang/String;
    move-object v8, v14

    .line 400
    .local v8, "groupName":Ljava/lang/String;
    if-nez v14, :cond_5

    .line 401
    move-object/from16 v0, v17

    iget-object v8, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 402
    move-object/from16 v0, v17

    iput-object v8, v0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 404
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AppSecurityPermissions;->mPermGroups:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    .line 405
    .local v7, "group":Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    if-nez v7, :cond_7

    .line 406
    const/4 v9, 0x0

    .line 407
    .local v9, "grp":Landroid/content/pm/PermissionGroupInfo;
    if-eqz v14, :cond_6

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v14, v1}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v9

    .line 410
    .end local v9    # "grp":Landroid/content/pm/PermissionGroupInfo;
    :cond_6
    if-eqz v9, :cond_a

    .line 411
    new-instance v7, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    .end local v7    # "group":Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    invoke-direct {v7, v9}, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;-><init>(Landroid/content/pm/PermissionGroupInfo;)V

    .line 424
    .restart local v7    # "group":Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AppSecurityPermissions;->mPermGroups:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    :cond_7
    if-eqz p3, :cond_d

    .line 427
    and-int/lit8 v18, v4, 0x2

    if-nez v18, :cond_c

    const/4 v13, 0x1

    .line 428
    .local v13, "newPerm":Z
    :goto_5
    new-instance v12, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    .line 429
    .local v12, "myPerm":Landroid/widget/AppSecurityPermissions$MyPermissionInfo;
    aget v18, v6, v10

    move/from16 v0, v18

    iput v0, v12, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->mNewReqFlags:I

    .line 430
    iput v4, v12, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->mExistingReqFlags:I

    .line 433
    iput-boolean v13, v12, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->mNew:Z

    .line 434
    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 435
    .end local v4    # "existingFlags":I
    .end local v5    # "existingIndex":I
    .end local v7    # "group":Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    .end local v8    # "groupName":Ljava/lang/String;
    .end local v12    # "myPerm":Landroid/widget/AppSecurityPermissions$MyPermissionInfo;
    .end local v13    # "newPerm":Z
    .end local v14    # "origGroupName":Ljava/lang/String;
    .end local v17    # "tmpPermInfo":Landroid/content/pm/PermissionInfo;
    :catch_0
    move-exception v3

    .line 436
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v18, "AppSecurityPermissions"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Ignoring unknown permission:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 384
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v5    # "existingIndex":I
    .restart local v11    # "j":I
    .restart local v17    # "tmpPermInfo":Landroid/content/pm/PermissionInfo;
    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    .line 392
    .end local v11    # "j":I
    :cond_9
    const/4 v4, 0x0

    .restart local v4    # "existingFlags":I
    goto/16 :goto_3

    .line 417
    .restart local v7    # "group":Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    .restart local v8    # "groupName":Ljava/lang/String;
    .restart local v14    # "origGroupName":Ljava/lang/String;
    :cond_a
    :try_start_1
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AppSecurityPermissions;->mPermGroups:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "group":Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    check-cast v7, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    .line 419
    .restart local v7    # "group":Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    if-nez v7, :cond_b

    .line 420
    new-instance v7, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    .end local v7    # "group":Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    .line 422
    .restart local v7    # "group":Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    :cond_b
    new-instance v7, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    .end local v7    # "group":Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;-><init>(Landroid/content/pm/PermissionInfo;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v7    # "group":Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    goto/16 :goto_4

    .line 427
    :cond_c
    const/4 v13, 0x0

    .restart local v13    # "newPerm":Z
    goto :goto_5

    .line 426
    .end local v13    # "newPerm":Z
    :cond_d
    const/4 v13, 0x0

    .restart local v13    # "newPerm":Z
    goto :goto_5

    .line 368
    .end local v4    # "existingFlags":I
    .end local v5    # "existingIndex":I
    .end local v7    # "group":Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    .end local v8    # "groupName":Ljava/lang/String;
    .end local v13    # "newPerm":Z
    .end local v14    # "origGroupName":Ljava/lang/String;
    .end local v15    # "permName":Ljava/lang/String;
    .end local v17    # "tmpPermInfo":Landroid/content/pm/PermissionInfo;
    :cond_e
    return-void
.end method

.method private getAllUsedPermissions(ILjava/util/Set;)V
    .locals 4
    .param p1, "sharedUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Landroid/widget/AppSecurityPermissions$MyPermissionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "permSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/widget/AppSecurityPermissions$MyPermissionInfo;>;"
    const/4 v2, 0x0

    .line 349
    iget-object v3, p0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 350
    .local v1, "sharedPkgList":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v3, v1

    if-nez v3, :cond_1

    .line 351
    :cond_0
    return-void

    .line 353
    :cond_1
    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v0, v1, v2

    .line 354
    .local v0, "sharedPkg":Ljava/lang/String;
    invoke-direct {p0, v0, p2}, Landroid/widget/AppSecurityPermissions;->getPermissionsForPackage(Ljava/lang/String;Ljava/util/Set;)V

    .line 353
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 348
    .end local v0    # "sharedPkg":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public static getPermissionItemView(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/view/View;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "grpName"    # Ljava/lang/CharSequence;
    .param p2, "description"    # Ljava/lang/CharSequence;
    .param p3, "dangerous"    # Z

    .prologue
    const/4 v3, 0x1

    .line 324
    const-string/jumbo v0, "layout_inflater"

    .line 323
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 328
    .local v1, "inflater":Landroid/view/LayoutInflater;
    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    .line 330
    .local v6, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 331
    .local v7, "res":Landroid/content/res/Resources;
    if-eqz p3, :cond_1

    .line 332
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v2, 0x11600e4

    invoke-virtual {v0, v2, v6, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 333
    iget v0, v6, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 338
    .local v5, "icon":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "current_sec_active_themepackage"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 339
    if-eqz v5, :cond_0

    .line 340
    const v0, 0x10600da

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_0
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    .line 344
    invoke-static/range {v0 .. v5}, Landroid/widget/AppSecurityPermissions;->getPermissionItemViewOld(Landroid/content/Context;Landroid/view/LayoutInflater;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/graphics/drawable/Drawable;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 335
    .end local v5    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v2, 0x11600e3

    invoke-virtual {v0, v2, v6, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 336
    iget v0, v6, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .restart local v5    # "icon":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method private static getPermissionItemView(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;Landroid/widget/AppSecurityPermissions$MyPermissionInfo;ZLjava/lang/CharSequence;Ljava/lang/String;Z)Landroid/widget/AppSecurityPermissions$PermissionItemView;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "grp"    # Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    .param p3, "perm"    # Landroid/widget/AppSecurityPermissions$MyPermissionInfo;
    .param p4, "first"    # Z
    .param p5, "newPermPrefix"    # Ljava/lang/CharSequence;
    .param p6, "packageName"    # Ljava/lang/String;
    .param p7, "showRevokeUI"    # Z

    .prologue
    .line 530
    iget v1, p3, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 531
    const v1, 0x1090037

    .line 532
    :goto_0
    const/4 v2, 0x0

    .line 529
    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AppSecurityPermissions$PermissionItemView;

    .local v0, "permView":Landroid/widget/AppSecurityPermissions$PermissionItemView;
    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    move v6, p7

    .line 533
    invoke-virtual/range {v0 .. v6}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->setPermission(Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;Landroid/widget/AppSecurityPermissions$MyPermissionInfo;ZLjava/lang/CharSequence;Ljava/lang/String;Z)V

    .line 534
    return-object v0

    .line 531
    .end local v0    # "permView":Landroid/widget/AppSecurityPermissions$PermissionItemView;
    :cond_0
    const v1, 0x1090036

    goto :goto_0
.end method

.method private getPermissionItemView(Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;Landroid/widget/AppSecurityPermissions$MyPermissionInfo;ZLjava/lang/CharSequence;Z)Landroid/widget/AppSecurityPermissions$PermissionItemView;
    .locals 8
    .param p1, "grp"    # Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    .param p2, "perm"    # Landroid/widget/AppSecurityPermissions$MyPermissionInfo;
    .param p3, "first"    # Z
    .param p4, "newPermPrefix"    # Ljava/lang/CharSequence;
    .param p5, "showRevokeUI"    # Z

    .prologue
    .line 522
    iget-object v0, p0, Landroid/widget/AppSecurityPermissions;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/widget/AppSecurityPermissions;->mInflater:Landroid/view/LayoutInflater;

    .line 523
    iget-object v6, p0, Landroid/widget/AppSecurityPermissions;->mPackageName:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v7, p5

    .line 522
    invoke-static/range {v0 .. v7}, Landroid/widget/AppSecurityPermissions;->getPermissionItemView(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;Landroid/widget/AppSecurityPermissions$MyPermissionInfo;ZLjava/lang/CharSequence;Ljava/lang/String;Z)Landroid/widget/AppSecurityPermissions$PermissionItemView;

    move-result-object v0

    return-object v0
.end method

.method private static getPermissionItemViewOld(Landroid/content/Context;Landroid/view/LayoutInflater;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/graphics/drawable/Drawable;)Landroid/view/View;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "grpName"    # Ljava/lang/CharSequence;
    .param p3, "permList"    # Ljava/lang/CharSequence;
    .param p4, "dangerous"    # Z
    .param p5, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v5, 0x0

    .line 539
    const v4, 0x1090038

    invoke-virtual {p1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 541
    .local v3, "permView":Landroid/view/View;
    const v4, 0x10203a0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 542
    .local v2, "permGrpView":Landroid/widget/TextView;
    const v4, 0x10203a1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 544
    .local v1, "permDescView":Landroid/widget/TextView;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "current_sec_active_themepackage"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 545
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1060158

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 548
    :cond_0
    const v4, 0x102039c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 549
    .local v0, "imgView":Landroid/widget/ImageView;
    invoke-virtual {v0, p5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 550
    if-eqz p2, :cond_1

    .line 551
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 552
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 557
    :goto_0
    return-object v3

    .line 554
    :cond_1
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 555
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private getPermissionList(Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;I)Ljava/util/List;
    .locals 1
    .param p1, "grp"    # Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    .param p2, "which"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/widget/AppSecurityPermissions$MyPermissionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 446
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 447
    iget-object v0, p1, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mNewPermissions:Ljava/util/ArrayList;

    return-object v0

    .line 449
    :cond_0
    iget-object v0, p1, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mAllPermissions:Ljava/util/ArrayList;

    return-object v0
.end method

.method private getPermissionsForPackage(Ljava/lang/String;Ljava/util/Set;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Landroid/widget/AppSecurityPermissions$MyPermissionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 360
    .local p2, "permSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/widget/AppSecurityPermissions$MyPermissionInfo;>;"
    :try_start_0
    iget-object v2, p0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    const/16 v3, 0x1000

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 361
    .local v1, "pkgInfo":Landroid/content/pm/PackageInfo;
    invoke-direct {p0, v1, p2, v1}, Landroid/widget/AppSecurityPermissions;->extractPerms(Landroid/content/pm/PackageInfo;Ljava/util/Set;Landroid/content/pm/PackageInfo;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    .end local v1    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return-void

    .line 362
    :catch_0
    move-exception v0

    .line 363
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v2, "AppSecurityPermissions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Couldn\'t retrieve permissions for package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getPermissionsView(IZ)Landroid/view/View;
    .locals 7
    .param p1, "which"    # I
    .param p2, "showRevokeUI"    # Z

    .prologue
    const/4 v6, 0x0

    .line 474
    iget-object v3, p0, Landroid/widget/AppSecurityPermissions;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x1090039

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 475
    .local v2, "permsView":Landroid/widget/LinearLayout;
    const v3, 0x10203a3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 476
    .local v0, "displayList":Landroid/widget/LinearLayout;
    const v3, 0x10203a2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 478
    .local v1, "noPermsView":Landroid/view/View;
    iget-object v3, p0, Landroid/widget/AppSecurityPermissions;->mPermGroupsList:Ljava/util/List;

    invoke-direct {p0, v3, v0, p1, p2}, Landroid/widget/AppSecurityPermissions;->displayPermissions(Ljava/util/List;Landroid/widget/LinearLayout;IZ)V

    .line 479
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-gtz v3, :cond_0

    .line 480
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 483
    :cond_0
    return-object v2
.end method

.method private isDisplayablePermission(Landroid/content/pm/PermissionInfo;II)Z
    .locals 10
    .param p1, "pInfo"    # Landroid/content/pm/PermissionInfo;
    .param p2, "newReqFlags"    # I
    .param p3, "existingReqFlags"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 562
    iget v9, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v0, v9, 0xf

    .line 563
    .local v0, "base":I
    if-nez v0, :cond_0

    move v4, v7

    .line 566
    .local v4, "isNormal":Z
    :goto_0
    if-eqz v4, :cond_1

    .line 567
    return v8

    .end local v4    # "isNormal":Z
    :cond_0
    move v4, v8

    .line 563
    goto :goto_0

    .line 570
    .restart local v4    # "isNormal":Z
    :cond_1
    if-eq v0, v7, :cond_3

    .line 571
    iget v9, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit16 v9, v9, 0x80

    if-eqz v9, :cond_4

    const/4 v1, 0x1

    .line 573
    .local v1, "isDangerous":Z
    :goto_1
    and-int/lit8 v9, p2, 0x1

    if-eqz v9, :cond_5

    const/4 v5, 0x1

    .line 575
    .local v5, "isRequired":Z
    :goto_2
    iget v9, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v9, v9, 0x20

    if-eqz v9, :cond_6

    const/4 v2, 0x1

    .line 577
    .local v2, "isDevelopment":Z
    :goto_3
    and-int/lit8 v9, p3, 0x2

    if-eqz v9, :cond_7

    const/4 v6, 0x1

    .line 579
    .local v6, "wasGranted":Z
    :goto_4
    and-int/lit8 v9, p2, 0x2

    if-eqz v9, :cond_8

    const/4 v3, 0x1

    .line 583
    .local v3, "isGranted":Z
    :goto_5
    if-eqz v1, :cond_9

    if-nez v5, :cond_2

    if-nez v6, :cond_2

    if-eqz v3, :cond_9

    .line 584
    :cond_2
    return v7

    .line 570
    .end local v1    # "isDangerous":Z
    .end local v2    # "isDevelopment":Z
    .end local v3    # "isGranted":Z
    .end local v5    # "isRequired":Z
    .end local v6    # "wasGranted":Z
    :cond_3
    const/4 v1, 0x1

    .restart local v1    # "isDangerous":Z
    goto :goto_1

    .line 571
    .end local v1    # "isDangerous":Z
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "isDangerous":Z
    goto :goto_1

    .line 573
    :cond_5
    const/4 v5, 0x0

    .restart local v5    # "isRequired":Z
    goto :goto_2

    .line 575
    :cond_6
    const/4 v2, 0x0

    .restart local v2    # "isDevelopment":Z
    goto :goto_3

    .line 577
    :cond_7
    const/4 v6, 0x0

    .restart local v6    # "wasGranted":Z
    goto :goto_4

    .line 579
    :cond_8
    const/4 v3, 0x0

    .restart local v3    # "isGranted":Z
    goto :goto_5

    .line 590
    :cond_9
    if-eqz v2, :cond_a

    if-eqz v6, :cond_a

    .line 593
    return v7

    .line 595
    :cond_a
    return v8
.end method

.method private setPermissions(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/widget/AppSecurityPermissions$MyPermissionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 629
    .local p1, "permList":Ljava/util/List;, "Ljava/util/List<Landroid/widget/AppSecurityPermissions$MyPermissionInfo;>;"
    if-eqz p1, :cond_1

    .line 631
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "pInfo$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;

    .line 633
    .local v3, "pInfo":Landroid/widget/AppSecurityPermissions$MyPermissionInfo;
    iget v7, v3, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->mNewReqFlags:I

    iget v8, v3, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->mExistingReqFlags:I

    invoke-direct {p0, v3, v7, v8}, Landroid/widget/AppSecurityPermissions;->isDisplayablePermission(Landroid/content/pm/PermissionInfo;II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 637
    iget-object v7, p0, Landroid/widget/AppSecurityPermissions;->mPermGroups:Ljava/util/Map;

    iget-object v8, v3, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    .line 638
    .local v2, "group":Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    if-eqz v2, :cond_0

    .line 639
    iget-object v7, p0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v7}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, v3, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->mLabel:Ljava/lang/CharSequence;

    .line 640
    iget-object v7, v2, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mAllPermissions:Ljava/util/ArrayList;

    invoke-direct {p0, v7, v3}, Landroid/widget/AppSecurityPermissions;->addPermToList(Ljava/util/List;Landroid/widget/AppSecurityPermissions$MyPermissionInfo;)V

    .line 641
    iget-boolean v7, v3, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->mNew:Z

    if-eqz v7, :cond_0

    .line 642
    iget-object v7, v2, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mNewPermissions:Ljava/util/ArrayList;

    invoke-direct {p0, v7, v3}, Landroid/widget/AppSecurityPermissions;->addPermToList(Ljava/util/List;Landroid/widget/AppSecurityPermissions$MyPermissionInfo;)V

    goto :goto_0

    .line 648
    .end local v2    # "group":Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    .end local v3    # "pInfo":Landroid/widget/AppSecurityPermissions$MyPermissionInfo;
    .end local v4    # "pInfo$iterator":Ljava/util/Iterator;
    :cond_1
    iget-object v7, p0, Landroid/widget/AppSecurityPermissions;->mPermGroups:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "pgrp$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    .line 649
    .local v5, "pgrp":Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    iget v7, v5, Landroid/content/pm/PackageItemInfo;->labelRes:I

    if-nez v7, :cond_2

    iget-object v7, v5, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v7, :cond_3

    .line 650
    :cond_2
    iget-object v7, p0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v7}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, v5, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mLabel:Ljava/lang/CharSequence;

    .line 660
    :goto_2
    iget-object v7, p0, Landroid/widget/AppSecurityPermissions;->mPermGroupsList:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 654
    :cond_3
    :try_start_0
    iget-object v7, p0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    iget-object v8, v5, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 655
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    iget-object v7, p0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, v5, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mLabel:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 656
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 657
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v7, p0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v7}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, v5, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mLabel:Ljava/lang/CharSequence;

    goto :goto_2

    .line 662
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v5    # "pgrp":Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    :cond_4
    iget-object v7, p0, Landroid/widget/AppSecurityPermissions;->mPermGroupsList:Ljava/util/List;

    iget-object v8, p0, Landroid/widget/AppSecurityPermissions;->mPermGroupComparator:Landroid/widget/AppSecurityPermissions$PermissionGroupInfoComparator;

    invoke-static {v7, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 628
    return-void
.end method


# virtual methods
.method public getPermissionCount()I
    .locals 1

    .prologue
    .line 442
    const v0, 0xffff

    invoke-virtual {p0, v0}, Landroid/widget/AppSecurityPermissions;->getPermissionCount(I)I

    move-result v0

    return v0
.end method

.method public getPermissionCount(I)I
    .locals 3
    .param p1, "which"    # I

    .prologue
    .line 454
    const/4 v0, 0x0

    .line 455
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/widget/AppSecurityPermissions;->mPermGroupsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 456
    iget-object v2, p0, Landroid/widget/AppSecurityPermissions;->mPermGroupsList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    invoke-direct {p0, v2, p1}, Landroid/widget/AppSecurityPermissions;->getPermissionList(Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v0, v2

    .line 455
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 458
    :cond_0
    return v0
.end method

.method public getPermissionsView()Landroid/view/View;
    .locals 2

    .prologue
    .line 462
    const v0, 0xffff

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/widget/AppSecurityPermissions;->getPermissionsView(IZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getPermissionsView(I)Landroid/view/View;
    .locals 1
    .param p1, "which"    # I

    .prologue
    .line 470
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/AppSecurityPermissions;->getPermissionsView(IZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getPermissionsViewWithRevokeButtons()Landroid/view/View;
    .locals 2

    .prologue
    .line 466
    const v0, 0xffff

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/widget/AppSecurityPermissions;->getPermissionsView(IZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
