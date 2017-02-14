.class Lcom/android/internal/app/ResolverActivity$PagerItemClickListener;
.super Ljava/lang/Object;
.source "ResolverActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PagerItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ResolverActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$PagerItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

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

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$PagerItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v0, p3}, Lcom/android/internal/app/ResolverActivity;->-wrap4(Lcom/android/internal/app/ResolverActivity;I)I

    move-result p3

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$PagerItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$PagerItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity;->-get3(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$PagerItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity;->-get21(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, p3, v0, v1}, Lcom/android/internal/app/ResolverActivity;->startSelected(IZZ)V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
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

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$PagerItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v1, p3}, Lcom/android/internal/app/ResolverActivity;->-wrap4(Lcom/android/internal/app/ResolverActivity;I)I

    move-result p3

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$PagerItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->-get1(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-result-object v1

    invoke-virtual {v1, p3, v2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$PagerItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v1, v0}, Lcom/android/internal/app/ResolverActivity;->showTargetDetails(Landroid/content/pm/ResolveInfo;)V

    return v2
.end method
