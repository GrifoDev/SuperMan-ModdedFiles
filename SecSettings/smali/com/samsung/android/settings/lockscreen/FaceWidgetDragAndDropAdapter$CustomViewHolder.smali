.class Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$CustomViewHolder;
.super Ljava/lang/Object;
.source "FaceWidgetDragAndDropAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomViewHolder"
.end annotation


# instance fields
.field private final mFaceWidgetDragCell:Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;

.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$CustomViewHolder;->this$0:Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p2, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;

    iput-object p2, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$CustomViewHolder;->mFaceWidgetDragCell:Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;

    return-void
.end method


# virtual methods
.method public getFaceWidgetDragCell()Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$CustomViewHolder;->mFaceWidgetDragCell:Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;

    return-object v0
.end method
