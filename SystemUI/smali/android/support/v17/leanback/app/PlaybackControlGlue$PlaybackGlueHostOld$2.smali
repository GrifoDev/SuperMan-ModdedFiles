.class Landroid/support/v17/leanback/app/PlaybackControlGlue$PlaybackGlueHostOld$2;
.super Ljava/lang/Object;
.source "PlaybackControlGlue.java"

# interfaces
.implements Landroid/support/v17/leanback/app/PlaybackControlGlue$InputEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/app/PlaybackControlGlue$PlaybackGlueHostOld;->setOnKeyInterceptListener(Landroid/view/View$OnKeyListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v17/leanback/app/PlaybackControlGlue$PlaybackGlueHostOld;

.field final synthetic val$onKeyListener:Landroid/view/View$OnKeyListener;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/PlaybackControlGlue$PlaybackGlueHostOld;Landroid/view/View$OnKeyListener;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackControlGlue$PlaybackGlueHostOld$2;->this$1:Landroid/support/v17/leanback/app/PlaybackControlGlue$PlaybackGlueHostOld;

    iput-object p2, p0, Landroid/support/v17/leanback/app/PlaybackControlGlue$PlaybackGlueHostOld$2;->val$onKeyListener:Landroid/view/View$OnKeyListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleInputEvent(Landroid/view/InputEvent;)Z
    .locals 4

    instance-of v1, p1, Landroid/view/KeyEvent;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/view/KeyEvent;

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackControlGlue$PlaybackGlueHostOld$2;->val$onKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2, v0}, Landroid/view/View$OnKeyListener;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method
