.class Lcom/android/systemui/statusbar/phone/StatusBar$87;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;->changeToGoneState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

.field final synthetic val$entry:Lcom/android/systemui/statusbar/NotificationData$Entry;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$87;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$87;->val$entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$87;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$87;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsNotificationIconsOnlyOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$87;->val$entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setVisibility(I)V

    :cond_0
    return-void
.end method
