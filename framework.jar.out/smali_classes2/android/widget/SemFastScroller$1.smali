.class Landroid/widget/SemFastScroller$1;
.super Ljava/lang/Object;
.source "SemFastScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SemFastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/SemFastScroller;


# direct methods
.method constructor <init>(Landroid/widget/SemFastScroller;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SemFastScroller$1;->this$0:Landroid/widget/SemFastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/widget/SemFastScroller$1;->this$0:Landroid/widget/SemFastScroller;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/SemFastScroller;->-wrap0(Landroid/widget/SemFastScroller;I)V

    return-void
.end method
