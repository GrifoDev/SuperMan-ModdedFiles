.class Lcom/android/systemui/pip/phone/PipMenuActivity$2;
.super Landroid/os/Handler;
.source "PipMenuActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/phone/PipMenuActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/phone/PipMenuActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/pip/phone/PipMenuActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity$2;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMenuActivity$2;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivity;

    const-string/jumbo v2, "menu_state"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v2, "stack_bounds"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    const-string/jumbo v3, "movement_bounds"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    const-string/jumbo v6, "allow_timeout"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v4, v5, v2, v3, v6}, Lcom/android/systemui/pip/phone/PipMenuActivity;->-wrap4(Lcom/android/systemui/pip/phone/PipMenuActivity;ILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMenuActivity$2;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivity;

    invoke-static {v2}, Lcom/android/systemui/pip/phone/PipMenuActivity;->-wrap0(Lcom/android/systemui/pip/phone/PipMenuActivity;)V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMenuActivity$2;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivity;

    invoke-static {v2}, Lcom/android/systemui/pip/phone/PipMenuActivity;->-wrap1(Lcom/android/systemui/pip/phone/PipMenuActivity;)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    const-string/jumbo v2, "actions"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ParceledListSlice;

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMenuActivity$2;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivity;

    const-string/jumbo v2, "stack_bounds"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3

    :goto_1
    invoke-static {v4, v2, v3}, Lcom/android/systemui/pip/phone/PipMenuActivity;->-wrap3(Lcom/android/systemui/pip/phone/PipMenuActivity;Landroid/graphics/Rect;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_1

    :pswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMenuActivity$2;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivity;

    const-string/jumbo v3, "dismiss_fraction"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v2, v3}, Lcom/android/systemui/pip/phone/PipMenuActivity;->-wrap5(Lcom/android/systemui/pip/phone/PipMenuActivity;F)V

    goto :goto_0

    :pswitch_5
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMenuActivity$2;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivity;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/systemui/pip/phone/PipMenuActivity;->-set0(Lcom/android/systemui/pip/phone/PipMenuActivity;Z)Z

    goto :goto_0

    nop

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
