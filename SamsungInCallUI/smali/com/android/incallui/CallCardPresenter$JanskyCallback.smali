.class Lcom/android/incallui/CallCardPresenter$JanskyCallback;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery$OnQueryCompleteListenerMultiLine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/CallCardPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JanskyCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallCardPresenter;


# direct methods
.method private constructor <init>(Lcom/android/incallui/CallCardPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/CallCardPresenter$JanskyCallback;->this$0:Lcom/android/incallui/CallCardPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/CallCardPresenter;Lcom/android/incallui/CallCardPresenter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/CallCardPresenter$JanskyCallback;-><init>(Lcom/android/incallui/CallCardPresenter;)V

    return-void
.end method


# virtual methods
.method public onQueryCompleteMultiLine()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter$JanskyCallback;->this$0:Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter$JanskyCallback;->this$0:Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardUi;

    invoke-interface {v0}, Lcom/android/incallui/CallCardUi;->updateJanskyInfo()V

    :cond_0
    return-void
.end method
