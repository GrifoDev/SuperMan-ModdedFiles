.class Lcom/android/systemui/statusbar/BaseStatusBar$15$1;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardHostView$OnDismissAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/BaseStatusBar$15;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/BaseStatusBar$15;

.field final synthetic val$guts:Lcom/android/systemui/statusbar/NotificationGuts;

.field final synthetic val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field final synthetic val$sbn:Landroid/service/notification/StatusBarNotification;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar$15;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationGuts;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$15$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$15;

    iput-object p2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$15$1;->val$sbn:Landroid/service/notification/StatusBarNotification;

    iput-object p3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$15$1;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iput-object p4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$15$1;->val$guts:Lcom/android/systemui/statusbar/NotificationGuts;

    iput-object p5, p0, Lcom/android/systemui/statusbar/BaseStatusBar$15$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()Z
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$15$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$15;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$15;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$15$1;->val$sbn:Landroid/service/notification/StatusBarNotification;

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$15$1;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$15$1;->val$guts:Lcom/android/systemui/statusbar/NotificationGuts;

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$15$1;->val$v:Landroid/view/View;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->-wrap1(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationGuts;Landroid/view/View;)V

    const/4 v0, 0x1

    return v0
.end method
