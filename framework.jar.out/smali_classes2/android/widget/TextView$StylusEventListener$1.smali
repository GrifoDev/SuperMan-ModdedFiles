.class Landroid/widget/TextView$StylusEventListener$1;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TextView$StylusEventListener;->onStylusButtonEvent(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/TextView$StylusEventListener;


# direct methods
.method constructor <init>(Landroid/widget/TextView$StylusEventListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/TextView$StylusEventListener$1;->this$1:Landroid/widget/TextView$StylusEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v7, 0x0

    const/4 v2, 0x0

    iget-object v4, p0, Landroid/widget/TextView$StylusEventListener$1;->this$1:Landroid/widget/TextView$StylusEventListener;

    iget-object v4, v4, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/TextView$StylusEventListener$1;->this$1:Landroid/widget/TextView$StylusEventListener;

    iget-object v4, v4, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    iget-object v5, p0, Landroid/widget/TextView$StylusEventListener$1;->this$1:Landroid/widget/TextView$StylusEventListener;

    invoke-static {v5}, Landroid/widget/TextView$StylusEventListener;->-get1(Landroid/widget/TextView$StylusEventListener;)I

    move-result v5

    iget-object v6, p0, Landroid/widget/TextView$StylusEventListener$1;->this$1:Landroid/widget/TextView$StylusEventListener;

    invoke-static {v6}, Landroid/widget/TextView$StylusEventListener;->-get0(Landroid/widget/TextView$StylusEventListener;)I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/widget/TextView;->-wrap6(Landroid/widget/TextView;II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v5, p0, Landroid/widget/TextView$StylusEventListener$1;->this$1:Landroid/widget/TextView$StylusEventListener;

    move-object v4, v3

    check-cast v4, Landroid/text/Spannable;

    invoke-static {v4}, Landroid/text/MultiSelection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-static {v5, v4}, Landroid/widget/TextView$StylusEventListener;->-set1(Landroid/widget/TextView$StylusEventListener;I)I

    iget-object v5, p0, Landroid/widget/TextView$StylusEventListener$1;->this$1:Landroid/widget/TextView$StylusEventListener;

    move-object v4, v3

    check-cast v4, Landroid/text/Spannable;

    invoke-static {v4}, Landroid/text/MultiSelection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-static {v5, v4}, Landroid/widget/TextView$StylusEventListener;->-set0(Landroid/widget/TextView$StylusEventListener;I)I

    iget-object v4, p0, Landroid/widget/TextView$StylusEventListener$1;->this$1:Landroid/widget/TextView$StylusEventListener;

    iget-object v4, v4, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v4}, Landroid/widget/TextView;->-wrap10(Landroid/widget/TextView;)V

    :try_start_0
    new-instance v1, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;

    iget-object v4, p0, Landroid/widget/TextView$StylusEventListener$1;->this$1:Landroid/widget/TextView$StylusEventListener;

    iget-object v4, v4, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Landroid/widget/TextView$StylusEventListener$1;->this$1:Landroid/widget/TextView$StylusEventListener;

    invoke-static {v4}, Landroid/widget/TextView$StylusEventListener;->-get1(Landroid/widget/TextView$StylusEventListener;)I

    move-result v4

    iget-object v5, p0, Landroid/widget/TextView$StylusEventListener$1;->this$1:Landroid/widget/TextView$StylusEventListener;

    invoke-static {v5}, Landroid/widget/TextView$StylusEventListener;->-get0(Landroid/widget/TextView$StylusEventListener;)I

    move-result v5

    invoke-interface {v3, v4, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->training(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string/jumbo v4, "TextView"

    const-string/jumbo v5, "Pen up with side button! : end text selection"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Landroid/widget/TextView$StylusEventListener$1;->this$1:Landroid/widget/TextView$StylusEventListener;

    iget-object v4, v4, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->registerForTouchMonitorListener()V

    iget-object v4, p0, Landroid/widget/TextView$StylusEventListener$1;->this$1:Landroid/widget/TextView$StylusEventListener;

    iget-object v4, v4, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/widget/TextView;->-set10(Landroid/widget/TextView;Z)Z

    invoke-static {v7}, Landroid/text/MultiSelection;->setIsMultiSelectingText(Z)V

    invoke-static {v7}, Landroid/text/MultiSelection;->setNeedToScroll(Z)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v4, "TextView"

    const-string/jumbo v5, "** skip SemInfoExtractionManager Service by IllegalStateException **"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
