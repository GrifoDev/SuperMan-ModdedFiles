.class Lcom/android/server/pm/KnoxTimeoutHandler$KnoxPointerEventListener;
.super Ljava/lang/Object;
.source "KnoxTimeoutHandler.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/KnoxTimeoutHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KnoxPointerEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/KnoxTimeoutHandler;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/KnoxTimeoutHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/KnoxTimeoutHandler$KnoxPointerEventListener;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/KnoxTimeoutHandler;Lcom/android/server/pm/KnoxTimeoutHandler$KnoxPointerEventListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/pm/KnoxTimeoutHandler$KnoxPointerEventListener;-><init>(Lcom/android/server/pm/KnoxTimeoutHandler;)V

    return-void
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 8

    iget-object v4, p0, Lcom/android/server/pm/KnoxTimeoutHandler$KnoxPointerEventListener;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Lcom/android/server/pm/KnoxTimeoutHandler;->-set1(Lcom/android/server/pm/KnoxTimeoutHandler;J)J

    const/16 v3, -0x2710

    iget-object v4, p0, Lcom/android/server/pm/KnoxTimeoutHandler$KnoxPointerEventListener;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    invoke-static {v4}, Lcom/android/server/pm/KnoxTimeoutHandler;->-get1(Lcom/android/server/pm/KnoxTimeoutHandler;)Lcom/android/server/pm/PersonaManagerService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->getFocusedUser()I

    move-result v2

    iget-object v4, p0, Lcom/android/server/pm/KnoxTimeoutHandler$KnoxPointerEventListener;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    invoke-static {v4}, Lcom/android/server/pm/KnoxTimeoutHandler;->-get1(Lcom/android/server/pm/KnoxTimeoutHandler;)Lcom/android/server/pm/PersonaManagerService;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/knox/SemPersonaState;->ACTIVE:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v4, v5, v2}, Lcom/android/server/pm/PersonaManagerService;->inState(Lcom/samsung/android/knox/SemPersonaState;I)Z

    move-result v4

    if-eqz v4, :cond_1

    move v3, v2

    :cond_0
    :goto_0
    const/16 v4, -0x2710

    if-ne v3, v4, :cond_3

    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/server/pm/KnoxTimeoutHandler$KnoxPointerEventListener;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    invoke-static {v4}, Lcom/android/server/pm/KnoxTimeoutHandler;->-wrap0(Lcom/android/server/pm/KnoxTimeoutHandler;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindowUserIdLocked()I

    move-result v1

    iget-object v4, p0, Lcom/android/server/pm/KnoxTimeoutHandler$KnoxPointerEventListener;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    invoke-static {v4}, Lcom/android/server/pm/KnoxTimeoutHandler;->-get1(Lcom/android/server/pm/KnoxTimeoutHandler;)Lcom/android/server/pm/PersonaManagerService;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/knox/SemPersonaState;->ACTIVE:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v4, v5, v1}, Lcom/android/server/pm/PersonaManagerService;->inState(Lcom/samsung/android/knox/SemPersonaState;I)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "KnoxTimeoutHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "targetResetId is updated as Focused Window userId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/server/pm/KnoxTimeoutHandler$KnoxPointerEventListener;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    invoke-static {v4}, Lcom/android/server/pm/KnoxTimeoutHandler;->-get1(Lcom/android/server/pm/KnoxTimeoutHandler;)Lcom/android/server/pm/PersonaManagerService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->isKioskContainerExistOnDevice()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/pm/KnoxTimeoutHandler$KnoxPointerEventListener;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    invoke-static {v4}, Lcom/android/server/pm/KnoxTimeoutHandler;->-get1(Lcom/android/server/pm/KnoxTimeoutHandler;)Lcom/android/server/pm/PersonaManagerService;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/knox/SemPersonaState;->ACTIVE:Lcom/samsung/android/knox/SemPersonaState;

    iget-object v6, p0, Lcom/android/server/pm/KnoxTimeoutHandler$KnoxPointerEventListener;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    invoke-static {v6}, Lcom/android/server/pm/KnoxTimeoutHandler;->-get1(Lcom/android/server/pm/KnoxTimeoutHandler;)Lcom/android/server/pm/PersonaManagerService;

    move-result-object v6

    iget v6, v6, Lcom/android/server/pm/PersonaManagerService;->enabledKioskContainerId:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->inState(Lcom/samsung/android/knox/SemPersonaState;I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/pm/KnoxTimeoutHandler$KnoxPointerEventListener;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    invoke-static {v4}, Lcom/android/server/pm/KnoxTimeoutHandler;->-get1(Lcom/android/server/pm/KnoxTimeoutHandler;)Lcom/android/server/pm/PersonaManagerService;

    move-result-object v4

    iget v3, v4, Lcom/android/server/pm/PersonaManagerService;->enabledKioskContainerId:I

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v4, v0, 0xff

    packed-switch v4, :pswitch_data_0

    :goto_1
    return-void

    :pswitch_0
    iget-object v4, p0, Lcom/android/server/pm/KnoxTimeoutHandler$KnoxPointerEventListener;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/KnoxTimeoutHandler;->postTimeoutReset(I)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
