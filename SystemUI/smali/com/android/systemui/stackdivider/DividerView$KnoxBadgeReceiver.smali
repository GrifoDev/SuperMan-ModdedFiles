.class Lcom/android/systemui/stackdivider/DividerView$KnoxBadgeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DividerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/stackdivider/DividerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KnoxBadgeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/DividerView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/stackdivider/DividerView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerView$KnoxBadgeReceiver;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/stackdivider/DividerView;Lcom/android/systemui/stackdivider/DividerView$KnoxBadgeReceiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/DividerView$KnoxBadgeReceiver;-><init>(Lcom/android/systemui/stackdivider/DividerView;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.sec.knox.KNOX_DOCK_WINDOW_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView$KnoxBadgeReceiver;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    const-string/jumbo v2, "android.intent.extra.user_handle"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/stackdivider/DividerView;->-set1(Lcom/android/systemui/stackdivider/DividerView;I)I

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView$KnoxBadgeReceiver;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/DividerView;->requestLayout()V

    :cond_0
    return-void
.end method
