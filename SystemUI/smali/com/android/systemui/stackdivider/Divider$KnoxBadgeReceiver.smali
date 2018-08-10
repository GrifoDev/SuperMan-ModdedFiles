.class Lcom/android/systemui/stackdivider/Divider$KnoxBadgeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Divider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/stackdivider/Divider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KnoxBadgeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/Divider;


# direct methods
.method private constructor <init>(Lcom/android/systemui/stackdivider/Divider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/stackdivider/Divider$KnoxBadgeReceiver;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/stackdivider/Divider;Lcom/android/systemui/stackdivider/Divider$KnoxBadgeReceiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/Divider$KnoxBadgeReceiver;-><init>(Lcom/android/systemui/stackdivider/Divider;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.sec.knox.KNOX_DOCK_WINDOW_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/Divider$KnoxBadgeReceiver;->this$0:Lcom/android/systemui/stackdivider/Divider;

    const-string/jumbo v2, "android.intent.extra.user_handle"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/stackdivider/Divider;->-set4(Lcom/android/systemui/stackdivider/Divider;I)I

    iget-object v1, p0, Lcom/android/systemui/stackdivider/Divider$KnoxBadgeReceiver;->this$0:Lcom/android/systemui/stackdivider/Divider;

    const-string/jumbo v2, "ROTATE_270"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/stackdivider/Divider;->-set2(Lcom/android/systemui/stackdivider/Divider;Z)Z

    iget-object v1, p0, Lcom/android/systemui/stackdivider/Divider$KnoxBadgeReceiver;->this$0:Lcom/android/systemui/stackdivider/Divider;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/Divider$KnoxBadgeReceiver;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v2}, Lcom/android/systemui/stackdivider/Divider;->-get6(Lcom/android/systemui/stackdivider/Divider;)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/stackdivider/Divider$KnoxBadgeReceiver;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v3}, Lcom/android/systemui/stackdivider/Divider;->-get4(Lcom/android/systemui/stackdivider/Divider;)Z

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/systemui/stackdivider/Divider;->-wrap1(Lcom/android/systemui/stackdivider/Divider;IZ)V

    :cond_0
    return-void
.end method
