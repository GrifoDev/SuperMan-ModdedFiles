.class Lcom/samsung/android/animation/SemDragAndDropGridAnimator$2;
.super Ljava/lang/Object;
.source "SemDragAndDropGridAnimator.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;


# direct methods
.method constructor <init>(Lcom/samsung/android/animation/SemDragAndDropGridAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$2;->this$0:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$2;->this$0:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    invoke-static {v0, p3}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->-wrap0(Lcom/samsung/android/animation/SemDragAndDropGridAnimator;I)Z

    move-result v0

    return v0
.end method
