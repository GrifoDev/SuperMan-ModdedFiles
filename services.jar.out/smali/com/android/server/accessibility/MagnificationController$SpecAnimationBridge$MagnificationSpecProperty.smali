.class Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge$MagnificationSpecProperty;
.super Landroid/util/Property;
.source "MagnificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MagnificationSpecProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property",
        "<",
        "Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;",
        "Landroid/view/MagnificationSpec;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const-class v0, Landroid/view/MagnificationSpec;

    const-string/jumbo v1, "spec"

    invoke-direct {p0, v0, v1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;)Landroid/view/MagnificationSpec;
    .locals 2

    invoke-static {p1}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->-get0(Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {p1}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->-get1(Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;)Landroid/view/MagnificationSpec;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge$MagnificationSpecProperty;->get(Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;)Landroid/view/MagnificationSpec;

    move-result-object v0

    return-object v0
.end method

.method public set(Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;Landroid/view/MagnificationSpec;)V
    .locals 2

    invoke-static {p1}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->-get0(Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {p1, p2}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->-wrap0(Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;Landroid/view/MagnificationSpec;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    check-cast p2, Landroid/view/MagnificationSpec;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge$MagnificationSpecProperty;->set(Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;Landroid/view/MagnificationSpec;)V

    return-void
.end method
