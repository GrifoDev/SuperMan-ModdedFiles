.class Lcom/android/server/policy/TspStateManager$TspDebug;
.super Ljava/lang/Object;
.source "TspStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/TspStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TspDebug"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TspStateManagerInternal.DebugSetting"


# instance fields
.field private mHoleCommand:Ljava/lang/String;

.field private mLandCommand:Ljava/lang/String;

.field private mLastCommand:Ljava/lang/String;

.field private mPortCommand:Ljava/lang/String;

.field private mScreenInitHeight:I

.field private mScreenInitWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/TspStateManager$TspDebug;->setInitDisplaySize(II)V

    return-void
.end method

.method private updateDebugString(Landroid/content/Context;)V
    .locals 4

    const/16 v2, 0x2f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/server/policy/TspStateManager$TspDebug;->mScreenInitWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/TspStateManager$TspDebug;->mScreenInitHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/policy/TspStateManager$TspDebug;->mPortCommand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/policy/TspStateManager$TspDebug;->mLandCommand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/policy/TspStateManager$TspDebug;->mHoleCommand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/policy/TspStateManager$TspDebug;->mLastCommand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "setting_last_grip_cmd"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method public setInitDisplaySize(II)V
    .locals 0

    iput p1, p0, Lcom/android/server/policy/TspStateManager$TspDebug;->mScreenInitWidth:I

    iput p2, p0, Lcom/android/server/policy/TspStateManager$TspDebug;->mScreenInitHeight:I

    return-void
.end method

.method public updateTspState(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    iput-object p2, p0, Lcom/android/server/policy/TspStateManager$TspDebug;->mLastCommand:Ljava/lang/String;

    packed-switch p3, :pswitch_data_0

    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/policy/TspStateManager$TspDebug;->updateDebugString(Landroid/content/Context;)V

    return-void

    :pswitch_0
    iput-object p2, p0, Lcom/android/server/policy/TspStateManager$TspDebug;->mPortCommand:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    iput-object p2, p0, Lcom/android/server/policy/TspStateManager$TspDebug;->mLandCommand:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    iput-object p2, p0, Lcom/android/server/policy/TspStateManager$TspDebug;->mHoleCommand:Ljava/lang/String;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
