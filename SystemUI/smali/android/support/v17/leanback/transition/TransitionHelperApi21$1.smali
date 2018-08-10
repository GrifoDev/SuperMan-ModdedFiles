.class final Landroid/support/v17/leanback/transition/TransitionHelperApi21$1;
.super Landroid/transition/Transition$EpicenterCallback;
.source "TransitionHelperApi21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/transition/TransitionHelperApi21;->setEpicenterCallback(Ljava/lang/Object;Landroid/support/v17/leanback/transition/TransitionEpicenterCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Landroid/support/v17/leanback/transition/TransitionEpicenterCallback;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/transition/TransitionEpicenterCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/transition/TransitionHelperApi21$1;->val$callback:Landroid/support/v17/leanback/transition/TransitionEpicenterCallback;

    invoke-direct {p0}, Landroid/transition/Transition$EpicenterCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetEpicenter(Landroid/transition/Transition;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/transition/TransitionHelperApi21$1;->val$callback:Landroid/support/v17/leanback/transition/TransitionEpicenterCallback;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/transition/TransitionEpicenterCallback;->onGetEpicenter(Ljava/lang/Object;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method
