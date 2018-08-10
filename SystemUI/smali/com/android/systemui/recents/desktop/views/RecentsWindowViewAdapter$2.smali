.class Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$2;
.super Ljava/lang/Object;
.source "RecentsWindowViewAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->onViewAttachAnimation(Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;

.field final synthetic val$holder:Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$2;->this$0:Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;

    iput-object p2, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$2;->val$holder:Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$2;->val$holder:Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;

    iget-object v1, v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->itemView:Landroid/view/View;

    const-string/jumbo v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x14d

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
