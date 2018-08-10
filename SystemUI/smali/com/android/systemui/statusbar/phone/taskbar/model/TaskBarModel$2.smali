.class final Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$2;
.super Ljava/lang/Object;
.source "TaskBarModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field private static final synthetic -com-android-systemui-statusbar-phone-taskbar-data-BaseItem$TypeSwitchesValues:[I


# instance fields
.field final synthetic val$item:Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

.field final synthetic val$mDBManager:Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;


# direct methods
.method private static synthetic -getcom-android-systemui-statusbar-phone-taskbar-data-BaseItem$TypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$2;->-com-android-systemui-statusbar-phone-taskbar-data-BaseItem$TypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$2;->-com-android-systemui-statusbar-phone-taskbar-data-BaseItem$TypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->values()[Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->HOME_APPLICATION:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->HOME_RUNNING_APPLICATION:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->HOME_UNKNOWN:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->MENU_APP:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$2;->-com-android-systemui-statusbar-phone-taskbar-data-BaseItem$TypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$2;->val$item:Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$2;->val$mDBManager:Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$2;->-getcom-android-systemui-statusbar-phone-taskbar-data-BaseItem$TypeSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$2;->val$item:Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mType:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->sHomeItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$2;->val$item:Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$2;->val$mDBManager:Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$2;->val$item:Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    iget-wide v2, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mId:J

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;->deleteTaskBarItem(J)I

    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->sHomeItemIdMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$2;->val$item:Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    iget-wide v2, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->sDbIconCache:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$2;->val$item:Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$2;->val$item:Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$2;->val$item:Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mId:J

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$2;->val$item:Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    sget-object v1, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->HOME_RUNNING_APPLICATION:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mType:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
