.class Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$2;
.super Ljava/lang/Object;
.source "FaceWidgetDragAndDropAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;

.field final synthetic val$dragCell:Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$2;->this$0:Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;

    iput-object p2, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$2;->val$dragCell:Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$2;->this$0:Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$2;->val$dragCell:Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;

    invoke-virtual {v2}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->getPositionByKey(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$2;->this$0:Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->-get0(Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$2;->this$0:Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;

    invoke-virtual {v1, v0, p2}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->setChecked(IZ)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$2;->this$0:Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->-get1(Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;)Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$OnCheckChangeListener;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$2;->this$0:Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->-get1(Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;)Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$OnCheckChangeListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$OnCheckChangeListener;->onCheckedChange()V

    :cond_1
    return-void
.end method
