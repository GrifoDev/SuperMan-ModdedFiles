.class Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$15;
.super Ljava/lang/Object;
.source "NotificationStackScrollLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onGroupExpansionChanged(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

.field final synthetic val$changedRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$15;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iput-object p2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$15;->val$changedRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$15;->val$changedRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onFinishedExpansionChange()V

    return-void
.end method
