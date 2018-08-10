.class Landroid/view/LayoutInflater$BlinkLayout$1;
.super Ljava/lang/Object;
.source "LayoutInflater.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/LayoutInflater$BlinkLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/view/LayoutInflater$BlinkLayout;


# direct methods
.method constructor <init>(Landroid/view/LayoutInflater$BlinkLayout;)V
    .locals 0

    iput-object p1, p0, Landroid/view/LayoutInflater$BlinkLayout$1;->this$1:Landroid/view/LayoutInflater$BlinkLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x42

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/view/LayoutInflater$BlinkLayout$1;->this$1:Landroid/view/LayoutInflater$BlinkLayout;

    invoke-static {v0}, Landroid/view/LayoutInflater$BlinkLayout;->-get0(Landroid/view/LayoutInflater$BlinkLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/LayoutInflater$BlinkLayout$1;->this$1:Landroid/view/LayoutInflater$BlinkLayout;

    iget-object v1, p0, Landroid/view/LayoutInflater$BlinkLayout$1;->this$1:Landroid/view/LayoutInflater$BlinkLayout;

    invoke-static {v1}, Landroid/view/LayoutInflater$BlinkLayout;->-get1(Landroid/view/LayoutInflater$BlinkLayout;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Landroid/view/LayoutInflater$BlinkLayout;->-set0(Landroid/view/LayoutInflater$BlinkLayout;Z)Z

    iget-object v0, p0, Landroid/view/LayoutInflater$BlinkLayout$1;->this$1:Landroid/view/LayoutInflater$BlinkLayout;

    invoke-static {v0}, Landroid/view/LayoutInflater$BlinkLayout;->-wrap0(Landroid/view/LayoutInflater$BlinkLayout;)V

    :cond_0
    iget-object v0, p0, Landroid/view/LayoutInflater$BlinkLayout$1;->this$1:Landroid/view/LayoutInflater$BlinkLayout;

    invoke-virtual {v0}, Landroid/view/LayoutInflater$BlinkLayout;->invalidate()V

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
