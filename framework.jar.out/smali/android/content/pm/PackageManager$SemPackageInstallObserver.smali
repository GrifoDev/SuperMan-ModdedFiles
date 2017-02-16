.class public Landroid/content/pm/PackageManager$SemPackageInstallObserver;
.super Landroid/content/pm/IPackageInstallObserver$Stub;
.source "PackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SemPackageInstallObserver"
.end annotation


# instance fields
.field private mListener:Landroid/content/pm/PackageManager$SemPackageInstallListener;

.field final synthetic this$0:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageManager$SemPackageInstallListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/content/pm/PackageManager;
    .param p2, "listener"    # Landroid/content/pm/PackageManager$SemPackageInstallListener;

    .prologue
    .line 5962
    iput-object p1, p0, Landroid/content/pm/PackageManager$SemPackageInstallObserver;->this$0:Landroid/content/pm/PackageManager;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    .line 5963
    iput-object p2, p0, Landroid/content/pm/PackageManager$SemPackageInstallObserver;->mListener:Landroid/content/pm/PackageManager$SemPackageInstallListener;

    .line 5962
    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I

    .prologue
    .line 5968
    iget-object v0, p0, Landroid/content/pm/PackageManager$SemPackageInstallObserver;->mListener:Landroid/content/pm/PackageManager$SemPackageInstallListener;

    if-eqz v0, :cond_0

    .line 5969
    iget-object v0, p0, Landroid/content/pm/PackageManager$SemPackageInstallObserver;->mListener:Landroid/content/pm/PackageManager$SemPackageInstallListener;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/PackageManager$SemPackageInstallListener;->onPackageInstalled(Ljava/lang/String;I)V

    .line 5967
    :cond_0
    return-void
.end method
