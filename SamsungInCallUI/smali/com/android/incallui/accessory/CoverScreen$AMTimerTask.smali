.class Lcom/android/incallui/accessory/CoverScreen$AMTimerTask;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/accessory/CoverScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AMTimerTask"
.end annotation


# instance fields
.field cnt:I

.field final synthetic this$0:Lcom/android/incallui/accessory/CoverScreen;


# direct methods
.method private constructor <init>(Lcom/android/incallui/accessory/CoverScreen;)V
    .locals 1

    iput-object p1, p0, Lcom/android/incallui/accessory/CoverScreen$AMTimerTask;->this$0:Lcom/android/incallui/accessory/CoverScreen;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/accessory/CoverScreen$AMTimerTask;->cnt:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/accessory/CoverScreen;Lcom/android/incallui/accessory/CoverScreen$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/accessory/CoverScreen$AMTimerTask;-><init>(Lcom/android/incallui/accessory/CoverScreen;)V

    return-void
.end method


# virtual methods
.method public AMTimerTask()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/accessory/CoverScreen$AMTimerTask;->cnt:I

    return-void
.end method

.method public run()V
    .locals 2

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/accessory/CoverScreen$AMTimerTask$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/accessory/CoverScreen$AMTimerTask$1;-><init>(Lcom/android/incallui/accessory/CoverScreen$AMTimerTask;)V

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget v0, p0, Lcom/android/incallui/accessory/CoverScreen$AMTimerTask;->cnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/incallui/accessory/CoverScreen$AMTimerTask;->cnt:I

    return-void
.end method
