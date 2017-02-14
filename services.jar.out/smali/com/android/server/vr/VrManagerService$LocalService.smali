.class final Lcom/android/server/vr/VrManagerService$LocalService;
.super Lcom/android/server/vr/VrManagerInternal;
.source "VrManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vr/VrManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vr/VrManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/vr/VrManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/vr/VrManagerService$LocalService;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-direct {p0}, Lcom/android/server/vr/VrManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/vr/VrManagerService;Lcom/android/server/vr/VrManagerService$LocalService;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService$LocalService;-><init>(Lcom/android/server/vr/VrManagerService;)V

    return-void
.end method


# virtual methods
.method public hasVrPackage(Landroid/content/ComponentName;I)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$LocalService;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/vr/VrManagerService;->-wrap3(Lcom/android/server/vr/VrManagerService;Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public isCurrentVrListener(Ljava/lang/String;I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$LocalService;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/vr/VrManagerService;->-wrap2(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public setVrMode(ZLandroid/content/ComponentName;ILandroid/content/ComponentName;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$LocalService;->this$0:Lcom/android/server/vr/VrManagerService;

    const/4 v5, 0x0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/vr/VrManagerService;->-wrap13(Lcom/android/server/vr/VrManagerService;ZLandroid/content/ComponentName;ILandroid/content/ComponentName;Z)V

    return-void
.end method

.method public setVrModeImmediate(ZLandroid/content/ComponentName;ILandroid/content/ComponentName;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$LocalService;->this$0:Lcom/android/server/vr/VrManagerService;

    const/4 v5, 0x1

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/vr/VrManagerService;->-wrap13(Lcom/android/server/vr/VrManagerService;ZLandroid/content/ComponentName;ILandroid/content/ComponentName;Z)V

    return-void
.end method
