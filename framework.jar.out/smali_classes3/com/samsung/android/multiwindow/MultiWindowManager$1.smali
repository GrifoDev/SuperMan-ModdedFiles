.class final Lcom/samsung/android/multiwindow/MultiWindowManager$1;
.super Landroid/util/Singleton;
.source "MultiWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/multiwindow/MultiWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton",
        "<",
        "Lcom/samsung/android/multiwindow/IMultiWindowManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Lcom/samsung/android/multiwindow/IMultiWindowManager;
    .locals 3

    .prologue
    .line 51
    const-string/jumbo v2, "multiwindow"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 52
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    .line 53
    .local v1, "service":Lcom/samsung/android/multiwindow/IMultiWindowManager;
    return-object v1
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowManager$1;->create()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v0

    return-object v0
.end method
