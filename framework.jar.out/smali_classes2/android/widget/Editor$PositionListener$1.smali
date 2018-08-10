.class Landroid/widget/Editor$PositionListener$1;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor$PositionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Editor$PositionListener;


# direct methods
.method constructor <init>(Landroid/widget/Editor$PositionListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/Editor$PositionListener$1;->this$1:Landroid/widget/Editor$PositionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x1

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x7

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Landroid/widget/Editor$PositionListener$1;->this$1:Landroid/widget/Editor$PositionListener;

    invoke-static {v2}, Landroid/widget/Editor$PositionListener;->-get0(Landroid/widget/Editor$PositionListener;)[Landroid/widget/Editor$TextViewPositionListener;

    move-result-object v2

    aget-object v1, v2, v0

    if-eqz v1, :cond_1

    instance-of v2, v1, Landroid/widget/Editor$HandleView;

    if-eqz v2, :cond_1

    instance-of v2, v1, Landroid/widget/Editor$SelectionHandleView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/Editor$PositionListener$1;->this$1:Landroid/widget/Editor$PositionListener;

    iget-object v2, v2, Landroid/widget/Editor$PositionListener;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/view/ActionMode;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Landroid/widget/Editor$PositionListener$1;->this$1:Landroid/widget/Editor$PositionListener;

    invoke-static {v2}, Landroid/widget/Editor$PositionListener;->-get1(Landroid/widget/Editor$PositionListener;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/Editor$PositionListener$1;->this$1:Landroid/widget/Editor$PositionListener;

    invoke-static {v3}, Landroid/widget/Editor$PositionListener;->-get2(Landroid/widget/Editor$PositionListener;)I

    move-result v3

    invoke-interface {v1, v2, v3, v4, v4}, Landroid/widget/Editor$TextViewPositionListener;->updatePosition(IIZZ)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
