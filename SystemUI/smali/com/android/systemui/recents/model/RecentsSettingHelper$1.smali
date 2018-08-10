.class Lcom/android/systemui/recents/model/RecentsSettingHelper$1;
.super Lcom/samsung/android/vr/IGearVrStateCallbacks$Stub;
.source "RecentsSettingHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/model/RecentsSettingHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/model/RecentsSettingHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/model/RecentsSettingHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper$1;->this$0:Lcom/android/systemui/recents/model/RecentsSettingHelper;

    invoke-direct {p0}, Lcom/samsung/android/vr/IGearVrStateCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGearVrStateChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper$1;->this$0:Lcom/android/systemui/recents/model/RecentsSettingHelper;

    invoke-static {v0, v2}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->-set6(Lcom/android/systemui/recents/model/RecentsSettingHelper;Z)Z

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper$1;->this$0:Lcom/android/systemui/recents/model/RecentsSettingHelper;

    invoke-static {v0, v1}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->-set6(Lcom/android/systemui/recents/model/RecentsSettingHelper;Z)Z

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper$1;->this$0:Lcom/android/systemui/recents/model/RecentsSettingHelper;

    invoke-static {v0, v2}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->-set7(Lcom/android/systemui/recents/model/RecentsSettingHelper;Z)Z

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper$1;->this$0:Lcom/android/systemui/recents/model/RecentsSettingHelper;

    invoke-static {v0, v1}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->-set7(Lcom/android/systemui/recents/model/RecentsSettingHelper;Z)Z

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_1
        0x40 -> :sswitch_2
        0x80 -> :sswitch_3
    .end sparse-switch
.end method
