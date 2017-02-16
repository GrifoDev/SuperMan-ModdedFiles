.class Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder$1;
.super Ljava/lang/Object;
.source "DismissAnimationsHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->startEnterAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder$1;->this$0:Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder$1;->this$0:Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;

    invoke-static {v0}, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->-get0(Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;)Landroid/graphics/drawable/TransitionDrawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    return-void
.end method
