.class Lcom/android/launcher2/MenuWidgets$4$1;
.super Ljava/lang/Object;
.source "MenuWidgets.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MenuWidgets$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/MenuWidgets$4;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuWidgets$4;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuWidgets$4$1;->this$1:Lcom/android/launcher2/MenuWidgets$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$4$1;->this$1:Lcom/android/launcher2/MenuWidgets$4;

    iget-object v0, v0, Lcom/android/launcher2/MenuWidgets$4;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$4$1;->this$1:Lcom/android/launcher2/MenuWidgets$4;

    iget-object v0, v0, Lcom/android/launcher2/MenuWidgets$4;->this$0:Lcom/android/launcher2/MenuWidgets;

    const/4 v1, 0x0

    # setter for: Lcom/android/launcher2/MenuWidgets;->mListenerAttached:Z
    invoke-static {v0, v1}, Lcom/android/launcher2/MenuWidgets;->access$302(Lcom/android/launcher2/MenuWidgets;Z)Z

    return-void
.end method
