.class public Landroid/content/pm/PackageManager$SemPackageDataObserver;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "PackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SemPackageDataObserver"
.end annotation


# instance fields
.field private mListener:Landroid/content/pm/PackageManager$SemFreeStorageNotifyListener;

.field final synthetic this$0:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageManager$SemFreeStorageNotifyListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/content/pm/PackageManager;
    .param p2, "listener"    # Landroid/content/pm/PackageManager$SemFreeStorageNotifyListener;

    .prologue
    .line 6362
    iput-object p1, p0, Landroid/content/pm/PackageManager$SemPackageDataObserver;->this$0:Landroid/content/pm/PackageManager;

    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    .line 6363
    iput-object p2, p0, Landroid/content/pm/PackageManager$SemPackageDataObserver;->mListener:Landroid/content/pm/PackageManager$SemFreeStorageNotifyListener;

    .line 6362
    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "succeeded"    # Z

    .prologue
    .line 6368
    iget-object v0, p0, Landroid/content/pm/PackageManager$SemPackageDataObserver;->mListener:Landroid/content/pm/PackageManager$SemFreeStorageNotifyListener;

    if-eqz v0, :cond_0

    .line 6369
    iget-object v0, p0, Landroid/content/pm/PackageManager$SemPackageDataObserver;->mListener:Landroid/content/pm/PackageManager$SemFreeStorageNotifyListener;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/PackageManager$SemFreeStorageNotifyListener;->onRemoveCompleted(Ljava/lang/String;Z)V

    .line 6367
    :cond_0
    return-void
.end method
