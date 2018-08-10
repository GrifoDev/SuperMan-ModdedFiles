.class Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$13;
.super Ljava/lang/Object;
.source "NotificationStackScrollLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateEmptyShadeView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$13;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$13;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/EmptyShadeView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$13;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/EmptyShadeView;->setWillBeGone(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$13;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-wrap10(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$13;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$13;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v1, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-wrap4(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Lcom/android/systemui/statusbar/ExpandableView;)V

    return-void
.end method
