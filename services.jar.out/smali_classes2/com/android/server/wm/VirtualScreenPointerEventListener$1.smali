.class Lcom/android/server/wm/VirtualScreenPointerEventListener$1;
.super Ljava/lang/Object;
.source "VirtualScreenPointerEventListener.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/VirtualScreenPointerEventListener;->animateRequestScreenOffset(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/VirtualScreenPointerEventListener;


# direct methods
.method constructor <init>(Lcom/android/server/wm/VirtualScreenPointerEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener$1;->this$0:Lcom/android/server/wm/VirtualScreenPointerEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener$1;->this$0:Lcom/android/server/wm/VirtualScreenPointerEventListener;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/wm/VirtualScreenPointerEventListener;->-set0(Lcom/android/server/wm/VirtualScreenPointerEventListener;Z)Z

    iget-object v0, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener$1;->this$0:Lcom/android/server/wm/VirtualScreenPointerEventListener;

    invoke-static {v0}, Lcom/android/server/wm/VirtualScreenPointerEventListener;->-get0(Lcom/android/server/wm/VirtualScreenPointerEventListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener$1;->this$0:Lcom/android/server/wm/VirtualScreenPointerEventListener;

    invoke-static {v0}, Lcom/android/server/wm/VirtualScreenPointerEventListener;->-get1(Lcom/android/server/wm/VirtualScreenPointerEventListener;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener$1;->this$0:Lcom/android/server/wm/VirtualScreenPointerEventListener;

    invoke-virtual {v0}, Lcom/android/server/wm/VirtualScreenPointerEventListener;->finishLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener$1;->this$0:Lcom/android/server/wm/VirtualScreenPointerEventListener;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/wm/VirtualScreenPointerEventListener;->-set0(Lcom/android/server/wm/VirtualScreenPointerEventListener;Z)Z

    iget-object v0, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener$1;->this$0:Lcom/android/server/wm/VirtualScreenPointerEventListener;

    invoke-static {v0}, Lcom/android/server/wm/VirtualScreenPointerEventListener;->-get0(Lcom/android/server/wm/VirtualScreenPointerEventListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener$1;->this$0:Lcom/android/server/wm/VirtualScreenPointerEventListener;

    invoke-static {v0}, Lcom/android/server/wm/VirtualScreenPointerEventListener;->-get1(Lcom/android/server/wm/VirtualScreenPointerEventListener;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener$1;->this$0:Lcom/android/server/wm/VirtualScreenPointerEventListener;

    invoke-virtual {v0}, Lcom/android/server/wm/VirtualScreenPointerEventListener;->finishLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
