.class Lcom/android/internal/widget/DecorCaptionView$1;
.super Ljava/lang/Object;
.source "DecorCaptionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/DecorCaptionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/DecorCaptionView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/DecorCaptionView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/DecorCaptionView$1;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView$1;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/widget/DecorCaptionView;->-wrap1(Lcom/android/internal/widget/DecorCaptionView;Z)V

    return-void
.end method
