.class Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$FaceWidgetItems;
.super Ljava/lang/Object;
.source "FaceWidgetDragAndDropAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FaceWidgetItems"
.end annotation


# instance fields
.field private mIsChecked:Z

.field private mKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;

.field private titleStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$FaceWidgetItems;->this$0:Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$FaceWidgetItems;->mIsChecked:Z

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$FaceWidgetItems;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$FaceWidgetItems;->titleStr:Ljava/lang/String;

    return-object v0
.end method

.method public setChecked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$FaceWidgetItems;->mIsChecked:Z

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$FaceWidgetItems;->mKey:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$FaceWidgetItems;->titleStr:Ljava/lang/String;

    return-void
.end method
