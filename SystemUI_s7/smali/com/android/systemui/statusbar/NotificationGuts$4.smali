.class Lcom/android/systemui/statusbar/NotificationGuts$4;
.super Ljava/lang/Object;
.source "NotificationGuts.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/NotificationGuts;->bindSlider(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationGuts;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationGuts;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationGuts$4;->this$0:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts$4;->this$0:Lcom/android/systemui/statusbar/NotificationGuts;

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts$4;->this$0:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationGuts;->-get0(Lcom/android/systemui/statusbar/NotificationGuts;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/NotificationGuts;->-set0(Lcom/android/systemui/statusbar/NotificationGuts;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts$4;->this$0:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationGuts;->-wrap0(Lcom/android/systemui/statusbar/NotificationGuts;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
