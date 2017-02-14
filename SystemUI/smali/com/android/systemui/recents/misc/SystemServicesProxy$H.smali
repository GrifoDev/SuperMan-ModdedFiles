.class final Lcom/android/systemui/recents/misc/SystemServicesProxy$H;
.super Landroid/os/Handler;
.source "SystemServicesProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/misc/SystemServicesProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;


# direct methods
.method private constructor <init>(Lcom/android/systemui/recents/misc/SystemServicesProxy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/recents/misc/SystemServicesProxy;Lcom/android/systemui/recents/misc/SystemServicesProxy$H;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;-><init>(Lcom/android/systemui/recents/misc/SystemServicesProxy;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get1(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get1(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;->onTaskStackChanged()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get1(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_1
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get1(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;->onActivityPinned()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get1(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_2
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get1(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;->onPinnedActivityRestartAttempt()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :pswitch_3
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get1(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_3
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get1(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;->onPinnedStackAnimationEnded()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :pswitch_4
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get1(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_4
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get1(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;->onActivityForcedResizable(Ljava/lang/String;I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :pswitch_5
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get1(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_5
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get1(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;->onActivityDismissingDockedStack()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
