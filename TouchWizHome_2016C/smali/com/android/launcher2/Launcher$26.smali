.class Lcom/android/launcher2/Launcher$26;
.super Landroid/os/FileObserver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher;->startZeroImageObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/Launcher$26;->this$0:Lcom/android/launcher2/Launcher;

    invoke-direct {p0, p2}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 3

    and-int/lit16 p1, p1, 0xfff

    const/16 v1, 0x8

    if-ne p1, v1, :cond_0

    const-string v1, "Launcher"

    const-string v2, "FileObserver.CLOSE_WRITE called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/launcher2/Launcher;->iszerofile:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/launcher2/Launcher$26$1;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Launcher$26$1;-><init>(Lcom/android/launcher2/Launcher$26;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
