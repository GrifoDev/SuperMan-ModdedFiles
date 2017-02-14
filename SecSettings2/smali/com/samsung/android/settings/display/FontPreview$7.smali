.class Lcom/samsung/android/settings/display/FontPreview$7;
.super Ljava/lang/Object;
.source "FontPreview.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/FontPreview;->setFontStyleList(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/FontPreview;

.field final synthetic val$fontScrollView:Landroid/widget/ScrollView;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/FontPreview;Landroid/widget/ScrollView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/FontPreview$7;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    iput-object p2, p0, Lcom/samsung/android/settings/display/FontPreview$7;->val$fontScrollView:Landroid/widget/ScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 7

    const/4 v1, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v4, 0x0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "FontPreview"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "keyCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview$7;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v0}, Lcom/samsung/android/settings/display/FontPreview;->-get7(Lcom/samsung/android/settings/display/FontPreview;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    if-le v0, v5, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview$7;->val$fontScrollView:Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreview$7;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get7(Lcom/samsung/android/settings/display/FontPreview;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {v0, v4, v2}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    const-string/jumbo v0, "FontPreview"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mFontStyleListView.getSelectedView().getTop(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview$7;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v3}, Lcom/samsung/android/settings/display/FontPreview;->-get7(Lcom/samsung/android/settings/display/FontPreview;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview$7;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v0}, Lcom/samsung/android/settings/display/FontPreview;->-get7(Lcom/samsung/android/settings/display/FontPreview;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-le v0, v5, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview$7;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v0}, Lcom/samsung/android/settings/display/FontPreview;->-get7(Lcom/samsung/android/settings/display/FontPreview;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreview$7;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get7(Lcom/samsung/android/settings/display/FontPreview;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    if-ne v0, v2, :cond_5

    const/16 v0, 0x13

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview$7;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v0}, Lcom/samsung/android/settings/display/FontPreview;->-get7(Lcom/samsung/android/settings/display/FontPreview;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview$7;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v1}, Lcom/samsung/android/settings/display/FontPreview;->-get7(Lcom/samsung/android/settings/display/FontPreview;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    return v4

    :cond_1
    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview$7;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/FontPreview;->finish()V

    return v4

    :cond_2
    const/16 v0, 0x42

    if-eq p2, v0, :cond_3

    const/16 v0, 0x17

    if-ne p2, v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview$7;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreview$7;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get7(Lcom/samsung/android/settings/display/FontPreview;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v3

    const-wide/16 v4, 0x1

    move-object v2, v1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/display/FontPreview;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return v6

    :cond_4
    return v6

    :cond_5
    return v4
.end method
