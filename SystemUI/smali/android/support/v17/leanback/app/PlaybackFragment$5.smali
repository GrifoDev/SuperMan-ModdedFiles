.class Landroid/support/v17/leanback/app/PlaybackFragment$5;
.super Ljava/lang/Object;
.source "PlaybackFragment.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/BaseGridView$OnTouchInterceptListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/PlaybackFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/PlaybackFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/PlaybackFragment;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment$5;->this$0:Landroid/support/v17/leanback/app/PlaybackFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment$5;->this$0:Landroid/support/v17/leanback/app/PlaybackFragment;

    invoke-static {v0, p1}, Landroid/support/v17/leanback/app/PlaybackFragment;->-wrap0(Landroid/support/v17/leanback/app/PlaybackFragment;Landroid/view/InputEvent;)Z

    move-result v0

    return v0
.end method
