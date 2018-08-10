.class Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$6;
.super Ljava/lang/Object;
.source "KeyguardInfinityPreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->goLockMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;


# direct methods
.method constructor <init>(Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$6;->this$0:Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$6;->this$0:Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;

    invoke-static {v0}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->-get0(Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;)Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$InfinityCallback;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$InfinityCallback;->onModeChanged(I)V

    return-void
.end method
