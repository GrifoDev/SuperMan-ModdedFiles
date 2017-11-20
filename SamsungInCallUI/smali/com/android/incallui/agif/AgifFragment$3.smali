.class Lcom/android/incallui/agif/AgifFragment$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/agif/AgifFragment;->createAgifSlidingTrayIcons(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/agif/AgifFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/agif/AgifFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/agif/AgifFragment$3;->this$0:Lcom/android/incallui/agif/AgifFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment$3;->this$0:Lcom/android/incallui/agif/AgifFragment;

    iget-object v0, v0, Lcom/android/incallui/agif/AgifFragment;->mButtonContainer:Landroid/widget/HorizontalScrollView;

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment$3;->this$0:Lcom/android/incallui/agif/AgifFragment;

    iget-object v0, v0, Lcom/android/incallui/agif/AgifFragment;->mButtonContainer:Landroid/widget/HorizontalScrollView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    goto :goto_0
.end method
