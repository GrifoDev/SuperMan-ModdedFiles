.class Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView$1;
.super Ljava/lang/Object;
.source "AspectRatioController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView;->makeNewButtonView()Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView;


# direct methods
.method constructor <init>(Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView$1;->this$1:Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView$1;->this$1:Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView;

    iget-object v0, v0, Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView;->this$0:Lcom/android/server/wm/AspectRatioController;

    invoke-static {v0}, Lcom/android/server/wm/AspectRatioController;->-get6(Lcom/android/server/wm/AspectRatioController;)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView$1;->this$1:Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView;

    iget-object v0, v0, Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView;->this$0:Lcom/android/server/wm/AspectRatioController;

    invoke-static {v0}, Lcom/android/server/wm/AspectRatioController;->-get5(Lcom/android/server/wm/AspectRatioController;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView$1;->this$1:Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView;

    iget-object v0, v0, Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView;->this$0:Lcom/android/server/wm/AspectRatioController;

    iget-object v1, p0, Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView$1;->this$1:Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView;

    iget-object v1, v1, Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView;->this$0:Lcom/android/server/wm/AspectRatioController;

    invoke-static {v1}, Lcom/android/server/wm/AspectRatioController;->-get5(Lcom/android/server/wm/AspectRatioController;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView$1;->this$1:Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView;

    iget-object v2, v2, Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView;->this$0:Lcom/android/server/wm/AspectRatioController;

    invoke-static {v2}, Lcom/android/server/wm/AspectRatioController;->-get6(Lcom/android/server/wm/AspectRatioController;)I

    move-result v2

    const/4 v5, 0x0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/AspectRatioController;->setMaxAspectPackage(Ljava/lang/String;IZZZ)V

    iget-object v0, p0, Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView$1;->this$1:Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView;

    iget-object v0, v0, Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView;->this$0:Lcom/android/server/wm/AspectRatioController;

    iget-object v1, p0, Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView$1;->this$1:Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView;

    iget-object v1, v1, Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView;->this$0:Lcom/android/server/wm/AspectRatioController;

    invoke-static {v1}, Lcom/android/server/wm/AspectRatioController;->-get5(Lcom/android/server/wm/AspectRatioController;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wm/AspectRatioController;->-set4(Lcom/android/server/wm/AspectRatioController;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView$1;->this$1:Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView;

    iget-object v0, v0, Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView;->this$0:Lcom/android/server/wm/AspectRatioController;

    invoke-static {v0}, Lcom/android/server/wm/AspectRatioController;->-get0(Lcom/android/server/wm/AspectRatioController;)Lcom/android/server/wm/AspectRatioController$AspectControlScheduler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView$1;->this$1:Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView;

    iget-object v1, v1, Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView;->this$0:Lcom/android/server/wm/AspectRatioController;

    invoke-static {v1}, Lcom/android/server/wm/AspectRatioController;->-get9(Lcom/android/server/wm/AspectRatioController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AspectRatioController$AspectControlScheduler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView$1;->this$1:Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView;

    iget-object v0, v0, Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView;->this$0:Lcom/android/server/wm/AspectRatioController;

    invoke-static {v0}, Lcom/android/server/wm/AspectRatioController;->-get0(Lcom/android/server/wm/AspectRatioController;)Lcom/android/server/wm/AspectRatioController$AspectControlScheduler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView$1;->this$1:Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView;

    iget-object v1, v1, Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView;->this$0:Lcom/android/server/wm/AspectRatioController;

    invoke-static {v1}, Lcom/android/server/wm/AspectRatioController;->-get9(Lcom/android/server/wm/AspectRatioController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AspectRatioController$AspectControlScheduler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
