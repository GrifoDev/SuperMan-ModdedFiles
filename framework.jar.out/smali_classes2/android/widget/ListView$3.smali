.class Landroid/widget/ListView$3;
.super Ljava/lang/Object;
.source "ListView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/ListView;->logActivity(Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mView:Landroid/view/View;

.field final synthetic this$0:Landroid/widget/ListView;

.field final synthetic val$root:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/widget/ListView;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/ListView;
    .param p2, "val$root"    # Landroid/view/View;

    .prologue
    .line 4335
    iput-object p1, p0, Landroid/widget/ListView$3;->this$0:Landroid/widget/ListView;

    iput-object p2, p0, Landroid/widget/ListView$3;->val$root:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4336
    iget-object v0, p0, Landroid/widget/ListView$3;->val$root:Landroid/view/View;

    iput-object v0, p0, Landroid/widget/ListView$3;->mView:Landroid/view/View;

    .line 4335
    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 6

    .prologue
    .line 4339
    iget-object v5, p0, Landroid/widget/ListView$3;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 4341
    iget-object v5, p0, Landroid/widget/ListView$3;->mView:Landroid/view/View;

    instance-of v5, v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    .line 4342
    iget-object v4, p0, Landroid/widget/ListView$3;->mView:Landroid/view/View;

    check-cast v4, Landroid/view/ViewGroup;

    .line 4343
    .local v4, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 4345
    .local v1, "cnt":I
    const/4 v2, 0x0

    .line 4346
    .local v2, "firstTextViewFound":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 4347
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4348
    .local v0, "child":Landroid/view/View;
    instance-of v5, v0, Landroid/widget/TextView;

    if-eqz v5, :cond_1

    .line 4350
    if-eqz v2, :cond_0

    .line 4346
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4351
    :cond_0
    const/4 v2, 0x1

    .line 4353
    :cond_1
    iget-object v5, p0, Landroid/widget/ListView$3;->this$0:Landroid/widget/ListView;

    invoke-static {v5, v0, v4}, Landroid/widget/ListView;->-wrap0(Landroid/widget/ListView;Landroid/view/View;Landroid/view/View;)V

    goto :goto_1

    .line 4356
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "cnt":I
    .end local v2    # "firstTextViewFound":Z
    .end local v3    # "i":I
    .end local v4    # "vg":Landroid/view/ViewGroup;
    :cond_2
    const/4 v5, 0x1

    return v5
.end method
