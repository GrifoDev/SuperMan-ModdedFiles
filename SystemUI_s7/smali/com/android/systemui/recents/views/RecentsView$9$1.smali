.class Lcom/android/systemui/recents/views/RecentsView$9$1;
.super Ljava/lang/Object;
.source "RecentsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/RecentsView$9;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/recents/views/RecentsView$9;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/RecentsView$9;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsView$9$1;->this$1:Lcom/android/systemui/recents/views/RecentsView$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$9$1;->this$1:Lcom/android/systemui/recents/views/RecentsView$9;

    iget-object v0, v0, Lcom/android/systemui/recents/views/RecentsView$9;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/recents/views/RecentsView;->-set0(Lcom/android/systemui/recents/views/RecentsView;Z)Z

    return-void
.end method
