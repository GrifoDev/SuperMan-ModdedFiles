.class Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter$3;
.super Ljava/lang/Object;
.source "NavBarTuner.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->bindButton(Lcom/android/systemui/tuner/NavBarTuner$Holder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;

.field final synthetic val$holder:Lcom/android/systemui/tuner/NavBarTuner$Holder;


# direct methods
.method constructor <init>(Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;Lcom/android/systemui/tuner/NavBarTuner$Holder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter$3;->this$1:Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;

    iput-object p2, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter$3;->val$holder:Lcom/android/systemui/tuner/NavBarTuner$Holder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter$3;->this$1:Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;

    invoke-static {v0}, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->-get3(Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;)Landroid/support/v7/widget/helper/ItemTouchHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter$3;->val$holder:Lcom/android/systemui/tuner/NavBarTuner$Holder;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->startDrag(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    const/4 v0, 0x1

    return v0
.end method
