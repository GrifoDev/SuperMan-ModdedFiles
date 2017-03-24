.class Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener$4;
.super Ljava/lang/Object;
.source "Divider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->onMultiWindowFocusChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;IILjava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener$4;->this$1:Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener$4;->this$1:Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;

    iget-object v0, v0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->-get11(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener$4;->this$1:Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;

    iget-object v1, v1, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v1}, Lcom/android/systemui/stackdivider/Divider;->-get9(Lcom/android/systemui/stackdivider/Divider;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/stackdivider/DividerView;->flingToFocusedStackSnapTarget(IZ)V

    return-void
.end method
