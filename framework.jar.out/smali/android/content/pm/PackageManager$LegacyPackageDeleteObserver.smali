.class public Landroid/content/pm/PackageManager$LegacyPackageDeleteObserver;
.super Landroid/app/PackageDeleteObserver;
.source "PackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LegacyPackageDeleteObserver"
.end annotation


# instance fields
.field private final mLegacy:Landroid/content/pm/IPackageDeleteObserver;


# direct methods
.method public constructor <init>(Landroid/content/pm/IPackageDeleteObserver;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/PackageDeleteObserver;-><init>()V

    iput-object p1, p0, Landroid/content/pm/PackageManager$LegacyPackageDeleteObserver;->mLegacy:Landroid/content/pm/IPackageDeleteObserver;

    return-void
.end method


# virtual methods
.method public onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    iget-object v1, p0, Landroid/content/pm/PackageManager$LegacyPackageDeleteObserver;->mLegacy:Landroid/content/pm/IPackageDeleteObserver;

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/PackageManager$LegacyPackageDeleteObserver;->mLegacy:Landroid/content/pm/IPackageDeleteObserver;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageDeleteObserver;->packageDeleted(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
