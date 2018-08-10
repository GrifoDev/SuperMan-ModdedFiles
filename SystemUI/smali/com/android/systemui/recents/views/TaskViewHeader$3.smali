.class Lcom/android/systemui/recents/views/TaskViewHeader$3;
.super Ljava/lang/Object;
.source "TaskViewHeader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/TaskViewHeader;->startShrinkAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/TaskViewHeader;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/TaskViewHeader;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskViewHeader$3;->this$0:Lcom/android/systemui/recents/views/TaskViewHeader;

    iput-object p2, p0, Lcom/android/systemui/recents/views/TaskViewHeader$3;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader$3;->val$v:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader$3;->val$v:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader$3;->val$v:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method
