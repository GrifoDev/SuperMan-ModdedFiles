.class Lcom/android/launcher2/WidgetFolder$1;
.super Ljava/lang/Object;
.source "WidgetFolder.java"

# interfaces
.implements Lcom/android/launcher2/WidgetFolderPagedView$WidgetViewBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/WidgetFolder;->createHorizontalFolderItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/WidgetFolder;


# direct methods
.method constructor <init>(Lcom/android/launcher2/WidgetFolder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/WidgetFolder$1;->this$0:Lcom/android/launcher2/WidgetFolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildView(Lcom/android/launcher2/AvailableWidget;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/WidgetFolder$1;->this$0:Lcom/android/launcher2/WidgetFolder;

    invoke-static {v0, p1}, Lcom/android/launcher2/WidgetFolder;->access$100(Lcom/android/launcher2/WidgetFolder;Lcom/android/launcher2/AvailableWidget;)Lcom/android/launcher2/PagedViewWidget;

    move-result-object v0

    return-object v0
.end method

.method public getCellGapX()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/WidgetFolder$1;->this$0:Lcom/android/launcher2/WidgetFolder;

    invoke-static {v0}, Lcom/android/launcher2/WidgetFolder;->access$200(Lcom/android/launcher2/WidgetFolder;)I

    move-result v0

    return v0
.end method

.method public getCellGapY()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/WidgetFolder$1;->this$0:Lcom/android/launcher2/WidgetFolder;

    invoke-static {v0}, Lcom/android/launcher2/WidgetFolder;->access$300(Lcom/android/launcher2/WidgetFolder;)I

    move-result v0

    return v0
.end method

.method public onPageAdded(Ljava/util/ArrayList;Landroid/widget/GridLayout;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AvailableWidget;",
            ">;",
            "Landroid/widget/GridLayout;",
            "I)V"
        }
    .end annotation

    new-instance v0, Lcom/android/launcher2/WidgetFolder$BitmapLoaderRunnable;

    iget-object v1, p0, Lcom/android/launcher2/WidgetFolder$1;->this$0:Lcom/android/launcher2/WidgetFolder;

    if-nez p3, :cond_0

    const/4 v5, 0x1

    :goto_0
    move-object v2, p2

    move v3, p3

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/WidgetFolder$BitmapLoaderRunnable;-><init>(Lcom/android/launcher2/WidgetFolder;Landroid/widget/GridLayout;ILjava/util/ArrayList;Z)V

    invoke-static {}, Lcom/android/launcher2/WidgetFolder;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Running runnable instantly "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " page "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " items "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/launcher2/WidgetFolder$BitmapLoaderRunnable;->run()V

    return-void

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method
