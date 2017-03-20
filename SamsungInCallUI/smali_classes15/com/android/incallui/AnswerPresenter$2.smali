.class Lcom/android/incallui/AnswerPresenter$2;
.super Ljava/lang/Object;
.source "AnswerPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/AnswerPresenter;->onDisconnect(Lcom/android/incallui/Call;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/AnswerPresenter;


# direct methods
.method constructor <init>(Lcom/android/incallui/AnswerPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/AnswerPresenter;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/android/incallui/AnswerPresenter$2;->this$0:Lcom/android/incallui/AnswerPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->setAutoAnswered(Z)V

    .line 258
    return-void
.end method
