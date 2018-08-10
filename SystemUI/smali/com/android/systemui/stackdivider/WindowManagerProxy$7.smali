.class Lcom/android/systemui/stackdivider/WindowManagerProxy$7;
.super Ljava/lang/Object;
.source "WindowManagerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/stackdivider/WindowManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/WindowManagerProxy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$7;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$7;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->-get7(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$7;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-static {v1}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->-get5(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$7;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-static {v2}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->-get6(Lcom/android/systemui/stackdivider/WindowManagerProxy;)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$7;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-static {v3}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->-get4(Lcom/android/systemui/stackdivider/WindowManagerProxy;)F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowManager;->setMinimizeDockedStackDimLayer(ZIF)V

    return-void
.end method
