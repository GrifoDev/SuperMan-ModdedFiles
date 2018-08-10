.class final synthetic Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;

.field private final synthetic -$f10:Ljava/lang/Object;

.field private final synthetic -$f11:Ljava/lang/Object;

.field private final synthetic -$f12:Ljava/lang/Object;

.field private final synthetic -$f13:Ljava/lang/Object;

.field private final synthetic -$f14:Ljava/lang/Object;

.field private final synthetic -$f15:Ljava/lang/Object;

.field private final synthetic -$f16:Ljava/lang/Object;

.field private final synthetic -$f17:Ljava/lang/Object;

.field private final synthetic -$f2:Ljava/lang/Object;

.field private final synthetic -$f3:Ljava/lang/Object;

.field private final synthetic -$f4:Ljava/lang/Object;

.field private final synthetic -$f5:Ljava/lang/Object;

.field private final synthetic -$f6:Ljava/lang/Object;

.field private final synthetic -$f7:Ljava/lang/Object;

.field private final synthetic -$f8:Ljava/lang/Object;

.field private final synthetic -$f9:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo$4;->-$f0:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/SystemServer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo$4;->-$f1:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo$4;->-$f2:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo$4;->-$f3:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/NetworkScoreService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo$4;->-$f4:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/NetworkManagementService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo$4;->-$f5:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo$4;->-$f6:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo$4;->-$f7:Ljava/lang/Object;

    check-cast v8, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo$4;->-$f8:Ljava/lang/Object;

    check-cast v9, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo$4;->-$f9:Ljava/lang/Object;

    check-cast v10, Landroid/os/IBinder;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo$4;->-$f10:Ljava/lang/Object;

    check-cast v11, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo$4;->-$f11:Ljava/lang/Object;

    check-cast v12, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo$4;->-$f12:Ljava/lang/Object;

    check-cast v13, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo$4;->-$f13:Ljava/lang/Object;

    check-cast v14, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo$4;->-$f14:Ljava/lang/Object;

    check-cast v15, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo$4;->-$f15:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo$4;->-$f16:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/server/MmsServiceBroker;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo$4;->-$f17:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-virtual/range {v1 .. v18}, Lcom/android/server/SystemServer;->lambda$-com_android_server_SystemServer_156269(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/NetworkScoreService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/ConnectivityService;Lcom/android/server/LocationManagerService;Landroid/os/IBinder;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;Lcom/samsung/accessory/manager/SAccessoryManager;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo$4;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo$4;->-$f1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo$4;->-$f2:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo$4;->-$f3:Ljava/lang/Object;

    iput-object p5, p0, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo$4;->-$f4:Ljava/lang/Object;

    iput-object p6, p0, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo$4;->-$f5:Ljava/lang/Object;

    iput-object p7, p0, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo$4;->-$f6:Ljava/lang/Object;

    iput-object p8, p0, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo$4;->-$f7:Ljava/lang/Object;

    iput-object p9, p0, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo$4;->-$f8:Ljava/lang/Object;

    iput-object p10, p0, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo$4;->-$f9:Ljava/lang/Object;

    iput-object p11, p0, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo$4;->-$f10:Ljava/lang/Object;

    iput-object p12, p0, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo$4;->-$f11:Ljava/lang/Object;

    iput-object p13, p0, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo$4;->-$f12:Ljava/lang/Object;

    iput-object p14, p0, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo$4;->-$f13:Ljava/lang/Object;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo$4;->-$f14:Ljava/lang/Object;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo$4;->-$f15:Ljava/lang/Object;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo$4;->-$f16:Ljava/lang/Object;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo$4;->-$f17:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo$4;->$m$0()V

    return-void
.end method
