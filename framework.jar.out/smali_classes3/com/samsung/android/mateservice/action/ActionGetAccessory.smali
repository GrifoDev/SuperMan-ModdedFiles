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

    invoke-direct {p0}, Lcom/samsung/android/mateservice/action/ActionBase;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mateservice/action/ActionGetAccessory;->mMateSvcBase:Lcom/samsung/android/mateservice/MateSvcBase;

    return-void
.end method


# virtual methods
.method public execute(Landroid/os/Bundle;II)Landroid/os/Bundle;
    .locals 3

    const-string/jumbo v0, "ActGetAcc"

    const-string/jumbo v1, "ActionGetAccessory"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mateservice/MateLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/mateservice/action/ActionGetAccessory;->mMateSvcBase:Lcom/samsung/android/mateservice/MateSvcBase;

    invoke-interface {v0}, Lcom/samsung/android/mateservice/MateSvcBase;->getAccessoryMgr()Lcom/samsung/android/mateservice/AccessoryMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/mateservice/AccessoryMgr;->getAccessoryList()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
