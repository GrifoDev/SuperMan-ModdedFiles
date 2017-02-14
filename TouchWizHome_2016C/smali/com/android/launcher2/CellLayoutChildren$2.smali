.class Lcom/android/launcher2/CellLayoutChildren$2;
.super Ljava/lang/Object;
.source "CellLayoutChildren.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/CellLayoutChildren;->onLayout(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/CellLayoutChildren;

.field final synthetic val$child:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher2/CellLayoutChildren;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/CellLayoutChildren$2;->this$0:Lcom/android/launcher2/CellLayoutChildren;

    iput-object p2, p0, Lcom/android/launcher2/CellLayoutChildren$2;->val$child:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v6, p0, Lcom/android/launcher2/CellLayoutChildren$2;->val$child:Landroid/view/View;

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutChildren$2;->this$0:Lcom/android/launcher2/CellLayoutChildren;

    iget-object v1, p0, Lcom/android/launcher2/CellLayoutChildren$2;->val$child:Landroid/view/View;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1f4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayoutChildren;->buildAlphaAnimation(Landroid/view/View;JJ)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
