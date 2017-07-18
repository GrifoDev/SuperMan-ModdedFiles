.class Lcom/android/launcher2/searchapp/AlphabeticalListContainer$1;
.super Ljava/lang/Object;
.source "AlphabeticalListContainer.java"

# interfaces
.implements Lcom/samsung/android/widget/SemIndexScrollView$OnIndexBarEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/searchapp/AlphabeticalListContainer;


# direct methods
.method constructor <init>(Lcom/android/launcher2/searchapp/AlphabeticalListContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer$1;->this$0:Lcom/android/launcher2/searchapp/AlphabeticalListContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIndexChanged(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer$1;->this$0:Lcom/android/launcher2/searchapp/AlphabeticalListContainer;

    invoke-static {v0}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->access$000(Lcom/android/launcher2/searchapp/AlphabeticalListContainer;)Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer$1;->this$0:Lcom/android/launcher2/searchapp/AlphabeticalListContainer;

    invoke-static {v0}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->access$100(Lcom/android/launcher2/searchapp/AlphabeticalListContainer;)Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->isChineseHK()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer$1;->this$0:Lcom/android/launcher2/searchapp/AlphabeticalListContainer;

    invoke-static {v0}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->access$000(Lcom/android/launcher2/searchapp/AlphabeticalListContainer;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer$1;->this$0:Lcom/android/launcher2/searchapp/AlphabeticalListContainer;

    invoke-static {v1}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->access$200(Lcom/android/launcher2/searchapp/AlphabeticalListContainer;)[I

    move-result-object v1

    aget v1, v1, p1

    iget-object v2, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer$1;->this$0:Lcom/android/launcher2/searchapp/AlphabeticalListContainer;

    invoke-static {v2}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->access$000(Lcom/android/launcher2/searchapp/AlphabeticalListContainer;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    iget-object v0, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer$1;->this$0:Lcom/android/launcher2/searchapp/AlphabeticalListContainer;

    invoke-static {v0}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->access$000(Lcom/android/launcher2/searchapp/AlphabeticalListContainer;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer$1;->this$0:Lcom/android/launcher2/searchapp/AlphabeticalListContainer;

    invoke-static {v1}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->access$200(Lcom/android/launcher2/searchapp/AlphabeticalListContainer;)[I

    move-result-object v1

    aget v1, v1, p1

    iget-object v2, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer$1;->this$0:Lcom/android/launcher2/searchapp/AlphabeticalListContainer;

    invoke-static {v2}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->access$000(Lcom/android/launcher2/searchapp/AlphabeticalListContainer;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer$1;->this$0:Lcom/android/launcher2/searchapp/AlphabeticalListContainer;

    invoke-static {v0}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->access$000(Lcom/android/launcher2/searchapp/AlphabeticalListContainer;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer$1;->this$0:Lcom/android/launcher2/searchapp/AlphabeticalListContainer;

    invoke-static {v1}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->access$000(Lcom/android/launcher2/searchapp/AlphabeticalListContainer;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    iget-object v0, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer$1;->this$0:Lcom/android/launcher2/searchapp/AlphabeticalListContainer;

    invoke-static {v0}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->access$000(Lcom/android/launcher2/searchapp/AlphabeticalListContainer;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/searchapp/AlphabeticalListContainer$1;->this$0:Lcom/android/launcher2/searchapp/AlphabeticalListContainer;

    invoke-static {v1}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->access$000(Lcom/android/launcher2/searchapp/AlphabeticalListContainer;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    goto :goto_0
.end method

.method public onPressed(F)V
    .locals 0

    return-void
.end method

.method public onReleased(F)V
    .locals 0

    return-void
.end method
