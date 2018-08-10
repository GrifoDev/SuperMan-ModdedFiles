.class Lcom/android/systemui/statusbar/phone/StatusBar$8;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$8;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildLocationsChanged(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V
    .locals 6

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$8;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$8;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisibilityReporter:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$8;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get30(Lcom/android/systemui/statusbar/phone/StatusBar;)J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    add-long v0, v2, v4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$8;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$8;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisibilityReporter:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void
.end method
