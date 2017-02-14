.class Lcom/android/launcher2/QuickViewDragBar$1;
.super Ljava/lang/Object;
.source "QuickViewDragBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/QuickViewDragBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/QuickViewDragBar;


# direct methods
.method constructor <init>(Lcom/android/launcher2/QuickViewDragBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/QuickViewDragBar$1;->this$0:Lcom/android/launcher2/QuickViewDragBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher2/QuickViewDragBar$1;->this$0:Lcom/android/launcher2/QuickViewDragBar;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewDragBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0800a5

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
