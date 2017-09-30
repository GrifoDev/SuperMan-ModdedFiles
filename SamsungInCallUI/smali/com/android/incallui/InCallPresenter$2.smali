.class Lcom/android/incallui/InCallPresenter$2;
.super Landroid/database/ContentObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InCallPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallPresenter;


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallPresenter;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/InCallPresenter$2;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    const-string v0, "NTT DOCOMO : onChange "

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter$2;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-static {v1}, Lcom/android/incallui/InCallPresenter;->access$100(Lcom/android/incallui/InCallPresenter;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-boolean v3, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->hide_status:Z

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isChangedHideStatus:Z

    :cond_0
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/UiAdapter;->getCallCardPresenter()Lcom/android/incallui/CallCardPresenter;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryDisplayInfo()V

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter$2;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-static {v2}, Lcom/android/incallui/InCallPresenter;->access$200(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/StatusBarNotifier;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter$2;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-static {v2}, Lcom/android/incallui/InCallPresenter;->access$200(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/StatusBarNotifier;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/incallui/StatusBarNotifier;->makeNotification(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    :cond_2
    return-void
.end method
