.class public Landroid/app/LocalActivityManager;
.super Ljava/lang/Object;
.source "LocalActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/LocalActivityManager$LocalActivityRecord;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final CREATED:I = 0x2

.field static final DESTROYED:I = 0x5

.field static final INITIALIZING:I = 0x1

.field static final RESTORED:I = 0x0

.field static final RESUMED:I = 0x4

.field static final STARTED:I = 0x3

.field private static final TAG:Ljava/lang/String; = "LocalActivityManager"

.field private static final localLOGV:Z


# instance fields
.field private final mActivities:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/LocalActivityManager$LocalActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivityArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/LocalActivityManager$LocalActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivityThread:Landroid/app/ActivityThread;

.field private mCurState:I

.field private mFinishing:Z

.field private final mParent:Landroid/app/Activity;

.field private mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

.field private mSingleMode:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 1
    .param p1, "parent"    # Landroid/app/Activity;
    .param p2, "singleMode"    # Z

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 78
    iput-object v0, p0, Landroid/app/LocalActivityManager;->mActivities:Ljava/util/Map;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    iput-object v0, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    .line 91
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/LocalActivityManager;->mCurState:I

    .line 106
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    iput-object v0, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    .line 107
    iput-object p1, p0, Landroid/app/LocalActivityManager;->mParent:Landroid/app/Activity;

    .line 108
    iput-boolean p2, p0, Landroid/app/LocalActivityManager;->mSingleMode:Z

    .line 105
    return-void
.end method

