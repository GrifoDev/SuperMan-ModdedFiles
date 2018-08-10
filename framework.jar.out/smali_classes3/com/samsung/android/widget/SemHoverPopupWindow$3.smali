.class Lcom/samsung/android/widget/SemHoverPopupWindow$3;
.super Ljava/lang/Object;
.source "SemHoverPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/widget/SemHoverPopupWindow;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;


# direct methods
.method constructor <init>(Lcom/samsung/android/widget/SemHoverPopupWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$3;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$3;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    invoke-static {v0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->-wrap1(Lcom/samsung/android/widget/SemHoverPopupWindow;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$3;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$3;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$3;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$3;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    invoke-static {v1}, Lcom/samsung/android/widget/SemHoverPopupWindow;->-get0(Lcom/samsung/android/widget/SemHoverPopupWindow;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
