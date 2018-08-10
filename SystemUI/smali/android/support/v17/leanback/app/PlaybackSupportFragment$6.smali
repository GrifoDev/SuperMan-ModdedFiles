.class Landroid/support/v17/leanback/app/PlaybackSupportFragment$6;
.super Ljava/lang/Object;
.source "PlaybackSupportFragment.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/BaseGridView$OnKeyInterceptListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/PlaybackSupportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/PlaybackSupportFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/PlaybackSupportFragment;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment$6;->this$0:Landroid/support/v17/leanback/app/PlaybackSupportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment$6;->this$0:Landroid/support/v17/leanback/app/PlaybackSupportFragment;

    invoke-static {v0, p1}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->-wrap0(Landroid/support/v17/leanback/app/PlaybackSupportFragment;Landroid/view/InputEvent;)Z

    move-result v0

    return v0
.end method
