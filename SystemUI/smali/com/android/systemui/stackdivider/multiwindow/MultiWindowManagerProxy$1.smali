.class Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy$1;
.super Ljava/lang/Object;
.source "MultiWindowManagerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy$1;->this$0:Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy$1;->this$0:Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->-get0(Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;)Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy$1;->this$0:Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;

    invoke-static {v1}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->-get4(Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy$1;->this$0:Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;

    invoke-static {v2}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->-get3(Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy$1;->this$0:Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;

    invoke-static {v3}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->-get2(Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy$1;->this$0:Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;

    invoke-static {v4}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->-get1(Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/multiwindow/MultiWindowManager;->setSnapWindow(ZLandroid/graphics/Rect;ILjava/lang/String;)V

    :cond_0
    return-void
.end method
