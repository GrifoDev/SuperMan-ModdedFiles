.class Lcom/android/incallui/fragment/AnswerThreeWidgetFragment$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->registerSystemUiVisibilityChangeListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment$1;->this$0:Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 3

    const-string v0, "AnswerThreeWidgetFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSystemUiVisibilityChange : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/incallui/util/VideoCallUtils;->toStringSystemUiVisibility(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment$1;->this$0:Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;->updateNavigationBar()V

    return-void
.end method
