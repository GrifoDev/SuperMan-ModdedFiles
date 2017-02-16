.class public Lcom/samsung/android/mateservice/action/ActionGetAccessory;
.super Lcom/samsung/android/mateservice/action/ActionBase;
.source "ActionGetAccessory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ActGetAcc"


# instance fields
.field private final mMateSvcBase:Lcom/samsung/android/mateservice/MateSvcBase;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mateservice/MateSvcBase;)V
    .locals 0
    .param p1, "base"    # Lcom/samsung/android/mateservice/MateSvcBase;

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/samsung/android/mateservice/action/ActionBase;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/samsung/android/mateservice/action/ActionGetAccessory;->mMateSvcBase:Lcom/samsung/android/mateservice/MateSvcBase;

    .line 13
    return-void
.end method


# virtual methods
.method public execute(Landroid/os/Bundle;II)Landroid/os/Bundle;
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "flag"    # I
    .param p3, "extra"    # I

    .prologue
    .line 19
    const-string/jumbo v0, "ActGetAcc"

    const-string/jumbo v1, "ActionGetAccessory"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mateservice/MateLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    iget-object v0, p0, Lcom/samsung/android/mateservice/action/ActionGetAccessory;->mMateSvcBase:Lcom/samsung/android/mateservice/MateSvcBase;

    invoke-interface {v0}, Lcom/samsung/android/mateservice/MateSvcBase;->getAccessoryMgr()Lcom/samsung/android/mateservice/AccessoryMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/mateservice/AccessoryMgr;->getAccessoryList()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
