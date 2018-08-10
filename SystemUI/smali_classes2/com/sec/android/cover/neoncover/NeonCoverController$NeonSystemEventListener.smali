.class Lcom/sec/android/cover/neoncover/NeonCoverController$NeonSystemEventListener;
.super Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListener;
.source "NeonCoverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/neoncover/NeonCoverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NeonSystemEventListener"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mControllerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/cover/neoncover/NeonCoverController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-get0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sec/android/cover/neoncover/NeonCoverController$NeonSystemEventListener;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/neoncover/NeonCoverController$NeonSystemEventListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/cover/neoncover/NeonCoverController;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListener;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/cover/neoncover/NeonCoverController$NeonSystemEventListener;->mControllerRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onSystemCoverEvent(ILandroid/os/Bundle;)V
    .locals 6

    sget-object v3, Lcom/sec/android/cover/neoncover/NeonCoverController$NeonSystemEventListener;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onSystemCoverEvent: event="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " args="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/cover/neoncover/NeonCoverController$NeonSystemEventListener;->mControllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/neoncover/NeonCoverController;

    if-nez v0, :cond_0

    sget-object v3, Lcom/sec/android/cover/neoncover/NeonCoverController$NeonSystemEventListener;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onSystemCoverEvent: controller is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    sget-object v3, Lcom/sec/android/cover/neoncover/NeonCoverController$NeonSystemEventListener;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onSystemCoverEvent unknown event"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_1
    if-nez p2, :cond_1

    sget-object v3, Lcom/sec/android/cover/neoncover/NeonCoverController$NeonSystemEventListener;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Null Power Button data"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/sec/android/cover/neoncover/NeonCoverController$NeonSystemEventListener;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Power Button press."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    if-nez p2, :cond_2

    sget-object v3, Lcom/sec/android/cover/neoncover/NeonCoverController$NeonSystemEventListener;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Null Lcd Off disabled by Cover data"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "lcd_off_disabled_by_cover"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lcom/sec/android/cover/neoncover/NeonCoverController$NeonSystemEventListener;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Lcd Off disabled by Cover data does not contain enable/disable info"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "lcd_off_disabled_by_cover"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    sget-object v3, Lcom/sec/android/cover/neoncover/NeonCoverController$NeonSystemEventListener;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Lcd Off Disabled By Cover disabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap1(Lcom/sec/android/cover/neoncover/NeonCoverController;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    if-eqz v1, :cond_4

    const/4 v3, 0x1

    :goto_1
    iput v3, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
