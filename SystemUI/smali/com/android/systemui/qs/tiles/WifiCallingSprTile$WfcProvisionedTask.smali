.class Lcom/android/systemui/qs/tiles/WifiCallingSprTile$WfcProvisionedTask;
.super Landroid/os/AsyncTask;
.source "WifiCallingSprTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/WifiCallingSprTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WfcProvisionedTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/WifiCallingSprTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/WifiCallingSprTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile$WfcProvisionedTask;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingSprTile;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/WifiCallingSprTile;Lcom/android/systemui/qs/tiles/WifiCallingSprTile$WfcProvisionedTask;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile$WfcProvisionedTask;-><init>(Lcom/android/systemui/qs/tiles/WifiCallingSprTile;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile$WfcProvisionedTask;->doInBackground([Ljava/lang/Boolean;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Boolean;)Ljava/lang/Void;
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile$WfcProvisionedTask;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingSprTile;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile$WfcProvisionedTask;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingSprTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->-wrap3(Lcom/android/systemui/qs/tiles/WifiCallingSprTile;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->-set0(Lcom/android/systemui/qs/tiles/WifiCallingSprTile;Z)Z

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile$WfcProvisionedTask;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingSprTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->-get3(Lcom/android/systemui/qs/tiles/WifiCallingSprTile;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile$WfcProvisionedTask;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingSprTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->-wrap1(Lcom/android/systemui/qs/tiles/WifiCallingSprTile;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    const-class v1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->-get1()Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile$WfcProvisionedTask;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingSprTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->-get0(Lcom/android/systemui/qs/tiles/WifiCallingSprTile;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startActivityDismissingKeyguard() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile$WfcProvisionedTask;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingSprTile;

    aget-object v2, p1, v4

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->-wrap7(Lcom/android/systemui/qs/tiles/WifiCallingSprTile;Z)V

    :goto_0
    return-object v5

    :cond_1
    :try_start_1
    const-class v1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/ActivityStarter;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile$WfcProvisionedTask;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingSprTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->-wrap0(Lcom/android/systemui/qs/tiles/WifiCallingSprTile;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile$WfcProvisionedTask;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingSprTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->-get0(Lcom/android/systemui/qs/tiles/WifiCallingSprTile;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Cannot find WfcStartupActivity!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
