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

    iput-object p1, p0, Landroid/content/pm/PackageManager$SemPackageDataObserver;->this$0:Landroid/content/pm/PackageManager;

    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    iput-object p2, p0, Landroid/content/pm/PackageManager$SemPackageDataObserver;->mListener:Landroid/content/pm/PackageManager$SemFreeStorageNotifyListener;

    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Landroid/content/pm/PackageManager$SemPackageDataObserver;->mListener:Landroid/content/pm/PackageManager$SemFreeStorageNotifyListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/PackageManager$SemPackageDataObserver;->mListener:Landroid/content/pm/PackageManager$SemFreeStorageNotifyListener;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/PackageManager$SemFreeStorageNotifyListener;->onRemoveCompleted(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