.method private moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V
    .locals 10
    .param p1, "r"    # Landroid/app/LocalActivityManager$LocalActivityRecord;
    .param p2, "desiredState"    # I

    .prologue
    .line 112
    iget v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 114
    :cond_0
    return-void

    .line 117
    :cond_1
    iget v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 120
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mParent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLastNonConfigurationChildInstances()Ljava/util/HashMap;

    move-result-object v9

    .line 121
    .local v9, "lastNonConfigurationInstances":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v8, 0x0

    .line 122
    .local v8, "instanceObj":Ljava/lang/Object;
    if-eqz v9, :cond_2

    .line 123
    iget-object v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->id:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 125
    .end local v8    # "instanceObj":Ljava/lang/Object;
    :cond_2
    const/4 v7, 0x0

    .line 126
    .local v7, "instance":Landroid/app/Activity$NonConfigurationInstances;
    if-eqz v8, :cond_3

    .line 127
    new-instance v7, Landroid/app/Activity$NonConfigurationInstances;

    .end local v7    # "instance":Landroid/app/Activity$NonConfigurationInstances;
    invoke-direct {v7}, Landroid/app/Activity$NonConfigurationInstances;-><init>()V

    .line 128
    .local v7, "instance":Landroid/app/Activity$NonConfigurationInstances;
    iput-object v8, v7, Landroid/app/Activity$NonConfigurationInstances;->activity:Ljava/lang/Object;

    .line 133
    .end local v7    # "instance":Landroid/app/Activity$NonConfigurationInstances;
    :cond_3
    iget-object v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_4

    .line 134
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    iget-object v1, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread;->resolveActivityInfo(Landroid/content/Intent;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iput-object v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 136
    :cond_4
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    .line 137
    iget-object v1, p0, Landroid/app/LocalActivityManager;->mParent:Landroid/app/Activity;

    iget-object v2, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->id:Ljava/lang/String;

    iget-object v3, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->intent:Landroid/content/Intent;

    iget-object v4, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    move-object v5, p1

    .line 136
    invoke-virtual/range {v0 .. v7}, Landroid/app/ActivityThread;->startActivityNow(Landroid/app/Activity;Ljava/lang/String;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Landroid/os/Bundle;Landroid/app/Activity$NonConfigurationInstances;)Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    .line 138
    iget-object v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    if-nez v0, :cond_5

    .line 139
    return-void

    .line 141
    :cond_5
    iget-object v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->window:Landroid/view/Window;

    .line 142
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    .line 143
    const/4 v0, 0x3

    iput v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    .line 145
    const/4 v0, 0x4

    if-ne p2, v0, :cond_6

    .line 147
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    const-string/jumbo v1, "moveToState-INITIALIZING"

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Landroid/app/ActivityThread;->performResumeActivity(Landroid/os/IBinder;ZLjava/lang/String;)Landroid/app/ActivityThread$ActivityClientRecord;

    .line 148
    const/4 v0, 0x4

    iput v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    .line 157
    :cond_6
    return-void

    .line 160
    .end local v9    # "lastNonConfigurationInstances":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_7
    iget v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    packed-switch v0, :pswitch_data_0

    .line 111
    return-void

    .line 162
    :pswitch_0
    const/4 v0, 0x3

    if-ne p2, v0, :cond_8

    .line 164
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {v0, p1}, Landroid/app/ActivityThread;->performRestartActivity(Landroid/os/IBinder;)V

    .line 165
    const/4 v0, 0x3

    iput v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    .line 167
    :cond_8
    const/4 v0, 0x4

    if-ne p2, v0, :cond_9

    .line 169
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {v0, p1}, Landroid/app/ActivityThread;->performRestartActivity(Landroid/os/IBinder;)V

    .line 170
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    const-string/jumbo v1, "moveToState-CREATED"

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Landroid/app/ActivityThread;->performResumeActivity(Landroid/os/IBinder;ZLjava/lang/String;)Landroid/app/ActivityThread$ActivityClientRecord;

    .line 171
    const/4 v0, 0x4

    iput v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    .line 173
    :cond_9
    return-void

    .line 176
    :pswitch_1
    const/4 v0, 0x4

    if-ne p2, v0, :cond_a

    .line 179
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    const-string/jumbo v1, "moveToState-STARTED"

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Landroid/app/ActivityThread;->performResumeActivity(Landroid/os/IBinder;ZLjava/lang/String;)Landroid/app/ActivityThread$ActivityClientRecord;

    .line 180
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    .line 181
    const/4 v0, 0x4

    iput v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    .line 183
    :cond_a
    const/4 v0, 0x2

    if-ne p2, v0, :cond_b

    .line 185
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    const-string/jumbo v1, "moveToState-STARTED"

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Landroid/app/ActivityThread;->performStopActivity(Landroid/os/IBinder;ZLjava/lang/String;)V

    .line 186
    const/4 v0, 0x2

    iput v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    .line 188
    :cond_b
    return-void

    .line 191
    :pswitch_2
    const/4 v0, 0x3

    if-ne p2, v0, :cond_c

    .line 193
    iget-boolean v0, p0, Landroid/app/LocalActivityManager;->mFinishing:Z

    invoke-direct {p0, p1, v0}, Landroid/app/LocalActivityManager;->performPause(Landroid/app/LocalActivityManager$LocalActivityRecord;Z)V

    .line 194
    const/4 v0, 0x3

    iput v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    .line 196
    :cond_c
    const/4 v0, 0x2

    if-ne p2, v0, :cond_d

    .line 198
    iget-boolean v0, p0, Landroid/app/LocalActivityManager;->mFinishing:Z

    invoke-direct {p0, p1, v0}, Landroid/app/LocalActivityManager;->performPause(Landroid/app/LocalActivityManager$LocalActivityRecord;Z)V

    .line 200
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    const-string/jumbo v1, "moveToState-RESUMED"

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Landroid/app/ActivityThread;->performStopActivity(Landroid/os/IBinder;ZLjava/lang/String;)V

    .line 201
    const/4 v0, 0x2

    iput v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    .line 203
    :cond_d
    return-void

    .line 160
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private performDestroy(Landroid/app/LocalActivityManager$LocalActivityRecord;Z)Landroid/view/Window;
    .locals 4
    .param p1, "r"    # Landroid/app/LocalActivityManager$LocalActivityRecord;
    .param p2, "finish"    # Z

    .prologue
    const/4 v3, 0x0

    .line 359
    iget-object v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->window:Landroid/view/Window;

    .line 360
    .local v0, "win":Landroid/view/Window;
    iget v1, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    if-eqz p2, :cond_2

    .line 364
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {v1, p1, p2}, Landroid/app/ActivityThread;->performDestroyActivity(Landroid/os/IBinder;Z)Landroid/app/ActivityThread$ActivityClientRecord;

    .line 365
    iput-object v3, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    .line 366
    iput-object v3, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->window:Landroid/view/Window;

    .line 367
    if-eqz p2, :cond_1

    .line 368
    iput-object v3, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    .line 370
    :cond_1
    const/4 v1, 0x5

    iput v1, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    .line 371
    return-object v0

    .line 361
    :cond_2
    invoke-direct {p0, p1, p2}, Landroid/app/LocalActivityManager;->performPause(Landroid/app/LocalActivityManager$LocalActivityRecord;Z)V

    goto :goto_0
.end method

.method private performPause(Landroid/app/LocalActivityManager$LocalActivityRecord;Z)V
    .locals 4
    .param p1, "r"    # Landroid/app/LocalActivityManager$LocalActivityRecord;
    .param p2, "finishing"    # Z

    .prologue
    .line 208
    iget-object v2, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 209
    .local v1, "needState":Z
    :goto_0
    iget-object v2, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    .line 210
    const-string/jumbo v3, "performPause"

    .line 209
    invoke-virtual {v2, p1, p2, v1, v3}, Landroid/app/ActivityThread;->performPauseActivity(Landroid/os/IBinder;ZZLjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 211
    .local v0, "instanceState":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 212
    iput-object v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    .line 207
    :cond_0
    return-void

    .line 208
    .end local v0    # "instanceState":Landroid/os/Bundle;
    .end local v1    # "needState":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "needState":Z
    goto :goto_0
.end method


# virtual methods
.method public destroyActivity(Ljava/lang/String;Z)Landroid/view/Window;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "finish"    # Z

    .prologue
    .line 387
    iget-object v2, p0, Landroid/app/LocalActivityManager;->mActivities:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 388
    .local v0, "r":Landroid/app/LocalActivityManager$LocalActivityRecord;
    const/4 v1, 0x0

    .line 389
    .local v1, "win":Landroid/view/Window;
    if-eqz v0, :cond_0

    .line 390
    invoke-direct {p0, v0, p2}, Landroid/app/LocalActivityManager;->performDestroy(Landroid/app/LocalActivityManager$LocalActivityRecord;Z)Landroid/view/Window;

    move-result-object v1

    .line 391
    .local v1, "win":Landroid/view/Window;
    if-eqz p2, :cond_0

    .line 392
    iget-object v2, p0, Landroid/app/LocalActivityManager;->mActivities:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    iget-object v2, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 396
    .end local v1    # "win":Landroid/view/Window;
    :cond_0
    return-object v1
.end method

.method public dispatchCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 453
    if-eqz p1, :cond_1

    .line 454
    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "id$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 456
    .local v2, "id":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 457
    .local v0, "astate":Landroid/os/Bundle;
    iget-object v5, p0, Landroid/app/LocalActivityManager;->mActivities:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 458
    .local v4, "r":Landroid/app/LocalActivityManager$LocalActivityRecord;
    if-eqz v4, :cond_0

    .line 459
    iput-object v0, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 466
    .end local v0    # "astate":Landroid/os/Bundle;
    .end local v4    # "r":Landroid/app/LocalActivityManager$LocalActivityRecord;
    :catch_0
    move-exception v1

    .line 468
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "LocalActivityManager"

    const-string/jumbo v6, "Exception thrown when restoring LocalActivityManager state"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 461
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "astate":Landroid/os/Bundle;
    .restart local v4    # "r":Landroid/app/LocalActivityManager$LocalActivityRecord;
    :cond_0
    :try_start_1
    new-instance v4, Landroid/app/LocalActivityManager$LocalActivityRecord;

    .end local v4    # "r":Landroid/app/LocalActivityManager$LocalActivityRecord;
    const/4 v5, 0x0

    invoke-direct {v4, v2, v5}, Landroid/app/LocalActivityManager$LocalActivityRecord;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    .line 462
    .restart local v4    # "r":Landroid/app/LocalActivityManager$LocalActivityRecord;
    iput-object v0, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    .line 463
    iget-object v5, p0, Landroid/app/LocalActivityManager;->mActivities:Ljava/util/Map;

    invoke-interface {v5, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    iget-object v5, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 473
    .end local v0    # "astate":Landroid/os/Bundle;
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "id$iterator":Ljava/util/Iterator;
    .end local v4    # "r":Landroid/app/LocalActivityManager$LocalActivityRecord;
    :cond_1
    const/4 v5, 0x2

    iput v5, p0, Landroid/app/LocalActivityManager;->mCurState:I

    .line 452
    return-void
.end method

.method public dispatchDestroy(Z)V
    .locals 4
    .param p1, "finishing"    # Z

    .prologue
    .line 624
    iget-object v3, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 625
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 626
    iget-object v3, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 628
    .local v2, "r":Landroid/app/LocalActivityManager$LocalActivityRecord;
    iget-object v3, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {v3, v2, p1}, Landroid/app/ActivityThread;->performDestroyActivity(Landroid/os/IBinder;Z)Landroid/app/ActivityThread$ActivityClientRecord;

    .line 625
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 630
    .end local v2    # "r":Landroid/app/LocalActivityManager$LocalActivityRecord;
    :cond_0
    iget-object v3, p0, Landroid/app/LocalActivityManager;->mActivities:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 631
    iget-object v3, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 623
    return-void
.end method

.method public dispatchPause(Z)V
    .locals 6
    .param p1, "finishing"    # Z

    .prologue
    const/4 v5, 0x3

    .line 547
    if-eqz p1, :cond_0

    .line 548
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/app/LocalActivityManager;->mFinishing:Z

    .line 550
    :cond_0
    iput v5, p0, Landroid/app/LocalActivityManager;->mCurState:I

    .line 551
    iget-boolean v3, p0, Landroid/app/LocalActivityManager;->mSingleMode:Z

    if-eqz v3, :cond_2

    .line 552
    iget-object v3, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    if-eqz v3, :cond_1

    .line 553
    iget-object v3, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    invoke-direct {p0, v3, v5}, Landroid/app/LocalActivityManager;->moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V

    .line 546
    :cond_1
    return-void

    .line 556
    :cond_2
    iget-object v3, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 557
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 558
    iget-object v3, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 559
    .local v2, "r":Landroid/app/LocalActivityManager$LocalActivityRecord;
    iget v3, v2, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    .line 560
    invoke-direct {p0, v2, v5}, Landroid/app/LocalActivityManager;->moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V

    .line 557
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public dispatchResume()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 521
    iput v3, p0, Landroid/app/LocalActivityManager;->mCurState:I

    .line 522
    iget-boolean v2, p0, Landroid/app/LocalActivityManager;->mSingleMode:Z

    if-eqz v2, :cond_1

    .line 523
    iget-object v2, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    if-eqz v2, :cond_0

    .line 524
    iget-object v2, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    invoke-direct {p0, v2, v3}, Landroid/app/LocalActivityManager;->moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V

    .line 520
    :cond_0
    return-void

    .line 527
    :cond_1
    iget-object v2, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 528
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 529
    iget-object v2, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/LocalActivityManager$LocalActivityRecord;

    invoke-direct {p0, v2, v3}, Landroid/app/LocalActivityManager;->moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V

    .line 528
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public dispatchRetainNonConfigurationInstance()Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 590
    const/4 v3, 0x0

    .line 592
    .local v3, "instanceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v5, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 593
    .local v0, "N":I
    const/4 v1, 0x0

    .end local v3    # "instanceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 594
    iget-object v5, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 595
    .local v4, "r":Landroid/app/LocalActivityManager$LocalActivityRecord;
    if-eqz v4, :cond_1

    iget-object v5, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    if-eqz v5, :cond_1

    .line 596
    iget-object v5, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->onRetainNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v2

    .line 597
    .local v2, "instance":Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 598
    if-nez v3, :cond_0

    .line 599
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 601
    :cond_0
    iget-object v5, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->id:Ljava/lang/String;

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    .end local v2    # "instance":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 605
    .end local v4    # "r":Landroid/app/LocalActivityManager$LocalActivityRecord;
    :cond_2
    return-object v3
.end method

.method public dispatchStop()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 574
    iput v4, p0, Landroid/app/LocalActivityManager;->mCurState:I

    .line 575
    iget-object v3, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 576
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 577
    iget-object v3, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 578
    .local v2, "r":Landroid/app/LocalActivityManager$LocalActivityRecord;
    invoke-direct {p0, v2, v4}, Landroid/app/LocalActivityManager;->moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V

    .line 576
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 573
    .end local v2    # "r":Landroid/app/LocalActivityManager$LocalActivityRecord;
    :cond_0
    return-void
.end method

.method public getActivity(Ljava/lang/String;)Landroid/app/Activity;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 434
    iget-object v2, p0, Landroid/app/LocalActivityManager;->mActivities:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 435
    .local v0, "r":Landroid/app/LocalActivityManager$LocalActivityRecord;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    :cond_0
    return-object v1
.end method

.method public getCurrentActivity()Landroid/app/Activity;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 409
    iget-object v1, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    iget-object v0, v0, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    :cond_0
    return-object v0
.end method

.method public getCurrentId()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 422
    iget-object v1, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    iget-object v0, v0, Landroid/app/LocalActivityManager$LocalActivityRecord;->id:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public removeAllActivities()V
    .locals 1

    .prologue
    .line 613
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/LocalActivityManager;->dispatchDestroy(Z)V

    .line 612
    return-void
.end method

.method public saveInstanceState()Landroid/os/Bundle;
    .locals 7

    .prologue
    .line 487
    const/4 v4, 0x0

    .line 491
    .local v4, "state":Landroid/os/Bundle;
    iget-object v5, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 492
    .local v0, "N":I
    const/4 v2, 0x0

    .end local v4    # "state":Landroid/os/Bundle;
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 493
    iget-object v5, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 494
    .local v3, "r":Landroid/app/LocalActivityManager$LocalActivityRecord;
    if-nez v4, :cond_0

    .line 495
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 497
    :cond_0
    iget-object v5, v3, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    if-nez v5, :cond_1

    iget v5, v3, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    .line 498
    :cond_1
    iget-object v5, v3, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    if-eqz v5, :cond_2

    .line 501
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 502
    .local v1, "childState":Landroid/os/Bundle;
    iget-object v5, v3, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v5, v1}, Landroid/app/Activity;->performSaveInstanceState(Landroid/os/Bundle;)V

    .line 503
    iput-object v1, v3, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    .line 505
    .end local v1    # "childState":Landroid/os/Bundle;
    :cond_2
    iget-object v5, v3, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    if-eqz v5, :cond_3

    .line 506
    iget-object v5, v3, Landroid/app/LocalActivityManager$LocalActivityRecord;->id:Ljava/lang/String;

    iget-object v6, v3, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 492
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 510
    .end local v3    # "r":Landroid/app/LocalActivityManager$LocalActivityRecord;
    :cond_4
    return-object v4
.end method

.method public startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;
    .locals 9
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x1

    .line 262
    iget v6, p0, Landroid/app/LocalActivityManager;->mCurState:I

    if-ne v6, v8, :cond_0

    .line 263
    new-instance v6, Ljava/lang/IllegalStateException;

    .line 264
    const-string/jumbo v7, "Activities can\'t be added until the containing group has been created."

    .line 263
    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 267
    :cond_0
    const/4 v1, 0x0

    .line 268
    .local v1, "adding":Z
    const/4 v5, 0x0

    .line 270
    .local v5, "sameIntent":Z
    const/4 v0, 0x0

    .line 273
    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    iget-object v6, p0, Landroid/app/LocalActivityManager;->mActivities:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 274
    .local v4, "r":Landroid/app/LocalActivityManager$LocalActivityRecord;
    if-nez v4, :cond_6

    .line 276
    new-instance v4, Landroid/app/LocalActivityManager$LocalActivityRecord;

    .end local v4    # "r":Landroid/app/LocalActivityManager$LocalActivityRecord;
    invoke-direct {v4, p1, p2}, Landroid/app/LocalActivityManager$LocalActivityRecord;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    .line 277
    .restart local v4    # "r":Landroid/app/LocalActivityManager$LocalActivityRecord;
    const/4 v1, 0x1

    .line 285
    .end local v0    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v5    # "sameIntent":Z
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 286
    iget-object v6, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {v6, p2}, Landroid/app/ActivityThread;->resolveActivityInfo(Landroid/content/Intent;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 291
    :cond_2
    iget-boolean v6, p0, Landroid/app/LocalActivityManager;->mSingleMode:Z

    if-eqz v6, :cond_3

    .line 292
    iget-object v3, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 296
    .local v3, "old":Landroid/app/LocalActivityManager$LocalActivityRecord;
    if-eqz v3, :cond_3

    if-eq v3, v4, :cond_3

    iget v6, p0, Landroid/app/LocalActivityManager;->mCurState:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_3

    .line 297
    const/4 v6, 0x3

    invoke-direct {p0, v3, v6}, Landroid/app/LocalActivityManager;->moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V

    .line 301
    .end local v3    # "old":Landroid/app/LocalActivityManager$LocalActivityRecord;
    :cond_3
    if-eqz v1, :cond_7

    .line 303
    iget-object v6, p0, Landroid/app/LocalActivityManager;->mActivities:Ljava/util/Map;

    invoke-interface {v6, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    iget-object v6, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    :cond_4
    :goto_1
    iput-object p2, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->intent:Landroid/content/Intent;

    .line 345
    iput v8, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    .line 346
    iput-object v0, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 348
    iget v6, p0, Landroid/app/LocalActivityManager;->mCurState:I

    invoke-direct {p0, v4, v6}, Landroid/app/LocalActivityManager;->moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V

    .line 351
    iget-boolean v6, p0, Landroid/app/LocalActivityManager;->mSingleMode:Z

    if-eqz v6, :cond_5

    .line 352
    iput-object v4, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 354
    :cond_5
    iget-object v6, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->window:Landroid/view/Window;

    return-object v6

    .line 278
    .restart local v0    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v5    # "sameIntent":Z
    :cond_6
    iget-object v6, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v6, :cond_1

    .line 279
    iget-object v6, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6, p2}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v5

    .line 280
    .local v5, "sameIntent":Z
    if-eqz v5, :cond_1

    .line 282
    iget-object v0, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    goto :goto_0

    .line 305
    .end local v0    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v5    # "sameIntent":Z
    :cond_7
    iget-object v6, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v6, :cond_4

    .line 308
    iget-object v6, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eq v0, v6, :cond_8

    .line 309
    iget-object v6, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    iget-object v7, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 310
    iget-object v6, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v7, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 308
    if-eqz v6, :cond_d

    .line 311
    :cond_8
    iget v6, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-nez v6, :cond_9

    .line 312
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v6

    const/high16 v7, 0x20000000

    and-int/2addr v6, v7

    if-eqz v6, :cond_b

    .line 314
    :cond_9
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 315
    .local v2, "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/content/ReferrerIntent;>;"
    new-instance v6, Lcom/android/internal/content/ReferrerIntent;

    iget-object v7, p0, Landroid/app/LocalActivityManager;->mParent:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p2, v7}, Lcom/android/internal/content/ReferrerIntent;-><init>(Landroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    iget-object v6, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {v6, v4, v2}, Landroid/app/ActivityThread;->performNewIntents(Landroid/os/IBinder;Ljava/util/List;)V

    .line 318
    iput-object p2, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->intent:Landroid/content/Intent;

    .line 319
    iget v6, p0, Landroid/app/LocalActivityManager;->mCurState:I

    invoke-direct {p0, v4, v6}, Landroid/app/LocalActivityManager;->moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V

    .line 320
    iget-boolean v6, p0, Landroid/app/LocalActivityManager;->mSingleMode:Z

    if-eqz v6, :cond_a

    .line 321
    iput-object v4, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 323
    :cond_a
    iget-object v6, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->window:Landroid/view/Window;

    return-object v6

    .line 325
    .end local v2    # "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/content/ReferrerIntent;>;"
    :cond_b
    if-eqz v5, :cond_d

    .line 326
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v6

    const/high16 v7, 0x4000000

    and-int/2addr v6, v7

    if-nez v6, :cond_d

    .line 329
    iput-object p2, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->intent:Landroid/content/Intent;

    .line 330
    iget v6, p0, Landroid/app/LocalActivityManager;->mCurState:I

    invoke-direct {p0, v4, v6}, Landroid/app/LocalActivityManager;->moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V

    .line 331
    iget-boolean v6, p0, Landroid/app/LocalActivityManager;->mSingleMode:Z

    if-eqz v6, :cond_c

    .line 332
    iput-object v4, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 334
    :cond_c
    iget-object v6, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->window:Landroid/view/Window;

    return-object v6

    .line 341
    :cond_d
    invoke-direct {p0, v4, v8}, Landroid/app/LocalActivityManager;->performDestroy(Landroid/app/LocalActivityManager$LocalActivityRecord;Z)Landroid/view/Window;

    goto/16 :goto_1
.end method
