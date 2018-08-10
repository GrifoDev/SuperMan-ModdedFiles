.class Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$1;
.super Ljava/lang/Object;
.source "FaceWidgetDragAndDropAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$1;->this$0:Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;

    iput-object p2, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$1;->val$dragCell:Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$1;->val$dragCell:Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->getSwitch()Landroid/widget/Switch;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$1;->val$dragCell:Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;

    invoke-virtual {v1}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->getSwitch()Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method
