.class Landroid/widget/TextView$MagnifierView$1;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView$MagnifierView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/TextView$MagnifierView;


# direct methods
.method constructor <init>(Landroid/widget/TextView$MagnifierView;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/TextView$MagnifierView$1;->this$1:Landroid/widget/TextView$MagnifierView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView$MagnifierView$1;->this$1:Landroid/widget/TextView$MagnifierView;

    invoke-virtual {v0}, Landroid/widget/TextView$MagnifierView;->stopMagnifier()V

    return-void
.end method
