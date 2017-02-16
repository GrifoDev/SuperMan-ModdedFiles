.class public Landroid/content/pm/PackageManager$SemPackageStatsObserver;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "PackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SemPackageStatsObserver"
.end annotation


# instance fields
.field private mListener:Landroid/content/pm/PackageManager$SemPackageStatsListener;

.field final synthetic this$0:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageManager$SemPackageStatsListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/content/pm/PackageManager;
    .param p2, "listener"    # Landroid/content/pm/PackageManager$SemPackageStatsListener;

    .prologue
    .line 6468
    iput-object p1, p0, Landroid/content/pm/PackageManager$SemPackageStatsObserver;->this$0:Landroid/content/pm/PackageManager;

    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    .line 6469
    iput-object p2, p0, Landroid/content/pm/PackageManager$SemPackageStatsObserver;->mListener:Landroid/content/pm/PackageManager$SemPackageStatsListener;

    .line 6468
    return-void
.end method


# virtual methods
.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 1
    .param p1, "pStats"    # Landroid/content/pm/PackageStats;
    .param p2, "succeeded"    # Z

    .prologue
    .line 6474
    iget-object v0, p0, Landroid/content/pm/PackageManager$SemPackageStatsObserver;->mListener:Landroid/content/pm/PackageManager$SemPackageStatsListener;

    if-eqz v0, :cond_0

    .line 6475
    iget-object v0, p0, Landroid/content/pm/PackageManager$SemPackageStatsObserver;->mListener:Landroid/content/pm/PackageManager$SemPackageStatsListener;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/PackageManager$SemPackageStatsListener;->onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V

    .line 6473
    :cond_0
    return-void
.end method
