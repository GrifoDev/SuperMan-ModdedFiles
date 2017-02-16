.class Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer$1;
.super Ljava/lang/Object;
.source "CoverHideEffectView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer$1;->this$1:Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer$1;->this$1:Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;

    iget-object v0, v0, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;->this$0:Lcom/sec/android/cover/widget/CoverHideEffectView;

    invoke-virtual {v0}, Lcom/sec/android/cover/widget/CoverHideEffectView;->bringToFront()V

    iget-object v0, p0, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer$1;->this$1:Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;

    iget-object v0, v0, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;->this$0:Lcom/sec/android/cover/widget/CoverHideEffectView;

    invoke-virtual {v0}, Lcom/sec/android/cover/widget/CoverHideEffectView;->requestLayout()V

    return-void
.end method
