.class Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$1;
.super Landroid/content/BroadcastReceiver;
.source "ExerciseRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$1;->this$0:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$1;->this$0:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;

    invoke-static {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->-wrap0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;)Z

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$1;->this$0:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;

    invoke-static {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;)Z

    move-result v3

    if-eq v0, v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$1;->this$0:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;

    new-array v4, v1, [B

    if-eqz v0, :cond_1

    :goto_0
    int-to-byte v1, v1

    aput-byte v1, v4, v2

    const/16 v1, 0x17

    const/16 v2, 0x2e

    const/16 v5, 0x25

    invoke-static {v3, v1, v2, v5, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->-wrap1(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;BBB[B)Z

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$1;->this$0:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;

    invoke-static {v1, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->-set0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;Z)Z

    :cond_0
    return-void

    :cond_1
    move v1, v2

    goto :goto_0
.end method
