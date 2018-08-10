.class public Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;
.super Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;
.source "AppItem.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final synthetic -com-android-systemui-statusbar-phone-taskbar-data-BaseItem$TypeSwitchesValues:[I

.field private static final DEBUGGABLE:Z


# instance fields
.field public container:J

.field public customIcon:Z

.field public intent:Landroid/content/Intent;

.field public isDisabled:I

.field public mCanAddToShortcut:Z

.field public mCell:I

.field public mComponentName:Landroid/content/ComponentName;

.field public mCreateTime:J

.field public mHidden:Z

.field public mRunningFocused:Z

.field public mRunningTaskId:I

.field public mSystemApp:Z

.field public mUnavailable:Z

.field public mUsingTaskDescription:Z

.field public usingFallbackIcon:Z


# direct methods
.method private static synthetic -getcom-android-systemui-statusbar-phone-taskbar-data-BaseItem$TypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->-com-android-systemui-statusbar-phone-taskbar-data-BaseItem$TypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->-com-android-systemui-statusbar-phone-taskbar-data-BaseItem$TypeSwitchesValues:[I

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

    const/4 v2, 0x4

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

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->MENU_APP:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->-com-android-systemui-statusbar-phone-taskbar-data-BaseItem$TypeSwitchesValues:[I

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

.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->DEBUGGABLE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;Z)V
    .locals 6

    const-wide/16 v4, -0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->MENU_APP:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;)V

    iput v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mCell:I

    iput-wide v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mCreateTime:J

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mHidden:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mUnavailable:Z

    iput v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->isDisabled:I

    iput-wide v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->container:J

    iput v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mRunningTaskId:I

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mCanAddToShortcut:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mRunningFocused:Z

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mComponentName:Landroid/content/ComponentName;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mSystemApp:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;)V
    .locals 4

    const-wide/16 v2, -0x1

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;)V

    iput v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mCell:I

    iput-wide v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mCreateTime:J

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mHidden:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mUnavailable:Z

    iput v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->isDisabled:I

    iput-wide v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->container:J

    iput v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mRunningTaskId:I

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mCanAddToShortcut:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mRunningFocused:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;Landroid/content/ComponentName;Z)V
    .locals 4

    const-wide/16 v2, -0x1

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;)V

    iput v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mCell:I

    iput-wide v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mCreateTime:J

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mHidden:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mUnavailable:Z

    iput v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->isDisabled:I

    iput-wide v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->container:J

    iput v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mRunningTaskId:I

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mCanAddToShortcut:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mRunningFocused:Z

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mComponentName:Landroid/content/ComponentName;

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mSystemApp:Z

    return-void
.end method

.method public static makeLaunchIntent(Landroid/content/Context;Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/content/Intent;
    .locals 5

    const-string/jumbo v1, "user"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0, p2}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v2

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v4, 0x10200000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, "profile"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method private mapTypeToDbValue()I
    .locals 3

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->-getcom-android-systemui-statusbar-phone-taskbar-data-BaseItem$TypeSwitchesValues()[I

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mType:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public clone()Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;
    .locals 4

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mComponentName:Landroid/content/ComponentName;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mSystemApp:Z

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;-><init>(Landroid/content/ComponentName;Z)V

    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->container:J

    iput-wide v2, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->container:J

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->clone()Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    move-result-object v0

    return-object v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getLaunchIntent(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Intent;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mComponentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->isKnoxShortcut(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->intent:Landroid/content/Intent;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-static {p1, v1, p2}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->makeLaunchIntent(Landroid/content/Context;Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mComponentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPosition()I
    .locals 1

    const/4 v0, -0x1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mScreen:I

    return v0
.end method

.method public isRunning()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mRunningTaskId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRunningAppItem()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mType:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    sget-object v1, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->HOME_RUNNING_APPLICATION:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 6

    const-string/jumbo v2, "AppItem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onAddToDatabase container="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->container:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  mScreen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mScreen:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  mTItle="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "itemType"

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mapTypeToDbValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "container"

    iget-wide v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->container:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v2, "screen"

    iget v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mScreen:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "title"

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "profileId"

    const-string/jumbo v2, "user"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    invoke-virtual {v2, v4}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p2, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->intent:Landroid/content/Intent;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getLaunchIntent(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Intent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->intent:Landroid/content/Intent;

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->intent:Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string/jumbo v2, "intent"

    invoke-virtual {p2, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->customIcon:Z

    if-eqz v2, :cond_1

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    const-string/jumbo v2, "icon"

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public setPosition(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mScreen:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Item(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " screen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mScreen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " cell="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mCell:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mType:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->container:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " componentName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mRunningTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " canAddToShortcut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mCanAddToShortcut:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
