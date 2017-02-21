.class Landroid/view/HwuiBridge$1;
.super Ljava/lang/Object;
.source "HwuiBridge.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/HwuiBridge;-><init>(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/HwuiBridge;


# direct methods
.method constructor <init>(Landroid/view/HwuiBridge;)V
    .locals 0

    iput-object p1, p0, Landroid/view/HwuiBridge$1;->this$0:Landroid/view/HwuiBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroid/view/HwuiBridge$1;->this$0:Landroid/view/HwuiBridge;

    invoke-virtual {v0}, Landroid/view/HwuiBridge;->scheduleRendering()V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroid/view/HwuiBridge$1;->this$0:Landroid/view/HwuiBridge;

    invoke-virtual {v0}, Landroid/view/HwuiBridge;->forceStopRenderingNow()V

    return-void
.end method
