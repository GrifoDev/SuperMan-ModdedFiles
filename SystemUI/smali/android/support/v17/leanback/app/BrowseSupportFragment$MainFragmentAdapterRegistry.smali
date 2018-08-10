.class public final Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapterRegistry;
.super Ljava/lang/Object;
.source "BrowseSupportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/BrowseSupportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MainFragmentAdapterRegistry"
.end annotation


# static fields
.field private static final sDefaultFragmentFactory:Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentFactory;


# instance fields
.field private final mItemToFragmentFactoryMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/support/v17/leanback/app/BrowseSupportFragment$ListRowFragmentFactory;

    invoke-direct {v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$ListRowFragmentFactory;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapterRegistry;->sDefaultFragmentFactory:Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapterRegistry;->mItemToFragmentFactoryMapping:Ljava/util/Map;

    const-class v0, Landroid/support/v17/leanback/widget/ListRow;

    sget-object v1, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapterRegistry;->sDefaultFragmentFactory:Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentFactory;

    invoke-virtual {p0, v0, v1}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapterRegistry;->registerFragment(Ljava/lang/Class;Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentFactory;)V

    return-void
.end method


# virtual methods
.method public createFragment(Ljava/lang/Object;)Landroid/support/v4/app/Fragment;
    .locals 3

    if-nez p1, :cond_1

    sget-object v0, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapterRegistry;->sDefaultFragmentFactory:Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentFactory;

    :goto_0
    if-nez v0, :cond_0

    instance-of v1, p1, Landroid/support/v17/leanback/widget/PageRow;

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    sget-object v0, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapterRegistry;->sDefaultFragmentFactory:Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentFactory;

    :cond_0
    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentFactory;->createFragment(Ljava/lang/Object;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    return-object v1

    :cond_1
    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapterRegistry;->mItemToFragmentFactoryMapping:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentFactory;

    goto :goto_0
.end method

.method public registerFragment(Ljava/lang/Class;Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentFactory;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapterRegistry;->mItemToFragmentFactoryMapping:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
