.class Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$2;
.super Ljava/lang/Object;
.source "ActiveKeyAppGridView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$2;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListItem;

    iget-boolean v1, v0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListItem;->mIsEnabled:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/view/View;->setPressed(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$2;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->savePressActionApp(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListItem;)V

    :cond_0
    return-void
.end method
