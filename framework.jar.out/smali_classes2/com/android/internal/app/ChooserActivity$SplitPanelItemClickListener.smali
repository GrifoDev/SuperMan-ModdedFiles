.class Lcom/android/internal/app/ChooserActivity$SplitPanelItemClickListener;
.super Ljava/lang/Object;
.source "ChooserActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SplitPanelItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ChooserActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$SplitPanelItemClickListener;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SplitPanelItemClickListener;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0, p1, p3}, Lcom/android/internal/app/ChooserActivity;->-wrap0(Lcom/android/internal/app/ChooserActivity;Landroid/widget/AdapterView;I)I

    move-result p3

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SplitPanelItemClickListener;->this$0:Lcom/android/internal/app/ChooserActivity;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p3, v1, v2}, Lcom/android/internal/app/ChooserActivity;->startSelected(IZZ)V

    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$SplitPanelItemClickListener;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1, p1, p3}, Lcom/android/internal/app/ChooserActivity;->-wrap0(Lcom/android/internal/app/ChooserActivity;Landroid/widget/AdapterView;I)I

    move-result p3

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$SplitPanelItemClickListener;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-get1(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    move-result-object v1

    invoke-virtual {v1, p3, v2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$SplitPanelItemClickListener;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v1, v0}, Lcom/android/internal/app/ChooserActivity;->showTargetDetails(Landroid/content/pm/ResolveInfo;)V

    return v2
.end method
