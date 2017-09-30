.class public Lcom/android/incallui/agif/AgifLoader$AgifRecommendObserver;
.super Landroid/database/ContentObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/agif/AgifLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AgifRecommendObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/agif/AgifLoader;


# direct methods
.method public constructor <init>(Lcom/android/incallui/agif/AgifLoader;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/agif/AgifLoader$AgifRecommendObserver;->this$0:Lcom/android/incallui/agif/AgifLoader;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    const-string v0, "AgifLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AgifRecommendObserver onChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "agif_recommend_service"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/agif/AgifLoader$AgifRecommendObserver;->this$0:Lcom/android/incallui/agif/AgifLoader;

    iget-object v1, p0, Lcom/android/incallui/agif/AgifLoader$AgifRecommendObserver;->this$0:Lcom/android/incallui/agif/AgifLoader;

    invoke-static {v1}, Lcom/android/incallui/agif/AgifLoader;->access$300(Lcom/android/incallui/agif/AgifLoader;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/agif/AgifLoader;->loadRecommendedApps(Landroid/content/Context;)V

    goto :goto_0
.end method
