.class public Lcom/android/systemui/qs/external/PackageManagerAdapter;
.super Ljava/lang/Object;
.source "PackageManagerAdapter.java"


# instance fields
.field private mIPackageManager:Landroid/content/pm/IPackageManager;

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/external/PackageManagerAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/external/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    return-void
.end method


# virtual methods
.method public getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/qs/external/PackageManagerAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/qs/external/PackageManagerAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/qs/external/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    return-object v0
.end method
