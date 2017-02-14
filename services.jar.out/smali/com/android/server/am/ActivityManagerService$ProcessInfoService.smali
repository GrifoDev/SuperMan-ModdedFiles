.class Lcom/android/server/am/ActivityManagerService$ProcessInfoService;
.super Landroid/os/IProcessInfoService$Stub;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProcessInfoService"
.end annotation


# instance fields
.field final mActivityManagerService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/IProcessInfoService$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$ProcessInfoService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-void
.end method


# virtual methods
.method public getProcessStatesAndOomScoresFromPids([I[I[I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$ProcessInfoService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/ActivityManagerService;->getProcessStatesAndOomScoresForPIDs([I[I[I)V

    return-void
.end method

.method public getProcessStatesFromPids([I[I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$ProcessInfoService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/am/ActivityManagerService;->getProcessStatesAndOomScoresForPIDs([I[I[I)V

    return-void
.end method
