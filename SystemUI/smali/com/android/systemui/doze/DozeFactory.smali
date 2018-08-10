.class public Lcom/android/systemui/doze/DozeFactory;
.super Ljava/lang/Object;
.source "DozeFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createDozeTriggers(Landroid/content/Context;Landroid/hardware/SensorManager;Lcom/android/systemui/doze/DozeHost;Lcom/android/internal/hardware/AmbientDisplayConfiguration;Lcom/android/systemui/statusbar/phone/DozeParameters;Landroid/os/Handler;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/doze/DozeMachine;)Lcom/android/systemui/doze/DozeTriggers;
    .locals 10

    const/4 v9, 0x1

    new-instance v0, Lcom/android/systemui/doze/DozeTriggers;

    move-object v1, p1

    move-object/from16 v2, p8

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p2

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/doze/DozeTriggers;-><init>(Landroid/content/Context;Lcom/android/systemui/doze/DozeMachine;Lcom/android/systemui/doze/DozeHost;Lcom/android/internal/hardware/AmbientDisplayConfiguration;Lcom/android/systemui/statusbar/phone/DozeParameters;Landroid/hardware/SensorManager;Landroid/os/Handler;Lcom/android/systemui/util/wakelock/WakeLock;Z)V

    return-object v0
.end method

.method private createDozeUi(Landroid/content/Context;Lcom/android/systemui/doze/DozeHost;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/doze/DozeMachine;Landroid/os/Handler;Landroid/app/AlarmManager;)Lcom/android/systemui/doze/DozeMachine$Part;
    .locals 7

    new-instance v0, Lcom/android/systemui/doze/DozeUi;

    move-object v1, p1

    move-object v2, p6

    move-object v3, p4

    move-object v4, p3

    move-object v5, p2

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/doze/DozeUi;-><init>(Landroid/content/Context;Landroid/app/AlarmManager;Lcom/android/systemui/doze/DozeMachine;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/doze/DozeHost;Landroid/os/Handler;)V

    return-object v0
.end method

.method public static getHost(Lcom/android/systemui/doze/DozeService;)Lcom/android/systemui/doze/DozeHost;
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeService;->getApplication()Landroid/app/Application;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/systemui/SystemUIApplication;

    const-class v2, Lcom/android/systemui/doze/DozeHost;

    invoke-virtual {v0, v2}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/doze/DozeHost;

    return-object v2
.end method


# virtual methods
.method public assembleMachine(Lcom/android/systemui/doze/DozeService;)Lcom/android/systemui/doze/DozeMachine;
    .locals 19

    move-object/from16 v17, p1

    const-class v1, Lcom/android/systemui/util/AsyncSensorManager;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    const-class v1, Landroid/app/AlarmManager;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/app/AlarmManager;

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/doze/DozeFactory;->getHost(Lcom/android/systemui/doze/DozeService;)Lcom/android/systemui/doze/DozeHost;

    move-result-object v4

    new-instance v5, Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    new-instance v6, Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    const-string/jumbo v1, "Doze"

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/android/systemui/util/wakelock/WakeLock;->createPartial(Landroid/content/Context;Ljava/lang/String;)Lcom/android/systemui/util/wakelock/WakeLock;

    move-result-object v8

    new-instance v9, Lcom/android/systemui/doze/DozeMachine;

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/android/systemui/doze/DozeScreenStatePreventingAdapter;->wrapIfNeeded(Lcom/android/systemui/doze/DozeMachine$Service;Lcom/android/systemui/statusbar/phone/DozeParameters;)Lcom/android/systemui/doze/DozeMachine$Service;

    move-result-object v1

    invoke-direct {v9, v1, v5, v8}, Lcom/android/systemui/doze/DozeMachine;-><init>(Lcom/android/systemui/doze/DozeMachine$Service;Lcom/android/internal/hardware/AmbientDisplayConfiguration;Lcom/android/systemui/util/wakelock/WakeLock;)V

    const/4 v1, 0x2

    new-array v0, v1, [Lcom/android/systemui/doze/DozeMachine$Part;

    move-object/from16 v18, v0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v9}, Lcom/android/systemui/doze/DozeFactory;->createDozeTriggers(Landroid/content/Context;Landroid/hardware/SensorManager;Lcom/android/systemui/doze/DozeHost;Lcom/android/internal/hardware/AmbientDisplayConfiguration;Lcom/android/systemui/statusbar/phone/DozeParameters;Landroid/os/Handler;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/doze/DozeMachine;)Lcom/android/systemui/doze/DozeTriggers;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v18, v2

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object v12, v4

    move-object v13, v8

    move-object v14, v9

    move-object v15, v7

    invoke-direct/range {v10 .. v16}, Lcom/android/systemui/doze/DozeFactory;->createDozeUi(Landroid/content/Context;Lcom/android/systemui/doze/DozeHost;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/doze/DozeMachine;Landroid/os/Handler;Landroid/app/AlarmManager;)Lcom/android/systemui/doze/DozeMachine$Part;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v18, v2

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/android/systemui/doze/DozeMachine;->setParts([Lcom/android/systemui/doze/DozeMachine$Part;)V

    return-object v9
.end method
