.class Landroid/widget/ForwardingListener$DisallowIntercept;
.super Ljava/lang/Object;
.source "ForwardingListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ForwardingListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisallowIntercept"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ForwardingListener;


# direct methods
.method private constructor <init>(Landroid/widget/ForwardingListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/ForwardingListener$DisallowIntercept;->this$0:Landroid/widget/ForwardingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ForwardingListener;Landroid/widget/ForwardingListener$DisallowIntercept;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ForwardingListener$DisallowIntercept;-><init>(Landroid/widget/ForwardingListener;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v1, p0, Landroid/widget/ForwardingListener$DisallowIntercept;->this$0:Landroid/widget/ForwardingListener;

    invoke-static {v1}, Landroid/widget/ForwardingListener;->-get0(Landroid/widget/ForwardingListener;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method
