.class public Lcom/android/server/policy/MultiPhoneWindowManager;
.super Ljava/lang/Object;
.source "MultiPhoneWindowManager.java"

# interfaces
.implements Lcom/android/server/policy/IMultiPhoneWindowManagerPolicy;


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "MultiPhoneWindowManager"


# instance fields
.field private mH:Landroid/os/Handler;

.field private mImeTargetFreeformTaskId:I

.field private mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/MultiPhoneWindowManager;)Lcom/samsung/android/multiwindow/MultiWindowManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mH:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    return-void
.end method


# virtual methods
.method public adjustImmersiveFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)I
    .locals 1

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/policy/MultiPhoneWindowManager;->isFreeformWindow(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eq p2, p1, :cond_0

    const/16 v0, 0x1802

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasDockedStack()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->hasDockedStack()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isExpandedDockedStack()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isExpandedDockedStack()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isFreeformWindow(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getStackId()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public minimizeOrSildeAllFreeform()V
    .locals 7

    const/4 v6, -0x1

    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v1, :cond_0

    const-string/jumbo v2, "MultiPhoneWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "minimizeOrSildeAllFreeform: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SLIDE_MODE:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "slide"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SLIDE_MODE:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->slideOrUnslideAllFreeform(Z)V

    :cond_0
    :goto_1
    iput v6, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mImeTargetFreeformTaskId:I

    return-void

    :cond_1
    const-string/jumbo v1, "minimize"

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    iget v2, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mImeTargetFreeformTaskId:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->minimizeAllFreeform(I)V

    iget v0, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mImeTargetFreeformTaskId:I

    iget v1, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mImeTargetFreeformTaskId:I

    if-le v1, v6, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mH:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/policy/MultiPhoneWindowManager$1;

    invoke-direct {v2, p0, v0}, Lcom/android/server/policy/MultiPhoneWindowManager$1;-><init>(Lcom/android/server/policy/MultiPhoneWindowManager;I)V

    const-wide/16 v4, 0x190

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method public minimizeOtherFreeforms(Landroid/os/IBinder;)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->minimizeOhterFreeforms(Landroid/os/IBinder;)V

    :cond_0
    return-void
.end method

.method public multiWindowTypeToLayerLw(I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, -0x1

    return v0

    :pswitch_0
    const/4 v0, 0x2

    return v0

    :pswitch_1
    const/4 v0, 0x3

    return v0

    :pswitch_2
    const/16 v0, 0xb

    return v0

    :pswitch_3
    const/16 v0, 0x15

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x8fc
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public notifyFreeformModeChange()V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_ADJUST_STACK_ORDER:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->changeFreeformMode()V

    :cond_0
    return-void
.end method

.method public setMultiWindowEnabled(ZLjava/lang/String;)V
    .locals 4

    iget-object v1, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    const-string/jumbo v2, "MultiPhoneWindowManager"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, p2, p1, v3}, Lcom/samsung/android/multiwindow/MultiWindowManager;->setMultiWindowEnabledForUser(Ljava/lang/String;Ljava/lang/String;ZI)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public slideOrUnslideAllFreeform()V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SLIDE_MODE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->slideOrUnslideAllFreeform(Z)V

    :cond_0
    return-void
.end method

.method public updateImeTargetFreeformTaskId()V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getImeTargetFreeformTaskId()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mImeTargetFreeformTaskId:I

    const-string/jumbo v0, "MultiPhoneWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateImeTargetFreeformTaskId: taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mImeTargetFreeformTaskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
