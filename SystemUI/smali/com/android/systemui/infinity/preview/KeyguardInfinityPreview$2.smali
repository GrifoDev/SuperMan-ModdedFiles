.class Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$2;
.super Ljava/lang/Object;
.source "KeyguardInfinityPreview.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;-><init>(Landroid/content/Context;Ljava/lang/String;IIZZLcom/android/systemui/infinity/preview/KeyguardInfinityPreview$InfinityCallback;)V
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

    iput-object p1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$2;->this$0:Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$2;->this$0:Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;

    invoke-static {v0}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->-get1(Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;)Lcom/android/systemui/infinity/preview/GalaxyViewCircle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$2;->this$0:Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->reset()V

    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$2;->this$0:Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;

    invoke-static {v0}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->-wrap0(Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;)V

    const/4 v0, 0x1

    return v0
.end method
