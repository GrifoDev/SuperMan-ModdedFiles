.class Landroid/widget/Editor$PositionListener$1;
.super Landroid/os/Handler;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Editor$PositionListener;->prepareHander()V
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

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v4, 0x1

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/widget/Editor$TextViewPositionListener;

    iget-object v0, p0, Landroid/widget/Editor$PositionListener$1;->this$1:Landroid/widget/Editor$PositionListener;

    iget-object v2, p0, Landroid/widget/Editor$PositionListener$1;->this$1:Landroid/widget/Editor$PositionListener;

    invoke-static {v2}, Landroid/widget/Editor$PositionListener;->-get0(Landroid/widget/Editor$PositionListener;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/Editor$PositionListener$1;->this$1:Landroid/widget/Editor$PositionListener;

    invoke-static {v3}, Landroid/widget/Editor$PositionListener;->-get1(Landroid/widget/Editor$PositionListener;)I

    move-result v3

    move v5, v4

    invoke-static/range {v0 .. v5}, Landroid/widget/Editor$PositionListener;->-wrap0(Landroid/widget/Editor$PositionListener;Landroid/widget/Editor$TextViewPositionListener;IIZZ)V

    return-void
.end method
