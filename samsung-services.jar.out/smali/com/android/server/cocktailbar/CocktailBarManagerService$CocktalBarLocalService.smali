.class final Lcom/android/server/cocktailbar/CocktailBarManagerService$CocktalBarLocalService;
.super Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;
.source "CocktailBarManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/CocktailBarManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CocktalBarLocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/cocktailbar/CocktailBarManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$CocktalBarLocalService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/cocktailbar/CocktailBarManagerService;Lcom/android/server/cocktailbar/CocktailBarManagerService$CocktalBarLocalService;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerService$CocktalBarLocalService;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerService;)V

    return-void
.end method


# virtual methods
.method public turnOffWakupCocktailBarFromPowerManager(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$CocktalBarLocalService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->-wrap0(Lcom/android/server/cocktailbar/CocktailBarManagerService;ILjava/lang/String;)V

    return-void
.end method

.method public updateSysfsGripDisableFromWindowManager(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$CocktalBarLocalService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-static {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->-wrap1(Lcom/android/server/cocktailbar/CocktailBarManagerService;Z)V

    return-void
.end method

.method public wakupCocktailBarFromWindowManager(ZII)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$CocktalBarLocalService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->-wrap2(Lcom/android/server/cocktailbar/CocktailBarManagerService;ZII)V

    return-void
.end method
