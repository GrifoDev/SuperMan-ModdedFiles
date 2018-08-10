.class Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;
.super Lcom/samsung/android/multiwindow/IMultiWindowEventListener$Stub;
.source "Divider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/stackdivider/Divider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiWindowEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/Divider;


# direct methods
.method private constructor <init>(Lcom/android/systemui/stackdivider/Divider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/IMultiWindowEventListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/stackdivider/Divider;Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;-><init>(Lcom/android/systemui/stackdivider/Divider;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$-com_android_systemui_stackdivider_Divider$MultiWindowEventListener_11940(ZZLandroid/content/pm/ActivityInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->-get1(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->setDockedStackMinimized(ZZLandroid/content/pm/ActivityInfo;)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_stackdivider_Divider$MultiWindowEventListener_12207(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->-get7(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/stackdivider/DividerView;->showSnapWindowDismissToast(Ljava/lang/String;)V

    return-void
.end method

.method public onAutoResizeStateChanged(ILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .locals 0

    return-void
.end method

.method public onDockedStackMinimizedChanged(ZZLandroid/content/pm/ActivityInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->-get7(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/-$Lambda$rUMSNUxunCY-KlbCD-zkL0v-uzo$3;

    invoke-direct {v1, p1, p2, p0, p3}, Lcom/android/systemui/stackdivider/-$Lambda$rUMSNUxunCY-KlbCD-zkL0v-uzo$3;-><init>(ZZLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onFocusStackChanged(I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->-get7(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v2, v1}, Lcom/android/systemui/stackdivider/DividerView;->showSnapGuide(ZILandroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->-get7(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/stackdivider/DividerView;->onFocusStackChanged(I)V

    return-void
.end method

.method public onMultiWindowEnableChanged(Z)V
    .locals 0

    return-void
.end method

.method public onScreenFreezeAnimationFinished()V
    .locals 0

    return-void
.end method

.method public onSnapWindowDismissed(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->-get7(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/-$Lambda$rUMSNUxunCY-KlbCD-zkL0v-uzo;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/stackdivider/-$Lambda$rUMSNUxunCY-KlbCD-zkL0v-uzo;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->-get5(Lcom/android/systemui/stackdivider/Divider;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->canAnimateExpandDockedStack()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->-get7(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/stackdivider/DividerView;->noExpandAnimation:Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->-get7(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2}, Lcom/android/systemui/stackdivider/DividerView;->startSnapMode(ZZI)V

    :cond_1
    return-void
.end method
