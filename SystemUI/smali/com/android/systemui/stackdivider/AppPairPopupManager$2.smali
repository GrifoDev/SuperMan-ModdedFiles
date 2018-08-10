.class Lcom/android/systemui/stackdivider/AppPairPopupManager$2;
.super Ljava/lang/Object;
.source "AppPairPopupManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/stackdivider/AppPairPopupManager;->addAndGetPopupView(Z)Lcom/android/systemui/stackdivider/AppPairPopupView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/AppPairPopupManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/AppPairPopupManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager$2;->this$0:Lcom/android/systemui/stackdivider/AppPairPopupManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string/jumbo v0, "AppPairToolTip"

    const-string/jumbo v1, "Hide Popup View, because DimView is touched."

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/events/DividerPopupVisibleEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/systemui/stackdivider/events/DividerPopupVisibleEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method
